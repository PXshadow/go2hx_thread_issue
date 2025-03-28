package stdgo._internal.go.format;
function _diff(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        var _line = (1 : stdgo.GoInt);
        var _offs = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while (((_i < (_dst.length) : Bool) && (_i < (_src.length) : Bool) : Bool)) {
                var _d = (_dst[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
var _s = (_src[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if (_d != (_s)) {
                    @:check2r _t.errorf(("dst:%d: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface((_dst.__slice__(_offs, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
                    @:check2r _t.errorf(("src:%d: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_line), stdgo.Go.toInterface((_src.__slice__(_offs, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)));
                    return;
                };
if (_s == ((10 : stdgo.GoUInt8))) {
                    _line++;
                    _offs = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                };
                _i++;
            };
        };
        if ((_dst.length) != ((_src.length))) {
            @:check2r _t.errorf(("len(dst) = %d, len(src) = %d\nsrc = %q" : stdgo.GoString), stdgo.Go.toInterface((_dst.length)), stdgo.Go.toInterface((_src.length)), stdgo.Go.toInterface(_src));
        };
    }
