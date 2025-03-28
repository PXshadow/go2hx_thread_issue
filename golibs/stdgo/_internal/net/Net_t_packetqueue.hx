package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_packetqueue_static_extension.T_packetQueue_static_extension) class T_packetQueue {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_packetQueue();
    }
}
