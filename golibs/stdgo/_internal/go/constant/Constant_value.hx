package stdgo._internal.go.constant;
@:interface typedef Value = stdgo.StructType & {
    @:interfacetypeffun
    function kind():stdgo._internal.go.constant.Constant_kind.Kind;
    @:interfacetypeffun
    function string():stdgo.GoString;
    @:interfacetypeffun
    function exactString():stdgo.GoString;
    @:interfacetypeffun
    function _implementsValue():Void;
};
