package stdgo._internal.go.doc;
function _findImportGroupStarts(_imps:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>):stdgo.Slice<stdgo._internal.go.token.Token_pos.Pos> {
        var _startImps = stdgo._internal.go.doc.Doc__findimportgroupstarts1._findImportGroupStarts1(_imps);
        var _groupStarts = (new stdgo.Slice<stdgo._internal.go.token.Token_pos.Pos>((_startImps.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo._internal.go.token.Token_pos.Pos>);
        for (_i => _imp in _startImps) {
            _groupStarts[(_i : stdgo.GoInt)] = @:check2r _imp.pos();
        };
        return _groupStarts;
    }
