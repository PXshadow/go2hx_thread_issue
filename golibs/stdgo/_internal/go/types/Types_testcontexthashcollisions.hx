package stdgo._internal.go.types;
function testContextHashCollisions(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        if (false) {
            @:check2r _t.skip(stdgo.Go.toInterface(("hash collisions are expected, and would fail debug assertions" : stdgo.GoString)));
        };
        var _nullaryP:stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_), _nullaryQ:stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_), _unaryP:stdgo._internal.go.types.Types_type_.Type_ = (null : stdgo._internal.go.types.Types_type_.Type_);
        {
            var _tparam = stdgo._internal.go.types.Types_newtypeparam.newTypeParam(stdgo._internal.go.types.Types_newtypename.newTypeName(stdgo._internal.go.types.Types__nopos._nopos, null, ("P" : stdgo.GoString), (null : stdgo._internal.go.types.Types_type_.Type_)), stdgo.Go.asInterface((stdgo.Go.setRef(stdgo._internal.go.types.Types__emptyinterface._emptyInterface) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)));
            _nullaryP = stdgo.Go.asInterface(stdgo._internal.go.types.Types_newsignaturetype.newSignatureType(null, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>(1, 1, ...[_tparam]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), null, null, false));
        };
        {
            var _tparam = stdgo._internal.go.types.Types_newtypeparam.newTypeParam(stdgo._internal.go.types.Types_newtypename.newTypeName(stdgo._internal.go.types.Types__nopos._nopos, null, ("Q" : stdgo.GoString), (null : stdgo._internal.go.types.Types_type_.Type_)), stdgo.Go.asInterface((stdgo.Go.setRef(stdgo._internal.go.types.Types__emptyinterface._emptyInterface) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)));
            _nullaryQ = stdgo.Go.asInterface(stdgo._internal.go.types.Types_newsignaturetype.newSignatureType(null, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>(1, 1, ...[_tparam]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), null, null, false));
        };
        {
            var _tparam = stdgo._internal.go.types.Types_newtypeparam.newTypeParam(stdgo._internal.go.types.Types_newtypename.newTypeName(stdgo._internal.go.types.Types__nopos._nopos, null, ("P" : stdgo.GoString), (null : stdgo._internal.go.types.Types_type_.Type_)), stdgo.Go.asInterface((stdgo.Go.setRef(stdgo._internal.go.types.Types__emptyinterface._emptyInterface) : stdgo.Ref<stdgo._internal.go.types.Types_interface.Interface>)));
            var _params = stdgo._internal.go.types.Types_newtuple.newTuple(stdgo._internal.go.types.Types_newvar.newVar(stdgo._internal.go.types.Types__nopos._nopos, null, ("_" : stdgo.GoString), stdgo.Go.asInterface(_tparam)));
            _unaryP = stdgo.Go.asInterface(stdgo._internal.go.types.Types_newsignaturetype.newSignatureType(null, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>(1, 1, ...[_tparam]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), _params, null, false));
        };
        var _ctxt = stdgo._internal.go.types.Types_newcontext.newContext();
        var _inst = stdgo._internal.go.types.Types_newsignaturetype.newSignatureType(null, (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>), null, null, false);
        {
            var _got = (@:check2r _ctxt._update((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _nullaryP, (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>(1, 1, ...[stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((2 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)])]) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>), stdgo.Go.asInterface(_inst)) : stdgo._internal.go.types.Types_type_.Type_);
            if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_inst)))) {
                @:check2r _t.error(stdgo.Go.toInterface(("bad" : stdgo.GoString)));
            };
        };
        {
            var _got = (@:check2r _ctxt._lookup((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _unaryP, (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>(1, 1, ...[stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((2 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)])]) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>)) : stdgo._internal.go.types.Types_type_.Type_);
            if (_got != null) {
                @:check2r _t.error(stdgo.Go.toInterface(("bad" : stdgo.GoString)));
            };
        };
        {
            var _got = (@:check2r _ctxt._lookup((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _nullaryQ, (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>(1, 1, ...[stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((2 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)])]) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>)) : stdgo._internal.go.types.Types_type_.Type_);
            if (stdgo.Go.toInterface(_got) != (stdgo.Go.toInterface(stdgo.Go.asInterface(_inst)))) {
                @:check2r _t.error(stdgo.Go.toInterface(("bad" : stdgo.GoString)));
            };
        };
        {
            var _got = (@:check2r _ctxt._lookup((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _nullaryQ, (new stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>(1, 1, ...[stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((17 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)])]) : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>)) : stdgo._internal.go.types.Types_type_.Type_);
            if (_got != null) {
                @:check2r _t.error(stdgo.Go.toInterface(("bad" : stdgo.GoString)));
            };
        };
    }
