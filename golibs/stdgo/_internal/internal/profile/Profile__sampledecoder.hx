package stdgo._internal.internal.profile;
var _sampleDecoder : stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder> = (new stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder>(4, 4, ...[null, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeuint64s._decodeUint64s(_b, (stdgo.Go.setRef((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>) ?? throw "null pointer dereference")._locationIDX) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt64>>));
    }, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeint64s._decodeInt64s(_b, (stdgo.Go.setRef((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>) ?? throw "null pointer dereference").value) : stdgo.Ref<stdgo.Slice<stdgo.GoInt64>>));
    }, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_t_message.T_message):stdgo.Error {
        var _s = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_sample.Sample>);
        var _n = ((@:checkr _s ?? throw "null pointer dereference")._labelX.length : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._labelX = ((@:checkr _s ?? throw "null pointer dereference")._labelX.__append__((new stdgo._internal.internal.profile.Profile_label.Label() : stdgo._internal.internal.profile.Profile_label.Label)));
        return stdgo._internal.internal.profile.Profile__decodemessage._decodeMessage(_b, stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _s ?? throw "null pointer dereference")._labelX[(_n : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.internal.profile.Profile_label.Label>)));
    }]) : stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder>);
