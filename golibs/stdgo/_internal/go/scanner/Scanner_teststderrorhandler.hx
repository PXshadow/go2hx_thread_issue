package stdgo._internal.go.scanner;
function testStdErrorHandler(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _list:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList = (new stdgo._internal.go.scanner.Scanner_errorlist.ErrorList(0, 0) : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList);
        var _eh = (function(_pos:stdgo._internal.go.token.Token_position.Position, _msg:stdgo.GoString):Void {
            @:check2 _list.add(_pos?.__copy__(), _msg?.__copy__());
        } : (stdgo._internal.go.token.Token_position.Position, stdgo.GoString) -> Void);
        var _s:stdgo._internal.go.scanner.Scanner_scanner.Scanner = ({} : stdgo._internal.go.scanner.Scanner_scanner.Scanner);
        @:check2 _s.init(@:check2r stdgo._internal.go.scanner.Scanner__fset._fset.addFile(("File1" : stdgo.GoString), @:check2r stdgo._internal.go.scanner.Scanner__fset._fset.base(), ((("@\n@ @\n//line File2:20\n@\n//line File2:1\n@ @\n//line File1:1\n@ @ @" : stdgo.GoString) : stdgo.GoString).length)), ((("@\n@ @\n//line File2:20\n@\n//line File2:1\n@ @\n//line File1:1\n@ @ @" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _eh, (2u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
        while (true) {
            {
                var __tmp__ = @:check2 _s.scan(), __0:stdgo._internal.go.token.Token_pos.Pos = __tmp__._0, _tok:stdgo._internal.go.token.Token_token.Token = __tmp__._1, __1:stdgo.GoString = __tmp__._2;
                if (_tok == ((1 : stdgo._internal.go.token.Token_token.Token))) {
                    break;
                };
            };
        };
        if ((_list.length) != (_s.errorCount)) {
            @:check2r _t.errorf(("found %d errors, expected %d" : stdgo.GoString), stdgo.Go.toInterface((_list.length)), stdgo.Go.toInterface(_s.errorCount));
        };
        if ((_list.length) != ((9 : stdgo.GoInt))) {
            @:check2r _t.errorf(("found %d raw errors, expected 9" : stdgo.GoString), stdgo.Go.toInterface((_list.length)));
            stdgo._internal.go.scanner.Scanner_printerror.printError(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), stdgo.Go.asInterface(_list));
        };
        _list.sort();
        if ((_list.length) != ((9 : stdgo.GoInt))) {
            @:check2r _t.errorf(("found %d sorted errors, expected 9" : stdgo.GoString), stdgo.Go.toInterface((_list.length)));
            stdgo._internal.go.scanner.Scanner_printerror.printError(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), stdgo.Go.asInterface(_list));
        };
        @:check2 _list.removeMultiples();
        if ((_list.length) != ((4 : stdgo.GoInt))) {
            @:check2r _t.errorf(("found %d one-per-line errors, expected 4" : stdgo.GoString), stdgo.Go.toInterface((_list.length)));
            stdgo._internal.go.scanner.Scanner_printerror.printError(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), stdgo.Go.asInterface(_list));
        };
    }
