package stdgo._internal.net;
class AAAAWriter_asInterface {
    @:keep
    @:tdfield
    public dynamic function addIP(_v6:stdgo.GoArray<stdgo.GoUInt8>):Void @:_0 __self__.value.addIP(_v6);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _header():_internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader return @:_0 __self__.value._header();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setTTL(_0:stdgo.GoUInt32):Void @:_0 __self__.value.setTTL(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_aaaawriterpointer.AAAAWriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
