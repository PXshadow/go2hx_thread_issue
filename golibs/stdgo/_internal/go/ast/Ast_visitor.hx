package stdgo._internal.go.ast;
@:interface typedef Visitor = stdgo.StructType & {
    @:interfacetypeffun
    function visit(_node:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.ast.Ast_visitor.Visitor;
};
