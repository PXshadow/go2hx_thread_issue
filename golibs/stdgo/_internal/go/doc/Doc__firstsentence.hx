package stdgo._internal.go.doc;
function _firstSentence(_s:stdgo.GoString):stdgo.GoString {
        var _ppp:stdgo.GoInt32 = (0 : stdgo.GoInt32), _pp:stdgo.GoInt32 = (0 : stdgo.GoInt32), _p:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        for (_i => _q in _s) {
            if (((_q == ((10 : stdgo.GoInt32)) || _q == ((13 : stdgo.GoInt32)) : Bool) || (_q == (9 : stdgo.GoInt32)) : Bool)) {
                _q = (32 : stdgo.GoInt32);
            };
            if (((_q == ((32 : stdgo.GoInt32)) && _p == ((46 : stdgo.GoInt32)) : Bool) && ((!stdgo._internal.unicode.Unicode_isupper.isUpper(_pp) || stdgo._internal.unicode.Unicode_isupper.isUpper(_ppp) : Bool)) : Bool)) {
                return (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__();
            };
            if (((_p == (12290 : stdgo.GoInt32)) || (_p == (65294 : stdgo.GoInt32)) : Bool)) {
                return (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__();
            };
            {
                final __tmp__0 = _pp;
                final __tmp__1 = _p;
                final __tmp__2 = _q;
                _ppp = @:binopAssign __tmp__0;
                _pp = @:binopAssign __tmp__1;
                _p = @:binopAssign __tmp__2;
            };
        };
        return _s?.__copy__();
    }
