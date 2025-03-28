package stdgo._internal.go.ast;
@:interface typedef Stmt = stdgo.StructType & {
    @:interfacetypeffun
    function _stmtNode():Void;
    function end():stdgo._internal.go.token.Token_pos.Pos;
    function pos():stdgo._internal.go.token.Token_pos.Pos;
};
