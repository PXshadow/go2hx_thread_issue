package stdgo._internal.go.doc.comment;
function _isIdentASCII(_c:stdgo.GoUInt8):Bool {
        {};
        return ((((((1i64 : stdgo.GoUInt64) << _c : stdgo.GoUInt64)) & (287948901175001088i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | ((((1i64 : stdgo.GoUInt64) << ((_c - (64 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt64)) & (576460745995190270i64 : stdgo.GoUInt64) : stdgo.GoUInt64) : stdgo.GoUInt64)) != ((0i64 : stdgo.GoUInt64));
    }
