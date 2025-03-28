package stdgo._internal.net;
@:using(stdgo._internal.net.Net_haxelistener_static_extension.HaxeListener_static_extension) class HaxeListener {
    @:local
    private var _socket = #if sys {
        (null : sys.net.Socket);
    } #else null #end;
    @:local
    private var _addr = null;
    public function new(addr, socket) {
        this._addr = addr;
        this._socket = socket;
    }
    public dynamic function accept():{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } {
        return { _0 : null, _1 : null };
    }
    public dynamic function close():stdgo.Error {
        return null;
    }
    public dynamic function addr():stdgo._internal.net.Net_addr.Addr {
        return null;
    }
    public function __underlying__():stdgo.AnyInterface return stdgo.Go.toInterface(this);
}
