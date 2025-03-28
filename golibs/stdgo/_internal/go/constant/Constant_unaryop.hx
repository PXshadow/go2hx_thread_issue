package stdgo._internal.go.constant;
function unaryOp(_op:stdgo._internal.go.token.Token_token.Token, _y:stdgo._internal.go.constant.Constant_value.Value, _prec:stdgo.GoUInt):stdgo._internal.go.constant.Constant_value.Value {
        var _y_4:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal);
        var _y_14:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal);
        var _im_8:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _re_7:stdgo._internal.go.constant.Constant_value.Value = (null : stdgo._internal.go.constant.Constant_value.Value);
        var _y_1:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val);
        var _y_13 = @:invalid_type null;
        var _y_12:stdgo._internal.go.constant.Constant_t_intval.T_intVal = ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal);
        var _y_11:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val);
        var _z_9:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = (null : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _z_6:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val);
        var _y_3:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal);
        var _y_2:stdgo._internal.go.constant.Constant_t_intval.T_intVal = ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal);
        var _y_0:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal);
        var _y_10:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal);
        var _y_5:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal);
        var _y_15:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    _gotoNext = 5208851i32;
                } else if (__value__ == (5208851i32)) {
                    {
                        final __value__ = _op;
                        if (__value__ == ((12 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5208864i32;
                        } else if (__value__ == ((13 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5208985i32;
                        } else if (__value__ == ((19 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5209482i32;
                        } else if (__value__ == ((43 : stdgo._internal.go.token.Token_token.Token))) {
                            _gotoNext = 5209936i32;
                        } else {
                            _gotoNext = 5210045i32;
                        };
                    };
                } else if (__value__ == (5208864i32)) {
                    0i32;
                    _gotoNext = 5208882i32;
                } else if (__value__ == (5208882i32)) {
                    {
                        final __type__ = _y;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal)) || stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal))) {
                            _gotoNext = 5208902i32;
                        } else {
                            _gotoNext = 5210045i32;
                        };
                    };
                    _gotoNext = 5210045i32;
                } else if (__value__ == (5208902i32)) {
                    return _y;
                    _gotoNext = 5210045i32;
                } else if (__value__ == (5208985i32)) {
                    0i32;
                    _gotoNext = 5209003i32;
                } else if (__value__ == (5209003i32)) {
                    {
                        final __type__ = _y;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value;
                            _y_0 = _y;
                            _gotoNext = 5209028i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                            var _y:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value;
                            _y_1 = _y;
                            _gotoNext = 5209059i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value;
                            _y_2 = _y;
                            _gotoNext = 5209187i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_ratval.T_ratVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_ratval.T_ratVal) : __type__.__underlying__().value;
                            _y_3 = _y;
                            _gotoNext = 5209241i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_floatval.T_floatVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_floatval.T_floatVal) : __type__.__underlying__().value;
                            _y_4 = _y;
                            _gotoNext = 5209295i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_complexval.T_complexVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_complexval.T_complexVal) : __type__.__underlying__().value;
                            _y_5 = _y;
                            _gotoNext = 5209355i32;
                        } else {
                            var _y:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                            _gotoNext = 5210045i32;
                        };
                    };
                    _gotoNext = 5210045i32;
                } else if (__value__ == (5209028i32)) {
                    return stdgo.Go.asInterface(_y_0);
                    _y_0;
                    _gotoNext = 5210045i32;
                } else if (__value__ == (5209059i32)) {
                    {
                        _z_6 = -_y_1;
                        if (_z_6 != (_y_1)) {
                            _gotoNext = 5209096i32;
                        } else {
                            _gotoNext = 5209134i32;
                        };
                    };
                } else if (__value__ == (5209096i32)) {
                    return stdgo.Go.asInterface(_z_6);
                    _gotoNext = 5209134i32;
                } else if (__value__ == (5209134i32)) {
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(@:check2r stdgo._internal.go.constant.Constant__newint._newInt().neg(stdgo._internal.math.big.Big_newint.newInt((_y_1 : stdgo.GoInt64))));
                    _y_1;
                    _gotoNext = 5210045i32;
                } else if (__value__ == (5209187i32)) {
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(@:check2r stdgo._internal.go.constant.Constant__newint._newInt().neg(_y_2._val));
                    _y_2;
                    _gotoNext = 5210045i32;
                } else if (__value__ == (5209241i32)) {
                    return stdgo._internal.go.constant.Constant__makerat._makeRat(@:check2r stdgo._internal.go.constant.Constant__newrat._newRat().neg(_y_3._val));
                    _y_3;
                    _gotoNext = 5210045i32;
                } else if (__value__ == (5209295i32)) {
                    return stdgo._internal.go.constant.Constant__makefloat._makeFloat(@:check2r stdgo._internal.go.constant.Constant__newfloat._newFloat().neg(_y_4._val));
                    _y_4;
                    _gotoNext = 5210045i32;
                } else if (__value__ == (5209355i32)) {
                    _re_7 = stdgo._internal.go.constant.Constant_unaryop.unaryOp((13 : stdgo._internal.go.token.Token_token.Token), _y_5._re, (0u32 : stdgo.GoUInt));
                    _im_8 = stdgo._internal.go.constant.Constant_unaryop.unaryOp((13 : stdgo._internal.go.token.Token_token.Token), _y_5._im, (0u32 : stdgo.GoUInt));
                    return stdgo._internal.go.constant.Constant__makecomplex._makeComplex(_re_7, _im_8);
                    _y_5;
                    _gotoNext = 5210045i32;
                } else if (__value__ == (5209482i32)) {
                    _z_9 = stdgo._internal.go.constant.Constant__newint._newInt();
                    0i32;
                    _gotoNext = 5209516i32;
                } else if (__value__ == (5209516i32)) {
                    {
                        final __type__ = _y;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value;
                            _y_10 = _y;
                            _gotoNext = 5209541i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val))) {
                            var _y:stdgo._internal.go.constant.Constant_t_int64val.T_int64Val = __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__ == null ? ((0 : stdgo.GoInt64) : stdgo._internal.go.constant.Constant_t_int64val.T_int64Val) : __type__.__underlying__().value;
                            _y_11 = _y;
                            _gotoNext = 5209572i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_intval.T_intVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_intval.T_intVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_intval.T_intVal) : __type__.__underlying__().value;
                            _y_12 = _y;
                            _gotoNext = 5209620i32;
                        } else {
                            var _y:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                            _y_13 = _y;
                            _gotoNext = 5209651i32;
                        };
                    };
                } else if (__value__ == (5209541i32)) {
                    return stdgo.Go.asInterface(_y_10);
                    _y_10;
                    _gotoNext = 5209825i32;
                } else if (__value__ == (5209572i32)) {
                    @:check2r _z_9.not(stdgo._internal.math.big.Big_newint.newInt((_y_11 : stdgo.GoInt64)));
                    _y_11;
                    _gotoNext = 5209825i32;
                } else if (__value__ == (5209620i32)) {
                    @:check2r _z_9.not(_y_12._val);
                    _y_12;
                    _gotoNext = 5209825i32;
                } else if (__value__ == (5209651i32)) {
                    _gotoNext = 5210045i32;
                } else if (__value__ == (5209825i32)) {
                    if ((_prec > (0u32 : stdgo.GoUInt) : Bool)) {
                        _gotoNext = 5209837i32;
                    } else {
                        _gotoNext = 5209916i32;
                    };
                } else if (__value__ == (5209837i32)) {
                    @:check2r _z_9.andNot(_z_9, @:check2r stdgo._internal.go.constant.Constant__newint._newInt().lsh(stdgo._internal.math.big.Big_newint.newInt((-1i64 : stdgo.GoInt64)), _prec));
                    _gotoNext = 5209916i32;
                } else if (__value__ == (5209916i32)) {
                    return stdgo._internal.go.constant.Constant__makeint._makeInt(_z_9);
                    _gotoNext = 5210045i32;
                } else if (__value__ == (5209936i32)) {
                    0i32;
                    _gotoNext = 5209954i32;
                } else if (__value__ == (5209954i32)) {
                    {
                        final __type__ = _y;
                        if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal = __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__ == null ? ({} : stdgo._internal.go.constant.Constant_t_unknownval.T_unknownVal) : __type__.__underlying__().value;
                            _y_14 = _y;
                            _gotoNext = 5209979i32;
                        } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal))) {
                            var _y:stdgo._internal.go.constant.Constant_t_boolval.T_boolVal = __type__ == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__.__underlying__() == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__ == null ? (false : stdgo._internal.go.constant.Constant_t_boolval.T_boolVal) : __type__.__underlying__().value;
                            _y_15 = _y;
                            _gotoNext = 5210010i32;
                        } else {
                            var _y:stdgo._internal.go.constant.Constant_value.Value = __type__ == null ? (null : stdgo._internal.go.constant.Constant_value.Value) : cast __type__;
                            _gotoNext = 5210045i32;
                        };
                    };
                    _gotoNext = 5210045i32;
                } else if (__value__ == (5209979i32)) {
                    return stdgo.Go.asInterface(_y_14);
                    _y_14;
                    _gotoNext = 5210045i32;
                } else if (__value__ == (5210010i32)) {
                    return stdgo.Go.asInterface(!_y_15);
                    _y_15;
                    _gotoNext = 5210045i32;
                } else if (__value__ == (5210045i32)) {
                    _gotoNext = 5210045i32;
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid unary operation %s%v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_op)), stdgo.Go.toInterface(_y)));
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
