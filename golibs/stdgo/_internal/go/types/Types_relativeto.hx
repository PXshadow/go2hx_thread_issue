package stdgo._internal.go.types;
function relativeTo(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo._internal.go.types.Types_qualifier.Qualifier {
        if (({
            final value = _pkg;
            (value == null || (value : Dynamic).__nil__);
        })) {
            return null;
        };
        return function(_other:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>):stdgo.GoString {
            if (_pkg == (_other)) {
                return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
            };
            return @:check2r _other.path()?.__copy__();
        };
    }
