package stdgo._internal.go.constant;
function binaryOp(_x_:stdgo._internal.go.constant.Constant_value.Value, _op:stdgo._internal.go.token.Token_token.Token, _y_:stdgo._internal.go.constant.Constant_value.Value):stdgo._internal.go.constant.Constant_value.Value {
        var _a_30:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _x_18:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal);
        var _s_56:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _ac_50:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _x_20:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val);
        var _x_16:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _d_43:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _a_27:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _b_34:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = (null : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        var _c_32:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _bd_47:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _c_42:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _c_38:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        var _im_45:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _y_26:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal);
        var _bc_48:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _a_40:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _x_23:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal);
        var _dd_55:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _cc_54:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _ad_49:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _re_44:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _ac_46:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _x_19:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal);
        var _y_17:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _y_39:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal);
        var _b_37:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        var _a_33:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = (null : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        var _c_29:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _b_28:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _x_21:stdgo._internal.go.constant.Constant_t_intval.T_intVal = ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal);
        var _a_36:stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_float_.Float_>);
        var _x_25:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal> = (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>);
        var _ad_53:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _bd_51:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _x_24:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal);
        var _x_22:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal);
        var _bc_52:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _b_41:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _c_35:stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat> = (null : stdgo.Ref<stdgo._internal.math.big.Big_rat.Rat>);
        var _b_31:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _x_19;
                    _gotoNext = 5215188i32;
                    _x_25;
                    _gotoNext = 5215188i32;
                    {
                        var __tmp__ = stdgo._internal.go.constant.Constant__match._match(_x_, _y_);
                        _x_16 = @:tmpset0 __tmp__._0;
                        _y_17 = @:tmpset0 __tmp__._1;
                    };
                    0i32;
                    _gotoNext = 5212285i32;
                } else if (__value__ == (5212285i32)) {
                    {
                        final __type__ = _x_16;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value;
                            _x_18 = _x;
                            _gotoNext = 5212309i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = __type__ == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__.__underlying__() == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__ == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__.__underlying__().value;
                            _x_19 = _x;
                            _gotoNext = 5212339i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                            var _x:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value;
                            _x_20 = _x;
                            _gotoNext = 5212463i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value;
                            _x_21 = _x;
                            _gotoNext = 5213280i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__().value;
                            _x_22 = _x;
                            _gotoNext = 5213804i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__().value;
                            _x_23 = _x;
                            _gotoNext = 5214065i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal))) {
                            var _x:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__().value;
                            _x_24 = _x;
                            _gotoNext = 5214334i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>))) {
                            var _x:stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>) : __type__.__underlying__().value;
                            _x_25 = _x;
                            _gotoNext = 5215094i32;
                        } else {
                            var _x:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                            _gotoNext = 5215188i32;
                        };
                    };
                } else if (__value__ == (5212309i32)) {
                    return stdgo.Go.asInterface(_x_18);
                    _x_18;
                    _gotoNext = 5215188i32;
                } else if (__value__ == (5212339i32)) {
                    _y_26 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_17) : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal)) : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal);
                    _gotoNext = 5212374i32;
                } else if (__value__ == (5212374i32)) {
                    {
                        final __value__ = _op;
                        if (__value__ == ((34 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5212388i32;
                        } else if (__value__ == ((35 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5212424i32;
                        } else {
                            _gotoNext = 0i32;
                        };
                    };
                } else if (__value__ == (5212388i32)) {
                    return stdgo.Go.asInterface((_x_19 && _y_26 : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal));
                    _gotoNext = 0i32;
                } else if (__value__ == (5212424i32)) {
                    return stdgo.Go.asInterface((_x_19 || _y_26 : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal));
                    _gotoNext = 0i32;
                } else if (__value__ == (5212463i32)) {
                    _a_27 = (_x_20 : stdgo.GoInt64);
                    _b_28 = ((stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_17) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val)) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : stdgo.GoInt64);
                    _gotoNext = 5212537i32;
                } else if (__value__ == (5212537i32)) {
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5212551i32;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5212685i32;
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5212819i32;
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5212953i32;
                        } else if (__value__ == ((26 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213007i32;
                        } else if (__value__ == ((16 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213071i32;
                        } else if (__value__ == ((17 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213102i32;
                        } else if (__value__ == ((18 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213133i32;
                        } else if (__value__ == ((19 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213163i32;
                        } else if (__value__ == ((22 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213194i32;
                        } else {
                            _gotoNext = 5213230i32;
                        };
                    };
                } else if (__value__ == (5212551i32)) {
                    if ((!stdgo._internal.go.constant.Constant__is63bit._is63bit(_a_27) || !stdgo._internal.go.constant.Constant__is63bit._is63bit(_b_28) : Bool)) {
                        _gotoNext = 5212600i32;
                    } else {
                        _gotoNext = 5212673i32;
                    };
                } else if (__value__ == (5212600i32)) {
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(@:check2r stdgo._internal.go.constant.Constant__newint._newInt().add(stdgo._internal.math.big.Big_newint.newInt(_a_27), stdgo._internal.math.big.Big_newint.newInt(_b_28)));
                    _gotoNext = 5212673i32;
                } else if (__value__ == (5212673i32)) {
                    _c_29 = (_a_27 + _b_28 : stdgo.GoInt64);
                    _gotoNext = 5213259i32;
                } else if (__value__ == (5212685i32)) {
                    if ((!stdgo._internal.go.constant.Constant__is63bit._is63bit(_a_27) || !stdgo._internal.go.constant.Constant__is63bit._is63bit(_b_28) : Bool)) {
                        _gotoNext = 5212734i32;
                    } else {
                        _gotoNext = 5212807i32;
                    };
                } else if (__value__ == (5212734i32)) {
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(@:check2r stdgo._internal.go.constant.Constant__newint._newInt().sub(stdgo._internal.math.big.Big_newint.newInt(_a_27), stdgo._internal.math.big.Big_newint.newInt(_b_28)));
                    _gotoNext = 5212807i32;
                } else if (__value__ == (5212807i32)) {
                    _c_29 = (_a_27 - _b_28 : stdgo.GoInt64);
                    _gotoNext = 5213259i32;
                } else if (__value__ == (5212819i32)) {
                    if ((!stdgo._internal.go.constant.Constant__is32bit._is32bit(_a_27) || !stdgo._internal.go.constant.Constant__is32bit._is32bit(_b_28) : Bool)) {
                        _gotoNext = 5212868i32;
                    } else {
                        _gotoNext = 5212941i32;
                    };
                } else if (__value__ == (5212868i32)) {
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(@:check2r stdgo._internal.go.constant.Constant__newint._newInt().mul(stdgo._internal.math.big.Big_newint.newInt(_a_27), stdgo._internal.math.big.Big_newint.newInt(_b_28)));
                    _gotoNext = 5212941i32;
                } else if (__value__ == (5212941i32)) {
                    _c_29 = (_a_27 * _b_28 : stdgo.GoInt64);
                    _gotoNext = 5213259i32;
                } else if (__value__ == (5212953i32)) {
                    return stdgo._internal.go.constant.Constant__makerat._makeRat(stdgo._internal.math.big.Big_newrat.newRat(_a_27, _b_28));
                    _gotoNext = 5213259i32;
                } else if (__value__ == (5213007i32)) {
                    _c_29 = (_a_27 / _b_28 : stdgo.GoInt64);
                    _gotoNext = 5213259i32;
                } else if (__value__ == (5213071i32)) {
                    _c_29 = (_a_27 % _b_28 : stdgo.GoInt64);
                    _gotoNext = 5213259i32;
                } else if (__value__ == (5213102i32)) {
                    _c_29 = (_a_27 & _b_28 : stdgo.GoInt64);
                    _gotoNext = 5213259i32;
                } else if (__value__ == (5213133i32)) {
                    _c_29 = (_a_27 | _b_28 : stdgo.GoInt64);
                    _gotoNext = 5213259i32;
                } else if (__value__ == (5213163i32)) {
                    _c_29 = (_a_27 ^ _b_28 : stdgo.GoInt64);
                    _gotoNext = 5213259i32;
                } else if (__value__ == (5213194i32)) {
                    _c_29 = (_a_27 & ((_b_28 ^ (-1i32 : stdgo.GoInt32) : stdgo.GoInt64)) : stdgo.GoInt64);
                    _gotoNext = 5213259i32;
                } else if (__value__ == (5213230i32)) {
                    _gotoNext = 5215188i32;
                } else if (__value__ == (5213259i32)) {
                    return stdgo.Go.asInterface((_c_29 : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val));
                    _x_20;
                    _gotoNext = 5215188i32;
                } else if (__value__ == (5213280i32)) {
                    _a_30 = _x_21._val;
                    _b_31 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_17) : stdgo._internal.go.constant.Constant_t_intval.T_intVal)) : stdgo._internal.go.constant.Constant_t_intval.T_intVal)._val;
                    _c_32 = stdgo._internal.go.constant.Constant__newint._newInt();
                    _gotoNext = 5213346i32;
                } else if (__value__ == (5213346i32)) {
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213360i32;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213393i32;
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213426i32;
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213459i32;
                        } else if (__value__ == ((26 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213519i32;
                        } else if (__value__ == ((16 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213585i32;
                        } else if (__value__ == ((17 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213618i32;
                        } else if (__value__ == ((18 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213651i32;
                        } else if (__value__ == ((19 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213682i32;
                        } else if (__value__ == ((22 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213715i32;
                        } else {
                            _gotoNext = 5213755i32;
                        };
                    };
                } else if (__value__ == (5213360i32)) {
                    @:check2r _c_32.add(_a_30, _b_31);
                    _gotoNext = 5213784i32;
                } else if (__value__ == (5213393i32)) {
                    @:check2r _c_32.sub(_a_30, _b_31);
                    _gotoNext = 5213784i32;
                } else if (__value__ == (5213426i32)) {
                    @:check2r _c_32.mul(_a_30, _b_31);
                    _gotoNext = 5213784i32;
                } else if (__value__ == (5213459i32)) {
                    return stdgo._internal.go.constant.Constant__makerat._makeRat(@:check2r stdgo._internal.go.constant.Constant__newrat._newRat().setFrac(_a_30, _b_31));
                    _gotoNext = 5213784i32;
                } else if (__value__ == (5213519i32)) {
                    @:check2r _c_32.quo(_a_30, _b_31);
                    _gotoNext = 5213784i32;
                } else if (__value__ == (5213585i32)) {
                    @:check2r _c_32.rem(_a_30, _b_31);
                    _gotoNext = 5213784i32;
                } else if (__value__ == (5213618i32)) {
                    @:check2r _c_32.and(_a_30, _b_31);
                    _gotoNext = 5213784i32;
                } else if (__value__ == (5213651i32)) {
                    @:check2r _c_32.or(_a_30, _b_31);
                    _gotoNext = 5213784i32;
                } else if (__value__ == (5213682i32)) {
                    @:check2r _c_32.xor(_a_30, _b_31);
                    _gotoNext = 5213784i32;
                } else if (__value__ == (5213715i32)) {
                    @:check2r _c_32.andNot(_a_30, _b_31);
                    _gotoNext = 5213784i32;
                } else if (__value__ == (5213755i32)) {
                    _gotoNext = 5215188i32;
                } else if (__value__ == (5213784i32)) {
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(_c_32);
                    _x_21;
                    _gotoNext = 5215188i32;
                } else if (__value__ == (5213804i32)) {
                    _a_33 = _x_22._val;
                    _b_34 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_17) : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal)) : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal)._val;
                    _c_35 = stdgo._internal.go.constant.Constant__newrat._newRat();
                    _gotoNext = 5213870i32;
                } else if (__value__ == (5213870i32)) {
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213884i32;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213917i32;
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213950i32;
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5213983i32;
                        } else {
                            _gotoNext = 5214016i32;
                        };
                    };
                } else if (__value__ == (5213884i32)) {
                    @:check2r _c_35.add(_a_33, _b_34);
                    _gotoNext = 5214045i32;
                } else if (__value__ == (5213917i32)) {
                    @:check2r _c_35.sub(_a_33, _b_34);
                    _gotoNext = 5214045i32;
                } else if (__value__ == (5213950i32)) {
                    @:check2r _c_35.mul(_a_33, _b_34);
                    _gotoNext = 5214045i32;
                } else if (__value__ == (5213983i32)) {
                    @:check2r _c_35.quo(_a_33, _b_34);
                    _gotoNext = 5214045i32;
                } else if (__value__ == (5214016i32)) {
                    _gotoNext = 5215188i32;
                } else if (__value__ == (5214045i32)) {
                    return stdgo._internal.go.constant.Constant__makerat._makeRat(_c_35);
                    _x_22;
                    _gotoNext = 5215188i32;
                } else if (__value__ == (5214065i32)) {
                    _a_36 = _x_23._val;
                    _b_37 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_17) : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal)) : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal)._val;
                    _c_38 = stdgo._internal.go.constant.Constant__newfloat._newFloat();
                    _gotoNext = 5214137i32;
                } else if (__value__ == (5214137i32)) {
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5214151i32;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5214184i32;
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5214217i32;
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5214250i32;
                        } else {
                            _gotoNext = 5214283i32;
                        };
                    };
                } else if (__value__ == (5214151i32)) {
                    @:check2r _c_38.add(_a_36, _b_37);
                    _gotoNext = 5214312i32;
                } else if (__value__ == (5214184i32)) {
                    @:check2r _c_38.sub(_a_36, _b_37);
                    _gotoNext = 5214312i32;
                } else if (__value__ == (5214217i32)) {
                    @:check2r _c_38.mul(_a_36, _b_37);
                    _gotoNext = 5214312i32;
                } else if (__value__ == (5214250i32)) {
                    @:check2r _c_38.quo(_a_36, _b_37);
                    _gotoNext = 5214312i32;
                } else if (__value__ == (5214283i32)) {
                    _gotoNext = 5215188i32;
                } else if (__value__ == (5214312i32)) {
                    return stdgo._internal.go.constant.Constant__makefloat._makeFloat(_c_38);
                    _x_23;
                    _gotoNext = 5215188i32;
                } else if (__value__ == (5214334i32)) {
                    _y_39 = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_17) : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal)) : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal)?.__copy__();
                    {
                        final __tmp__0 = _x_24._re;
                        final __tmp__1 = _x_24._im;
                        _a_40 = @:binopAssign __tmp__0;
                        _b_41 = @:binopAssign __tmp__1;
                    };
                    {
                        final __tmp__0 = _y_39._re;
                        final __tmp__1 = _y_39._im;
                        _c_42 = @:binopAssign __tmp__0;
                        _d_43 = @:binopAssign __tmp__1;
                    };
                    _gotoNext = 5214436i32;
                } else if (__value__ == (5214436i32)) {
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5214450i32;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5214525i32;
                        } else if (__value__ == ((14 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5214600i32;
                        } else if (__value__ == ((15 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5214759i32;
                        } else {
                            _gotoNext = 5215036i32;
                        };
                    };
                } else if (__value__ == (5214450i32)) {
                    _re_44 = stdgo._internal.go.constant.Constant__add._add(_a_40, _c_42);
                    _im_45 = stdgo._internal.go.constant.Constant__add._add(_b_41, _d_43);
                    _gotoNext = 5215065i32;
                } else if (__value__ == (5214525i32)) {
                    _re_44 = stdgo._internal.go.constant.Constant__sub._sub(_a_40, _c_42);
                    _im_45 = stdgo._internal.go.constant.Constant__sub._sub(_b_41, _d_43);
                    _gotoNext = 5215065i32;
                } else if (__value__ == (5214600i32)) {
                    _ac_46 = stdgo._internal.go.constant.Constant__mul._mul(_a_40, _c_42);
                    _bd_47 = stdgo._internal.go.constant.Constant__mul._mul(_b_41, _d_43);
                    _bc_48 = stdgo._internal.go.constant.Constant__mul._mul(_b_41, _c_42);
                    _ad_49 = stdgo._internal.go.constant.Constant__mul._mul(_a_40, _d_43);
                    _re_44 = stdgo._internal.go.constant.Constant__sub._sub(_ac_46, _bd_47);
                    _im_45 = stdgo._internal.go.constant.Constant__add._add(_bc_48, _ad_49);
                    _gotoNext = 5215065i32;
                } else if (__value__ == (5214759i32)) {
                    _ac_50 = stdgo._internal.go.constant.Constant__mul._mul(_a_40, _c_42);
                    _bd_51 = stdgo._internal.go.constant.Constant__mul._mul(_b_41, _d_43);
                    _bc_52 = stdgo._internal.go.constant.Constant__mul._mul(_b_41, _c_42);
                    _ad_53 = stdgo._internal.go.constant.Constant__mul._mul(_a_40, _d_43);
                    _cc_54 = stdgo._internal.go.constant.Constant__mul._mul(_c_42, _c_42);
                    _dd_55 = stdgo._internal.go.constant.Constant__mul._mul(_d_43, _d_43);
                    _s_56 = stdgo._internal.go.constant.Constant__add._add(_cc_54, _dd_55);
                    _re_44 = stdgo._internal.go.constant.Constant__add._add(_ac_50, _bd_51);
                    _re_44 = stdgo._internal.go.constant.Constant__quo._quo(_re_44, _s_56);
                    _im_45 = stdgo._internal.go.constant.Constant__sub._sub(_bc_52, _ad_53);
                    _im_45 = stdgo._internal.go.constant.Constant__quo._quo(_im_45, _s_56);
                    _gotoNext = 5215065i32;
                } else if (__value__ == (5215036i32)) {
                    _gotoNext = 5215188i32;
                } else if (__value__ == (5215065i32)) {
                    return stdgo._internal.go.constant.Constant__makecomplex._makeComplex(_re_44, _im_45);
                    _x_24;
                    _gotoNext = 5215188i32;
                } else if (__value__ == (5215094i32)) {
                    if (_op == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                        _gotoNext = 5215132i32;
                    } else {
                        _gotoNext = 0i32;
                    };
                } else if (__value__ == (5215132i32)) {
                    return stdgo.Go.asInterface((stdgo.Go.setRef(({ _l : _x_25, _r : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_y_17) : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>)) : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>) } : stdgo._internal.go.constant.Constant_t_stringval.T_stringVal)) : stdgo.Ref<stdgo._internal.go.constant.Constant_t_stringval.T_stringVal>));
                    _gotoNext = 0i32;
                } else if (__value__ == (5215188i32)) {
                    _gotoNext = 5215188i32;
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid binary operation %v %s %v" : stdgo.GoString), stdgo.Go.toInterface(_x_), stdgo.Go.toInterface(stdgo.Go.asInterface(_op)), stdgo.Go.toInterface(_y_)));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
