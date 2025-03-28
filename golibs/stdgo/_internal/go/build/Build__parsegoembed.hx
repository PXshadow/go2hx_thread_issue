package stdgo._internal.go.build;
function _parseGoEmbed(_args:stdgo.GoString, _pos:stdgo._internal.go.token.Token_position.Position):{ var _0 : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>; var _1 : stdgo.Error; } {
        var _iterator_4438817 = @:invalid_type null;
        var _path_101:stdgo.GoString = ("" : stdgo.GoString);
        var _list_100:stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed> = (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>);
        var _trimSpace_99:() -> Void = null;
        var _q_108:stdgo.GoString = ("" : stdgo.GoString);
        var _keys_4438805 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _j_105:stdgo.GoInt = (0 : stdgo.GoInt);
        var _values_4438805 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
        var switchBreak = false;
        var _i_107:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_106:Bool = false;
        var _c_104:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _r_110:stdgo.GoInt32 = (0 : stdgo.GoInt32);
        var _err_109:stdgo.Error = (null : stdgo.Error);
        var _i_103:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pathPos_102:stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position);
        var _trimBytes_98:stdgo.GoInt -> Void = null;
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _trimBytes_98 = function(_n:stdgo.GoInt):Void {
                        _pos.offset = (_pos.offset + (_n) : stdgo.GoInt);
                        _pos.column = (_pos.column + (stdgo._internal.unicode.utf8.Utf8_runecountinstring.runeCountInString((_args.__slice__(0, _n) : stdgo.GoString)?.__copy__())) : stdgo.GoInt);
                        _args = (_args.__slice__(_n) : stdgo.GoString)?.__copy__();
                    };
                    _trimSpace_99 = function():Void {
                        var _trim = (stdgo._internal.strings.Strings_trimleftfunc.trimLeftFunc(_args?.__copy__(), stdgo._internal.unicode.Unicode_isspace.isSpace)?.__copy__() : stdgo.GoString);
                        _trimBytes_98(((_args.length) - (_trim.length) : stdgo.GoInt));
                    };
                    _trimSpace_99();
                    _gotoNext = 4438667i32;
                } else if (__value__ == (4438667i32)) {
                    if (_args != ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 4438708i32;
                    } else {
                        _gotoNext = 4439807i32;
                    };
                } else if (__value__ == (4438708i32)) {
                    _pathPos_102 = _pos?.__copy__();
                    _gotoNext = 4438746i32;
                } else if (__value__ == (4438746i32)) {
                    switchBreak = false;
                    _gotoNext = 4438756i32;
                } else if (__value__ == (4438756i32)) {
                    if (!switchBreak) {
                        {
                            final __value__ = _args[(0 : stdgo.GoInt)];
                            if (__value__ == ((96 : stdgo.GoUInt8))) {
                                _gotoNext = 4438929i32;
                            } else if (__value__ == ((34 : stdgo.GoUInt8))) {
                                _gotoNext = 4439126i32;
                            } else {
                                _gotoNext = 4438775i32;
                            };
                        };
                    } else {
                        _gotoNext = 4439585i32;
                    };
                } else if (__value__ == (4438775i32)) {
                    _i_103 = (_args.length);
                    _keys_4438805 = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
                    _values_4438805 = (new stdgo.Slice<stdgo.GoInt32>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>);
                    for (_key => _value in _args) {
                        _keys_4438805 = (_keys_4438805.__append__(_key));
                        _values_4438805 = (_values_4438805.__append__(_value));
                    };
                    if ((0i32 : stdgo.GoInt) < (_keys_4438805.length)) {
                        _gotoNext = 4438888i32;
                    } else {
                        _gotoNext = 4438894i32;
                    };
                } else if (__value__ == (4438817i32)) {
                    _iterator_4438817++;
                    _gotoNext = 4438889i32;
                } else if (__value__ == (4438828i32)) {
                    _c_104 = _values_4438805[@:invalid_index_invalid_type _iterator_4438817];
                    _j_105 = _keys_4438805[@:invalid_index_invalid_type _iterator_4438817];
                    if (stdgo._internal.unicode.Unicode_isspace.isSpace(_c_104)) {
                        _gotoNext = 4438856i32;
                    } else {
                        _gotoNext = 4438817i32;
                    };
                } else if (__value__ == (4438856i32)) {
                    _i_103 = _j_105;
                    _gotoNext = 4438894i32;
                } else if (__value__ == (4438888i32)) {
                    _iterator_4438817 = 0i32;
                    _gotoNext = 4438889i32;
                } else if (__value__ == (4438889i32)) {
                    if (_iterator_4438817 < (_keys_4438805.length)) {
                        _gotoNext = 4438828i32;
                    } else {
                        _gotoNext = 4438894i32;
                    };
                } else if (__value__ == (4438894i32)) {
                    _path_101 = (_args.__slice__(0, _i_103) : stdgo.GoString)?.__copy__();
                    _trimBytes_98(_i_103);
                    _gotoNext = 4439585i32;
                } else if (__value__ == (4438929i32)) {
                    {
                        var __tmp__ = stdgo._internal.strings.Strings_cut.cut((_args.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), ("`" : stdgo.GoString));
                        _path_101 = @:tmpset0 __tmp__._0?.__copy__();
                        _ok_106 = @:tmpset0 __tmp__._2;
                    };
                    if (!_ok_106) {
                        _gotoNext = 4439008i32;
                    } else {
                        _gotoNext = 4439094i32;
                    };
                } else if (__value__ == (4439008i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid quoted string in //go:embed: %s" : stdgo.GoString), stdgo.Go.toInterface(_args)) };
                    _gotoNext = 4439094i32;
                } else if (__value__ == (4439094i32)) {
                    _trimBytes_98((((1 : stdgo.GoInt) + (_path_101.length) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt));
                    _gotoNext = 4439585i32;
                } else if (__value__ == (4439126i32)) {
                    _i_107 = (1 : stdgo.GoInt);
                    0i32;
                    _gotoNext = 4439149i32;
                } else if (__value__ == (4439149i32)) {
                    if ((_i_107 < (_args.length) : Bool)) {
                        _gotoNext = 4439174i32;
                    } else {
                        _gotoNext = 4439477i32;
                    };
                } else if (__value__ == (4439170i32)) {
                    _i_107++;
                    _gotoNext = 4439149i32;
                } else if (__value__ == (4439174i32)) {
                    if (_args[(_i_107 : stdgo.GoInt)] == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 4439199i32;
                    } else {
                        _gotoNext = 4439234i32;
                    };
                } else if (__value__ == (4439199i32)) {
                    _i_107++;
                    _i_107++;
                    _gotoNext = 4439149i32;
                } else if (__value__ == (4439234i32)) {
                    if (_args[(_i_107 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 4439252i32;
                    } else {
                        _gotoNext = 4439170i32;
                    };
                } else if (__value__ == (4439252i32)) {
                    {
                        var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote((_args.__slice__(0, (_i_107 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                        _q_108 = @:tmpset0 __tmp__._0?.__copy__();
                        _err_109 = @:tmpset0 __tmp__._1;
                    };
                    if (_err_109 != null) {
                        _gotoNext = 4439316i32;
                    } else {
                        _gotoNext = 4439414i32;
                    };
                } else if (__value__ == (4439316i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid quoted string in //go:embed: %s" : stdgo.GoString), stdgo.Go.toInterface((_args.__slice__(0, (_i_107 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString))) };
                    _gotoNext = 4439414i32;
                } else if (__value__ == (4439414i32)) {
                    _path_101 = _q_108?.__copy__();
                    _trimBytes_98((_i_107 + (1 : stdgo.GoInt) : stdgo.GoInt));
                    switchBreak = true;
                    _gotoNext = 4438756i32;
                } else if (__value__ == (4439477i32)) {
                    if ((_i_107 >= (_args.length) : Bool)) {
                        _gotoNext = 4439495i32;
                    } else {
                        _gotoNext = 4439585i32;
                    };
                } else if (__value__ == (4439495i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid quoted string in //go:embed: %s" : stdgo.GoString), stdgo.Go.toInterface(_args)) };
                    _gotoNext = 4439585i32;
                } else if (__value__ == (4439585i32)) {
                    if (_args != ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 4439599i32;
                    } else {
                        _gotoNext = 4439757i32;
                    };
                } else if (__value__ == (4439599i32)) {
                    {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString(_args?.__copy__());
                        _r_110 = @:tmpset0 __tmp__._0;
                    };
                    if (!stdgo._internal.unicode.Unicode_isspace.isSpace(_r_110)) {
                        _gotoNext = 4439668i32;
                    } else {
                        _gotoNext = 4439757i32;
                    };
                } else if (__value__ == (4439668i32)) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid quoted string in //go:embed: %s" : stdgo.GoString), stdgo.Go.toInterface(_args)) };
                    _gotoNext = 4439757i32;
                } else if (__value__ == (4439757i32)) {
                    _list_100 = (_list_100.__append__((new stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed(_path_101?.__copy__(), _pathPos_102?.__copy__()) : stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed)));
                    _trimSpace_99();
                    _gotoNext = 4438667i32;
                } else if (__value__ == (4439807i32)) {
                    return { _0 : _list_100, _1 : (null : stdgo.Error) };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
