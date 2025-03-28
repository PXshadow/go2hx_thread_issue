package stdgo._internal.go.ast;
@:interface typedef Decl = stdgo.StructType & {
    @:interfacetypeffun
    function _declNode():Void;
    function end():stdgo._internal.go.token.Token_pos.Pos;
    function pos():stdgo._internal.go.token.Token_pos.Pos;
};
