package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.TypeAndValue_asInterface) class TypeAndValue_static_extension {
    @:keep
    @:tdfield
    static public function hasOk( _tv:stdgo._internal.go.types.Types_typeandvalue.TypeAndValue):Bool {
        @:recv var _tv:stdgo._internal.go.types.Types_typeandvalue.TypeAndValue = _tv?.__copy__();
        return ((_tv._mode == (8 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode)) || (_tv._mode == (6 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode)) : Bool);
    }
    @:keep
    @:tdfield
    static public function assignable( _tv:stdgo._internal.go.types.Types_typeandvalue.TypeAndValue):Bool {
        @:recv var _tv:stdgo._internal.go.types.Types_typeandvalue.TypeAndValue = _tv?.__copy__();
        return ((_tv._mode == (5 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode)) || (_tv._mode == (6 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode)) : Bool);
    }
    @:keep
    @:tdfield
    static public function addressable( _tv:stdgo._internal.go.types.Types_typeandvalue.TypeAndValue):Bool {
        @:recv var _tv:stdgo._internal.go.types.Types_typeandvalue.TypeAndValue = _tv?.__copy__();
        return _tv._mode == ((5 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode));
    }
    @:keep
    @:tdfield
    static public function isNil( _tv:stdgo._internal.go.types.Types_typeandvalue.TypeAndValue):Bool {
        @:recv var _tv:stdgo._internal.go.types.Types_typeandvalue.TypeAndValue = _tv?.__copy__();
        return ((_tv._mode == (7 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode)) && (stdgo.Go.toInterface(_tv.type) == stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((25 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]))) : Bool);
    }
    @:keep
    @:tdfield
    static public function isValue( _tv:stdgo._internal.go.types.Types_typeandvalue.TypeAndValue):Bool {
        @:recv var _tv:stdgo._internal.go.types.Types_typeandvalue.TypeAndValue = _tv?.__copy__();
        {
            final __value__ = _tv._mode;
            if (__value__ == ((4 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode)) || __value__ == ((5 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode)) || __value__ == ((6 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode)) || __value__ == ((7 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode)) || __value__ == ((8 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode)) || __value__ == ((9 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode))) {
                return true;
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function isBuiltin( _tv:stdgo._internal.go.types.Types_typeandvalue.TypeAndValue):Bool {
        @:recv var _tv:stdgo._internal.go.types.Types_typeandvalue.TypeAndValue = _tv?.__copy__();
        return _tv._mode == ((2 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode));
    }
    @:keep
    @:tdfield
    static public function isType( _tv:stdgo._internal.go.types.Types_typeandvalue.TypeAndValue):Bool {
        @:recv var _tv:stdgo._internal.go.types.Types_typeandvalue.TypeAndValue = _tv?.__copy__();
        return _tv._mode == ((3 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode));
    }
    @:keep
    @:tdfield
    static public function isVoid( _tv:stdgo._internal.go.types.Types_typeandvalue.TypeAndValue):Bool {
        @:recv var _tv:stdgo._internal.go.types.Types_typeandvalue.TypeAndValue = _tv?.__copy__();
        return _tv._mode == ((1 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode));
    }
}
