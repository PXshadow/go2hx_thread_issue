package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.T_packetListener_asInterface) class T_packetListener_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function writeTo( __self__:stdgo._internal.net.Net_t_packetlistener.T_packetListener, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo._internal.net.Net_addr.Addr):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.writeTo(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteDeadline( __self__:stdgo._internal.net.Net_t_packetlistener.T_packetListener, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setWriteDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadDeadline( __self__:stdgo._internal.net.Net_t_packetlistener.T_packetListener, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setReadDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setDeadline( __self__:stdgo._internal.net.Net_t_packetlistener.T_packetListener, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function readFrom( __self__:stdgo._internal.net.Net_t_packetlistener.T_packetListener, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo._internal.net.Net_addr.Addr; var _2 : stdgo.Error; } return @:_5 __self__.readFrom(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function localAddr( __self__:stdgo._internal.net.Net_t_packetlistener.T_packetListener):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.localAddr();
    @:embedded
    @:embeddededffieldsffun
    public static function close( __self__:stdgo._internal.net.Net_t_packetlistener.T_packetListener):stdgo.Error return @:_5 __self__.close();
}
