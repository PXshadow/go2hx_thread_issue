package stdgo._internal.go.doc.comment;
function _parseSpans(_lines:stdgo.Slice<stdgo.GoString>):stdgo.Slice<stdgo._internal.go.doc.comment.Comment_t_span.T_span> {
        var _kind_4:stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind = ((0 : stdgo.GoInt) : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
        var _unindentedListOK_7:Bool = false;
        var _end_6:stdgo.GoInt = (0 : stdgo.GoInt);
        var _spans_0:stdgo.Slice<stdgo._internal.go.doc.comment.Comment_t_span.T_span> = (null : stdgo.Slice<stdgo._internal.go.doc.comment.Comment_t_span.T_span>);
        var _start_5:stdgo.GoInt = (0 : stdgo.GoInt);
        var spansBreak = false;
        var _forceIndent_3:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _watchdog_1:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _watchdog_1 = ((2 : stdgo.GoInt) * (_lines.length) : stdgo.GoInt);
                    _i_2 = (0 : stdgo.GoInt);
                    _forceIndent_3 = (0 : stdgo.GoInt);
                    _gotoNext = 3636094i32;
                } else if (__value__ == (3636094i32)) {
                    0i32;
                    spansBreak = false;
                    _gotoNext = 3636102i32;
                } else if (__value__ == (3636102i32)) {
                    if (!spansBreak) {
                        _gotoNext = 3636106i32;
                    } else {
                        _gotoNext = 3639599i32;
                    };
                } else if (__value__ == (3636106i32)) {
                    0i32;
                    _gotoNext = 3636133i32;
                } else if (__value__ == (3636133i32)) {
                    if (((_i_2 < (_lines.length) : Bool) && (_lines[(_i_2 : stdgo.GoInt)] == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3636170i32;
                    } else {
                        _gotoNext = 3636185i32;
                    };
                } else if (__value__ == (3636170i32)) {
                    _i_2++;
                    _gotoNext = 3636133i32;
                } else if (__value__ == (3636185i32)) {
                    if ((_i_2 >= (_lines.length) : Bool)) {
                        _gotoNext = 3636204i32;
                    } else {
                        _gotoNext = 3636221i32;
                    };
                } else if (__value__ == (3636204i32)) {
                    _gotoNext = 3639599i32;
                } else if (__value__ == (3636221i32)) {
                    {
                        _watchdog_1--;
                        if ((_watchdog_1 < (0 : stdgo.GoInt) : Bool)) {
                            _gotoNext = 3636249i32;
                        } else {
                            _gotoNext = 3636322i32;
                        };
                    };
                } else if (__value__ == (3636249i32)) {
                    throw stdgo.Go.toInterface(("go/doc/comment: internal error: not making progress" : stdgo.GoString));
                    _gotoNext = 3636322i32;
                } else if (__value__ == (3636322i32)) {
                    _start_5 = _i_2;
                    _end_6 = _i_2;
                    if (((_i_2 < _forceIndent_3 : Bool) || stdgo._internal.go.doc.comment.Comment__indented._indented(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3636407i32;
                    } else {
                        _gotoNext = 3637798i32;
                    };
                } else if (__value__ == (3636407i32)) {
                    _unindentedListOK_7 = (stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) && (_i_2 < _forceIndent_3 : Bool) : Bool);
                    _i_2++;
                    0i32;
                    _gotoNext = 3636845i32;
                } else if (__value__ == (3636845i32)) {
                    if (((_i_2 < (_lines.length) : Bool) && ((((_lines[(_i_2 : stdgo.GoInt)] == ((stdgo.Go.str() : stdgo.GoString)) || (_i_2 < _forceIndent_3 : Bool) : Bool) || stdgo._internal.go.doc.comment.Comment__indented._indented(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) : Bool) || ((_unindentedListOK_7 && stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) : Bool)) : Bool)) : Bool)) {
                        _gotoNext = 3636967i32;
                    } else {
                        _gotoNext = 3637079i32;
                    };
                } else if (__value__ == (3636967i32)) {
                    if (_lines[(_i_2 : stdgo.GoInt)] == ((stdgo.Go.str() : stdgo.GoString))) {
                        _gotoNext = 3636991i32;
                    } else {
                        _gotoNext = 3637033i32;
                    };
                } else if (__value__ == (3636991i32)) {
                    _unindentedListOK_7 = false;
                    _gotoNext = 3637033i32;
                } else if (__value__ == (3637033i32)) {
                    _i_2++;
                    _gotoNext = 3636845i32;
                } else if (__value__ == (3637079i32)) {
                    _end_6 = _i_2;
                    0i32;
                    _gotoNext = 3637090i32;
                } else if (__value__ == (3637090i32)) {
                    if (((_end_6 > _start_5 : Bool) && (_lines[(_end_6 - (1 : stdgo.GoInt) : stdgo.GoInt)] == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3637128i32;
                    } else {
                        _gotoNext = 3637627i32;
                    };
                } else if (__value__ == (3637128i32)) {
                    _end_6--;
                    _gotoNext = 3637090i32;
                } else if (__value__ == (3637627i32)) {
                    if (((_end_6 < (_lines.length) : Bool) && stdgo._internal.strings.Strings_hasprefix.hasPrefix(_lines[(_end_6 : stdgo.GoInt)]?.__copy__(), ("}" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3637685i32;
                    } else {
                        _gotoNext = 3637706i32;
                    };
                } else if (__value__ == (3637685i32)) {
                    _end_6++;
                    _gotoNext = 3637706i32;
                } else if (__value__ == (3637706i32)) {
                    if (stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_start_5 : stdgo.GoInt)]?.__copy__())) {
                        _gotoNext = 3637730i32;
                    } else {
                        _gotoNext = 3637762i32;
                    };
                } else if (__value__ == (3637730i32)) {
                    _kind_4 = (3 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    _gotoNext = 3639538i32;
                } else if (__value__ == (3637762i32)) {
                    _gotoNext = 3637762i32;
                    _kind_4 = (1 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    0i32;
                    _gotoNext = 3639538i32;
                } else if (__value__ == (3637798i32)) {
                    _gotoNext = 3637798i32;
                    _i_2++;
                    0i32;
                    _gotoNext = 3637865i32;
                } else if (__value__ == (3637865i32)) {
                    if ((((_i_2 < (_lines.length) : Bool) && _lines[(_i_2 : stdgo.GoInt)] != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && !stdgo._internal.go.doc.comment.Comment__indented._indented(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3637925i32;
                    } else {
                        _gotoNext = 3637943i32;
                    };
                } else if (__value__ == (3637925i32)) {
                    _i_2++;
                    _gotoNext = 3637865i32;
                } else if (__value__ == (3637943i32)) {
                    _end_6 = _i_2;
                    if ((((_i_2 < (_lines.length) : Bool) && _lines[(_i_2 : stdgo.GoInt)] != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && !stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_i_2 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3638488i32;
                    } else {
                        _gotoNext = 3639324i32;
                    };
                } else if (__value__ == (3638488i32)) {
                    _gotoNext = 3638494i32;
                } else if (__value__ == (3638494i32)) {
                    if (stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_i_2 - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__())) {
                        _gotoNext = 3638507i32;
                    } else if ((stdgo._internal.strings.Strings_hassuffix.hasSuffix(_lines[(_i_2 - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), ("{" : stdgo.GoString)) || stdgo._internal.strings.Strings_hassuffix.hasSuffix(_lines[(_i_2 - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), ("\\" : stdgo.GoString)) : Bool)) {
                        _gotoNext = 3638833i32;
                    } else {
                        _gotoNext = 3639190i32;
                    };
                } else if (__value__ == (3638507i32)) {
                    _forceIndent_3 = _end_6;
                    _end_6--;
                    0i32;
                    _gotoNext = 3638767i32;
                } else if (__value__ == (3638767i32)) {
                    if (((_end_6 > _start_5 : Bool) && stdgo._internal.go.doc.comment.Comment__islist._isList(_lines[(_end_6 - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3638807i32;
                    } else {
                        _gotoNext = 3639190i32;
                    };
                } else if (__value__ == (3638807i32)) {
                    _end_6--;
                    _gotoNext = 3638767i32;
                } else if (__value__ == (3638833i32)) {
                    _forceIndent_3 = _end_6;
                    _end_6--;
                    _gotoNext = 3639190i32;
                } else if (__value__ == (3639190i32)) {
                    if (((_start_5 == _end_6) && (_forceIndent_3 > _start_5 : Bool) : Bool)) {
                        _gotoNext = 3639229i32;
                    } else {
                        _gotoNext = 3639324i32;
                    };
                } else if (__value__ == (3639229i32)) {
                    _i_2 = _start_5;
                    _gotoNext = 3636102i32;
                } else if (__value__ == (3639324i32)) {
                    if ((((_end_6 - _start_5 : stdgo.GoInt) == (1 : stdgo.GoInt)) && stdgo._internal.go.doc.comment.Comment__isheading._isHeading(_lines[(_start_5 : stdgo.GoInt)]?.__copy__()) : Bool)) {
                        _gotoNext = 3639369i32;
                    } else if ((((_end_6 - _start_5 : stdgo.GoInt) == (1 : stdgo.GoInt)) && stdgo._internal.go.doc.comment.Comment__isoldheading._isOldHeading(_lines[(_start_5 : stdgo.GoInt)]?.__copy__(), _lines, _start_5) : Bool)) {
                        _gotoNext = 3639466i32;
                    } else {
                        _gotoNext = 3639504i32;
                    };
                } else if (__value__ == (3639369i32)) {
                    _kind_4 = (2 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    _gotoNext = 3639538i32;
                } else if (__value__ == (3639466i32)) {
                    _kind_4 = (4 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    _gotoNext = 3639538i32;
                } else if (__value__ == (3639504i32)) {
                    _gotoNext = 3639504i32;
                    _kind_4 = (5 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
                    0i32;
                    _gotoNext = 3639538i32;
                } else if (__value__ == (3639538i32)) {
                    _spans_0 = (_spans_0.__append__((new stdgo._internal.go.doc.comment.Comment_t_span.T_span(_start_5, _end_6, _kind_4) : stdgo._internal.go.doc.comment.Comment_t_span.T_span)));
                    _i_2 = _end_6;
                    _gotoNext = 3636102i32;
                } else if (__value__ == (3639599i32)) {
                    return _spans_0;
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
