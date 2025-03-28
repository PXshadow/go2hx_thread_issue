package _internal.githubdotcom.go2hx.go4hx.rnd;

import stdgo._internal.sync.Sync;

@:structInit @:using(_internal.githubdotcom.go2hx.go4hx.rnd.Rnd_channel_static_extension.Channel_static_extension) class Channel {
	public var _buffer:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
	public var _lock:stdgo._internal.sync.Sync_mutex.Mutex = ({} : stdgo._internal.sync.Sync_mutex.Mutex);
	public var _cond:stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond> = (null : stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond>);
	public var _closed:Bool = false;

	public function new(?_buffer:stdgo.Slice<stdgo.GoInt>, ?_lock:stdgo._internal.sync.Sync_mutex.Mutex,
			?_cond:stdgo.Ref<stdgo._internal.sync.Sync_cond.Cond>, ?_closed:Bool) {
		if (_buffer != null)
			this._buffer = _buffer;
		if (_lock != null)
			this._lock = _lock;
		if (_cond != null)
			this._cond = _cond;
		if (_closed != null)
			this._closed = _closed;
	}

	public function __underlying__()
		return stdgo.Go.toInterface(this);

	public function __copy__() {
		return new Channel(_buffer, _lock, _cond, _closed);
	}
}
