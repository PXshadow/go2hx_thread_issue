package stdgo._internal.go.doc;
function _filterFuncs(_a:stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>, _f:stdgo._internal.go.doc.Doc_filter.Filter):stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>> {
        var _w = (0 : stdgo.GoInt);
        for (__0 => _fd in _a) {
            if (_f((@:checkr _fd ?? throw "null pointer dereference").name?.__copy__())) {
                _a[(_w : stdgo.GoInt)] = _fd;
                _w++;
            };
        };
        return (_a.__slice__((0 : stdgo.GoInt), _w) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.doc.Doc_func.Func>>);
    }
