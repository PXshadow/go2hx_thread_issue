package stdgo._internal.go.doc.comment;
@:keep @:allow(stdgo._internal.go.doc.comment.Comment.Printer_asInterface) class Printer_static_extension {
    @:keep
    @:tdfield
    static public function text( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>, _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer> = _p;
        var _tp = (stdgo.Go.setRef(({ printer : _p, _prefix : (@:checkr _p ?? throw "null pointer dereference").textPrefix?.__copy__(), _codePrefix : (@:checkr _p ?? throw "null pointer dereference").textCodePrefix?.__copy__(), _width : (@:checkr _p ?? throw "null pointer dereference").textWidth } : stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_textprinter.T_textPrinter>);
        if ((@:checkr _tp ?? throw "null pointer dereference")._codePrefix == ((stdgo.Go.str() : stdgo.GoString))) {
            (@:checkr _tp ?? throw "null pointer dereference")._codePrefix = ((@:checkr _p ?? throw "null pointer dereference").textPrefix + ("\t" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        if ((@:checkr _tp ?? throw "null pointer dereference")._width == ((0 : stdgo.GoInt))) {
            (@:checkr _tp ?? throw "null pointer dereference")._width = ((80 : stdgo.GoInt) - stdgo._internal.unicode.utf8.Utf8_runecountinstring.runeCountInString((@:checkr _tp ?? throw "null pointer dereference")._prefix?.__copy__()) : stdgo.GoInt);
        };
        var _out:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        for (_i => _x in (@:checkr _d ?? throw "null pointer dereference").content) {
            if (((_i > (0 : stdgo.GoInt) : Bool) && stdgo._internal.go.doc.comment.Comment__blankbefore._blankBefore(_x) : Bool)) {
                @:check2 _out.writeString((@:checkr _tp ?? throw "null pointer dereference")._prefix?.__copy__());
                stdgo._internal.go.doc.comment.Comment__writenl._writeNL((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>));
            };
            @:check2r _tp._block((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _x);
        };
        var _anyUsed = (false : Bool);
        for (__1 => _def in (@:checkr _d ?? throw "null pointer dereference").links) {
            if ((@:checkr _def ?? throw "null pointer dereference").used) {
                _anyUsed = true;
                break;
            };
        };
        if (_anyUsed) {
            stdgo._internal.go.doc.comment.Comment__writenl._writeNL((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>));
            for (__2 => _def in (@:checkr _d ?? throw "null pointer dereference").links) {
                if ((@:checkr _def ?? throw "null pointer dereference").used) {
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), ("[%s]: %s\n" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _def ?? throw "null pointer dereference").text), stdgo.Go.toInterface((@:checkr _def ?? throw "null pointer dereference").uRL));
                };
            };
        };
        return @:check2 _out.bytes();
    }
    @:keep
    @:tdfield
    static public function comment( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>, _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer> = _p;
        var _cp = (stdgo.Go.setRef(({ printer : _p } : stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_commentprinter.T_commentPrinter>);
        var _out:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        for (_i => _x in (@:checkr _d ?? throw "null pointer dereference").content) {
            if (((_i > (0 : stdgo.GoInt) : Bool) && stdgo._internal.go.doc.comment.Comment__blankbefore._blankBefore(_x) : Bool)) {
                @:check2 _out.writeString(("\n" : stdgo.GoString));
            };
            @:check2r _cp._block((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _x);
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (2 : stdgo.GoInt) : Bool)) {
                var _used = (_i == ((0 : stdgo.GoInt)) : Bool);
var _first = (true : Bool);
for (__1 => _def in (@:checkr _d ?? throw "null pointer dereference").links) {
                    if ((@:checkr _def ?? throw "null pointer dereference").used == (_used)) {
                        if (_first) {
                            @:check2 _out.writeString(("\n" : stdgo.GoString));
                            _first = false;
                        };
                        @:check2 _out.writeString(("[" : stdgo.GoString));
                        @:check2 _out.writeString((@:checkr _def ?? throw "null pointer dereference").text?.__copy__());
                        @:check2 _out.writeString(("]: " : stdgo.GoString));
                        @:check2 _out.writeString((@:checkr _def ?? throw "null pointer dereference").uRL?.__copy__());
                        @:check2 _out.writeString(("\n" : stdgo.GoString));
                    };
                };
                _i++;
            };
        };
        return @:check2 _out.bytes();
    }
    @:keep
    @:tdfield
    static public function _docLinkURL( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>, _link:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doclink.DocLink>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer> = _p;
        if ((@:checkr _p ?? throw "null pointer dereference").docLinkURL != null) {
            return (@:checkr _p ?? throw "null pointer dereference").docLinkURL(_link)?.__copy__();
        };
        return @:check2r _link.defaultURL((@:checkr _p ?? throw "null pointer dereference").docLinkBaseURL?.__copy__())?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _headingID( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>, _h:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_heading.Heading>):stdgo.GoString {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer> = _p;
        if ((@:checkr _p ?? throw "null pointer dereference").headingID == null) {
            return @:check2r _h.defaultID()?.__copy__();
        };
        return (@:checkr _p ?? throw "null pointer dereference").headingID(_h)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _headingLevel( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>):stdgo.GoInt {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer> = _p;
        if (((@:checkr _p ?? throw "null pointer dereference").headingLevel <= (0 : stdgo.GoInt) : Bool)) {
            return (3 : stdgo.GoInt);
        };
        return (@:checkr _p ?? throw "null pointer dereference").headingLevel;
    }
    @:keep
    @:tdfield
    static public function markdown( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>, _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer> = _p;
        var _mp = (stdgo.Go.setRef(({ printer : _p, _headingPrefix : (stdgo._internal.strings.Strings_repeat.repeat(("#" : stdgo.GoString), @:check2r _p._headingLevel()) + (" " : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_mdprinter.T_mdPrinter>);
        var _out:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        for (_i => _x in (@:checkr _d ?? throw "null pointer dereference").content) {
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                @:check2 _out.writeByte((10 : stdgo.GoUInt8));
            };
            @:check2r _mp._block((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _x);
        };
        return @:check2 _out.bytes();
    }
    @:keep
    @:tdfield
    static public function hTML( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer>, _d:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>):stdgo.Slice<stdgo.GoUInt8> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_printer.Printer> = _p;
        var _hp = (stdgo.Go.setRef(({ printer : _p } : stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_htmlprinter.T_htmlPrinter>);
        var _out:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        for (__1 => _x in (@:checkr _d ?? throw "null pointer dereference").content) {
            @:check2r _hp._block((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _x);
        };
        return @:check2 _out.bytes();
    }
}
