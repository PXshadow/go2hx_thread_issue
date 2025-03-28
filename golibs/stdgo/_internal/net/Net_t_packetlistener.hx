package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_packetlistener_static_extension.T_packetListener_static_extension) class T_packetListener {
    @:embedded
    public var packetConn : stdgo._internal.net.Net_packetconn.PacketConn = (null : stdgo._internal.net.Net_packetconn.PacketConn);
    public function new(?packetConn:stdgo._internal.net.Net_packetconn.PacketConn) {
        if (packetConn != null) this.packetConn = packetConn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var close(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_close():() -> stdgo.Error return @:check31 (this.packetConn ?? throw "null pointer dereference").close;
    public var localAddr(get, never) : () -> stdgo._internal.net.Net_addr.Addr;
    @:embedded
    @:embeddededffieldsffun
    public function get_localAddr():() -> stdgo._internal.net.Net_addr.Addr return @:check31 (this.packetConn ?? throw "null pointer dereference").localAddr;
    public var readFrom(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.Net_addr.Addr; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_readFrom():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.Net_addr.Addr; var _2 : stdgo.Error; } return @:check31 (this.packetConn ?? throw "null pointer dereference").readFrom;
    public var setDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check31 (this.packetConn ?? throw "null pointer dereference").setDeadline;
    public var setReadDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setReadDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check31 (this.packetConn ?? throw "null pointer dereference").setReadDeadline;
    public var setWriteDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setWriteDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check31 (this.packetConn ?? throw "null pointer dereference").setWriteDeadline;
    public var writeTo(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.net.Net_addr.Addr) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_writeTo():(stdgo.Slice<stdgo.GoUInt8>, stdgo._internal.net.Net_addr.Addr) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check31 (this.packetConn ?? throw "null pointer dereference").writeTo;
    public function __copy__() {
        return new T_packetListener(packetConn);
    }
}
