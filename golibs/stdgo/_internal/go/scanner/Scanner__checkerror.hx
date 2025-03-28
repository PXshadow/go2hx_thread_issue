package stdgo._internal.go.scanner;
function _checkError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _src:stdgo.GoString, _tok:stdgo._internal.go.token.Token_token.Token, _pos:stdgo.GoInt, _lit:stdgo.GoString, _err:stdgo.GoString):Void {
        var _s:stdgo._internal.go.scanner.Scanner_scanner.Scanner = ({} : stdgo._internal.go.scanner.Scanner_scanner.Scanner);
        var _h:stdgo._internal.go.scanner.Scanner_t_errorcollector.T_errorCollector = ({} : stdgo._internal.go.scanner.Scanner_t_errorcollector.T_errorCollector);
        var _eh = (function(_pos:stdgo._internal.go.token.Token_position.Position, _msg:stdgo.GoString):Void {
            _h._cnt++;
            _h._msg = _msg?.__copy__();
            _h._pos = _pos?.__copy__();
        } : (stdgo._internal.go.token.Token_position.Position, stdgo.GoString) -> Void);
        @:check2 _s.init(@:check2r stdgo._internal.go.scanner.Scanner__fset._fset.addFile((stdgo.Go.str() : stdgo.GoString)?.__copy__(), @:check2r stdgo._internal.go.scanner.Scanner__fset._fset.base(), (_src.length)), (_src : stdgo.Slice<stdgo.GoUInt8>), _eh, (3u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
        var __tmp__ = @:check2 _s.scan(), __0:stdgo._internal.go.token.Token_pos.Pos = __tmp__._0, _tok0:stdgo._internal.go.token.Token_token.Token = __tmp__._1, _lit0:stdgo.GoString = __tmp__._2;
        if (_tok0 != (_tok)) {
            @:check2r _t.errorf(("%q: got %s, expected %s" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(stdgo.Go.asInterface(_tok0)), stdgo.Go.toInterface(stdgo.Go.asInterface(_tok)));
        };
        if (((_tok0 != (0 : stdgo._internal.go.token.Token_token.Token)) && (_lit0 != _lit) : Bool)) {
            @:check2r _t.errorf(("%q: got literal %q, expected %q" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_lit0), stdgo.Go.toInterface(_lit));
        };
        var _cnt = (0 : stdgo.GoInt);
        if (_err != ((stdgo.Go.str() : stdgo.GoString))) {
            _cnt = (1 : stdgo.GoInt);
        };
        if (_h._cnt != (_cnt)) {
            @:check2r _t.errorf(("%q: got cnt %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_h._cnt), stdgo.Go.toInterface(_cnt));
        };
        if (_h._msg != (_err)) {
            @:check2r _t.errorf(("%q: got msg %q, expected %q" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_h._msg), stdgo.Go.toInterface(_err));
        };
        if (_h._pos.offset != (_pos)) {
            @:check2r _t.errorf(("%q: got offset %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_h._pos.offset), stdgo.Go.toInterface(_pos));
        };
    }
