package stdgo._internal.go.doc.comment;
@:keep @:allow(stdgo._internal.go.doc.comment.Comment.Parser_asInterface) class Parser_static_extension {
    @:keep
    @:tdfield
    static public function parse( _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_parser.Parser>, _text:stdgo.GoString):stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc> {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_parser.Parser> = _p;
        var _lines = stdgo._internal.go.doc.comment.Comment__unindent._unindent(stdgo._internal.strings.Strings_split.split(_text?.__copy__(), ("\n" : stdgo.GoString)));
        var _d = (stdgo.Go.setRef(({ parser : _p, doc : (stdgo.Go.setRef(({} : stdgo._internal.go.doc.comment.Comment_doc.Doc)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_doc.Doc>), _links : (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>>();
            x.__defaultValue__ = () -> (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>>) : stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.go.doc.comment.Comment_linkdef.LinkDef>>), _lines : _lines, _lookupSym : function(_recv:stdgo.GoString, _name:stdgo.GoString):Bool {
            return false;
        } } : stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_t_parsedoc.T_parseDoc>);
        if ((@:checkr _p ?? throw "null pointer dereference").lookupSym != null) {
            (@:checkr _d ?? throw "null pointer dereference")._lookupSym = (@:checkr _p ?? throw "null pointer dereference").lookupSym;
        };
        var _prev:stdgo._internal.go.doc.comment.Comment_t_span.T_span = ({} : stdgo._internal.go.doc.comment.Comment_t_span.T_span);
        for (__1 => _s in stdgo._internal.go.doc.comment.Comment__parsespans._parseSpans(_lines)) {
            var _b:stdgo._internal.go.doc.comment.Comment_block.Block = (null : stdgo._internal.go.doc.comment.Comment_block.Block);
            {
                final __value__ = _s._kind;
                if (__value__ == ((3 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind))) {
                    _b = stdgo.Go.asInterface(@:check2r _d._list((_lines.__slice__(_s._start, _s._end) : stdgo.Slice<stdgo.GoString>), (_prev._end < _s._start : Bool)));
                } else if (__value__ == ((1 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind))) {
                    _b = stdgo.Go.asInterface(@:check2r _d._code((_lines.__slice__(_s._start, _s._end) : stdgo.Slice<stdgo.GoString>)));
                } else if (__value__ == ((4 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind))) {
                    _b = @:check2r _d._oldHeading(_lines[(_s._start : stdgo.GoInt)]?.__copy__());
                } else if (__value__ == ((2 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind))) {
                    _b = @:check2r _d._heading(_lines[(_s._start : stdgo.GoInt)]?.__copy__());
                } else if (__value__ == ((5 : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind))) {
                    _b = @:check2r _d._paragraph((_lines.__slice__(_s._start, _s._end) : stdgo.Slice<stdgo.GoString>));
                } else {
                    throw stdgo.Go.toInterface(("go/doc/comment: internal error: unknown span kind" : stdgo.GoString));
                };
            };
            if (_b != null) {
                (@:checkr _d ?? throw "null pointer dereference").doc.content = ((@:checkr _d ?? throw "null pointer dereference").doc.content.__append__(_b));
            };
            _prev = _s?.__copy__();
        };
        for (__2 => _b in (@:checkr _d ?? throw "null pointer dereference").doc.content) {
            {
                final __type__ = _b;
                if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>))) {
                    var _b:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>) : __type__.__underlying__().value;
                    (@:checkr _b ?? throw "null pointer dereference").text = @:check2r _d._parseLinkedText(((stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _b ?? throw "null pointer dereference").text[(0 : stdgo.GoInt)]) : stdgo._internal.go.doc.comment.Comment_plain.Plain)) : stdgo._internal.go.doc.comment.Comment_plain.Plain) : stdgo.GoString)?.__copy__());
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>))) {
                    var _b:stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>) : __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_list.List>) : __type__.__underlying__().value;
                    for (__3 => _i in (@:checkr _b ?? throw "null pointer dereference").items) {
                        for (__4 => _c in (@:checkr _i ?? throw "null pointer dereference").content) {
                            var _p = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_c) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>)) : stdgo.Ref<stdgo._internal.go.doc.comment.Comment_paragraph.Paragraph>);
                            (@:checkr _p ?? throw "null pointer dereference").text = @:check2r _d._parseLinkedText(((stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _p ?? throw "null pointer dereference").text[(0 : stdgo.GoInt)]) : stdgo._internal.go.doc.comment.Comment_plain.Plain)) : stdgo._internal.go.doc.comment.Comment_plain.Plain) : stdgo.GoString)?.__copy__());
                        };
                    };
                };
            };
        };
        return (@:checkr _d ?? throw "null pointer dereference").doc;
    }
}
