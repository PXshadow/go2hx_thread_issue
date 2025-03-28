package stdgo._internal.go.ast;
function _summary(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>):stdgo.GoString {
        var _buf_1:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _b_8:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _bytes_6:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _group_3:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        var _maxLen_0;
        var _i_7:stdgo.GoInt = (0 : stdgo.GoInt);
        var _comment_5:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>);
        var _iterator_4608518_4:stdgo.GoInt = (0 : stdgo.GoInt);
        var _iterator_4608329_2:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _maxLen_0 = (40i64 : stdgo.GoUInt64);
                    _gotoNext = 4608306i32;
                } else if (__value__ == (4608306i32)) {
                    if ((0i32 : stdgo.GoInt) < (_list.length)) {
                        _gotoNext = 4608622i32;
                    } else {
                        _gotoNext = 4608652i32;
                    };
                } else if (__value__ == (4608317i32)) {
                    _iterator_4608329_2++;
                    _gotoNext = 4608623i32;
                } else if (__value__ == (4608340i32)) {
                    _group_3 = _list[(_iterator_4608329_2 : stdgo.GoInt)];
                    if ((0i32 : stdgo.GoInt) < ((@:checkr _group_3 ?? throw "null pointer dereference").list.length)) {
                        _gotoNext = 4608619i32;
                    } else {
                        _gotoNext = 4608317i32;
                    };
                } else if (__value__ == (4608535i32)) {
                    _comment_5 = (@:checkr _group_3 ?? throw "null pointer dereference").list[(_iterator_4608518_4 : stdgo.GoInt)];
                    if ((@:check2 _buf_1.len() >= (40 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4608563i32;
                    } else {
                        _gotoNext = 4608588i32;
                    };
                } else if (__value__ == (4608563i32)) {
                    stdgo._internal.go.ast.Ast__loopbreak._loopBreak = true;
                    _gotoNext = 4608623i32;
                } else if (__value__ == (4608588i32)) {
                    @:check2 _buf_1.writeString((@:checkr _comment_5 ?? throw "null pointer dereference").text?.__copy__());
                    _iterator_4608518_4++;
                    _gotoNext = 4608620i32;
                } else if (__value__ == (4608619i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = (@:checkr _group_3 ?? throw "null pointer dereference").list[(0i32 : stdgo.GoInt)];
                        _iterator_4608518_4 = @:binopAssign __tmp__0;
                        _comment_5 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4608620i32;
                } else if (__value__ == (4608620i32)) {
                    if (_iterator_4608518_4 < ((@:checkr _group_3 ?? throw "null pointer dereference").list.length)) {
                        _gotoNext = 4608535i32;
                    } else {
                        _gotoNext = 4608317i32;
                    };
                } else if (__value__ == (4608622i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _list[(0i32 : stdgo.GoInt)];
                        _iterator_4608329_2 = @:binopAssign __tmp__0;
                        _group_3 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4608623i32;
                } else if (__value__ == (4608623i32)) {
                    if (_iterator_4608329_2 < (_list.length)) {
                        _gotoNext = 4608340i32;
                    } else {
                        _gotoNext = 4608652i32;
                    };
                } else if (__value__ == (4608652i32)) {
                    if ((@:check2 _buf_1.len() > (40 : stdgo.GoInt) : Bool)) {
                        _gotoNext = 4608674i32;
                    } else {
                        _gotoNext = 4608772i32;
                    };
                } else if (__value__ == (4608674i32)) {
                    @:check2 _buf_1.truncate((37 : stdgo.GoInt));
                    @:check2 _buf_1.writeString(("..." : stdgo.GoString));
                    _gotoNext = 4608772i32;
                } else if (__value__ == (4608772i32)) {
                    _bytes_6 = @:check2 _buf_1.bytes();
                    if ((0i32 : stdgo.GoInt) < (_bytes_6.length)) {
                        _gotoNext = 4608880i32;
                    } else {
                        _gotoNext = 4608885i32;
                    };
                } else if (__value__ == (4608798i32)) {
                    _i_7++;
                    _gotoNext = 4608881i32;
                } else if (__value__ == (4608818i32)) {
                    _b_8 = _bytes_6[(_i_7 : stdgo.GoInt)];
                    _gotoNext = 4608822i32;
                } else if (__value__ == (4608822i32)) {
                    {
                        final __value__ = _b_8;
                        if (__value__ == ((9 : stdgo.GoUInt8)) || __value__ == ((10 : stdgo.GoUInt8)) || __value__ == ((13 : stdgo.GoUInt8))) {
                            _gotoNext = 4608835i32;
                        } else {
                            _gotoNext = 4608798i32;
                        };
                    };
                } else if (__value__ == (4608835i32)) {
                    _bytes_6[(_i_7 : stdgo.GoInt)] = (32 : stdgo.GoUInt8);
                    _gotoNext = 4608798i32;
                } else if (__value__ == (4608880i32)) {
                    {
                        final __tmp__0 = 0i32;
                        final __tmp__1 = _bytes_6[(0i32 : stdgo.GoInt)];
                        _i_7 = @:binopAssign __tmp__0;
                        _b_8 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 4608881i32;
                } else if (__value__ == (4608881i32)) {
                    if (_i_7 < (_bytes_6.length)) {
                        _gotoNext = 4608818i32;
                    } else {
                        _gotoNext = 4608885i32;
                    };
                } else if (__value__ == (4608885i32)) {
                    return (_bytes_6 : stdgo.GoString)?.__copy__();
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
