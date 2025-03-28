package stdgo._internal.go.scanner;
function benchmarkScanFiles(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        for (__0 => _p in (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("go/types/expr.go" : stdgo.GoString), ("go/parser/parser.go" : stdgo.GoString), ("net/http/server.go" : stdgo.GoString), ("go/scanner/errors.go" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>)) {
            @:check2r _b.run(_p?.__copy__(), function(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
                @:check2r _b.stopTimer();
                var _filename = (stdgo._internal.path.filepath.Filepath_join.join((".." : stdgo.GoString), (".." : stdgo.GoString), stdgo._internal.path.filepath.Filepath_fromslash.fromSlash(_p?.__copy__())?.__copy__())?.__copy__() : stdgo.GoString);
                var __tmp__ = stdgo._internal.os.Os_readfile.readFile(_filename?.__copy__()), _src:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _b.fatal(stdgo.Go.toInterface(_err));
                };
                var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
                var _file = @:check2r _fset.addFile(_filename?.__copy__(), @:check2r _fset.base(), (_src.length));
                @:check2r _b.setBytes((_src.length : stdgo.GoInt64));
                var _s:stdgo._internal.go.scanner.Scanner_scanner.Scanner = ({} : stdgo._internal.go.scanner.Scanner_scanner.Scanner);
                @:check2r _b.startTimer();
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                        @:check2 _s.init(_file, _src, null, (1u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
while (true) {
                            var __tmp__ = @:check2 _s.scan(), __41:stdgo._internal.go.token.Token_pos.Pos = __tmp__._0, _tok:stdgo._internal.go.token.Token_token.Token = __tmp__._1, __42:stdgo.GoString = __tmp__._2;
                            if (_tok == ((1 : stdgo._internal.go.token.Token_token.Token))) {
                                break;
                            };
                        };
                        _i++;
                    };
                };
            });
        };
    }
