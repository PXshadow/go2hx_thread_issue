package stdgo._internal.crypto.tls;
class T_finishedHash_asInterface {
    @:keep
    @:tdfield
    public dynamic function sum():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.sum();
    @:keep
    @:tdfield
    public dynamic function write(_msg:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_msg);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_t_finishedhashpointer.T_finishedHashPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
