package stdgo._internal.go.scanner;
@:keep @:allow(stdgo._internal.go.scanner.Scanner.Scanner_asInterface) class Scanner_static_extension {
    @:keep
    @:tdfield
    static public function scan( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):{ var _0 : stdgo._internal.go.token.Token_pos.Pos; var _1 : stdgo._internal.go.token.Token_token.Token; var _2 : stdgo.GoString; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos), _tok = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_token.Token), _lit = ("" : stdgo.GoString);
        var _nlOffset_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _comment_11:stdgo.GoString = ("" : stdgo.GoString);
        var _ch_10:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _insertSemi_9:Bool = false;
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 4630436i32;
                } else if (__value__ == (4630436i32)) {
                    if ((@:checkr _s ?? throw "null pointer dereference")._nlPos.isValid()) {
                        _gotoNext = 4630469i32;
                    } else {
                        _gotoNext = 4630668i32;
                    };
                } else if (__value__ == (4630469i32)) {
                    {
                        final __tmp__0 = (@:checkr _s ?? throw "null pointer dereference")._nlPos;
                        final __tmp__1 = (57 : stdgo._internal.go.token.Token_token.Token);
                        final __tmp__2 = ("\n" : stdgo.GoString);
                        _pos = @:binopAssign __tmp__0;
                        _tok = @:binopAssign __tmp__1;
                        _lit = @:binopAssign __tmp__2;
                    };
                    (@:checkr _s ?? throw "null pointer dereference")._nlPos = (0 : stdgo._internal.go.token.Token_pos.Pos);
                    return { _0 : _pos, _1 : _tok, _2 : _lit };
                    _gotoNext = 4630668i32;
                } else if (__value__ == (4630668i32)) {
                    @:check2r _s._skipWhitespace();
                    _pos = @:check2r (@:checkr _s ?? throw "null pointer dereference")._file.pos((@:checkr _s ?? throw "null pointer dereference")._offset);
                    _insertSemi_9 = false;
                    _gotoNext = 4630789i32;
                } else if (__value__ == (4630789i32)) {
                    {
                        _ch_10 = (@:checkr _s ?? throw "null pointer dereference")._ch;
                        if (stdgo._internal.go.scanner.Scanner__isletter._isLetter(_ch_10)) {
                            _gotoNext = 4630811i32;
                        } else if ((stdgo._internal.go.scanner.Scanner__isdecimal._isDecimal(_ch_10) || (_ch_10 == ((46 : stdgo.GoInt32)) && stdgo._internal.go.scanner.Scanner__isdecimal._isDecimal((@:check2r _s._peek() : stdgo.GoInt32)) : Bool) : Bool)) {
                            _gotoNext = 4631155i32;
                        } else {
                            _gotoNext = 4631266i32;
                        };
                    };
                } else if (__value__ == (4630811i32)) {
                    _lit = @:check2r _s._scanIdentifier()?.__copy__();
                    if (((_lit.length) > (1 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4630875i32;
                    } else {
                        _gotoNext = 4631106i32;
                    };
                } else if (__value__ == (4630875i32)) {
                    _tok = stdgo._internal.go.token.Token_lookup.lookup(_lit?.__copy__());
                    _gotoNext = 4630974i32;
                } else if (__value__ == (4630974i32)) {
                    {
                        final __value__ = _tok;
                        if (__value__ == ((4 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((61 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((65 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((69 : stdgo._internal.go.token.Token_token.Token)) || __value__ == ((80 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 4630990i32;
                        } else {
                            _gotoNext = 4634443i32;
                        };
                    };
                } else if (__value__ == (4630990i32)) {
                    _insertSemi_9 = true;
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4631106i32)) {
                    _gotoNext = 4631106i32;
                    _insertSemi_9 = true;
                    _tok = (4 : stdgo._internal.go.token.Token_token.Token);
                    0i32;
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4631155i32)) {
                    _insertSemi_9 = true;
                    {
                        var __tmp__ = @:check2r _s._scanNumber();
                        _tok = @:tmpset0 __tmp__._0;
                        _lit = @:tmpset0 __tmp__._1?.__copy__();
                    };
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4631266i32)) {
                    @:check2r _s._next();
                    _gotoNext = 4631312i32;
                } else if (__value__ == (4631312i32)) {
                    {
                        final __value__ = _ch_10;
                        if (__value__ == ((-1 : stdgo.GoInt32))) {
                            _gotoNext = 4631326i32;
                        } else if (__value__ == ((10 : stdgo.GoInt32))) {
                            _gotoNext = 4631462i32;
                        } else if (__value__ == ((34 : stdgo.GoInt32))) {
                            _gotoNext = 4631677i32;
                        } else if (__value__ == ((39 : stdgo.GoInt32))) {
                            _gotoNext = 4631756i32;
                        } else if (__value__ == ((96 : stdgo.GoInt32))) {
                            _gotoNext = 4631832i32;
                        } else if (__value__ == ((58 : stdgo.GoInt32))) {
                            _gotoNext = 4631914i32;
                        } else if (__value__ == ((46 : stdgo.GoInt32))) {
                            _gotoNext = 4631972i32;
                        } else if (__value__ == ((44 : stdgo.GoInt32))) {
                            _gotoNext = 4632185i32;
                        } else if (__value__ == ((59 : stdgo.GoInt32))) {
                            _gotoNext = 4632218i32;
                        } else if (__value__ == ((40 : stdgo.GoInt32))) {
                            _gotoNext = 4632268i32;
                        } else if (__value__ == ((41 : stdgo.GoInt32))) {
                            _gotoNext = 4632302i32;
                        } else if (__value__ == ((91 : stdgo.GoInt32))) {
                            _gotoNext = 4632357i32;
                        } else if (__value__ == ((93 : stdgo.GoInt32))) {
                            _gotoNext = 4632391i32;
                        } else if (__value__ == ((123 : stdgo.GoInt32))) {
                            _gotoNext = 4632446i32;
                        } else if (__value__ == ((125 : stdgo.GoInt32))) {
                            _gotoNext = 4632480i32;
                        } else if (__value__ == ((43 : stdgo.GoInt32))) {
                            _gotoNext = 4632535i32;
                        } else if (__value__ == ((45 : stdgo.GoInt32))) {
                            _gotoNext = 4632663i32;
                        } else if (__value__ == ((42 : stdgo.GoInt32))) {
                            _gotoNext = 4632791i32;
                        } else if (__value__ == ((47 : stdgo.GoInt32))) {
                            _gotoNext = 4632851i32;
                        } else if (__value__ == ((37 : stdgo.GoInt32))) {
                            _gotoNext = 4633423i32;
                        } else if (__value__ == ((94 : stdgo.GoInt32))) {
                            _gotoNext = 4633483i32;
                        } else if (__value__ == ((60 : stdgo.GoInt32))) {
                            _gotoNext = 4633543i32;
                        } else if (__value__ == ((62 : stdgo.GoInt32))) {
                            _gotoNext = 4633703i32;
                        } else if (__value__ == ((61 : stdgo.GoInt32))) {
                            _gotoNext = 4633790i32;
                        } else if (__value__ == ((33 : stdgo.GoInt32))) {
                            _gotoNext = 4633846i32;
                        } else if (__value__ == ((38 : stdgo.GoInt32))) {
                            _gotoNext = 4633899i32;
                        } else if (__value__ == ((124 : stdgo.GoInt32))) {
                            _gotoNext = 4634084i32;
                        } else if (__value__ == ((126 : stdgo.GoInt32))) {
                            _gotoNext = 4634158i32;
                        } else {
                            _gotoNext = 4634191i32;
                        };
                    };
                } else if (__value__ == (4631326i32)) {
                    if ((@:checkr _s ?? throw "null pointer dereference")._insertSemi) {
                        _gotoNext = 4631355i32;
                    } else {
                        _gotoNext = 4631444i32;
                    };
                } else if (__value__ == (4631355i32)) {
                    (@:checkr _s ?? throw "null pointer dereference")._insertSemi = false;
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.go.token.Token_pos.Pos; var _1 : stdgo._internal.go.token.Token_token.Token; var _2 : stdgo.GoString; } = { _0 : _pos, _1 : (57 : stdgo._internal.go.token.Token_token.Token), _2 : ("\n" : stdgo.GoString) };
                        _pos = __tmp__._0;
                        _tok = __tmp__._1;
                        _lit = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 4631444i32;
                } else if (__value__ == (4631444i32)) {
                    _tok = (1 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4631462i32)) {
                    (@:checkr _s ?? throw "null pointer dereference")._insertSemi = false;
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.go.token.Token_pos.Pos; var _1 : stdgo._internal.go.token.Token_token.Token; var _2 : stdgo.GoString; } = { _0 : _pos, _1 : (57 : stdgo._internal.go.token.Token_token.Token), _2 : ("\n" : stdgo.GoString) };
                        _pos = __tmp__._0;
                        _tok = __tmp__._1;
                        _lit = __tmp__._2;
                        __tmp__;
                    };
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4631677i32)) {
                    _insertSemi_9 = true;
                    _tok = (9 : stdgo._internal.go.token.Token_token.Token);
                    _lit = @:check2r _s._scanString()?.__copy__();
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4631756i32)) {
                    _insertSemi_9 = true;
                    _tok = (8 : stdgo._internal.go.token.Token_token.Token);
                    _lit = @:check2r _s._scanRune()?.__copy__();
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4631832i32)) {
                    _insertSemi_9 = true;
                    _tok = (9 : stdgo._internal.go.token.Token_token.Token);
                    _lit = @:check2r _s._scanRawString()?.__copy__();
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4631914i32)) {
                    _tok = @:check2r _s._switch2((58 : stdgo._internal.go.token.Token_token.Token), (47 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4631972i32)) {
                    _tok = (53 : stdgo._internal.go.token.Token_token.Token);
                    if ((((@:checkr _s ?? throw "null pointer dereference")._ch == (46 : stdgo.GoInt32)) && (@:check2r _s._peek() == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4632105i32;
                    } else {
                        _gotoNext = 4634443i32;
                    };
                } else if (__value__ == (4632105i32)) {
                    @:check2r _s._next();
                    @:check2r _s._next();
                    _tok = (48 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4632185i32)) {
                    _tok = (52 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4632218i32)) {
                    _tok = (57 : stdgo._internal.go.token.Token_token.Token);
                    _lit = (";" : stdgo.GoString);
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4632268i32)) {
                    _tok = (49 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4632302i32)) {
                    _insertSemi_9 = true;
                    _tok = (54 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4632357i32)) {
                    _tok = (50 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4632391i32)) {
                    _insertSemi_9 = true;
                    _tok = (55 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4632446i32)) {
                    _tok = (51 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4632480i32)) {
                    _insertSemi_9 = true;
                    _tok = (56 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4632535i32)) {
                    _tok = @:check2r _s._switch3((12 : stdgo._internal.go.token.Token_token.Token), (23 : stdgo._internal.go.token.Token_token.Token), (43 : stdgo.GoInt32), (37 : stdgo._internal.go.token.Token_token.Token));
                    if (_tok == ((37 : stdgo._internal.go.token.Token_token.Token))) {
                        _gotoNext = 4632632i32;
                    } else {
                        _gotoNext = 4634443i32;
                    };
                } else if (__value__ == (4632632i32)) {
                    _insertSemi_9 = true;
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4632663i32)) {
                    _tok = @:check2r _s._switch3((13 : stdgo._internal.go.token.Token_token.Token), (24 : stdgo._internal.go.token.Token_token.Token), (45 : stdgo.GoInt32), (38 : stdgo._internal.go.token.Token_token.Token));
                    if (_tok == ((38 : stdgo._internal.go.token.Token_token.Token))) {
                        _gotoNext = 4632760i32;
                    } else {
                        _gotoNext = 4634443i32;
                    };
                } else if (__value__ == (4632760i32)) {
                    _insertSemi_9 = true;
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4632791i32)) {
                    _tok = @:check2r _s._switch2((14 : stdgo._internal.go.token.Token_token.Token), (25 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4632851i32)) {
                    if ((((@:checkr _s ?? throw "null pointer dereference")._ch == (47 : stdgo.GoInt32)) || ((@:checkr _s ?? throw "null pointer dereference")._ch == (42 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4632894i32;
                    } else {
                        _gotoNext = 4633349i32;
                    };
                } else if (__value__ == (4632894i32)) {
                    {
                        var __tmp__ = @:check2r _s._scanComment();
                        _comment_11 = @:tmpset0 __tmp__._0?.__copy__();
                        _nlOffset_12 = @:tmpset0 __tmp__._1;
                    };
                    if (((@:checkr _s ?? throw "null pointer dereference")._insertSemi && (_nlOffset_12 != (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 4632989i32;
                    } else {
                        _gotoNext = 4633149i32;
                    };
                } else if (__value__ == (4632989i32)) {
                    (@:checkr _s ?? throw "null pointer dereference")._nlPos = @:check2r (@:checkr _s ?? throw "null pointer dereference")._file.pos(_nlOffset_12);
                    (@:checkr _s ?? throw "null pointer dereference")._insertSemi = false;
                    _gotoNext = 4633220i32;
                } else if (__value__ == (4633149i32)) {
                    _gotoNext = 4633149i32;
                    _insertSemi_9 = (@:checkr _s ?? throw "null pointer dereference")._insertSemi;
                    0i32;
                    _gotoNext = 4633220i32;
                } else if (__value__ == (4633220i32)) {
                    if (((@:checkr _s ?? throw "null pointer dereference")._mode & (1u32 : stdgo._internal.go.scanner.Scanner_mode.Mode) : stdgo._internal.go.scanner.Scanner_mode.Mode) == ((0u32 : stdgo._internal.go.scanner.Scanner_mode.Mode))) {
                        _gotoNext = 4633248i32;
                    } else {
                        _gotoNext = 4633301i32;
                    };
                } else if (__value__ == (4633248i32)) {
                    _gotoNext = 4630436i32;
                } else if (__value__ == (4633301i32)) {
                    _tok = (2 : stdgo._internal.go.token.Token_token.Token);
                    _lit = _comment_11?.__copy__();
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4633349i32)) {
                    _gotoNext = 4633349i32;
                    _tok = @:check2r _s._switch2((15 : stdgo._internal.go.token.Token_token.Token), (26 : stdgo._internal.go.token.Token_token.Token));
                    0i32;
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4633423i32)) {
                    _tok = @:check2r _s._switch2((16 : stdgo._internal.go.token.Token_token.Token), (27 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4633483i32)) {
                    _tok = @:check2r _s._switch2((19 : stdgo._internal.go.token.Token_token.Token), (30 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4633543i32)) {
                    if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((45 : stdgo.GoInt32))) {
                        _gotoNext = 4633571i32;
                    } else {
                        _gotoNext = 4633618i32;
                    };
                } else if (__value__ == (4633571i32)) {
                    @:check2r _s._next();
                    _tok = (36 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4633618i32)) {
                    _gotoNext = 4633618i32;
                    _tok = @:check2r _s._switch4((40 : stdgo._internal.go.token.Token_token.Token), (45 : stdgo._internal.go.token.Token_token.Token), (60 : stdgo.GoInt32), (20 : stdgo._internal.go.token.Token_token.Token), (31 : stdgo._internal.go.token.Token_token.Token));
                    0i32;
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4633703i32)) {
                    _tok = @:check2r _s._switch4((41 : stdgo._internal.go.token.Token_token.Token), (46 : stdgo._internal.go.token.Token_token.Token), (62 : stdgo.GoInt32), (21 : stdgo._internal.go.token.Token_token.Token), (32 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4633790i32)) {
                    _tok = @:check2r _s._switch2((42 : stdgo._internal.go.token.Token_token.Token), (39 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4633846i32)) {
                    _tok = @:check2r _s._switch2((43 : stdgo._internal.go.token.Token_token.Token), (44 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4633899i32)) {
                    if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((94 : stdgo.GoInt32))) {
                        _gotoNext = 4633927i32;
                    } else {
                        _gotoNext = 4634009i32;
                    };
                } else if (__value__ == (4633927i32)) {
                    @:check2r _s._next();
                    _tok = @:check2r _s._switch2((22 : stdgo._internal.go.token.Token_token.Token), (33 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4634009i32)) {
                    _gotoNext = 4634009i32;
                    _tok = @:check2r _s._switch3((17 : stdgo._internal.go.token.Token_token.Token), (28 : stdgo._internal.go.token.Token_token.Token), (38 : stdgo.GoInt32), (34 : stdgo._internal.go.token.Token_token.Token));
                    0i32;
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4634084i32)) {
                    _tok = @:check2r _s._switch3((18 : stdgo._internal.go.token.Token_token.Token), (29 : stdgo._internal.go.token.Token_token.Token), (124 : stdgo.GoInt32), (35 : stdgo._internal.go.token.Token_token.Token));
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4634158i32)) {
                    _tok = (88 : stdgo._internal.go.token.Token_token.Token);
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4634191i32)) {
                    if (_ch_10 != ((65279 : stdgo.GoInt32))) {
                        _gotoNext = 4634266i32;
                    } else {
                        _gotoNext = 4634338i32;
                    };
                } else if (__value__ == (4634266i32)) {
                    @:check2r _s._errorf(@:check2r (@:checkr _s ?? throw "null pointer dereference")._file.offset(_pos), ("illegal character %#U" : stdgo.GoString), stdgo.Go.toInterface(_ch_10));
                    _gotoNext = 4634338i32;
                } else if (__value__ == (4634338i32)) {
                    _insertSemi_9 = (@:checkr _s ?? throw "null pointer dereference")._insertSemi;
                    _tok = (0 : stdgo._internal.go.token.Token_token.Token);
                    _lit = (_ch_10 : stdgo.GoString)?.__copy__();
                    _gotoNext = 4634443i32;
                } else if (__value__ == (4634443i32)) {
                    if (((@:checkr _s ?? throw "null pointer dereference")._mode & (2u32 : stdgo._internal.go.scanner.Scanner_mode.Mode) : stdgo._internal.go.scanner.Scanner_mode.Mode) == ((0u32 : stdgo._internal.go.scanner.Scanner_mode.Mode))) {
                        _gotoNext = 4634474i32;
                    } else {
                        _gotoNext = 4634509i32;
                    };
                } else if (__value__ == (4634474i32)) {
                    (@:checkr _s ?? throw "null pointer dereference")._insertSemi = _insertSemi_9;
                    _gotoNext = 4634509i32;
                } else if (__value__ == (4634509i32)) {
                    return { _0 : _pos, _1 : _tok, _2 : _lit };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _switch4( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _tok0:stdgo._internal.go.token.Token_token.Token, _tok1:stdgo._internal.go.token.Token_token.Token, _ch2:stdgo.GoInt32, _tok2:stdgo._internal.go.token.Token_token.Token, _tok3:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((61 : stdgo.GoInt32))) {
            @:check2r _s._next();
            return _tok1;
        };
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == (_ch2)) {
            @:check2r _s._next();
            if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((61 : stdgo.GoInt32))) {
                @:check2r _s._next();
                return _tok3;
            };
            return _tok2;
        };
        return _tok0;
    }
    @:keep
    @:tdfield
    static public function _switch3( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _tok0:stdgo._internal.go.token.Token_token.Token, _tok1:stdgo._internal.go.token.Token_token.Token, _ch2:stdgo.GoInt32, _tok2:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((61 : stdgo.GoInt32))) {
            @:check2r _s._next();
            return _tok1;
        };
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == (_ch2)) {
            @:check2r _s._next();
            return _tok2;
        };
        return _tok0;
    }
    @:keep
    @:tdfield
    static public function _switch2( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _tok0:stdgo._internal.go.token.Token_token.Token, _tok1:stdgo._internal.go.token.Token_token.Token):stdgo._internal.go.token.Token_token.Token {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((61 : stdgo.GoInt32))) {
            @:check2r _s._next();
            return _tok1;
        };
        return _tok0;
    }
    @:keep
    @:tdfield
    static public function _skipWhitespace( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        while (((((@:checkr _s ?? throw "null pointer dereference")._ch == ((32 : stdgo.GoInt32)) || (@:checkr _s ?? throw "null pointer dereference")._ch == ((9 : stdgo.GoInt32)) : Bool) || ((@:checkr _s ?? throw "null pointer dereference")._ch == ((10 : stdgo.GoInt32)) && !(@:checkr _s ?? throw "null pointer dereference")._insertSemi : Bool) : Bool) || ((@:checkr _s ?? throw "null pointer dereference")._ch == (13 : stdgo.GoInt32)) : Bool)) {
            @:check2r _s._next();
        };
    }
    @:keep
    @:tdfield
    static public function _scanRawString( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs = ((@:checkr _s ?? throw "null pointer dereference")._offset - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _hasCR = (false : Bool);
        while (true) {
            var _ch = ((@:checkr _s ?? throw "null pointer dereference")._ch : stdgo.GoInt32);
            if ((_ch < (0 : stdgo.GoInt32) : Bool)) {
                @:check2r _s._error(_offs, ("raw string literal not terminated" : stdgo.GoString));
                break;
            };
            @:check2r _s._next();
            if (_ch == ((96 : stdgo.GoInt32))) {
                break;
            };
            if (_ch == ((13 : stdgo.GoInt32))) {
                _hasCR = true;
            };
        };
        var _lit = ((@:checkr _s ?? throw "null pointer dereference")._src.__slice__(_offs, (@:checkr _s ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>);
        if (_hasCR) {
            _lit = stdgo._internal.go.scanner.Scanner__stripcr._stripCR(_lit, false);
        };
        return (_lit : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _scanString( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs = ((@:checkr _s ?? throw "null pointer dereference")._offset - (1 : stdgo.GoInt) : stdgo.GoInt);
        while (true) {
            var _ch = ((@:checkr _s ?? throw "null pointer dereference")._ch : stdgo.GoInt32);
            if (((_ch == (10 : stdgo.GoInt32)) || (_ch < (0 : stdgo.GoInt32) : Bool) : Bool)) {
                @:check2r _s._error(_offs, ("string literal not terminated" : stdgo.GoString));
                break;
            };
            @:check2r _s._next();
            if (_ch == ((34 : stdgo.GoInt32))) {
                break;
            };
            if (_ch == ((92 : stdgo.GoInt32))) {
                @:check2r _s._scanEscape((34 : stdgo.GoInt32));
            };
        };
        return (((@:checkr _s ?? throw "null pointer dereference")._src.__slice__(_offs, (@:checkr _s ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _scanRune( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs = ((@:checkr _s ?? throw "null pointer dereference")._offset - (1 : stdgo.GoInt) : stdgo.GoInt);
        var _valid = (true : Bool);
        var _n = (0 : stdgo.GoInt);
        while (true) {
            var _ch = ((@:checkr _s ?? throw "null pointer dereference")._ch : stdgo.GoInt32);
            if (((_ch == (10 : stdgo.GoInt32)) || (_ch < (0 : stdgo.GoInt32) : Bool) : Bool)) {
                if (_valid) {
                    @:check2r _s._error(_offs, ("rune literal not terminated" : stdgo.GoString));
                    _valid = false;
                };
                break;
            };
            @:check2r _s._next();
            if (_ch == ((39 : stdgo.GoInt32))) {
                break;
            };
            _n++;
            if (_ch == ((92 : stdgo.GoInt32))) {
                if (!@:check2r _s._scanEscape((39 : stdgo.GoInt32))) {
                    _valid = false;
                };
            };
        };
        if ((_valid && (_n != (1 : stdgo.GoInt)) : Bool)) {
            @:check2r _s._error(_offs, ("illegal rune literal" : stdgo.GoString));
        };
        return (((@:checkr _s ?? throw "null pointer dereference")._src.__slice__(_offs, (@:checkr _s ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _scanEscape( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _quote:stdgo.GoInt32):Bool {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs = ((@:checkr _s ?? throw "null pointer dereference")._offset : stdgo.GoInt);
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        var _base:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _max:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        {
            final __value__ = (@:checkr _s ?? throw "null pointer dereference")._ch;
            if (__value__ == ((97 : stdgo.GoInt32)) || __value__ == ((98 : stdgo.GoInt32)) || __value__ == ((102 : stdgo.GoInt32)) || __value__ == ((110 : stdgo.GoInt32)) || __value__ == ((114 : stdgo.GoInt32)) || __value__ == ((116 : stdgo.GoInt32)) || __value__ == ((118 : stdgo.GoInt32)) || __value__ == ((92 : stdgo.GoInt32)) || __value__ == (_quote)) {
                @:check2r _s._next();
                return true;
            } else if (__value__ == ((48 : stdgo.GoInt32)) || __value__ == ((49 : stdgo.GoInt32)) || __value__ == ((50 : stdgo.GoInt32)) || __value__ == ((51 : stdgo.GoInt32)) || __value__ == ((52 : stdgo.GoInt32)) || __value__ == ((53 : stdgo.GoInt32)) || __value__ == ((54 : stdgo.GoInt32)) || __value__ == ((55 : stdgo.GoInt32))) {
                {
                    final __tmp__0 = (3 : stdgo.GoInt);
                    final __tmp__1 = (8u32 : stdgo.GoUInt32);
                    final __tmp__2 = (255u32 : stdgo.GoUInt32);
                    _n = @:binopAssign __tmp__0;
                    _base = @:binopAssign __tmp__1;
                    _max = @:binopAssign __tmp__2;
                };
            } else if (__value__ == ((120 : stdgo.GoInt32))) {
                @:check2r _s._next();
                {
                    final __tmp__0 = (2 : stdgo.GoInt);
                    final __tmp__1 = (16u32 : stdgo.GoUInt32);
                    final __tmp__2 = (255u32 : stdgo.GoUInt32);
                    _n = @:binopAssign __tmp__0;
                    _base = @:binopAssign __tmp__1;
                    _max = @:binopAssign __tmp__2;
                };
            } else if (__value__ == ((117 : stdgo.GoInt32))) {
                @:check2r _s._next();
                {
                    final __tmp__0 = (4 : stdgo.GoInt);
                    final __tmp__1 = (16u32 : stdgo.GoUInt32);
                    final __tmp__2 = (1114111u32 : stdgo.GoUInt32);
                    _n = @:binopAssign __tmp__0;
                    _base = @:binopAssign __tmp__1;
                    _max = @:binopAssign __tmp__2;
                };
            } else if (__value__ == ((85 : stdgo.GoInt32))) {
                @:check2r _s._next();
                {
                    final __tmp__0 = (8 : stdgo.GoInt);
                    final __tmp__1 = (16u32 : stdgo.GoUInt32);
                    final __tmp__2 = (1114111u32 : stdgo.GoUInt32);
                    _n = @:binopAssign __tmp__0;
                    _base = @:binopAssign __tmp__1;
                    _max = @:binopAssign __tmp__2;
                };
            } else {
                var _msg = (("unknown escape sequence" : stdgo.GoString) : stdgo.GoString);
                if (((@:checkr _s ?? throw "null pointer dereference")._ch < (0 : stdgo.GoInt32) : Bool)) {
                    _msg = ("escape sequence not terminated" : stdgo.GoString);
                };
                @:check2r _s._error(_offs, _msg?.__copy__());
                return false;
            };
        };
        var _x:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        while ((_n > (0 : stdgo.GoInt) : Bool)) {
            var _d = (stdgo._internal.go.scanner.Scanner__digitval._digitVal((@:checkr _s ?? throw "null pointer dereference")._ch) : stdgo.GoUInt32);
            if ((_d >= _base : Bool)) {
                var _msg = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("illegal character %#U in escape sequence" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._ch))?.__copy__() : stdgo.GoString);
                if (((@:checkr _s ?? throw "null pointer dereference")._ch < (0 : stdgo.GoInt32) : Bool)) {
                    _msg = ("escape sequence not terminated" : stdgo.GoString);
                };
                @:check2r _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, _msg?.__copy__());
                return false;
            };
            _x = ((_x * _base : stdgo.GoUInt32) + _d : stdgo.GoUInt32);
            @:check2r _s._next();
            _n--;
        };
        if (((_x > _max : Bool) || (((55296u32 : stdgo.GoUInt32) <= _x : Bool) && (_x < (57344u32 : stdgo.GoUInt32) : Bool) : Bool) : Bool)) {
            @:check2r _s._error(_offs, ("escape sequence is invalid Unicode code point" : stdgo.GoString));
            return false;
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _scanNumber( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):{ var _0 : stdgo._internal.go.token.Token_token.Token; var _1 : stdgo.GoString; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _offs = ((@:checkr _s ?? throw "null pointer dereference")._offset : stdgo.GoInt);
        var _tok = (0 : stdgo._internal.go.token.Token_token.Token);
        var _base = (10 : stdgo.GoInt);
        var _prefix = ((0 : stdgo.GoInt32) : stdgo.GoInt32);
        var _digsep = (0 : stdgo.GoInt);
        var _invalid = (-1 : stdgo.GoInt);
        var _invalid__pointer__ = stdgo.Go.pointer(_invalid);
        var _invalid__pointer__ = stdgo.Go.pointer(_invalid);
        var _invalid__pointer__ = stdgo.Go.pointer(_invalid);
        var _invalid__pointer__ = stdgo.Go.pointer(_invalid);
        if ((@:checkr _s ?? throw "null pointer dereference")._ch != ((46 : stdgo.GoInt32))) {
            _tok = (5 : stdgo._internal.go.token.Token_token.Token);
            if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((48 : stdgo.GoInt32))) {
                @:check2r _s._next();
                {
                    final __value__ = stdgo._internal.go.scanner.Scanner__lower._lower((@:checkr _s ?? throw "null pointer dereference")._ch);
                    if (__value__ == ((120 : stdgo.GoInt32))) {
                        @:check2r _s._next();
                        {
                            final __tmp__0 = (16 : stdgo.GoInt);
                            final __tmp__1 = (120 : stdgo.GoInt32);
                            _base = @:binopAssign __tmp__0;
                            _prefix = @:binopAssign __tmp__1;
                        };
                    } else if (__value__ == ((111 : stdgo.GoInt32))) {
                        @:check2r _s._next();
                        {
                            final __tmp__0 = (8 : stdgo.GoInt);
                            final __tmp__1 = (111 : stdgo.GoInt32);
                            _base = @:binopAssign __tmp__0;
                            _prefix = @:binopAssign __tmp__1;
                        };
                    } else if (__value__ == ((98 : stdgo.GoInt32))) {
                        @:check2r _s._next();
                        {
                            final __tmp__0 = (2 : stdgo.GoInt);
                            final __tmp__1 = (98 : stdgo.GoInt32);
                            _base = @:binopAssign __tmp__0;
                            _prefix = @:binopAssign __tmp__1;
                        };
                    } else {
                        {
                            final __tmp__0 = (8 : stdgo.GoInt);
                            final __tmp__1 = (48 : stdgo.GoInt32);
                            _base = @:binopAssign __tmp__0;
                            _prefix = @:binopAssign __tmp__1;
                        };
                        _digsep = (1 : stdgo.GoInt);
                    };
                };
            };
            _digsep = (_digsep | (@:check2r _s._digits(_base, _invalid__pointer__)) : stdgo.GoInt);
        };
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((46 : stdgo.GoInt32))) {
            _tok = (6 : stdgo._internal.go.token.Token_token.Token);
            if (((_prefix == (111 : stdgo.GoInt32)) || (_prefix == (98 : stdgo.GoInt32)) : Bool)) {
                @:check2r _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, (("invalid radix point in " : stdgo.GoString) + stdgo._internal.go.scanner.Scanner__litname._litname(_prefix)?.__copy__() : stdgo.GoString)?.__copy__());
            };
            @:check2r _s._next();
            _digsep = (_digsep | (@:check2r _s._digits(_base, _invalid__pointer__)) : stdgo.GoInt);
        };
        if ((_digsep & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
            @:check2r _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, (stdgo._internal.go.scanner.Scanner__litname._litname(_prefix) + (" has no digits" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
        };
        {
            var _e = (stdgo._internal.go.scanner.Scanner__lower._lower((@:checkr _s ?? throw "null pointer dereference")._ch) : stdgo.GoInt32);
            if (((_e == (101 : stdgo.GoInt32)) || (_e == (112 : stdgo.GoInt32)) : Bool)) {
                if (((_e == ((101 : stdgo.GoInt32)) && _prefix != ((0 : stdgo.GoInt32)) : Bool) && (_prefix != (48 : stdgo.GoInt32)) : Bool)) {
                    @:check2r _s._errorf((@:checkr _s ?? throw "null pointer dereference")._offset, ("%q exponent requires decimal mantissa" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._ch));
                } else if (((_e == (112 : stdgo.GoInt32)) && (_prefix != (120 : stdgo.GoInt32)) : Bool)) {
                    @:check2r _s._errorf((@:checkr _s ?? throw "null pointer dereference")._offset, ("%q exponent requires hexadecimal mantissa" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._ch));
                };
                @:check2r _s._next();
                _tok = (6 : stdgo._internal.go.token.Token_token.Token);
                if ((((@:checkr _s ?? throw "null pointer dereference")._ch == (43 : stdgo.GoInt32)) || ((@:checkr _s ?? throw "null pointer dereference")._ch == (45 : stdgo.GoInt32)) : Bool)) {
                    @:check2r _s._next();
                };
                var _ds = (@:check2r _s._digits((10 : stdgo.GoInt), (null : stdgo.Pointer<stdgo.GoInt>)) : stdgo.GoInt);
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                if ((_ds & (1 : stdgo.GoInt) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                    @:check2r _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, ("exponent has no digits" : stdgo.GoString));
                };
            } else if (((_prefix == (120 : stdgo.GoInt32)) && (_tok == (6 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                @:check2r _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, ("hexadecimal mantissa requires a \'p\' exponent" : stdgo.GoString));
            };
        };
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((105 : stdgo.GoInt32))) {
            _tok = (7 : stdgo._internal.go.token.Token_token.Token);
            @:check2r _s._next();
        };
        var _lit = ((((@:checkr _s ?? throw "null pointer dereference")._src.__slice__(_offs, (@:checkr _s ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (((_tok == (5 : stdgo._internal.go.token.Token_token.Token)) && (_invalid >= (0 : stdgo.GoInt) : Bool) : Bool)) {
            @:check2r _s._errorf(_invalid, ("invalid digit %q in %s" : stdgo.GoString), stdgo.Go.toInterface(_lit[(_invalid - _offs : stdgo.GoInt)]), stdgo.Go.toInterface(stdgo._internal.go.scanner.Scanner__litname._litname(_prefix)));
        };
        if ((_digsep & (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            {
                var _i = (stdgo._internal.go.scanner.Scanner__invalidsep._invalidSep(_lit?.__copy__()) : stdgo.GoInt);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    @:check2r _s._error((_offs + _i : stdgo.GoInt), ("\'_\' must separate successive digits" : stdgo.GoString));
                };
            };
        };
        return { _0 : _tok, _1 : _lit?.__copy__() };
    }
    @:keep
    @:tdfield
    static public function _digits( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _base:stdgo.GoInt, _invalid:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _digsep = (0 : stdgo.GoInt);
        if ((_base <= (10 : stdgo.GoInt) : Bool)) {
            var _max = (((48 : stdgo.GoInt) + _base : stdgo.GoInt) : stdgo.GoInt32);
            while ((stdgo._internal.go.scanner.Scanner__isdecimal._isDecimal((@:checkr _s ?? throw "null pointer dereference")._ch) || ((@:checkr _s ?? throw "null pointer dereference")._ch == (95 : stdgo.GoInt32)) : Bool)) {
                var _ds = (1 : stdgo.GoInt);
                if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((95 : stdgo.GoInt32))) {
                    _ds = (2 : stdgo.GoInt);
                } else if ((((@:checkr _s ?? throw "null pointer dereference")._ch >= _max : Bool) && (_invalid.value < (0 : stdgo.GoInt) : Bool) : Bool)) {
                    _invalid.value = (@:checkr _s ?? throw "null pointer dereference")._offset;
                };
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                @:check2r _s._next();
            };
        } else {
            while ((stdgo._internal.go.scanner.Scanner__ishex._isHex((@:checkr _s ?? throw "null pointer dereference")._ch) || ((@:checkr _s ?? throw "null pointer dereference")._ch == (95 : stdgo.GoInt32)) : Bool)) {
                var _ds = (1 : stdgo.GoInt);
                if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((95 : stdgo.GoInt32))) {
                    _ds = (2 : stdgo.GoInt);
                };
                _digsep = (_digsep | (_ds) : stdgo.GoInt);
                @:check2r _s._next();
            };
        };
        return _digsep;
    }
    @:keep
    @:tdfield
    static public function _scanIdentifier( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _rdOffset_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _offs_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _b_8:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _offs_6 = (@:checkr _s ?? throw "null pointer dereference")._offset;
                    if ((0i32 : stdgo.GoInt) < (((@:checkr _s ?? throw "null pointer dereference")._src.__slice__((@:checkr _s ?? throw "null pointer dereference")._rdOffset) : stdgo.Slice<stdgo.GoUInt8>).length)) {
                        _gotoNext = 4620537i32;
                    } else {
                        _gotoNext = 4620541i32;
                    };
                } else if (__value__ == (4619618i32)) {
                    _b_8 = ((@:checkr _s ?? throw "null pointer dereference")._src.__slice__((@:checkr _s ?? throw "null pointer dereference")._rdOffset) : stdgo.Slice<stdgo.GoUInt8>)[(_rdOffset_7 : stdgo.GoInt)];
                    if (((((((97 : stdgo.GoUInt8) <= _b_8 : Bool) && (_b_8 <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((65 : stdgo.GoUInt8) <= _b_8 : Bool) && (_b_8 <= (90 : stdgo.GoUInt8) : Bool) : Bool) : Bool) || _b_8 == ((95 : stdgo.GoUInt8)) : Bool) || (((48 : stdgo.GoUInt8) <= _b_8 : Bool) && (_b_8 <= (57 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                        _gotoNext = 4619706i32;
                    } else {
                        _gotoNext = 4619798i32;
                    };
                } else if (__value__ == (4619706i32)) {
                    _rdOffset_7++;
                    _gotoNext = 4620538i32;
                } else if (__value__ == (4619798i32)) {
                    (@:checkr _s ?? throw "null pointer dereference")._rdOffset = ((@:checkr _s ?? throw "null pointer dereference")._rdOffset + (_rdOffset_7) : stdgo.GoInt);
                    if ((((0 : stdgo.GoUInt8) < _b_8 : Bool) && (_b_8 < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _gotoNext = 4619853i32;
                    } else {
                        _gotoNext = 4620460i32;
                    };
                } else if (__value__ == (4619853i32)) {
                    (@:checkr _s ?? throw "null pointer dereference")._ch = (_b_8 : stdgo.GoInt32);
                    (@:checkr _s ?? throw "null pointer dereference")._offset = (@:checkr _s ?? throw "null pointer dereference")._rdOffset;
                    (@:checkr _s ?? throw "null pointer dereference")._rdOffset++;
                    _gotoNext = 4620601i32;
                } else if (__value__ == (4620460i32)) {
                    @:check2r _s._next();
                    0i32;
                    _gotoNext = 4620471i32;
                } else if (__value__ == (4620471i32)) {
                    if ((stdgo._internal.go.scanner.Scanner__isletter._isLetter((@:checkr _s ?? throw "null pointer dereference")._ch) || stdgo._internal.go.scanner.Scanner__isdigit._isDigit((@:checkr _s ?? throw "null pointer dereference")._ch) : Bool)) {
                        _gotoNext = 4620507i32;
                    } else {
                        _gotoNext = 4620527i32;
                    };
                } else if (__value__ == (4620507i32)) {
                    @:check2r _s._next();
                    _gotoNext = 4620471i32;
                } else if (__value__ == (4620527i32)) {
                    _gotoNext = 4620601i32;
                } else if (__value__ == (4620537i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = ((@:checkr _s ?? throw "null pointer dereference")._src.__slice__((@:checkr _s ?? throw "null pointer dereference")._rdOffset) : stdgo.Slice<stdgo.GoUInt8>)[(0i32 : stdgo.GoInt)];
                        _rdOffset_7 = @:binopAssign __tmp__0;
                        _b_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4620538i32;
                } else if (__value__ == (4620538i32)) {
                    if (_rdOffset_7 < (((@:checkr _s ?? throw "null pointer dereference")._src.__slice__((@:checkr _s ?? throw "null pointer dereference")._rdOffset) : stdgo.Slice<stdgo.GoUInt8>).length)) {
                        _gotoNext = 4619618i32;
                    } else {
                        _gotoNext = 4620541i32;
                    };
                } else if (__value__ == (4620541i32)) {
                    (@:checkr _s ?? throw "null pointer dereference")._offset = ((@:checkr _s ?? throw "null pointer dereference")._src.length);
                    (@:checkr _s ?? throw "null pointer dereference")._rdOffset = ((@:checkr _s ?? throw "null pointer dereference")._src.length);
                    (@:checkr _s ?? throw "null pointer dereference")._ch = (-1 : stdgo.GoInt32);
                    _gotoNext = 4620601i32;
                } else if (__value__ == (4620601i32)) {
                    return (((@:checkr _s ?? throw "null pointer dereference")._src.__slice__(_offs_6, (@:checkr _s ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _updateLineInfo( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _next:stdgo.GoInt, _offs:stdgo.GoInt, _text:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        if (_text[(1 : stdgo.GoInt)] == ((42 : stdgo.GoUInt8))) {
            _text = (_text.__slice__(0, ((_text.length) - (2 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        _text = (_text.__slice__((7 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        _offs = (_offs + ((7 : stdgo.GoInt)) : stdgo.GoInt);
        var __tmp__ = stdgo._internal.go.scanner.Scanner__trailingdigits._trailingDigits(_text), _i:stdgo.GoInt = __tmp__._0, _n:stdgo.GoInt = __tmp__._1, _ok:Bool = __tmp__._2;
        if (_i == ((0 : stdgo.GoInt))) {
            return;
        };
        if (!_ok) {
            @:check2r _s._error((_offs + _i : stdgo.GoInt), (("invalid line number: " : stdgo.GoString) + ((_text.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            return;
        };
        {};
        var _line:stdgo.GoInt = (0 : stdgo.GoInt), _col:stdgo.GoInt = (0 : stdgo.GoInt);
        var __tmp__ = stdgo._internal.go.scanner.Scanner__trailingdigits._trailingDigits((_text.__slice__(0, (_i - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _i2:stdgo.GoInt = __tmp__._0, _n2:stdgo.GoInt = __tmp__._1, _ok2:Bool = __tmp__._2;
        if (_ok2) {
            {
                final __tmp__0 = _i2;
                final __tmp__1 = _i;
                _i = @:binopAssign __tmp__0;
                _i2 = @:binopAssign __tmp__1;
            };
            {
                final __tmp__0 = _n2;
                final __tmp__1 = _n;
                _line = @:binopAssign __tmp__0;
                _col = @:binopAssign __tmp__1;
            };
            if (((_col == (0 : stdgo.GoInt)) || (_col > (1073741824 : stdgo.GoInt) : Bool) : Bool)) {
                @:check2r _s._error((_offs + _i2 : stdgo.GoInt), (("invalid column number: " : stdgo.GoString) + ((_text.__slice__(_i2) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
                return;
            };
            _text = (_text.__slice__(0, (_i2 - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            _line = _n;
        };
        if (((_line == (0 : stdgo.GoInt)) || (_line > (1073741824 : stdgo.GoInt) : Bool) : Bool)) {
            @:check2r _s._error((_offs + _i : stdgo.GoInt), (("invalid line number: " : stdgo.GoString) + ((_text.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__());
            return;
        };
        var _filename = (((_text.__slice__(0, (_i - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (((_filename == (stdgo.Go.str() : stdgo.GoString)) && _ok2 : Bool)) {
            _filename = @:check2r (@:checkr _s ?? throw "null pointer dereference")._file.position(@:check2r (@:checkr _s ?? throw "null pointer dereference")._file.pos(_offs)).filename?.__copy__();
        } else if (_filename != ((stdgo.Go.str() : stdgo.GoString))) {
            _filename = stdgo._internal.path.filepath.Filepath_clean.clean(_filename?.__copy__())?.__copy__();
            if (!stdgo._internal.path.filepath.Filepath_isabs.isAbs(_filename?.__copy__())) {
                _filename = stdgo._internal.path.filepath.Filepath_join.join((@:checkr _s ?? throw "null pointer dereference")._dir?.__copy__(), _filename?.__copy__())?.__copy__();
            };
        };
        @:check2r (@:checkr _s ?? throw "null pointer dereference")._file.addLineColumnInfo(_next, _filename?.__copy__(), _line, _col);
    }
    @:keep
    @:tdfield
    static public function _scanComment( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; } {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        var _next_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _offs_0:stdgo.GoInt = (0 : stdgo.GoInt);
        var _lit_5:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ch_4:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _nlOffset_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _numCR_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _offs_0 = ((@:checkr _s ?? throw "null pointer dereference")._offset - (1 : stdgo.GoInt) : stdgo.GoInt);
                    _next_1 = (-1 : stdgo.GoInt);
                    _numCR_2 = (0 : stdgo.GoInt);
                    _nlOffset_3 = (0 : stdgo.GoInt);
                    if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((47 : stdgo.GoInt32))) {
                        _gotoNext = 4615081i32;
                    } else {
                        _gotoNext = 4615424i32;
                    };
                } else if (__value__ == (4615081i32)) {
                    @:check2r _s._next();
                    0i32;
                    _gotoNext = 4615175i32;
                } else if (__value__ == (4615175i32)) {
                    if ((((@:checkr _s ?? throw "null pointer dereference")._ch != (10 : stdgo.GoInt32)) && ((@:checkr _s ?? throw "null pointer dereference")._ch >= (0 : stdgo.GoInt32) : Bool) : Bool)) {
                        _gotoNext = 4615205i32;
                    } else {
                        _gotoNext = 4615336i32;
                    };
                } else if (__value__ == (4615205i32)) {
                    if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((13 : stdgo.GoInt32))) {
                        _gotoNext = 4615226i32;
                    } else {
                        _gotoNext = 4615248i32;
                    };
                } else if (__value__ == (4615226i32)) {
                    _numCR_2++;
                    _gotoNext = 4615248i32;
                } else if (__value__ == (4615248i32)) {
                    @:check2r _s._next();
                    _gotoNext = 4615175i32;
                } else if (__value__ == (4615336i32)) {
                    _next_1 = (@:checkr _s ?? throw "null pointer dereference")._offset;
                    if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((10 : stdgo.GoInt32))) {
                        _gotoNext = 4615370i32;
                    } else {
                        _gotoNext = 4615388i32;
                    };
                } else if (__value__ == (4615370i32)) {
                    _next_1++;
                    _gotoNext = 4615388i32;
                } else if (__value__ == (4615388i32)) {
                    _gotoNext = 4615698i32;
                } else if (__value__ == (4615424i32)) {
                    @:check2r _s._next();
                    0i32;
                    _gotoNext = 4615434i32;
                } else if (__value__ == (4615434i32)) {
                    if (((@:checkr _s ?? throw "null pointer dereference")._ch >= (0 : stdgo.GoInt32) : Bool)) {
                        _gotoNext = 4615448i32;
                    } else {
                        _gotoNext = 4615657i32;
                    };
                } else if (__value__ == (4615448i32)) {
                    _ch_4 = (@:checkr _s ?? throw "null pointer dereference")._ch;
                    if (_ch_4 == ((13 : stdgo.GoInt32))) {
                        _gotoNext = 4615479i32;
                    } else if (((_ch_4 == (10 : stdgo.GoInt32)) && (_nlOffset_3 == (0 : stdgo.GoInt)) : Bool)) {
                        _gotoNext = 4615532i32;
                    } else {
                        _gotoNext = 4615563i32;
                    };
                } else if (__value__ == (4615479i32)) {
                    _numCR_2++;
                    _gotoNext = 4615563i32;
                } else if (__value__ == (4615532i32)) {
                    _nlOffset_3 = (@:checkr _s ?? throw "null pointer dereference")._offset;
                    _gotoNext = 4615563i32;
                } else if (__value__ == (4615563i32)) {
                    @:check2r _s._next();
                    if (((_ch_4 == (42 : stdgo.GoInt32)) && ((@:checkr _s ?? throw "null pointer dereference")._ch == (47 : stdgo.GoInt32)) : Bool)) {
                        _gotoNext = 4615602i32;
                    } else {
                        _gotoNext = 4615434i32;
                    };
                } else if (__value__ == (4615602i32)) {
                    @:check2r _s._next();
                    _next_1 = (@:checkr _s ?? throw "null pointer dereference")._offset;
                    _gotoNext = 4615698i32;
                } else if (__value__ == (4615657i32)) {
                    @:check2r _s._error(_offs_0, ("comment not terminated" : stdgo.GoString));
                    _gotoNext = 4615698i32;
                } else if (__value__ == (4615698i32)) {
                    _lit_5 = ((@:checkr _s ?? throw "null pointer dereference")._src.__slice__(_offs_0, (@:checkr _s ?? throw "null pointer dereference")._offset) : stdgo.Slice<stdgo.GoUInt8>);
                    if (((((_numCR_2 > (0 : stdgo.GoInt) : Bool) && ((_lit_5.length) >= (2 : stdgo.GoInt) : Bool) : Bool) && _lit_5[(1 : stdgo.GoInt)] == ((47 : stdgo.GoUInt8)) : Bool) && (_lit_5[((_lit_5.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4616061i32;
                    } else {
                        _gotoNext = 4616205i32;
                    };
                } else if (__value__ == (4616061i32)) {
                    _lit_5 = (_lit_5.__slice__(0, ((_lit_5.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                    _numCR_2--;
                    _gotoNext = 4616205i32;
                } else if (__value__ == (4616205i32)) {
                    if ((((_next_1 >= (0 : stdgo.GoInt) : Bool) && (((_lit_5[(1 : stdgo.GoInt)] == (42 : stdgo.GoUInt8)) || (_offs_0 == (@:checkr _s ?? throw "null pointer dereference")._lineOffset) : Bool)) : Bool) && stdgo._internal.bytes.Bytes_hasprefix.hasPrefix((_lit_5.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), stdgo._internal.go.scanner.Scanner__prefix._prefix) : Bool)) {
                        _gotoNext = 4616325i32;
                    } else {
                        _gotoNext = 4616368i32;
                    };
                } else if (__value__ == (4616325i32)) {
                    @:check2r _s._updateLineInfo(_next_1, _offs_0, _lit_5);
                    _gotoNext = 4616368i32;
                } else if (__value__ == (4616368i32)) {
                    if ((_numCR_2 > (0 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4616381i32;
                    } else {
                        _gotoNext = 4616424i32;
                    };
                } else if (__value__ == (4616381i32)) {
                    _lit_5 = stdgo._internal.go.scanner.Scanner__stripcr._stripCR(_lit_5, _lit_5[(1 : stdgo.GoInt)] == ((42 : stdgo.GoUInt8)));
                    _gotoNext = 4616424i32;
                } else if (__value__ == (4616424i32)) {
                    return { _0 : (_lit_5 : stdgo.GoString)?.__copy__(), _1 : _nlOffset_3 };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _errorf( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _offs:stdgo.GoInt, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        @:check2r _s._error(_offs, stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _error( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _offs:stdgo.GoInt, _msg:stdgo.GoString):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        if ((@:checkr _s ?? throw "null pointer dereference")._err != null) {
            (@:checkr _s ?? throw "null pointer dereference")._err(@:check2r (@:checkr _s ?? throw "null pointer dereference")._file.position(@:check2r (@:checkr _s ?? throw "null pointer dereference")._file.pos(_offs))?.__copy__(), _msg?.__copy__());
        };
        (@:checkr _s ?? throw "null pointer dereference").errorCount++;
    }
    @:keep
    @:tdfield
    static public function init( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>, _file:stdgo.Ref<stdgo._internal.go.token.Token_file.File>, _src:stdgo.Slice<stdgo.GoUInt8>, _err:stdgo._internal.go.scanner.Scanner_errorhandler.ErrorHandler, _mode:stdgo._internal.go.scanner.Scanner_mode.Mode):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        if (@:check2r _file.size() != ((_src.length))) {
            throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("file size (%d) does not match src len (%d)" : stdgo.GoString), stdgo.Go.toInterface(@:check2r _file.size()), stdgo.Go.toInterface((_src.length))));
        };
        (@:checkr _s ?? throw "null pointer dereference")._file = _file;
        {
            var __tmp__ = stdgo._internal.path.filepath.Filepath_split.split(@:check2r _file.name()?.__copy__());
            (@:checkr _s ?? throw "null pointer dereference")._dir = @:tmpset0 __tmp__._0?.__copy__();
        };
        (@:checkr _s ?? throw "null pointer dereference")._src = _src;
        (@:checkr _s ?? throw "null pointer dereference")._err = _err;
        (@:checkr _s ?? throw "null pointer dereference")._mode = _mode;
        (@:checkr _s ?? throw "null pointer dereference")._ch = (32 : stdgo.GoInt32);
        (@:checkr _s ?? throw "null pointer dereference")._offset = (0 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._rdOffset = (0 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._lineOffset = (0 : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._insertSemi = false;
        (@:checkr _s ?? throw "null pointer dereference").errorCount = (0 : stdgo.GoInt);
        @:check2r _s._next();
        if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((65279 : stdgo.GoInt32))) {
            @:check2r _s._next();
        };
    }
    @:keep
    @:tdfield
    static public function _peek( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):stdgo.GoUInt8 {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        if (((@:checkr _s ?? throw "null pointer dereference")._rdOffset < ((@:checkr _s ?? throw "null pointer dereference")._src.length) : Bool)) {
            return (@:checkr _s ?? throw "null pointer dereference")._src[((@:checkr _s ?? throw "null pointer dereference")._rdOffset : stdgo.GoInt)];
        };
        return (0 : stdgo.GoUInt8);
    }
    @:keep
    @:tdfield
    static public function _next( _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.scanner.Scanner_scanner.Scanner> = _s;
        if (((@:checkr _s ?? throw "null pointer dereference")._rdOffset < ((@:checkr _s ?? throw "null pointer dereference")._src.length) : Bool)) {
            (@:checkr _s ?? throw "null pointer dereference")._offset = (@:checkr _s ?? throw "null pointer dereference")._rdOffset;
            if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((10 : stdgo.GoInt32))) {
                (@:checkr _s ?? throw "null pointer dereference")._lineOffset = (@:checkr _s ?? throw "null pointer dereference")._offset;
                @:check2r (@:checkr _s ?? throw "null pointer dereference")._file.addLine((@:checkr _s ?? throw "null pointer dereference")._offset);
            };
            var __0 = ((@:checkr _s ?? throw "null pointer dereference")._src[((@:checkr _s ?? throw "null pointer dereference")._rdOffset : stdgo.GoInt)] : stdgo.GoInt32), __1 = (1 : stdgo.GoInt);
var _w = __1, _r = __0;
            if (_r == ((0 : stdgo.GoInt32))) {
                @:check2r _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, ("illegal character NUL" : stdgo.GoString));
            } else if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(((@:checkr _s ?? throw "null pointer dereference")._src.__slice__((@:checkr _s ?? throw "null pointer dereference")._rdOffset) : stdgo.Slice<stdgo.GoUInt8>));
                    _r = @:tmpset0 __tmp__._0;
                    _w = @:tmpset0 __tmp__._1;
                };
                if (((_r == (65533 : stdgo.GoInt32)) && (_w == (1 : stdgo.GoInt)) : Bool)) {
                    @:check2r _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, ("illegal UTF-8 encoding" : stdgo.GoString));
                } else if (((_r == (65279 : stdgo.GoInt32)) && ((@:checkr _s ?? throw "null pointer dereference")._offset > (0 : stdgo.GoInt) : Bool) : Bool)) {
                    @:check2r _s._error((@:checkr _s ?? throw "null pointer dereference")._offset, ("illegal byte order mark" : stdgo.GoString));
                };
            };
            (@:checkr _s ?? throw "null pointer dereference")._rdOffset = ((@:checkr _s ?? throw "null pointer dereference")._rdOffset + (_w) : stdgo.GoInt);
            (@:checkr _s ?? throw "null pointer dereference")._ch = _r;
        } else {
            (@:checkr _s ?? throw "null pointer dereference")._offset = ((@:checkr _s ?? throw "null pointer dereference")._src.length);
            if ((@:checkr _s ?? throw "null pointer dereference")._ch == ((10 : stdgo.GoInt32))) {
                (@:checkr _s ?? throw "null pointer dereference")._lineOffset = (@:checkr _s ?? throw "null pointer dereference")._offset;
                @:check2r (@:checkr _s ?? throw "null pointer dereference")._file.addLine((@:checkr _s ?? throw "null pointer dereference")._offset);
            };
            (@:checkr _s ?? throw "null pointer dereference")._ch = (-1 : stdgo.GoInt32);
        };
    }
}
