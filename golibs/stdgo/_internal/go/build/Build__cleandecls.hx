package stdgo._internal.go.build;
function _cleanDecls(_m:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>; } {
        var _all = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_m.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_path => _ in _m) {
            _all = (_all.__append__(_path?.__copy__()));
        };
        stdgo._internal.sort.Sort_strings.strings(_all);
        return { _0 : _all, _1 : _m };
    }
