package main

import (
	"sync"
)

type Channel struct {
	buffer []int
	lock   sync.Mutex
	cond   *sync.Cond
	closed bool
}

func NewChannel(size int) *Channel {
	ch := &Channel{
		buffer: make([]int, 0, size),
		closed: false,
	}
	ch.cond = sync.NewCond(&ch.lock)
	return ch
}

func (ch *Channel) Send(value int) {
	ch.lock.Lock()
	defer ch.lock.Unlock()
	if ch.closed {
		panic("send on closed channel")
	}
	ch.buffer = append(ch.buffer, value)
	ch.cond.Signal() // Notify a waiting receiver
}

func (ch *Channel) Receive() int {
	ch.lock.Lock()
	defer ch.lock.Unlock()
	for len(ch.buffer) == 0 && !ch.closed {
		ch.cond.Wait() // Wait for a value to be sent
	}
	if ch.closed && len(ch.buffer) == 0 {
		return 0 // or some sentinel value to indicate closure
	}
	value := ch.buffer[0]
	ch.buffer = ch.buffer[1:] // Remove the value from the buffer
	return value
}

func (ch *Channel) Close() {
	ch.lock.Lock()
	defer ch.lock.Unlock()
	ch.closed = true
	ch.cond.Broadcast() // Wake up all waiting receivers
}

// Generate sends the sequence 2, 3, 4, ... to channel 'ch'.
func Generate(ch *Channel) {
	for i := 2; ; i++ {
		ch.Send(i) // Send 'i' to channel 'ch'.
	}
}

// Filter copies values from channel 'in' to channel 'out',
// removing those divisible by 'prime'.
func Filter(in *Channel, out *Channel, prime int) {
	defer func() {
		println("CLOSE0")
		out.Close()
	}() // Close the output channel when done.
	for {
		i := in.Receive() // Receive value from 'in'.
		if i == 0 {       // Check for closure signal
			println("closure signal")
			break
		}
		if i%prime != 0 {
			out.Send(i) // Send 'i' to 'out'.
		}
	}
}

// The prime sieve: Daisy-chain Filter processes.
func main() {
	ch := NewChannel(0) // Create a new channel.
	go Generate(ch)     // Launch Generate goroutine.

	for i := 0; i < 10; i++ {
		prime := ch.Receive() // Receive the next prime.
		println(prime)
		ch1 := NewChannel(0)
		go Filter(ch, ch1, prime)
		ch = ch1 // Move to the next channel.
	}

	// Close the initial channel to signal the end of the generation
	println("CLOSE1")
	ch.Close()
}
