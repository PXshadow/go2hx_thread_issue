package stdgo._internal.go.ast;
class ChanType_asInterface {
    @:keep
    @:tdfield
    public dynamic function _exprNode():Void @:_0 __self__.value._exprNode();
    @:keep
    @:tdfield
    public dynamic function end():stdgo._internal.go.token.Token_pos.Pos return @:_0 __self__.value.end();
    @:keep
    @:tdfield
    public dynamic function pos():stdgo._internal.go.token.Token_pos.Pos return @:_0 __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.ast.Ast_chantypepointer.ChanTypePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
