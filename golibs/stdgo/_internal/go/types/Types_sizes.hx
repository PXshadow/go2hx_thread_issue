package stdgo._internal.go.types;
@:interface typedef Sizes = stdgo.StructType & {
    @:interfacetypeffun
    function alignof_(t:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoInt64;
    @:interfacetypeffun
    function offsetsof(_fields:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_var.Var>>):stdgo.Slice<stdgo.GoInt64>;
    @:interfacetypeffun
    function sizeof(t:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoInt64;
};
