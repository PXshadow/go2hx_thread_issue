package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_streamlistener_static_extension.T_streamListener_static_extension) class T_streamListener {
    @:embedded
    public var listener : stdgo._internal.net.Net_listener.Listener = (null : stdgo._internal.net.Net_listener.Listener);
    public function new(?listener:stdgo._internal.net.Net_listener.Listener) {
        if (listener != null) this.listener = listener;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var accept(get, never) : () -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_accept():() -> { var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:check31 (this.__underlying__ ?? throw "null pointer dereference").accept;
    public var addr(get, never) : () -> stdgo._internal.net.Net_addr.Addr;
    @:embedded
    @:embeddededffieldsffun
    public function get_addr():() -> stdgo._internal.net.Net_addr.Addr return @:check31 (this.__underlying__ ?? throw "null pointer dereference").addr;
    public var close(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_close():() -> stdgo.Error return @:check31 (this.__underlying__ ?? throw "null pointer dereference").close;
    public function __copy__() {
        return new T_streamListener(listener);
    }
}
