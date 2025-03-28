package stdgo._internal.go.types;
@:interface typedef T_dependency = stdgo.StructType & {
    @:interfacetypeffun
    function _isDependency():Void;
    function exported():Bool;
    function id():stdgo.GoString;
    function name():stdgo.GoString;
    function parent():stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>;
    function pkg():stdgo.Ref<stdgo._internal.go.types.Types_package.Package>;
    function pos():stdgo._internal.go.token.Token_pos.Pos;
    function string():stdgo.GoString;
    function type():stdgo._internal.go.types.Types_type_.Type_;
    function _color():stdgo._internal.go.types.Types_t_color.T_color;
    function _order():stdgo.GoUInt32;
    function _sameId(_0:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _1:stdgo.GoString):Bool;
    function _scopePos():stdgo._internal.go.token.Token_pos.Pos;
    function _setColor(_0:stdgo._internal.go.types.Types_t_color.T_color):Void;
    function _setOrder(_0:stdgo.GoUInt32):Void;
    function _setParent(_0:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):Void;
    function _setScopePos(_0:stdgo._internal.go.token.Token_pos.Pos):Void;
    function _setType(_0:stdgo._internal.go.types.Types_type_.Type_):Void;
};
