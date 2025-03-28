package stdgo._internal.go.format;
function testPartial(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _src in stdgo._internal.go.format.Format__tests._tests) {
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_src?.__copy__(), ("ERROR" : stdgo.GoString))) {
                _src = (_src.__slice__((5 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                var __tmp__ = stdgo._internal.go.format.Format_string.string(_src?.__copy__()), _res:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (((_err == null) && (_res == _src) : Bool)) {
                    @:check2r _t.errorf(("formatting succeeded but was expected to fail:\n%q" : stdgo.GoString), stdgo.Go.toInterface(_src));
                };
            } else {
                var __tmp__ = stdgo._internal.go.format.Format_string.string(_src?.__copy__()), _res:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _t.errorf(("formatting failed (%s):\n%q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_src));
                } else if (_res != (_src)) {
                    @:check2r _t.errorf(("formatting incorrect:\nsource: %q\nresult: %q" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_res));
                };
            };
        };
    }
