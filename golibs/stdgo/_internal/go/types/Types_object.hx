package stdgo._internal.go.types;
@:interface typedef Object = stdgo.StructType & {
    @:interfacetypeffun
    function parent():stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>;
    @:interfacetypeffun
    function pos():stdgo._internal.go.token.Token_pos.Pos;
    @:interfacetypeffun
    function pkg():stdgo.Ref<stdgo._internal.go.types.Types_package.Package>;
    @:interfacetypeffun
    function name():stdgo.GoString;
    @:interfacetypeffun
    function type():stdgo._internal.go.types.Types_type_.Type_;
    @:interfacetypeffun
    function exported():Bool;
    @:interfacetypeffun
    function id():stdgo.GoString;
    @:interfacetypeffun
    function string():stdgo.GoString;
    @:interfacetypeffun
    function _order():stdgo.GoUInt32;
    @:interfacetypeffun
    function _color():stdgo._internal.go.types.Types_t_color.T_color;
    @:interfacetypeffun
    function _setType(_0:stdgo._internal.go.types.Types_type_.Type_):Void;
    @:interfacetypeffun
    function _setOrder(_0:stdgo.GoUInt32):Void;
    @:interfacetypeffun
    function _setColor(_color:stdgo._internal.go.types.Types_t_color.T_color):Void;
    @:interfacetypeffun
    function _setParent(_0:stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope>):Void;
    @:interfacetypeffun
    function _sameId(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):Bool;
    @:interfacetypeffun
    function _scopePos():stdgo._internal.go.token.Token_pos.Pos;
    @:interfacetypeffun
    function _setScopePos(_pos:stdgo._internal.go.token.Token_pos.Pos):Void;
};
