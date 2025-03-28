package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.AAAAWriter_asInterface) class AAAAWriter_static_extension {
    @:keep
    @:tdfield
    static public function addIP( _w:stdgo._internal.net.Net_aaaawriter.AAAAWriter, _v6:stdgo.GoArray<stdgo.GoUInt8>):Void throw "AAAAWriter:net.addIP is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _header( __self__:stdgo._internal.net.Net_aaaawriter.AAAAWriter):_internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader return @:_5 __self__._header();
    @:embedded
    @:embeddededffieldsffun
    public static function setTTL( __self__:stdgo._internal.net.Net_aaaawriter.AAAAWriter, _0:stdgo.GoUInt32):Void return @:_5 __self__.setTTL(_0);
}
