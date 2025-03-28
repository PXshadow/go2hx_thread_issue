package stdgo._internal.go.doc.comment;
function _autoURL(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _url = ("" : stdgo.GoString), _ok = false;
        var pathBreak = false;
        var _stk_17:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _end_16:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_15:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 3652521i32;
                } else if (__value__ == (3652521i32)) {
                    if (((_s.length) < (7 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 3652531i32;
                    } else if (_s[(3 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        _gotoNext = 3652568i32;
                    } else if (_s[(4 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        _gotoNext = 3652595i32;
                    } else if (_s[(5 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        _gotoNext = 3652622i32;
                    } else if (_s[(6 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                        _gotoNext = 3652649i32;
                    } else {
                        _gotoNext = 3652676i32;
                    };
                } else if (__value__ == (3652531i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3652708i32;
                } else if (__value__ == (3652568i32)) {
                    _i_15 = (3 : stdgo.GoInt);
                    _gotoNext = 3652708i32;
                } else if (__value__ == (3652595i32)) {
                    _i_15 = (4 : stdgo.GoInt);
                    _gotoNext = 3652708i32;
                } else if (__value__ == (3652622i32)) {
                    _i_15 = (5 : stdgo.GoInt);
                    _gotoNext = 3652708i32;
                } else if (__value__ == (3652649i32)) {
                    _i_15 = (6 : stdgo.GoInt);
                    _gotoNext = 3652708i32;
                } else if (__value__ == (3652676i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3652708i32;
                } else if (__value__ == (3652708i32)) {
                    if ((((_i_15 + (3 : stdgo.GoInt) : stdgo.GoInt) > (_s.length) : Bool) || ((_s.__slice__(_i_15, (_i_15 + (3 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString) != ("://" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3652745i32;
                    } else {
                        _gotoNext = 3652795i32;
                    };
                } else if (__value__ == (3652745i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3652795i32;
                } else if (__value__ == (3652795i32)) {
                    if (!stdgo._internal.go.doc.comment.Comment__isscheme._isScheme((_s.__slice__(0, _i_15) : stdgo.GoString)?.__copy__())) {
                        _gotoNext = 3652815i32;
                    } else {
                        _gotoNext = 3652937i32;
                    };
                } else if (__value__ == (3652815i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3652937i32;
                } else if (__value__ == (3652937i32)) {
                    _i_15 = (_i_15 + ((3 : stdgo.GoInt)) : stdgo.GoInt);
                    if ((((_i_15 >= (_s.length) : Bool) || !stdgo._internal.go.doc.comment.Comment__ishost._isHost(_s[(_i_15 : stdgo.GoInt)]) : Bool) || stdgo._internal.go.doc.comment.Comment__ispunct._isPunct(_s[(_i_15 : stdgo.GoInt)]) : Bool)) {
                        _gotoNext = 3652994i32;
                    } else {
                        _gotoNext = 3653019i32;
                    };
                } else if (__value__ == (3652994i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : false };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 3653019i32;
                } else if (__value__ == (3653019i32)) {
                    _i_15++;
                    _end_16 = _i_15;
                    0i32;
                    _gotoNext = 3653034i32;
                } else if (__value__ == (3653034i32)) {
                    if (((_i_15 < (_s.length) : Bool) && stdgo._internal.go.doc.comment.Comment__ishost._isHost(_s[(_i_15 : stdgo.GoInt)]) : Bool)) {
                        _gotoNext = 3653065i32;
                    } else {
                        _gotoNext = 3653118i32;
                    };
                } else if (__value__ == (3653065i32)) {
                    if (!stdgo._internal.go.doc.comment.Comment__ispunct._isPunct(_s[(_i_15 : stdgo.GoInt)])) {
                        _gotoNext = 3653087i32;
                    } else {
                        _gotoNext = 3653110i32;
                    };
                } else if (__value__ == (3653087i32)) {
                    _end_16 = (_i_15 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3653110i32;
                } else if (__value__ == (3653110i32)) {
                    _i_15++;
                    _gotoNext = 3653034i32;
                } else if (__value__ == (3653118i32)) {
                    _i_15 = _end_16;
                    _stk_17 = (new stdgo.Slice<stdgo.GoUInt8>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    _end_16 = _i_15;
                    _gotoNext = 3653503i32;
                } else if (__value__ == (3653503i32)) {
                    0i32;
                    pathBreak = false;
                    _gotoNext = 3653510i32;
                } else if (__value__ == (3653510i32)) {
                    if (!pathBreak && ((_i_15 < (_s.length) : Bool))) {
                        _gotoNext = 3653532i32;
                    } else {
                        _gotoNext = 3653901i32;
                    };
                } else if (__value__ == (3653528i32)) {
                    _i_15++;
                    _gotoNext = 3653510i32;
                } else if (__value__ == (3653532i32)) {
                    if (stdgo._internal.go.doc.comment.Comment__ispunct._isPunct(_s[(_i_15 : stdgo.GoInt)])) {
                        _gotoNext = 3653553i32;
                    } else {
                        _gotoNext = 3653573i32;
                    };
                } else if (__value__ == (3653553i32)) {
                    _i_15++;
                    _gotoNext = 3653510i32;
                } else if (__value__ == (3653573i32)) {
                    if (!stdgo._internal.go.doc.comment.Comment__ispath._isPath(_s[(_i_15 : stdgo.GoInt)])) {
                        _gotoNext = 3653590i32;
                    } else {
                        _gotoNext = 3653607i32;
                    };
                } else if (__value__ == (3653590i32)) {
                    _gotoNext = 3653901i32;
                } else if (__value__ == (3653607i32)) {
                    _gotoNext = 3653607i32;
                    {
                        final __value__ = _s[(_i_15 : stdgo.GoInt)];
                        if (__value__ == ((40 : stdgo.GoUInt8))) {
                            _gotoNext = 3653623i32;
                        } else if (__value__ == ((123 : stdgo.GoUInt8))) {
                            _gotoNext = 3653661i32;
                        } else if (__value__ == ((91 : stdgo.GoUInt8))) {
                            _gotoNext = 3653699i32;
                        } else if (__value__ == ((41 : stdgo.GoUInt8)) || __value__ == ((125 : stdgo.GoUInt8)) || __value__ == ((93 : stdgo.GoUInt8))) {
                            _gotoNext = 3653737i32;
                        } else {
                            _gotoNext = 3653858i32;
                        };
                    };
                } else if (__value__ == (3653623i32)) {
                    _stk_17 = (_stk_17.__append__((41 : stdgo.GoUInt8)));
                    _gotoNext = 3653858i32;
                } else if (__value__ == (3653661i32)) {
                    _stk_17 = (_stk_17.__append__((125 : stdgo.GoUInt8)));
                    _gotoNext = 3653858i32;
                } else if (__value__ == (3653699i32)) {
                    _stk_17 = (_stk_17.__append__((93 : stdgo.GoUInt8)));
                    _gotoNext = 3653858i32;
                } else if (__value__ == (3653737i32)) {
                    if (((_stk_17.length == (0 : stdgo.GoInt)) || (_stk_17[((_stk_17.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != _s[(_i_15 : stdgo.GoInt)]) : Bool)) {
                        _gotoNext = 3653804i32;
                    } else {
                        _gotoNext = 3653829i32;
                    };
                } else if (__value__ == (3653804i32)) {
                    pathBreak = true;
                    _gotoNext = 3653510i32;
                } else if (__value__ == (3653829i32)) {
                    _stk_17 = (_stk_17.__slice__(0, ((_stk_17.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 3653858i32;
                } else if (__value__ == (3653858i32)) {
                    if ((_stk_17.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 3653875i32;
                    } else {
                        _gotoNext = 3653528i32;
                    };
                } else if (__value__ == (3653875i32)) {
                    _end_16 = (_i_15 + (1 : stdgo.GoInt) : stdgo.GoInt);
                    _gotoNext = 3653528i32;
                } else if (__value__ == (3653901i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.GoString; var _1 : Bool; } = { _0 : (_s.__slice__(0, _end_16) : stdgo.GoString)?.__copy__(), _1 : true };
                        _url = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
