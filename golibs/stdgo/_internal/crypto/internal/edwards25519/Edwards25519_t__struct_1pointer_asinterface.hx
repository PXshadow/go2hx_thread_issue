package stdgo._internal.crypto.internal.edwards25519;
class T__struct_1Pointer_asInterface {
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.internal.edwards25519.Edwards25519_t__struct_1pointerpointer.T__struct_1PointerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
