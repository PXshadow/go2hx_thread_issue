package stdgo._internal.debug.dwarf;
class CharType_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function size():stdgo.GoInt64 return @:_0 __self__.value.size();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function common():stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_commontype.CommonType> return @:_0 __self__.value.common();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function basic():stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_basictype.BasicType> return @:_0 __self__.value.basic();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.dwarf.Dwarf_chartypepointer.CharTypePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
