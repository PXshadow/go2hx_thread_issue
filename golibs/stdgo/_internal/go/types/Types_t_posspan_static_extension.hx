package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.T_posSpan_asInterface) class T_posSpan_static_extension {
    @:keep
    @:tdfield
    static public function pos( _e:stdgo._internal.go.types.Types_t_posspan.T_posSpan):stdgo._internal.go.token.Token_pos.Pos {
        @:recv var _e:stdgo._internal.go.types.Types_t_posspan.T_posSpan = _e?.__copy__();
        return _e._pos;
    }
}
