package stdgo._internal.go.printer;
function _testComment(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>, _srclen:stdgo.GoInt, _comment:stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>):Void {
        (@:checkr (@:checkr _f ?? throw "null pointer dereference").comments[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)] = _comment;
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        {
            var _offs = (0 : stdgo.GoInt);
            while ((_offs <= _srclen : Bool)) {
                @:check2 _buf.reset();
{
                    var _err = (stdgo._internal.go.printer.Printer_fprint.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo._internal.go.printer.Printer__fset._fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f))) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _t.error(stdgo.Go.toInterface(_err));
                    };
                };
{
                    var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(stdgo._internal.go.printer.Printer__fset._fset, (stdgo.Go.str() : stdgo.GoString).__copy__(), stdgo.Go.toInterface(@:check2 _buf.bytes()), (0u32 : stdgo._internal.go.parser.Parser_mode.Mode)), __0:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        @:check2r _t.fatalf(("incorrect program for pos = %d:\n%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _comment ?? throw "null pointer dereference").slash)), stdgo.Go.toInterface((@:check2 _buf.string() : stdgo.GoString)));
                    };
                };
(@:checkr _comment ?? throw "null pointer dereference").slash++;
                _offs++;
            };
        };
    }
