package stdgo._internal.go.scanner;
function _checkPos(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _lit:stdgo.GoString, _p:stdgo._internal.go.token.Token_pos.Pos, _expected:stdgo._internal.go.token.Token_position.Position):Void {
        var _pos = (@:check2r stdgo._internal.go.scanner.Scanner__fset._fset.position(_p)?.__copy__() : stdgo._internal.go.token.Token_position.Position);
        if (((_pos.filename != _expected.filename) && (stdgo._internal.path.filepath.Filepath_clean.clean(_pos.filename?.__copy__()) != stdgo._internal.path.filepath.Filepath_clean.clean(_expected.filename?.__copy__())) : Bool)) {
            @:check2r _t.errorf(("bad filename for %q: got %s, expected %s" : stdgo.GoString), stdgo.Go.toInterface(_lit), stdgo.Go.toInterface(_pos.filename), stdgo.Go.toInterface(_expected.filename));
        };
        if (_pos.offset != (_expected.offset)) {
            @:check2r _t.errorf(("bad position for %q: got %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_lit), stdgo.Go.toInterface(_pos.offset), stdgo.Go.toInterface(_expected.offset));
        };
        if (_pos.line != (_expected.line)) {
            @:check2r _t.errorf(("bad line for %q: got %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_lit), stdgo.Go.toInterface(_pos.line), stdgo.Go.toInterface(_expected.line));
        };
        if (_pos.column != (_expected.column)) {
            @:check2r _t.errorf(("bad column for %q: got %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_lit), stdgo.Go.toInterface(_pos.column), stdgo.Go.toInterface(_expected.column));
        };
    }
