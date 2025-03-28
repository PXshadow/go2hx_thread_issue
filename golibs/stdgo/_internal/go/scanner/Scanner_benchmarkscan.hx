package stdgo._internal.go.scanner;
function benchmarkScan(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        @:check2r _b.stopTimer();
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var _file = @:check2r _fset.addFile((stdgo.Go.str() : stdgo.GoString)?.__copy__(), @:check2r _fset.base(), (stdgo._internal.go.scanner.Scanner__source._source.length));
        var _s:stdgo._internal.go.scanner.Scanner_scanner.Scanner = ({} : stdgo._internal.go.scanner.Scanner_scanner.Scanner);
        @:check2r _b.startTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                @:check2 _s.init(_file, stdgo._internal.go.scanner.Scanner__source._source, null, (1u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
while (true) {
                    var __tmp__ = @:check2 _s.scan(), __24:stdgo._internal.go.token.Token_pos.Pos = __tmp__._0, _tok:stdgo._internal.go.token.Token_token.Token = __tmp__._1, __25:stdgo.GoString = __tmp__._2;
                    if (_tok == ((1 : stdgo._internal.go.token.Token_token.Token))) {
                        break;
                    };
                };
                _i++;
            };
        };
    }
