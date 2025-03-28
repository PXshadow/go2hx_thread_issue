package stdgo._internal.go.build.constraint;
@:interface typedef Expr = stdgo.StructType & {
    @:interfacetypeffun
    function string():stdgo.GoString;
    @:interfacetypeffun
    function eval(_ok:stdgo.GoString -> Bool):Bool;
    @:interfacetypeffun
    function _isExpr():Void;
};
