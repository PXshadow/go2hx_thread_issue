package stdgo._internal.go.scanner;
function _testSegments(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _segments:stdgo.Slice<stdgo._internal.go.scanner.Scanner_t_segment.T_segment>, _filename:stdgo.GoString):Void {
        var _src:stdgo.GoString = ("" : stdgo.GoString);
        for (__0 => _e in _segments) {
            _src = (_src + (_e._srcline)?.__copy__() : stdgo.GoString);
        };
        var s:stdgo._internal.go.scanner.Scanner_scanner.Scanner = ({} : stdgo._internal.go.scanner.Scanner_scanner.Scanner);
        var _file = @:check2r stdgo._internal.go.scanner.Scanner__fset._fset.addFile(_filename?.__copy__(), @:check2r stdgo._internal.go.scanner.Scanner__fset._fset.base(), (_src.length));
        @:check2 s.init(_file, (_src : stdgo.Slice<stdgo.GoUInt8>), function(_pos:stdgo._internal.go.token.Token_position.Position, _msg:stdgo.GoString):Void {
            @:check2r _t.error(stdgo.Go.toInterface(stdgo.Go.asInterface((new stdgo._internal.go.scanner.Scanner_error.Error(_pos?.__copy__(), _msg?.__copy__()) : stdgo._internal.go.scanner.Scanner_error.Error))));
        }, (2u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
        for (__1 => _s in _segments) {
            var __tmp__ = @:check2 s.scan(), _p:stdgo._internal.go.token.Token_pos.Pos = __tmp__._0, __2:stdgo._internal.go.token.Token_token.Token = __tmp__._1, _lit:stdgo.GoString = __tmp__._2;
            var _pos = (@:check2r _file.position(_p)?.__copy__() : stdgo._internal.go.token.Token_position.Position);
            stdgo._internal.go.scanner.Scanner__checkpos._checkPos(_t, _lit?.__copy__(), _p, ({ filename : _s._filename?.__copy__(), offset : _pos.offset, line : _s._line, column : _s._column } : stdgo._internal.go.token.Token_position.Position));
        };
        if (s.errorCount != ((0 : stdgo.GoInt))) {
            @:check2r _t.errorf(("got %d errors" : stdgo.GoString), stdgo.Go.toInterface(s.errorCount));
        };
    }
