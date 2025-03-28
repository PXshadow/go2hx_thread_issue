package stdgo._internal.go.build;
@:keep @:allow(stdgo._internal.go.build.Build.T_importReader_asInterface) class T_importReader_static_extension {
    @:keep
    @:tdfield
    static public function _readImport( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        var _c = (@:check2r _r._peekByte(true) : stdgo.GoUInt8);
        if (_c == ((46 : stdgo.GoUInt8))) {
            (@:checkr _r ?? throw "null pointer dereference")._peek = (0 : stdgo.GoUInt8);
        } else if (stdgo._internal.go.build.Build__isident._isIdent(_c)) {
            @:check2r _r._readIdent();
        };
        @:check2r _r._readString();
    }
    @:keep
    @:tdfield
    static public function _readString( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        {
            var __switchIndex__ = -1;
            var __run__ = true;
            while (__run__) {
                __run__ = false;
                {
                    final __value__ = @:check2r _r._nextByte(true);
                    if (__value__ == ((96 : stdgo.GoUInt8))) {
                        while ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                            if (@:check2r _r._nextByte(false) == ((96 : stdgo.GoUInt8))) {
                                break;
                            };
                            if ((@:checkr _r ?? throw "null pointer dereference")._eof) {
                                @:check2r _r._syntaxError();
                            };
                        };
                        break;
                    } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                        while ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                            var _c = (@:check2r _r._nextByte(false) : stdgo.GoUInt8);
                            if (_c == ((34 : stdgo.GoUInt8))) {
                                break;
                            };
                            if (((@:checkr _r ?? throw "null pointer dereference")._eof || (_c == (10 : stdgo.GoUInt8)) : Bool)) {
                                @:check2r _r._syntaxError();
                            };
                            if (_c == ((92 : stdgo.GoUInt8))) {
                                @:check2r _r._nextByte(false);
                            };
                        };
                        break;
                    } else {
                        @:check2r _r._syntaxError();
                    };
                };
                break;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _readIdent( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        var _c = (@:check2r _r._peekByte(true) : stdgo.GoUInt8);
        if (!stdgo._internal.go.build.Build__isident._isIdent(_c)) {
            @:check2r _r._syntaxError();
            return;
        };
        while (stdgo._internal.go.build.Build__isident._isIdent(@:check2r _r._peekByte(false))) {
            (@:checkr _r ?? throw "null pointer dereference")._peek = (0 : stdgo.GoUInt8);
        };
    }
    @:keep
    @:tdfield
    static public function _readKeyword( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>, _kw:stdgo.GoString):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        @:check2r _r._peekByte(true);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_kw.length) : Bool)) {
                if (@:check2r _r._nextByte(false) != (_kw[(_i : stdgo.GoInt)])) {
                    @:check2r _r._syntaxError();
                    return;
                };
                _i++;
            };
        };
        if (stdgo._internal.go.build.Build__isident._isIdent(@:check2r _r._peekByte(false))) {
            @:check2r _r._syntaxError();
        };
    }
    @:keep
    @:tdfield
    static public function _findEmbed( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>, _first:Bool):Bool {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        var reswitchBreak = false;
        var skipSlashSlashBreak = false;
        var _i_97:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c1_96:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _c_95:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _startLine_94:Bool = false;
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _startLine_94 = !_first;
                    0i32;
                    _gotoNext = 4430004i32;
                } else if (__value__ == (4430004i32)) {
                    if ((((@:checkr _r ?? throw "null pointer dereference")._err == null) && !(@:checkr _r ?? throw "null pointer dereference")._eof : Bool)) {
                        _gotoNext = 4430031i32;
                    } else {
                        _gotoNext = 4431820i32;
                    };
                } else if (__value__ == (4430031i32)) {
                    _c_95 = @:check2r _r._readByteNoBuf();
                    _gotoNext = 4430058i32;
                } else if (__value__ == (4430058i32)) {
                    reswitchBreak = false;
                    _gotoNext = 4430070i32;
                } else if (__value__ == (4430070i32)) {
                    if (!reswitchBreak) {
                        {
                            final __value__ = _c_95;
                            if (__value__ == ((10 : stdgo.GoUInt8))) {
                                _gotoNext = 4430116i32;
                            } else if (__value__ == ((32 : stdgo.GoUInt8)) || __value__ == ((9 : stdgo.GoUInt8))) {
                                _gotoNext = 4430150i32;
                            } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                                _gotoNext = 4430197i32;
                            } else if (__value__ == ((96 : stdgo.GoUInt8))) {
                                _gotoNext = 4430546i32;
                            } else if (__value__ == ((39 : stdgo.GoUInt8))) {
                                _gotoNext = 4430745i32;
                            } else if (__value__ == ((47 : stdgo.GoUInt8))) {
                                _gotoNext = 4431079i32;
                            } else {
                                _gotoNext = 4430083i32;
                            };
                        };
                    } else {
                        _gotoNext = 4430004i32;
                    };
                } else if (__value__ == (4430083i32)) {
                    _startLine_94 = false;
                    _gotoNext = 4430004i32;
                } else if (__value__ == (4430116i32)) {
                    _startLine_94 = true;
                    _gotoNext = 4430004i32;
                } else if (__value__ == (4430150i32)) {
                    _gotoNext = 4430004i32;
                } else if (__value__ == (4430197i32)) {
                    _startLine_94 = false;
                    0i32;
                    _gotoNext = 4430231i32;
                } else if (__value__ == (4430231i32)) {
                    if ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 4430248i32;
                    } else {
                        _gotoNext = 4430529i32;
                    };
                } else if (__value__ == (4430248i32)) {
                    if ((@:checkr _r ?? throw "null pointer dereference")._eof) {
                        _gotoNext = 4430263i32;
                    } else {
                        _gotoNext = 4430296i32;
                    };
                } else if (__value__ == (4430263i32)) {
                    @:check2r _r._syntaxError();
                    _gotoNext = 4430296i32;
                } else if (__value__ == (4430296i32)) {
                    _c_95 = @:check2r _r._readByteNoBuf();
                    if (_c_95 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 4430335i32;
                    } else {
                        _gotoNext = 4430455i32;
                    };
                } else if (__value__ == (4430335i32)) {
                    @:check2r _r._readByteNoBuf();
                    if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
                        _gotoNext = 4430381i32;
                    } else {
                        _gotoNext = 4430436i32;
                    };
                } else if (__value__ == (4430381i32)) {
                    @:check2r _r._syntaxError();
                    return false;
                    _gotoNext = 4430436i32;
                } else if (__value__ == (4430436i32)) {
                    0i32;
                    _gotoNext = 4430231i32;
                } else if (__value__ == (4430455i32)) {
                    if (_c_95 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 4430467i32;
                    } else {
                        _gotoNext = 4430231i32;
                    };
                } else if (__value__ == (4430467i32)) {
                    _c_95 = @:check2r _r._readByteNoBuf();
                    _gotoNext = 4430058i32;
                } else if (__value__ == (4430529i32)) {
                    _gotoNext = 4430058i32;
                } else if (__value__ == (4430546i32)) {
                    _startLine_94 = false;
                    0i32;
                    _gotoNext = 4430580i32;
                } else if (__value__ == (4430580i32)) {
                    if ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 4430597i32;
                    } else {
                        _gotoNext = 4430004i32;
                    };
                } else if (__value__ == (4430597i32)) {
                    if ((@:checkr _r ?? throw "null pointer dereference")._eof) {
                        _gotoNext = 4430612i32;
                    } else {
                        _gotoNext = 4430645i32;
                    };
                } else if (__value__ == (4430612i32)) {
                    @:check2r _r._syntaxError();
                    _gotoNext = 4430645i32;
                } else if (__value__ == (4430645i32)) {
                    _c_95 = @:check2r _r._readByteNoBuf();
                    if (_c_95 == ((96 : stdgo.GoUInt8))) {
                        _gotoNext = 4430683i32;
                    } else {
                        _gotoNext = 4430580i32;
                    };
                } else if (__value__ == (4430683i32)) {
                    _c_95 = @:check2r _r._readByteNoBuf();
                    _gotoNext = 4430058i32;
                } else if (__value__ == (4430745i32)) {
                    _startLine_94 = false;
                    0i32;
                    _gotoNext = 4430780i32;
                } else if (__value__ == (4430780i32)) {
                    if ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                        _gotoNext = 4430797i32;
                    } else {
                        _gotoNext = 4430004i32;
                    };
                } else if (__value__ == (4430797i32)) {
                    if ((@:checkr _r ?? throw "null pointer dereference")._eof) {
                        _gotoNext = 4430812i32;
                    } else {
                        _gotoNext = 4430845i32;
                    };
                } else if (__value__ == (4430812i32)) {
                    @:check2r _r._syntaxError();
                    _gotoNext = 4430845i32;
                } else if (__value__ == (4430845i32)) {
                    _c_95 = @:check2r _r._readByteNoBuf();
                    if (_c_95 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 4430884i32;
                    } else {
                        _gotoNext = 4431004i32;
                    };
                } else if (__value__ == (4430884i32)) {
                    @:check2r _r._readByteNoBuf();
                    if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
                        _gotoNext = 4430930i32;
                    } else {
                        _gotoNext = 4430985i32;
                    };
                } else if (__value__ == (4430930i32)) {
                    @:check2r _r._syntaxError();
                    return false;
                    _gotoNext = 4430985i32;
                } else if (__value__ == (4430985i32)) {
                    0i32;
                    _gotoNext = 4430780i32;
                } else if (__value__ == (4431004i32)) {
                    if (_c_95 == ((39 : stdgo.GoUInt8))) {
                        _gotoNext = 4431017i32;
                    } else {
                        _gotoNext = 4430780i32;
                    };
                } else if (__value__ == (4431017i32)) {
                    _c_95 = @:check2r _r._readByteNoBuf();
                    _gotoNext = 4430058i32;
                } else if (__value__ == (4431079i32)) {
                    _c_95 = @:check2r _r._readByteNoBuf();
                    _gotoNext = 4431117i32;
                } else if (__value__ == (4431117i32)) {
                    {
                        final __value__ = _c_95;
                        if (__value__ == ((42 : stdgo.GoUInt8))) {
                            _gotoNext = 4431184i32;
                        } else if (__value__ == ((47 : stdgo.GoUInt8))) {
                            _gotoNext = 4431372i32;
                        } else {
                            _gotoNext = 4431131i32;
                        };
                    };
                } else if (__value__ == (4431131i32)) {
                    _startLine_94 = false;
                    _gotoNext = 4430058i32;
                } else if (__value__ == (4431184i32)) {
                    0i32;
                    _gotoNext = 4431214i32;
                } else if (__value__ == (4431214i32)) {
                    if (((((_c_95 != (42 : stdgo.GoUInt8)) || (_c1_96 != (47 : stdgo.GoUInt8)) : Bool)) && ((@:checkr _r ?? throw "null pointer dereference")._err == null) : Bool)) {
                        _gotoNext = 4431258i32;
                    } else {
                        _gotoNext = 4431350i32;
                    };
                } else if (__value__ == (4431258i32)) {
                    if ((@:checkr _r ?? throw "null pointer dereference")._eof) {
                        _gotoNext = 4431274i32;
                    } else {
                        _gotoNext = 4431310i32;
                    };
                } else if (__value__ == (4431274i32)) {
                    @:check2r _r._syntaxError();
                    _gotoNext = 4431310i32;
                } else if (__value__ == (4431310i32)) {
                    {
                        final __tmp__0 = _c1_96;
                        final __tmp__1 = @:check2r _r._readByteNoBuf();
                        _c_95 = @:binopAssign __tmp__0;
                        _c1_96 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4431214i32;
                } else if (__value__ == (4431350i32)) {
                    _startLine_94 = false;
                    _gotoNext = 4430004i32;
                } else if (__value__ == (4431372i32)) {
                    if (_startLine_94) {
                        _gotoNext = 4431399i32;
                    } else {
                        _gotoNext = 4431691i32;
                    };
                } else if (__value__ == (4431399i32)) {
                    if ((0i32 : stdgo.GoInt) < (stdgo._internal.go.build.Build__goembed._goEmbed.length)) {
                        _gotoNext = 4431575i32;
                    } else {
                        _gotoNext = 4431583i32;
                    };
                } else if (__value__ == (4431460i32)) {
                    _i_97++;
                    _gotoNext = 4431576i32;
                } else if (__value__ == (4431479i32)) {
                    _c_95 = @:check2r _r._readByteNoBuf();
                    if (_c_95 != (stdgo._internal.go.build.Build__goembed._goEmbed[(_i_97 : stdgo.GoInt)])) {
                        _gotoNext = 4431534i32;
                    } else {
                        _gotoNext = 4431460i32;
                    };
                } else if (__value__ == (4431534i32)) {
                    _gotoNext = 4431691i32;
                } else if (__value__ == (4431575i32)) {
                    _i_97 = 0i32;
                    _gotoNext = 4431576i32;
                } else if (__value__ == (4431576i32)) {
                    if (_i_97 < (stdgo._internal.go.build.Build__goembed._goEmbed.length)) {
                        _gotoNext = 4431479i32;
                    } else {
                        _gotoNext = 4431583i32;
                    };
                } else if (__value__ == (4431583i32)) {
                    _c_95 = @:check2r _r._readByteNoBuf();
                    if (((_c_95 == (32 : stdgo.GoUInt8)) || (_c_95 == (9 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 4431635i32;
                    } else {
                        _gotoNext = 4431691i32;
                    };
                } else if (__value__ == (4431635i32)) {
                    return true;
                    _gotoNext = 4431691i32;
                } else if (__value__ == (4431691i32)) {
                    _gotoNext = 4431691i32;
                    0i32;
                    skipSlashSlashBreak = false;
                    _gotoNext = 4431711i32;
                } else if (__value__ == (4431711i32)) {
                    if (!skipSlashSlashBreak && (((_c_95 != ((10 : stdgo.GoUInt8)) && (@:checkr _r ?? throw "null pointer dereference")._err == null : Bool) && !(@:checkr _r ?? throw "null pointer dereference")._eof : Bool))) {
                        _gotoNext = 4431751i32;
                    } else {
                        _gotoNext = 4431790i32;
                    };
                } else if (__value__ == (4431751i32)) {
                    _c_95 = @:check2r _r._readByteNoBuf();
                    _gotoNext = 4431711i32;
                } else if (__value__ == (4431790i32)) {
                    _startLine_94 = true;
                    _gotoNext = 4430004i32;
                } else if (__value__ == (4431820i32)) {
                    return false;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function _nextByte( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>, _skipSpace:Bool):stdgo.GoUInt8 {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        var _c = (@:check2r _r._peekByte(_skipSpace) : stdgo.GoUInt8);
        (@:checkr _r ?? throw "null pointer dereference")._peek = (0 : stdgo.GoUInt8);
        return _c;
    }
    @:keep
    @:tdfield
    static public function _peekByte( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>, _skipSpace:Bool):stdgo.GoUInt8 {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._err != null) {
            {
                (@:checkr _r ?? throw "null pointer dereference")._nerr++;
                if (((@:checkr _r ?? throw "null pointer dereference")._nerr > (10000 : stdgo.GoInt) : Bool)) {
                    throw stdgo.Go.toInterface(("go/build: import reader looping" : stdgo.GoString));
                };
            };
            return (0 : stdgo.GoUInt8);
        };
        var _c = ((@:checkr _r ?? throw "null pointer dereference")._peek : stdgo.GoUInt8);
        if (_c == ((0 : stdgo.GoUInt8))) {
            _c = @:check2r _r._readByte();
        };
        while ((((@:checkr _r ?? throw "null pointer dereference")._err == null) && !(@:checkr _r ?? throw "null pointer dereference")._eof : Bool)) {
            if (_skipSpace) {
                {
                    final __value__ = _c;
                    if (__value__ == ((32 : stdgo.GoUInt8)) || __value__ == ((12 : stdgo.GoUInt8)) || __value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((13 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((59 : stdgo.GoUInt8))) {
                        _c = @:check2r _r._readByte();
                        continue;
                    } else if (__value__ == ((47 : stdgo.GoUInt8))) {
                        _c = @:check2r _r._readByte();
                        if (_c == ((47 : stdgo.GoUInt8))) {
                            while (((_c != ((10 : stdgo.GoUInt8)) && (@:checkr _r ?? throw "null pointer dereference")._err == null : Bool) && !(@:checkr _r ?? throw "null pointer dereference")._eof : Bool)) {
                                _c = @:check2r _r._readByte();
                            };
                        } else if (_c == ((42 : stdgo.GoUInt8))) {
                            var _c1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
                            while (((((_c != (42 : stdgo.GoUInt8)) || (_c1 != (47 : stdgo.GoUInt8)) : Bool)) && ((@:checkr _r ?? throw "null pointer dereference")._err == null) : Bool)) {
                                if ((@:checkr _r ?? throw "null pointer dereference")._eof) {
                                    @:check2r _r._syntaxError();
                                };
                                {
                                    final __tmp__0 = _c1;
                                    final __tmp__1 = @:check2r _r._readByte();
                                    _c = @:binopAssign __tmp__0;
                                    _c1 = @:binopAssign __tmp__1;
                                };
                            };
                        } else {
                            @:check2r _r._syntaxError();
                        };
                        _c = @:check2r _r._readByte();
                        continue;
                    };
                };
            };
            break;
        };
        (@:checkr _r ?? throw "null pointer dereference")._peek = _c;
        return (@:checkr _r ?? throw "null pointer dereference")._peek;
    }
    @:keep
    @:tdfield
    static public function _readByteNoBuf( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>):stdgo.GoUInt8 {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        var _c:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _err:stdgo.Error = (null : stdgo.Error);
        if ((((@:checkr _r ?? throw "null pointer dereference")._buf.length) > (0 : stdgo.GoInt) : Bool)) {
            _c = (@:checkr _r ?? throw "null pointer dereference")._buf[(0 : stdgo.GoInt)];
            (@:checkr _r ?? throw "null pointer dereference")._buf = ((@:checkr _r ?? throw "null pointer dereference")._buf.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        } else {
            {
                var __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference")._b.readByte();
                _c = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (((_err == null) && (_c == (0 : stdgo.GoUInt8)) : Bool)) {
                _err = stdgo._internal.go.build.Build__errnul._errNUL;
            };
        };
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                (@:checkr _r ?? throw "null pointer dereference")._eof = true;
            } else if ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                (@:checkr _r ?? throw "null pointer dereference")._err = _err;
            };
            return (0 : stdgo.GoUInt8);
        };
        (@:checkr _r ?? throw "null pointer dereference")._pos.offset++;
        if (_c == ((10 : stdgo.GoUInt8))) {
            (@:checkr _r ?? throw "null pointer dereference")._pos.line++;
            (@:checkr _r ?? throw "null pointer dereference")._pos.column = (1 : stdgo.GoInt);
        } else {
            (@:checkr _r ?? throw "null pointer dereference")._pos.column++;
        };
        return _c;
    }
    @:keep
    @:tdfield
    static public function _readByte( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>):stdgo.GoUInt8 {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        var __tmp__ = @:check2r (@:checkr _r ?? throw "null pointer dereference")._b.readByte(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            (@:checkr _r ?? throw "null pointer dereference")._buf = ((@:checkr _r ?? throw "null pointer dereference")._buf.__append__(_c));
            if (_c == ((0 : stdgo.GoUInt8))) {
                _err = stdgo._internal.go.build.Build__errnul._errNUL;
            };
        };
        if (_err != null) {
            if (stdgo.Go.toInterface(_err) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                (@:checkr _r ?? throw "null pointer dereference")._eof = true;
            } else if ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
                (@:checkr _r ?? throw "null pointer dereference")._err = _err;
            };
            _c = (0 : stdgo.GoUInt8);
        };
        return _c;
    }
    @:keep
    @:tdfield
    static public function _syntaxError( _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader>):Void {
        @:recv var _r:stdgo.Ref<stdgo._internal.go.build.Build_t_importreader.T_importReader> = _r;
        if ((@:checkr _r ?? throw "null pointer dereference")._err == null) {
            (@:checkr _r ?? throw "null pointer dereference")._err = stdgo._internal.go.build.Build__errsyntax._errSyntax;
        };
    }
}
