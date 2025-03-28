package stdgo._internal.go.ast;
@:interface typedef Node = stdgo.StructType & {
    @:interfacetypeffun
    function pos():stdgo._internal.go.token.Token_pos.Pos;
    @:interfacetypeffun
    function end():stdgo._internal.go.token.Token_pos.Pos;
};
