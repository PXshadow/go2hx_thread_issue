package stdgo._internal.go.types;
@:interface typedef ImporterFrom = stdgo.StructType & {
    @:interfacetypeffun
    function importFrom(_path:stdgo.GoString, _dir:stdgo.GoString, _mode:stdgo._internal.go.types.Types_importmode.ImportMode):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; };
    function import_(_0:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.go.types.Types_package.Package>; var _1 : stdgo.Error; };
};
