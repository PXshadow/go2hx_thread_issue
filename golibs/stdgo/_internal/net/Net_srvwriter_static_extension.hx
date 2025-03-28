package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.SRVWriter_asInterface) class SRVWriter_static_extension {
    @:keep
    @:tdfield
    static public function addSRV( _w:stdgo._internal.net.Net_srvwriter.SRVWriter, _priority:stdgo.GoUInt16, _weight:stdgo.GoUInt16, _port:stdgo.GoUInt16, _target:stdgo.GoString):stdgo.Error throw "SRVWriter:net.addSRV is not yet implemented";
    @:embedded
    @:embeddededffieldsffun
    public static function _header( __self__:stdgo._internal.net.Net_srvwriter.SRVWriter):_internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader return @:_5 __self__._header();
    @:embedded
    @:embeddededffieldsffun
    public static function setTTL( __self__:stdgo._internal.net.Net_srvwriter.SRVWriter, _0:stdgo.GoUInt32):Void return @:_5 __self__.setTTL(_0);
}
