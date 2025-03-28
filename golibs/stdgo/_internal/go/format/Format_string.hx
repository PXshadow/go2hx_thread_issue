package stdgo._internal.go.format;
function string(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.go.format.Format_source.source((_s : stdgo.Slice<stdgo.GoUInt8>)), _res:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
        };
        return { _0 : (_res : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
    }
