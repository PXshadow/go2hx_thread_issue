package stdgo._internal.math.big;
class T__struct_67_asInterface {
    @:embedded
    @:localembedfields
    public dynamic function _doSlow(_0:() -> Void):Void @:_0 __self__.value._doSlow(_0);
    @:embedded
    @:localembedfields
    public dynamic function do_(_0:() -> Void):Void @:_0 __self__.value.do_(_0);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.math.big.Big_t__struct_67pointer.T__struct_67Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
