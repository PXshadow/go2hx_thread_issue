package stdgo._internal.go.ast;
@:interface typedef Spec = stdgo.StructType & {
    @:interfacetypeffun
    function _specNode():Void;
    function end():stdgo._internal.go.token.Token_pos.Pos;
    function pos():stdgo._internal.go.token.Token_pos.Pos;
};
