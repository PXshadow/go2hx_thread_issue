package stdgo._internal.go.scanner;
function testIssue28112(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _tokens = (new stdgo.Slice<stdgo._internal.go.token.Token_token.Token>(8, 8, ...[(48 : stdgo._internal.go.token.Token_token.Token), (53 : stdgo._internal.go.token.Token_token.Token), (53 : stdgo._internal.go.token.Token_token.Token), (6 : stdgo._internal.go.token.Token_token.Token), (53 : stdgo._internal.go.token.Token_token.Token), (53 : stdgo._internal.go.token.Token_token.Token), (53 : stdgo._internal.go.token.Token_token.Token), (1 : stdgo._internal.go.token.Token_token.Token)]).__setNumber32__() : stdgo.Slice<stdgo._internal.go.token.Token_token.Token>);
        var _s:stdgo._internal.go.scanner.Scanner_scanner.Scanner = ({} : stdgo._internal.go.scanner.Scanner_scanner.Scanner);
        @:check2 _s.init(@:check2r stdgo._internal.go.scanner.Scanner__fset._fset.addFile((stdgo.Go.str() : stdgo.GoString)?.__copy__(), @:check2r stdgo._internal.go.scanner.Scanner__fset._fset.base(), ((("... .. 0.. .." : stdgo.GoString) : stdgo.GoString).length)), ((("... .. 0.. .." : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), null, (0u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
        for (__0 => _want in _tokens) {
            var __tmp__ = @:check2 _s.scan(), _pos:stdgo._internal.go.token.Token_pos.Pos = __tmp__._0, _got:stdgo._internal.go.token.Token_token.Token = __tmp__._1, _lit:stdgo.GoString = __tmp__._2;
            if (_got != (_want)) {
                @:check2r _t.errorf(("%s: got %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r stdgo._internal.go.scanner.Scanner__fset._fset.position(_pos))), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
            };
            if (((stdgo._internal.go.scanner.Scanner__tokenclass._tokenclass(_got) == (1 : stdgo.GoInt)) && (_lit == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                @:check2r _t.errorf(("%s: for %s got empty literal string" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(@:check2r stdgo._internal.go.scanner.Scanner__fset._fset.position(_pos))), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)));
            };
        };
    }
