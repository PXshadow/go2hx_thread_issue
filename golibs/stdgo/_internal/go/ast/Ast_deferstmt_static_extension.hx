package stdgo._internal.go.ast;
@:keep @:allow(stdgo._internal.go.ast.Ast.DeferStmt_asInterface) class DeferStmt_static_extension {
    @:keep
    @:tdfield
    static public function _stmtNode( _:stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>):Void {
        @:recv var _:stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt> = _;
    }
    @:keep
    @:tdfield
    static public function end( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt> = _s;
        return @:check2r (@:checkr _s ?? throw "null pointer dereference").call.end();
    }
    @:keep
    @:tdfield
    static public function pos( _s:stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt>):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.ast.Ast_deferstmt.DeferStmt> = _s;
        return (@:checkr _s ?? throw "null pointer dereference").defer;
    }
}
