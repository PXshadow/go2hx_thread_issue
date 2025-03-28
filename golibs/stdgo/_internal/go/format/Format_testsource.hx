package stdgo._internal.go.format;
function testSource(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.os.Os_readfile.readFile(("format_test.go" : stdgo.GoString)), _src:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.go.format.Format_source.source(_src), _res:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(("Source failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.go.format.Format__diff._diff(_t, _res, _src);
    }
