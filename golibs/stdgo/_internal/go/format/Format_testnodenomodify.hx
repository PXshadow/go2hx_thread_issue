package stdgo._internal.go.format;
function testNodeNoModify(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(_fset, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(("package p\n\nconst _ = 0000000123i\n" : stdgo.GoString)), (4u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _wantLit = (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _file ?? throw "null pointer dereference").decls[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) ?? throw "null pointer dereference").specs[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) ?? throw "null pointer dereference").values[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
        var _wantVal = ((@:checkr _wantLit ?? throw "null pointer dereference").value?.__copy__() : stdgo.GoString);
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        {
            _err = stdgo._internal.go.format.Format_node.node(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_file)));
            if (_err != null) {
                @:check2r _t.fatal(stdgo.Go.toInterface(("Node failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        stdgo._internal.go.format.Format__diff._diff(_t, @:check2 _buf.bytes(), ((("package p\n\nconst _ = 123i\n" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        var _gotLit = (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _file ?? throw "null pointer dereference").decls[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) ?? throw "null pointer dereference").specs[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_valuespec.ValueSpec>) ?? throw "null pointer dereference").values[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_basiclit.BasicLit>);
        var _gotVal = ((@:checkr _gotLit ?? throw "null pointer dereference").value?.__copy__() : stdgo.GoString);
        if (_gotLit != (_wantLit)) {
            @:check2r _t.errorf(("got *ast.BasicLit address %p, want %p" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_gotLit)), stdgo.Go.toInterface(stdgo.Go.asInterface(_wantLit)));
        };
        if (_gotVal != (_wantVal)) {
            @:check2r _t.errorf(("got *ast.BasicLit value %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_gotVal), stdgo.Go.toInterface(_wantVal));
        };
    }
