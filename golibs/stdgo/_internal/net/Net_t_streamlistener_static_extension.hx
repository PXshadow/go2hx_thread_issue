package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.T_streamListener_asInterface) class T_streamListener_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function close( __self__:stdgo._internal.net.Net_t_streamlistener.T_streamListener):stdgo.Error return @:_5 __self__.close();
    @:embedded
    @:embeddededffieldsffun
    public static function addr( __self__:stdgo._internal.net.Net_t_streamlistener.T_streamListener):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.addr();
    @:embedded
    @:embeddededffieldsffun
    public static function accept( __self__:stdgo._internal.net.Net_t_streamlistener.T_streamListener):{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Error; } return @:_5 __self__.accept();
}
