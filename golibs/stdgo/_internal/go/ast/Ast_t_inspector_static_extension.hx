package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.T_inspector_asInterface) class T_inspector_static_extension {
    @:keep
    @:tdfield
    static public function visit( _f:stdgo._internal.go.ast.Ast_t_inspector.T_inspector, _node:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.ast.Ast_visitor.Visitor {
        @:recv var _f:stdgo._internal.go.ast.Ast_t_inspector.T_inspector = _f;
        if (_f(_node)) {
            return stdgo.Go.asInterface(_f);
        };
        return (null : stdgo._internal.go.ast.Ast_visitor.Visitor);
    }
}
