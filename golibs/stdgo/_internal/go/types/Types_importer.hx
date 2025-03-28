package stdgo._internal.go.types;
@:interface typedef Importer = stdgo.StructType & {
    @:interfacetypeffun
    function import_(_path:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; };
};
