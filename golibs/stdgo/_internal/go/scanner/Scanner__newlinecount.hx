package stdgo._internal.go.scanner;
function _newlineCount(_s:stdgo.GoString):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                if (_s[(_i : stdgo.GoInt)] == ((10 : stdgo.GoUInt8))) {
                    _n++;
                };
                _i++;
            };
        };
        return _n;
    }
