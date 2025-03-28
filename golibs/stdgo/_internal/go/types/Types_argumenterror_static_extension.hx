package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.ArgumentError_asInterface) class ArgumentError_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.go.types.Types_argumenterror.ArgumentError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.go.types.Types_argumenterror.ArgumentError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference").err;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.go.types.Types_argumenterror.ArgumentError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.go.types.Types_argumenterror.ArgumentError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference").err.error()?.__copy__();
    }
}
