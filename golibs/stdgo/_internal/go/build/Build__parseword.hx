package stdgo._internal.go.build;
function _parseWord(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; } {
        var _word = (null : stdgo.Slice<stdgo.GoUInt8>), _rest = (null : stdgo.Slice<stdgo.GoUInt8>);
        _data = stdgo._internal.go.build.Build__skipspaceorcomment._skipSpaceOrComment(_data);
        _rest = _data;
        while (true) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune(_rest), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
            if (((stdgo._internal.unicode.Unicode_isletter.isLetter(_r) || (((48 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57 : stdgo.GoInt32) : Bool) : Bool) : Bool) || (_r == (95 : stdgo.GoInt32)) : Bool)) {
                _rest = (_rest.__slice__(_size) : stdgo.Slice<stdgo.GoUInt8>);
                continue;
            };
            break;
        };
        _word = (_data.__slice__(0, ((_data.length) - (_rest.length) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        if ((_word.length) == ((0 : stdgo.GoInt))) {
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : (null : stdgo.Slice<stdgo.GoUInt8>) };
                _word = __tmp__._0;
                _rest = __tmp__._1;
                __tmp__;
            };
        };
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; } = { _0 : _word, _1 : _rest };
            _word = __tmp__._0;
            _rest = __tmp__._1;
            __tmp__;
        };
    }
