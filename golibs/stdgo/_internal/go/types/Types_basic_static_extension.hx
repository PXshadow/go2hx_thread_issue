package stdgo._internal.go.types;
@:keep @:allow(stdgo._internal.go.types.Types.Basic_asInterface) class Basic_static_extension {
    @:keep
    @:tdfield
    static public function string( _b:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = _b;
        return stdgo._internal.go.types.Types_typestring.typeString(stdgo.Go.asInterface(_b), null)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function underlying( _b:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>):stdgo._internal.go.types.Types_type_.Type_ {
        @:recv var _b:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = _b;
        return stdgo.Go.asInterface(_b);
    }
    @:keep
    @:tdfield
    static public function name( _b:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = _b;
        return (@:checkr _b ?? throw "null pointer dereference")._name?.__copy__();
    }
    @:keep
    @:tdfield
    static public function info( _b:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>):stdgo._internal.go.types.Types_basicinfo.BasicInfo {
        @:recv var _b:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = _b;
        return (@:checkr _b ?? throw "null pointer dereference")._info;
    }
    @:keep
    @:tdfield
    static public function kind( _b:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic>):stdgo._internal.go.types.Types_basickind.BasicKind {
        @:recv var _b:stdgo.Ref<stdgo._internal.go.types.Types_basic.Basic> = _b;
        return (@:checkr _b ?? throw "null pointer dereference")._kind;
    }
}
