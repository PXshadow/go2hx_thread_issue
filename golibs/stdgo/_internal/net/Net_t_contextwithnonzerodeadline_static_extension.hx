package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.T_contextWithNonZeroDeadline_asInterface) class T_contextWithNonZeroDeadline_static_extension {
    @:keep
    @:tdfield
    static public function deadline( _:stdgo._internal.net.Net_t_contextwithnonzerodeadline.T_contextWithNonZeroDeadline):{ var _0 : stdgo._internal.time.Time_time.Time; var _1 : Bool; } throw "T_contextWithNonZeroDeadline:net.deadline is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function value( __self__:stdgo._internal.net.Net_t_contextwithnonzerodeadline.T_contextWithNonZeroDeadline, _0:stdgo.AnyInterface):stdgo.AnyInterface return @:_5 __self__.value(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function err( __self__:stdgo._internal.net.Net_t_contextwithnonzerodeadline.T_contextWithNonZeroDeadline):stdgo.Error return @:_5 __self__.err();
    @:embedded
    @:embeddededffieldsffun
    public static function done( __self__:stdgo._internal.net.Net_t_contextwithnonzerodeadline.T_contextWithNonZeroDeadline):stdgo.Chan<{ }> return @:_5 __self__.done();
}
