package stdgo._internal.crypto.internal.nistec.fiat;
function _p384Add(_out1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>, _arg1:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>, _arg2:stdgo.Ref<stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384montgomerydomainfieldelement.T_p384MontgomeryDomainFieldElement>):Void {
        var _x1:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x2:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(0 : stdgo.GoInt)], _arg2[(0 : stdgo.GoInt)], (0i64 : stdgo.GoUInt64));
            _x1 = @:tmpset0 __tmp__._0;
            _x2 = @:tmpset0 __tmp__._1;
        };
        var _x3:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x4:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(1 : stdgo.GoInt)], _arg2[(1 : stdgo.GoInt)], ((_x2 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x3 = @:tmpset0 __tmp__._0;
            _x4 = @:tmpset0 __tmp__._1;
        };
        var _x5:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x6:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(2 : stdgo.GoInt)], _arg2[(2 : stdgo.GoInt)], ((_x4 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x5 = @:tmpset0 __tmp__._0;
            _x6 = @:tmpset0 __tmp__._1;
        };
        var _x7:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x8:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(3 : stdgo.GoInt)], _arg2[(3 : stdgo.GoInt)], ((_x6 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x7 = @:tmpset0 __tmp__._0;
            _x8 = @:tmpset0 __tmp__._1;
        };
        var _x9:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x10:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(4 : stdgo.GoInt)], _arg2[(4 : stdgo.GoInt)], ((_x8 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x9 = @:tmpset0 __tmp__._0;
            _x10 = @:tmpset0 __tmp__._1;
        };
        var _x11:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x12:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_add64.add64(_arg1[(5 : stdgo.GoInt)], _arg2[(5 : stdgo.GoInt)], ((_x10 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x11 = @:tmpset0 __tmp__._0;
            _x12 = @:tmpset0 __tmp__._1;
        };
        var _x13:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x14:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x1, (4294967295i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64));
            _x13 = @:tmpset0 __tmp__._0;
            _x14 = @:tmpset0 __tmp__._1;
        };
        var _x15:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x16:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x3, (-4294967296i64 : stdgo.GoUInt64), ((_x14 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x15 = @:tmpset0 __tmp__._0;
            _x16 = @:tmpset0 __tmp__._1;
        };
        var _x17:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x18:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x5, (-2i64 : stdgo.GoUInt64), ((_x16 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x17 = @:tmpset0 __tmp__._0;
            _x18 = @:tmpset0 __tmp__._1;
        };
        var _x19:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x20:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x7, (-1i64 : stdgo.GoUInt64), ((_x18 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x19 = @:tmpset0 __tmp__._0;
            _x20 = @:tmpset0 __tmp__._1;
        };
        var _x21:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x22:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x9, (-1i64 : stdgo.GoUInt64), ((_x20 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x21 = @:tmpset0 __tmp__._0;
            _x22 = @:tmpset0 __tmp__._1;
        };
        var _x23:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        var _x24:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(_x11, (-1i64 : stdgo.GoUInt64), ((_x22 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x23 = @:tmpset0 __tmp__._0;
            _x24 = @:tmpset0 __tmp__._1;
        };
        var _x26:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        {
            var __tmp__ = stdgo._internal.math.bits.Bits_sub64.sub64(((_x12 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), ((_x24 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1) : stdgo.GoUInt64));
            _x26 = @:tmpset0 __tmp__._1;
        };
        var _x27:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x27__pointer__ = stdgo.Go.pointer(_x27);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x27__pointer__, (_x26 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1), _x13, _x1);
        var _x28:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x28__pointer__ = stdgo.Go.pointer(_x28);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x28__pointer__, (_x26 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1), _x15, _x3);
        var _x29:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x29__pointer__ = stdgo.Go.pointer(_x29);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x29__pointer__, (_x26 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1), _x17, _x5);
        var _x30:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x30__pointer__ = stdgo.Go.pointer(_x30);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x30__pointer__, (_x26 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1), _x19, _x7);
        var _x31:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x31__pointer__ = stdgo.Go.pointer(_x31);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x31__pointer__, (_x26 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1), _x21, _x9);
        var _x32:stdgo.GoUInt64 = (0 : stdgo.GoUInt64), _x32__pointer__ = stdgo.Go.pointer(_x32);
        stdgo._internal.crypto.internal.nistec.fiat.Fiat__p384cmovznzu64._p384CmovznzU64(_x32__pointer__, (_x26 : stdgo._internal.crypto.internal.nistec.fiat.Fiat_t_p384uint1.T_p384Uint1), _x23, _x11);
        _out1[(0 : stdgo.GoInt)] = _x27;
        _out1[(1 : stdgo.GoInt)] = _x28;
        _out1[(2 : stdgo.GoInt)] = _x29;
        _out1[(3 : stdgo.GoInt)] = _x30;
        _out1[(4 : stdgo.GoInt)] = _x31;
        _out1[(5 : stdgo.GoInt)] = _x32;
    }
