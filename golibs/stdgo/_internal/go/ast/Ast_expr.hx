package stdgo._internal.go.ast;
@:interface typedef Expr = stdgo.StructType & {
    @:interfacetypeffun
    function _exprNode():Void;
    function end():stdgo._internal.go.token.Token_pos.Pos;
    function pos():stdgo._internal.go.token.Token_pos.Pos;
};
