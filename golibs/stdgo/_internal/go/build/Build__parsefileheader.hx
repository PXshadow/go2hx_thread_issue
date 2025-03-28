package stdgo._internal.go.build;
function _parseFileHeader(_content:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : Bool; var _3 : stdgo.Error; } {
        var _trimmed = (null : stdgo.Slice<stdgo.GoUInt8>), _goBuild = (null : stdgo.Slice<stdgo.GoUInt8>), _sawBinaryOnly = false, _err = (null : stdgo.Error);
        var _line_91:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ended_89:Bool = false;
        var _p_88:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _end_87:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_93:stdgo.GoInt = (0 : stdgo.GoInt);
        var commentsBreak = false;
        var _i_92:stdgo.GoInt = (0 : stdgo.GoInt);
        var linesBreak = false;
        var _inSlashStar_90:Bool = false;
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _end_87 = (0 : stdgo.GoInt);
                    _p_88 = _content;
                    _ended_89 = false;
                    _inSlashStar_90 = false;
                    _gotoNext = 4412973i32;
                } else if (__value__ == (4412973i32)) {
                    0i32;
                    linesBreak = false;
                    _gotoNext = 4412981i32;
                } else if (__value__ == (4412981i32)) {
                    if (!linesBreak && (((_p_88.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4412996i32;
                    } else {
                        _gotoNext = 4414543i32;
                    };
                } else if (__value__ == (4412996i32)) {
                    _line_91 = _p_88;
                    {
                        _i_92 = stdgo._internal.bytes.Bytes_indexbyte.indexByte(_line_91, (10 : stdgo.GoUInt8));
                        if ((_i_92 >= (0 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4413056i32;
                        } else {
                            _gotoNext = 4413098i32;
                        };
                    };
                } else if (__value__ == (4413056i32)) {
                    {
                        final __tmp__0 = (_line_91.__slice__(0, _i_92) : stdgo.Slice<stdgo.GoUInt8>);
                        final __tmp__1 = (_p_88.__slice__((_i_92 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _line_91 = @:binopAssign __tmp__0;
                        _p_88 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4413124i32;
                } else if (__value__ == (4413098i32)) {
                    _gotoNext = 4413098i32;
                    _p_88 = (_p_88.__slice__((_p_88.length)) : stdgo.Slice<stdgo.GoUInt8>);
                    0i32;
                    _gotoNext = 4413124i32;
                } else if (__value__ == (4413124i32)) {
                    _line_91 = stdgo._internal.bytes.Bytes_trimspace.trimSpace(_line_91);
                    if (((_line_91.length == (0 : stdgo.GoInt)) && !_ended_89 : Bool)) {
                        _gotoNext = 4413183i32;
                    } else {
                        _gotoNext = 4413734i32;
                    };
                } else if (__value__ == (4413183i32)) {
                    _end_87 = ((_content.length) - (_p_88.length) : stdgo.GoInt);
                    _gotoNext = 4412981i32;
                } else if (__value__ == (4413734i32)) {
                    if (!stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_line_91, stdgo._internal.go.build.Build__slashslash._slashSlash)) {
                        _gotoNext = 4413772i32;
                    } else {
                        _gotoNext = 4413817i32;
                    };
                } else if (__value__ == (4413772i32)) {
                    _ended_89 = true;
                    _gotoNext = 4413817i32;
                } else if (__value__ == (4413817i32)) {
                    if ((!_inSlashStar_90 && stdgo._internal.go.build.Build__isgobuildcomment._isGoBuildComment(_line_91) : Bool)) {
                        _gotoNext = 4413859i32;
                    } else {
                        _gotoNext = 4413960i32;
                    };
                } else if (__value__ == (4413859i32)) {
                    if (_goBuild != null) {
                        _gotoNext = 4413882i32;
                    } else {
                        _gotoNext = 4413939i32;
                    };
                } else if (__value__ == (4413882i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : false, _3 : stdgo._internal.go.build.Build__errmultiplegobuild._errMultipleGoBuild };
                        _trimmed = __tmp__._0;
                        _goBuild = __tmp__._1;
                        _sawBinaryOnly = __tmp__._2;
                        _err = __tmp__._3;
                        __tmp__;
                    };
                    _gotoNext = 4413939i32;
                } else if (__value__ == (4413939i32)) {
                    _goBuild = _line_91;
                    _gotoNext = 4413960i32;
                } else if (__value__ == (4413960i32)) {
                    if ((!_inSlashStar_90 && stdgo._internal.bytes.Bytes_equal.equal(_line_91, stdgo._internal.go.build.Build__binaryonlycomment._binaryOnlyComment) : Bool)) {
                        _gotoNext = 4414016i32;
                    } else {
                        _gotoNext = 4414048i32;
                    };
                } else if (__value__ == (4414016i32)) {
                    _sawBinaryOnly = true;
                    _gotoNext = 4414048i32;
                } else if (__value__ == (4414048i32)) {
                    _gotoNext = 4414048i32;
                    0i32;
                    commentsBreak = false;
                    _gotoNext = 4414060i32;
                } else if (__value__ == (4414060i32)) {
                    if (!commentsBreak && (((_line_91.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 4414078i32;
                    } else {
                        _gotoNext = 4412981i32;
                    };
                } else if (__value__ == (4414078i32)) {
                    if (_inSlashStar_90) {
                        _gotoNext = 4414098i32;
                    } else {
                        _gotoNext = 4414285i32;
                    };
                } else if (__value__ == (4414098i32)) {
                    {
                        _i_93 = stdgo._internal.bytes.Bytes_index.index(_line_91, stdgo._internal.go.build.Build__starslash._starSlash);
                        if ((_i_93 >= (0 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 4414149i32;
                        } else {
                            _gotoNext = 4414262i32;
                        };
                    };
                } else if (__value__ == (4414149i32)) {
                    _inSlashStar_90 = false;
                    _line_91 = stdgo._internal.bytes.Bytes_trimspace.trimSpace((_line_91.__slice__((_i_93 + (stdgo._internal.go.build.Build__starslash._starSlash.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
                    _gotoNext = 4414060i32;
                } else if (__value__ == (4414262i32)) {
                    _gotoNext = 4412981i32;
                } else if (__value__ == (4414285i32)) {
                    if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_line_91, stdgo._internal.go.build.Build__slashslash._slashSlash)) {
                        _gotoNext = 4414322i32;
                    } else {
                        _gotoNext = 4414351i32;
                    };
                } else if (__value__ == (4414322i32)) {
                    _gotoNext = 4412981i32;
                } else if (__value__ == (4414351i32)) {
                    if (stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_line_91, stdgo._internal.go.build.Build__slashstar._slashStar)) {
                        _gotoNext = 4414387i32;
                    } else {
                        _gotoNext = 4414522i32;
                    };
                } else if (__value__ == (4414387i32)) {
                    _inSlashStar_90 = true;
                    _line_91 = stdgo._internal.bytes.Bytes_trimspace.trimSpace((_line_91.__slice__((stdgo._internal.go.build.Build__slashstar._slashStar.length)) : stdgo.Slice<stdgo.GoUInt8>));
                    _gotoNext = 4414060i32;
                } else if (__value__ == (4414522i32)) {
                    linesBreak = true;
                    _gotoNext = 4412981i32;
                } else if (__value__ == (4414543i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : Bool; var _3 : stdgo.Error; } = { _0 : (_content.__slice__(0, _end_87) : stdgo.Slice<stdgo.GoUInt8>), _1 : _goBuild, _2 : _sawBinaryOnly, _3 : (null : stdgo.Error) };
                        _trimmed = __tmp__._0;
                        _goBuild = __tmp__._1;
                        _sawBinaryOnly = __tmp__._2;
                        _err = __tmp__._3;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
