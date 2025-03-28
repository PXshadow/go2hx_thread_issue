package stdgo._internal.go.scanner;
function testInvalidLineDirectives(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _src:stdgo.GoString = ("" : stdgo.GoString);
        for (__0 => _e in stdgo._internal.go.scanner.Scanner__invalidsegments._invalidSegments) {
            _src = (_src + (_e._srcline)?.__copy__() : stdgo.GoString);
        };
        var s:stdgo._internal.go.scanner.Scanner_scanner.Scanner = ({} : stdgo._internal.go.scanner.Scanner_scanner.Scanner);
        var _s:stdgo._internal.go.scanner.Scanner_t_segment.T_segment = ({} : stdgo._internal.go.scanner.Scanner_t_segment.T_segment);
        var _file = @:check2r stdgo._internal.go.scanner.Scanner__fset._fset.addFile(stdgo._internal.path.filepath.Filepath_join.join(("dir" : stdgo.GoString), ("TestInvalidLineDirectives" : stdgo.GoString))?.__copy__(), @:check2r stdgo._internal.go.scanner.Scanner__fset._fset.base(), (_src.length));
        @:check2 s.init(_file, (_src : stdgo.Slice<stdgo.GoUInt8>), function(_pos:stdgo._internal.go.token.Token_position.Position, _msg:stdgo.GoString):Void {
            if (_msg != (_s._filename)) {
                @:check2r _t.errorf(("got error %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_s._filename));
            };
            if (((_pos.line != _s._line) || (_pos.column != _s._column) : Bool)) {
                @:check2r _t.errorf(("got position %d:%d; want %d:%d" : stdgo.GoString), stdgo.Go.toInterface(_pos.line), stdgo.Go.toInterface(_pos.column), stdgo.Go.toInterface(_s._line), stdgo.Go.toInterface(_s._column));
            };
        }, (2u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
        for (__key__ => __value__ in stdgo._internal.go.scanner.Scanner__invalidsegments._invalidSegments) {
            _s = __value__;
            @:check2 s.scan();
        };
        if (s.errorCount != ((stdgo._internal.go.scanner.Scanner__invalidsegments._invalidSegments.length))) {
            @:check2r _t.errorf(("got %d errors; want %d" : stdgo.GoString), stdgo.Go.toInterface(s.errorCount), stdgo.Go.toInterface((stdgo._internal.go.scanner.Scanner__invalidsegments._invalidSegments.length)));
        };
    }
