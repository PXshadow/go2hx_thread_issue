package stdgo._internal.go.build;
@:keep @:allow(stdgo._internal.go.build.Build.Context_asInterface) class Context_static_extension {
    @:keep
    @:tdfield
    static public function _goodOSArchFile( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _name:stdgo.GoString, _allTags:stdgo.GoMap<stdgo.GoString, Bool>):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        {
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_name?.__copy__(), ("." : stdgo.GoString));
            _name = @:tmpset0 __tmp__._0?.__copy__();
        };
        var _i = (stdgo._internal.strings.Strings_index.index(_name?.__copy__(), ("_" : stdgo.GoString)) : stdgo.GoInt);
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            return true;
        };
        _name = (_name.__slice__(_i) : stdgo.GoString)?.__copy__();
        var _l = stdgo._internal.strings.Strings_split.split(_name?.__copy__(), ("_" : stdgo.GoString));
        {
            var _n = (_l.length : stdgo.GoInt);
            if (((_n > (0 : stdgo.GoInt) : Bool) && (_l[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] == ("test" : stdgo.GoString)) : Bool)) {
                _l = (_l.__slice__(0, (_n - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
            };
        };
        var _n = (_l.length : stdgo.GoInt);
        if ((((_n >= (2 : stdgo.GoInt) : Bool) && (stdgo._internal.go.build.Build__knownos._knownOS[_l[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]] ?? false) : Bool) && (stdgo._internal.go.build.Build__knownarch._knownArch[_l[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]] ?? false) : Bool)) {
            if (_allTags != null) {
                _allTags[_l[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]] = true;
            };
            return (@:check2r _ctxt._matchTag(_l[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), _allTags) && @:check2r _ctxt._matchTag(_l[(_n - (2 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), _allTags) : Bool);
        };
        if (((_n >= (1 : stdgo.GoInt) : Bool) && (((stdgo._internal.go.build.Build__knownos._knownOS[_l[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]] ?? false) || (stdgo._internal.go.build.Build__knownarch._knownArch[_l[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]] ?? false) : Bool)) : Bool)) {
            return @:check2r _ctxt._matchTag(_l[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), _allTags);
        };
        return true;
    }
    @:keep
    @:tdfield
    static public function _matchTag( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _name:stdgo.GoString, _allTags:stdgo.GoMap<stdgo.GoString, Bool>):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        if (_allTags != null) {
            _allTags[_name] = true;
        };
        if (((@:checkr _ctxt ?? throw "null pointer dereference").cgoEnabled && (_name == ("cgo" : stdgo.GoString)) : Bool)) {
            return true;
        };
        if (((_name == ((@:checkr _ctxt ?? throw "null pointer dereference").gOOS) || _name == ((@:checkr _ctxt ?? throw "null pointer dereference").gOARCH) : Bool) || (_name == (@:checkr _ctxt ?? throw "null pointer dereference").compiler) : Bool)) {
            return true;
        };
        if ((((@:checkr _ctxt ?? throw "null pointer dereference").gOOS == ("android" : stdgo.GoString)) && (_name == ("linux" : stdgo.GoString)) : Bool)) {
            return true;
        };
        if ((((@:checkr _ctxt ?? throw "null pointer dereference").gOOS == ("illumos" : stdgo.GoString)) && (_name == ("solaris" : stdgo.GoString)) : Bool)) {
            return true;
        };
        if ((((@:checkr _ctxt ?? throw "null pointer dereference").gOOS == ("ios" : stdgo.GoString)) && (_name == ("darwin" : stdgo.GoString)) : Bool)) {
            return true;
        };
        if (((_name == ("unix" : stdgo.GoString)) && (stdgo._internal.go.build.Build__unixos._unixOS[(@:checkr _ctxt ?? throw "null pointer dereference").gOOS] ?? false) : Bool)) {
            return true;
        };
        if (_name == (("boringcrypto" : stdgo.GoString))) {
            _name = ("goexperiment.boringcrypto" : stdgo.GoString);
        };
        for (__0 => _tag in (@:checkr _ctxt ?? throw "null pointer dereference").buildTags) {
            if (_tag == (_name)) {
                return true;
            };
        };
        for (__1 => _tag in (@:checkr _ctxt ?? throw "null pointer dereference").toolTags) {
            if (_tag == (_name)) {
                return true;
            };
        };
        for (__2 => _tag in (@:checkr _ctxt ?? throw "null pointer dereference").releaseTags) {
            if (_tag == (_name)) {
                return true;
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _eval( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr, _allTags:stdgo.GoMap<stdgo.GoString, Bool>):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        return _x.eval(function(_tag:stdgo.GoString):Bool {
            return @:check2r _ctxt._matchTag(_tag?.__copy__(), _allTags);
        });
    }
    @:keep
    @:tdfield
    static public function _matchAuto( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _text:stdgo.GoString, _allTags:stdgo.GoMap<stdgo.GoString, Bool>):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        if (stdgo._internal.strings.Strings_containsany.containsAny(_text?.__copy__(), ("&|()" : stdgo.GoString))) {
            _text = (("//go:build " : stdgo.GoString) + _text?.__copy__() : stdgo.GoString)?.__copy__();
        } else {
            _text = (("// +build " : stdgo.GoString) + _text?.__copy__() : stdgo.GoString)?.__copy__();
        };
        var __tmp__ = stdgo._internal.go.build.constraint.Constraint_parse.parse(_text?.__copy__()), _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        return @:check2r _ctxt._eval(_x, _allTags);
    }
    @:keep
    @:tdfield
    static public function _makePathsAbsolute( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _args:stdgo.Slice<stdgo.GoString>, _srcDir:stdgo.GoString):Void {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _nextPath = (false : Bool);
        for (_i => _arg in _args) {
            if (_nextPath) {
                if (!stdgo._internal.path.filepath.Filepath_isabs.isAbs(_arg?.__copy__())) {
                    _args[(_i : stdgo.GoInt)] = stdgo._internal.path.filepath.Filepath_join.join(_srcDir?.__copy__(), _arg?.__copy__())?.__copy__();
                };
                _nextPath = false;
            } else if ((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_arg?.__copy__(), ("-I" : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_arg?.__copy__(), ("-L" : stdgo.GoString)) : Bool)) {
                if ((_arg.length) == ((2 : stdgo.GoInt))) {
                    _nextPath = true;
                } else {
                    if (!stdgo._internal.path.filepath.Filepath_isabs.isAbs((_arg.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__())) {
                        _args[(_i : stdgo.GoInt)] = ((_arg.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString) + stdgo._internal.path.filepath.Filepath_join.join(_srcDir?.__copy__(), (_arg.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__();
                    };
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _saveCgo( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _filename:stdgo.GoString, _di:stdgo.Ref<stdgo._internal.go.build.Build_package.Package>, _cg:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>):stdgo.Error {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _text = (@:check2r _cg.text()?.__copy__() : stdgo.GoString);
        for (__0 => _line in stdgo._internal.strings.Strings_split.split(_text?.__copy__(), ("\n" : stdgo.GoString))) {
            var _orig = (_line?.__copy__() : stdgo.GoString);
            _line = stdgo._internal.strings.Strings_trimspace.trimSpace(_line?.__copy__())?.__copy__();
            if (((((_line.length) < (5 : stdgo.GoInt) : Bool) || (_line.__slice__(0, (4 : stdgo.GoInt)) : stdgo.GoString) != (("#cgo" : stdgo.GoString)) : Bool) || (((_line[(4 : stdgo.GoInt)] != (32 : stdgo.GoUInt8)) && (_line[(4 : stdgo.GoInt)] != (9 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                continue;
            };
            var __tmp__ = stdgo._internal.strings.Strings_cut.cut(stdgo._internal.strings.Strings_trimspace.trimSpace((_line.__slice__((4 : stdgo.GoInt)) : stdgo.GoString)?.__copy__())?.__copy__(), (":" : stdgo.GoString)), _line:stdgo.GoString = __tmp__._0, _argstr:stdgo.GoString = __tmp__._1, _ok:Bool = __tmp__._2;
            if (!_ok) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("%s: invalid #cgo line: %s" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_orig));
            };
            var _f = stdgo._internal.strings.Strings_fields.fields(_line?.__copy__());
            if (((_f.length) < (1 : stdgo.GoInt) : Bool)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("%s: invalid #cgo line: %s" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_orig));
            };
            var __0 = (_f.__slice__(0, ((_f.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>), __1 = (_f[((_f.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
var _verb = __1, _cond = __0;
            if (((_cond.length) > (0 : stdgo.GoInt) : Bool)) {
                var _ok = (false : Bool);
                for (__1 => _c in _cond) {
                    if (@:check2r _ctxt._matchAuto(_c?.__copy__(), (null : stdgo.GoMap<stdgo.GoString, Bool>))) {
                        _ok = true;
                        break;
                    };
                };
                if (!_ok) {
                    continue;
                };
            };
            var __tmp__ = stdgo._internal.go.build.Build__splitquoted._splitQuoted(_argstr?.__copy__()), _args:stdgo.Slice<stdgo.GoString> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("%s: invalid #cgo line: %s" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_orig));
            };
            for (_i => _arg in _args) {
                {
                    {
                        var __tmp__ = stdgo._internal.go.build.Build__expandsrcdir._expandSrcDir(_arg?.__copy__(), (@:checkr _di ?? throw "null pointer dereference").dir?.__copy__());
                        _arg = @:tmpset0 __tmp__._0?.__copy__();
                        _ok = @:tmpset0 __tmp__._1;
                    };
                    if (!_ok) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("%s: malformed #cgo argument: %s" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_arg));
                    };
                };
                _args[(_i : stdgo.GoInt)] = _arg?.__copy__();
            };
            {
                final __value__ = _verb;
                if (__value__ == (("CFLAGS" : stdgo.GoString)) || __value__ == (("CPPFLAGS" : stdgo.GoString)) || __value__ == (("CXXFLAGS" : stdgo.GoString)) || __value__ == (("FFLAGS" : stdgo.GoString)) || __value__ == (("LDFLAGS" : stdgo.GoString))) {
                    @:check2r _ctxt._makePathsAbsolute(_args, (@:checkr _di ?? throw "null pointer dereference").dir?.__copy__());
                };
            };
            {
                final __value__ = _verb;
                if (__value__ == (("CFLAGS" : stdgo.GoString))) {
                    (@:checkr _di ?? throw "null pointer dereference").cgoCFLAGS = ((@:checkr _di ?? throw "null pointer dereference").cgoCFLAGS.__append__(...(_args : Array<stdgo.GoString>)));
                } else if (__value__ == (("CPPFLAGS" : stdgo.GoString))) {
                    (@:checkr _di ?? throw "null pointer dereference").cgoCPPFLAGS = ((@:checkr _di ?? throw "null pointer dereference").cgoCPPFLAGS.__append__(...(_args : Array<stdgo.GoString>)));
                } else if (__value__ == (("CXXFLAGS" : stdgo.GoString))) {
                    (@:checkr _di ?? throw "null pointer dereference").cgoCXXFLAGS = ((@:checkr _di ?? throw "null pointer dereference").cgoCXXFLAGS.__append__(...(_args : Array<stdgo.GoString>)));
                } else if (__value__ == (("FFLAGS" : stdgo.GoString))) {
                    (@:checkr _di ?? throw "null pointer dereference").cgoFFLAGS = ((@:checkr _di ?? throw "null pointer dereference").cgoFFLAGS.__append__(...(_args : Array<stdgo.GoString>)));
                } else if (__value__ == (("LDFLAGS" : stdgo.GoString))) {
                    (@:checkr _di ?? throw "null pointer dereference").cgoLDFLAGS = ((@:checkr _di ?? throw "null pointer dereference").cgoLDFLAGS.__append__(...(_args : Array<stdgo.GoString>)));
                } else if (__value__ == (("pkg-config" : stdgo.GoString))) {
                    (@:checkr _di ?? throw "null pointer dereference").cgoPkgConfig = ((@:checkr _di ?? throw "null pointer dereference").cgoPkgConfig.__append__(...(_args : Array<stdgo.GoString>)));
                } else {
                    return stdgo._internal.fmt.Fmt_errorf.errorf(("%s: invalid #cgo verb: %s" : stdgo.GoString), stdgo.Go.toInterface(_filename), stdgo.Go.toInterface(_orig));
                };
            };
        };
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _shouldBuild( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _content:stdgo.Slice<stdgo.GoUInt8>, _allTags:stdgo.GoMap<stdgo.GoString, Bool>):{ var _0 : Bool; var _1 : Bool; var _2 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _shouldBuild = false, _binaryOnly = false, _err = (null : stdgo.Error);
        var __tmp__ = stdgo._internal.go.build.Build__parsefileheader._parseFileHeader(_content), _content:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _goBuild:stdgo.Slice<stdgo.GoUInt8> = __tmp__._1, _sawBinaryOnly:Bool = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        if (_err != null) {
            return {
                @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : false, _1 : false, _2 : _err };
                _shouldBuild = __tmp__._0;
                _binaryOnly = __tmp__._1;
                _err = __tmp__._2;
                __tmp__;
            };
        };
        if (_goBuild != null) {
            var __tmp__ = stdgo._internal.go.build.constraint.Constraint_parse.parse((_goBuild : stdgo.GoString)?.__copy__()), _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return {
                    @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : false, _1 : false, _2 : stdgo._internal.fmt.Fmt_errorf.errorf(("parsing //go:build line: %v" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
                    _shouldBuild = __tmp__._0;
                    _binaryOnly = __tmp__._1;
                    _err = __tmp__._2;
                    __tmp__;
                };
            };
            _shouldBuild = @:check2r _ctxt._eval(_x, _allTags);
        } else {
            _shouldBuild = true;
            var _p = _content;
            while (((_p.length) > (0 : stdgo.GoInt) : Bool)) {
                var _line = _p;
                {
                    var _i = (stdgo._internal.bytes.Bytes_indexbyte.indexByte(_line, (10 : stdgo.GoUInt8)) : stdgo.GoInt);
                    if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                        {
                            final __tmp__0 = (_line.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>);
                            final __tmp__1 = (_p.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                            _line = @:binopAssign __tmp__0;
                            _p = @:binopAssign __tmp__1;
                        };
                    } else {
                        _p = (_p.__slice__((_p.length)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
                };
                _line = stdgo._internal.bytes.Bytes_trimspace.trimSpace(_line);
                if ((!stdgo._internal.bytes.Bytes_hasprefix.hasPrefix(_line, stdgo._internal.go.build.Build__slashslash._slashSlash) || !stdgo._internal.bytes.Bytes_contains.contains(_line, stdgo._internal.go.build.Build__plusbuild._plusBuild) : Bool)) {
                    continue;
                };
                var _text = ((_line : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if (!stdgo._internal.go.build.constraint.Constraint_isplusbuild.isPlusBuild(_text?.__copy__())) {
                    continue;
                };
                {
                    var __tmp__ = stdgo._internal.go.build.constraint.Constraint_parse.parse(_text?.__copy__()), _x:stdgo._internal.go.build.constraint.Constraint_expr.Expr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        if (!@:check2r _ctxt._eval(_x, _allTags)) {
                            _shouldBuild = false;
                        };
                    };
                };
            };
        };
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : Bool; var _2 : stdgo.Error; } = { _0 : _shouldBuild, _1 : _sawBinaryOnly, _2 : (null : stdgo.Error) };
            _shouldBuild = __tmp__._0;
            _binaryOnly = __tmp__._1;
            _err = __tmp__._2;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _matchFile( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _dir:stdgo.GoString, _name:stdgo.GoString, _allTags:stdgo.GoMap<stdgo.GoString, Bool>, _binaryOnly:stdgo.Pointer<Bool>, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>):{ var _0 : stdgo.Ref<stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo>; var _1 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        if ((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("_" : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name?.__copy__(), ("." : stdgo.GoString)) : Bool)) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var _i = (stdgo._internal.strings.Strings_lastindex.lastIndex(_name?.__copy__(), ("." : stdgo.GoString)) : stdgo.GoInt);
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            _i = (_name.length);
        };
        var _ext = ((_name.__slice__(_i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (((_ext != (".go" : stdgo.GoString)) && ({
            final value = stdgo._internal.go.build.Build__filelistforext._fileListForExt((stdgo.Go.setRef(stdgo._internal.go.build.Build__dummypkg._dummyPkg) : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>), _ext?.__copy__());
            (value == null || (value : Dynamic).__nil__);
        }) : Bool)) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        if ((!@:check2r _ctxt._goodOSArchFile(_name?.__copy__(), _allTags) && !(@:checkr _ctxt ?? throw "null pointer dereference").useAllFiles : Bool)) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        var _info = (stdgo.Go.setRef(({ _name : @:check2r _ctxt._joinPath(_dir?.__copy__(), _name?.__copy__())?.__copy__(), _fset : _fset } : stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo)) : stdgo.Ref<stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo>);
        if (_ext == ((".syso" : stdgo.GoString))) {
            return { _0 : _info, _1 : (null : stdgo.Error) };
        };
        var __tmp__ = @:check2r _ctxt._openFile((@:checkr _info ?? throw "null pointer dereference")._name?.__copy__()), _f:stdgo._internal.io.Io_readcloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : null, _1 : _err };
        };
        if (stdgo._internal.strings.Strings_hassuffix.hasSuffix(_name?.__copy__(), (".go" : stdgo.GoString))) {
            _err = stdgo._internal.go.build.Build__readgoinfo._readGoInfo(_f, _info);
            if (stdgo._internal.strings.Strings_hassuffix.hasSuffix(_name?.__copy__(), ("_test.go" : stdgo.GoString))) {
                _binaryOnly = (null : stdgo.Pointer<Bool>);
            };
        } else {
            _binaryOnly = (null : stdgo.Pointer<Bool>);
            {
                var __tmp__ = stdgo._internal.go.build.Build__readcomments._readComments(_f);
                (@:checkr _info ?? throw "null pointer dereference")._header = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
        };
        _f.close();
        if (_err != null) {
            return { _0 : _info, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("read %s: %v" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _info ?? throw "null pointer dereference")._name), stdgo.Go.toInterface(_err)) };
        };
        var __tmp__ = @:check2r _ctxt._shouldBuild((@:checkr _info ?? throw "null pointer dereference")._header, _allTags), _ok:Bool = __tmp__._0, _sawBinaryOnly:Bool = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : null, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("%s: %v" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_err)) };
        };
        if ((!_ok && !(@:checkr _ctxt ?? throw "null pointer dereference").useAllFiles : Bool)) {
            return { _0 : null, _1 : (null : stdgo.Error) };
        };
        if (((_binaryOnly != null) && _sawBinaryOnly : Bool)) {
            _binaryOnly.value = true;
        };
        return { _0 : _info, _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function matchFile( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _dir:stdgo.GoString, _name:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _match = false, _err = (null : stdgo.Error);
        var __tmp__ = @:check2r _ctxt._matchFile(_dir?.__copy__(), _name?.__copy__(), (null : stdgo.GoMap<stdgo.GoString, Bool>), (null : stdgo.Pointer<Bool>), null), _info:stdgo.Ref<stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : ({
                final value = _info;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }), _1 : _err };
            _match = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
    @:keep
    @:tdfield
    static public function _importGo( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _p:stdgo.Ref<stdgo._internal.go.build.Build_package.Package>, _path:stdgo.GoString, _srcDir:stdgo.GoString, _mode:stdgo._internal.go.build.Build_importmode.ImportMode):stdgo.Error {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        if ((((((((((((_mode & (2u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) || (_mode & (8u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").joinPath != null : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").splitPathList != null : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").isAbsPath != null : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").isDir != null : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").hasSubdir != null : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").readDir != null : Bool) || (@:checkr _ctxt ?? throw "null pointer dereference").openFile != null : Bool) || !stdgo._internal.go.build.Build__equal._equal((@:checkr _ctxt ?? throw "null pointer dereference").toolTags, stdgo._internal.go.build.Build__defaulttooltags._defaultToolTags) : Bool) || !stdgo._internal.go.build.Build__equal._equal((@:checkr _ctxt ?? throw "null pointer dereference").releaseTags, stdgo._internal.go.build.Build__defaultreleasetags._defaultReleaseTags) : Bool)) {
            return stdgo._internal.go.build.Build__errnomodules._errNoModules;
        };
        if ((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT == ((stdgo.Go.str() : stdgo.GoString))) {
            return stdgo._internal.go.build.Build__errnomodules._errNoModules;
        };
        var _go111Module = (stdgo._internal.os.Os_getenv.getenv(("GO111MODULE" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        {
            final __value__ = _go111Module;
            if (__value__ == (("off" : stdgo.GoString))) {
                return stdgo._internal.go.build.Build__errnomodules._errNoModules;
            } else {};
        };
        if (_srcDir != ((stdgo.Go.str() : stdgo.GoString))) {
            var _absSrcDir:stdgo.GoString = ("" : stdgo.GoString);
            if (stdgo._internal.path.filepath.Filepath_isabs.isAbs(_srcDir?.__copy__())) {
                _absSrcDir = _srcDir?.__copy__();
            } else if ((@:checkr _ctxt ?? throw "null pointer dereference").dir != ((stdgo.Go.str() : stdgo.GoString))) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("go/build: Dir is non-empty, so relative srcDir is not allowed: %v" : stdgo.GoString), stdgo.Go.toInterface(_srcDir));
            } else {
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    var __tmp__ = stdgo._internal.path.filepath.Filepath_abs.abs(_srcDir?.__copy__());
                    _absSrcDir = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return stdgo._internal.go.build.Build__errnomodules._errNoModules;
                };
            };
            {
                var __tmp__ = @:check2r _ctxt._hasSubdir(stdgo._internal.path.filepath.Filepath_join.join((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString))?.__copy__(), _absSrcDir?.__copy__()), __0:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    return stdgo._internal.go.build.Build__errnomodules._errNoModules;
                };
            };
        };
        {
            var _dir = (@:check2r _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString), _path?.__copy__())?.__copy__() : stdgo.GoString);
            if (@:check2r _ctxt._isDir(_dir?.__copy__())) {
                return stdgo._internal.go.build.Build__errnomodules._errNoModules;
            };
        };
        if (_go111Module == (("auto" : stdgo.GoString))) {
            var _parent:stdgo.GoString = ("" : stdgo.GoString), _err:stdgo.Error = (null : stdgo.Error);
            if ((@:checkr _ctxt ?? throw "null pointer dereference").dir == ((stdgo.Go.str() : stdgo.GoString))) {
                {
                    var __tmp__ = stdgo._internal.os.Os_getwd.getwd();
                    _parent = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return stdgo._internal.go.build.Build__errnomodules._errNoModules;
                };
            } else {
                {
                    var __tmp__ = stdgo._internal.path.filepath.Filepath_abs.abs((@:checkr _ctxt ?? throw "null pointer dereference").dir?.__copy__());
                    _parent = @:tmpset0 __tmp__._0?.__copy__();
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    return _err;
                };
            };
            while (true) {
                {
                    var __tmp__ = @:check2r _ctxt._openFile(@:check2r _ctxt._joinPath(_parent?.__copy__(), ("go.mod" : stdgo.GoString))?.__copy__()), _f:stdgo._internal.io.Io_readcloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((100 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                        var __tmp__ = _f.read(_buf), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                        _f.close();
                        if (((_err == null) || (stdgo.Go.toInterface(_err) == stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF)) : Bool)) {
                            break;
                        };
                    };
                };
                var _d = (stdgo._internal.path.filepath.Filepath_dir.dir(_parent?.__copy__())?.__copy__() : stdgo.GoString);
                if (((_d.length) >= (_parent.length) : Bool)) {
                    return stdgo._internal.go.build.Build__errnomodules._errNoModules;
                };
                _parent = _d?.__copy__();
            };
        };
        var _goCmd = (stdgo._internal.path.filepath.Filepath_join.join((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("bin" : stdgo.GoString), ("go" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        var _cmd = stdgo._internal.os.exec.Exec_command.command(_goCmd?.__copy__(), ("list" : stdgo.GoString), ("-e" : stdgo.GoString), (("-compiler=" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").compiler?.__copy__() : stdgo.GoString)?.__copy__(), (("-tags=" : stdgo.GoString) + stdgo._internal.strings.Strings_join.join((@:checkr _ctxt ?? throw "null pointer dereference").buildTags, ("," : stdgo.GoString))?.__copy__() : stdgo.GoString)?.__copy__(), (("-installsuffix=" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").installSuffix?.__copy__() : stdgo.GoString)?.__copy__(), ("-f={{.Dir}}\n{{.ImportPath}}\n{{.Root}}\n{{.Goroot}}\n{{if .Error}}{{.Error}}{{end}}\n" : stdgo.GoString), ("--" : stdgo.GoString), _path?.__copy__());
        if ((@:checkr _ctxt ?? throw "null pointer dereference").dir != ((stdgo.Go.str() : stdgo.GoString))) {
            (@:checkr _cmd ?? throw "null pointer dereference").dir = (@:checkr _ctxt ?? throw "null pointer dereference").dir?.__copy__();
        };
        var _stdout:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder), _stderr:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        (@:checkr _cmd ?? throw "null pointer dereference").stdout = stdgo.Go.asInterface((stdgo.Go.setRef(_stdout) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
        (@:checkr _cmd ?? throw "null pointer dereference").stderr = stdgo.Go.asInterface((stdgo.Go.setRef(_stderr) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>));
        var _cgo = (("0" : stdgo.GoString) : stdgo.GoString);
        if ((@:checkr _ctxt ?? throw "null pointer dereference").cgoEnabled) {
            _cgo = ("1" : stdgo.GoString);
        };
        (@:checkr _cmd ?? throw "null pointer dereference").env = (@:check2r _cmd.environ_().__append__((("GOOS=" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOOS?.__copy__() : stdgo.GoString)?.__copy__(), (("GOARCH=" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOARCH?.__copy__() : stdgo.GoString)?.__copy__(), (("GOROOT=" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__() : stdgo.GoString)?.__copy__(), (("GOPATH=" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOPATH?.__copy__() : stdgo.GoString)?.__copy__(), (("CGO_ENABLED=" : stdgo.GoString) + _cgo?.__copy__() : stdgo.GoString)?.__copy__()));
        {
            var _err = (@:check2r _cmd.run() : stdgo.Error);
            if (_err != null) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("go/build: go list %s: %v\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((@:check2 _stderr.string() : stdgo.GoString)));
            };
        };
        var _f = stdgo._internal.strings.Strings_splitn.splitN((@:check2 _stdout.string() : stdgo.GoString)?.__copy__(), ("\n" : stdgo.GoString), (5 : stdgo.GoInt));
        if ((_f.length) != ((5 : stdgo.GoInt))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("go/build: importGo %s: unexpected output:\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface((@:check2 _stdout.string() : stdgo.GoString)));
        };
        var _dir = (_f[(0 : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
        var _errStr = (stdgo._internal.strings.Strings_trimspace.trimSpace(_f[(4 : stdgo.GoInt)]?.__copy__())?.__copy__() : stdgo.GoString);
        if (((_errStr != (stdgo.Go.str() : stdgo.GoString)) && (_dir == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
            return stdgo._internal.errors.Errors_new_.new_(_errStr?.__copy__());
        };
        (@:checkr _p ?? throw "null pointer dereference").dir = _dir?.__copy__();
        (@:checkr _p ?? throw "null pointer dereference").importPath = _f[(1 : stdgo.GoInt)]?.__copy__();
        (@:checkr _p ?? throw "null pointer dereference").root = _f[(2 : stdgo.GoInt)]?.__copy__();
        (@:checkr _p ?? throw "null pointer dereference").goroot = _f[(3 : stdgo.GoInt)] == (("true" : stdgo.GoString));
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function import_( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _path:stdgo.GoString, _srcDir:stdgo.GoString, _mode:stdgo._internal.go.build.Build_importmode.ImportMode):{ var _0 : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>; var _1 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _err_21:stdgo.Error = (null : stdgo.Error);
        var _binaryOnly_6:Bool = false;
        var _allTags_56:stdgo.GoMap<stdgo.GoString, Bool> = (null : stdgo.GoMap<stdgo.GoString, Bool>);
        var _testEmbedPos_51:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _badGoFile_46:(stdgo.GoString, stdgo.Error) -> Void = null;
        var _badGoFiles_45:stdgo.GoMap<stdgo.GoString, Bool> = (null : stdgo.GoMap<stdgo.GoString, Bool>);
        var _iterator_4388793_38:stdgo.GoInt = (0 : stdgo.GoInt);
        var _iterator_4386324_25:stdgo.GoInt = (0 : stdgo.GoInt);
        var _inTestdata_7:stdgo.GoString -> Bool = null;
        var _keys_4396246:stdgo.Slice<stdgo.GoString> = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _filename_66:stdgo.GoString = ("" : stdgo.GoString);
        var _earlyRoot_19:stdgo.GoString = ("" : stdgo.GoString);
        var _sub_15:stdgo.GoString = ("" : stdgo.GoString);
        var _directives_81:stdgo.Ref<stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>> = (null : stdgo.Ref<stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>>);
        var _line_71:stdgo.GoInt = (0 : stdgo.GoInt);
        var _dirs_42:stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry> = (null : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>);
        var _format_37:stdgo.GoString = ("" : stdgo.GoString);
        var _dir_28:stdgo.GoString = ("" : stdgo.GoString);
        var _rootsrc_14:stdgo.GoString = ("" : stdgo.GoString);
        var _xTestEmbedPos_52:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _err_73:stdgo.Error = (null : stdgo.Error);
        var _com_72:stdgo.GoString = ("" : stdgo.GoString);
        var _iterator_4396059_84:stdgo.GoInt = (0 : stdgo.GoInt);
        var _importMap_79:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _gopath_22:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _p_0:stdgo.Ref<stdgo._internal.go.build.Build_package.Package> = (null : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>);
        var _qcom_70:stdgo.GoString = ("" : stdgo.GoString);
        var _iterator_4391722_58:stdgo.GoInt = (0 : stdgo.GoInt);
        var _testImportPos_54:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _iterator_4389101_40:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gorootFirst_27:Bool = false;
        var _root_26:stdgo.GoString = ("" : stdgo.GoString);
        var _embedMap_80:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _ok_10:Bool = false;
        var _pkga_2:stdgo.GoString = ("" : stdgo.GoString);
        var _fset_57:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = (null : stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>);
        var _firstFile_48:stdgo.GoString = ("" : stdgo.GoString);
        var _dir_39:stdgo.GoString = ("" : stdgo.GoString);
        var _isDir_29:Bool = false;
        var _dir_20:stdgo.GoString = ("" : stdgo.GoString);
        var _root_13:stdgo.GoString = ("" : stdgo.GoString);
        var _data_65:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _err_43:stdgo.Error = (null : stdgo.Error);
        var _iterator_4394714_75:stdgo.GoInt = (0 : stdgo.GoInt);
        var _ok_16:Bool = false;
        var _pkgerr_3:stdgo.Error = (null : stdgo.Error);
        var _imp_83:stdgo._internal.go.build.Build_t_fileimport.T_fileImport = ({} : stdgo._internal.go.build.Build_t_fileimport.T_fileImport);
        var _imp_76:stdgo._internal.go.build.Build_t_fileimport.T_fileImport = ({} : stdgo._internal.go.build.Build_t_fileimport.T_fileImport);
        var _isXTest_69:Bool = false;
        var _firstCommentFile_49:stdgo.GoString = ("" : stdgo.GoString);
        var _isDir_35:Bool = false;
        var _dir_17:stdgo.GoString = ("" : stdgo.GoString);
        var _paths_36:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _suffix_4:stdgo.GoString = ("" : stdgo.GoString);
        var _d_59:stdgo._internal.io.fs.Fs_direntry.DirEntry = (null : stdgo._internal.io.fs.Fs_direntry.DirEntry);
        var _badGoError_44:stdgo.Error = (null : stdgo.Error);
        var _info_62:stdgo.Ref<stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo> = (null : stdgo.Ref<stdgo._internal.go.build.Build_t_fileinfo.T_fileInfo>);
        var _isCgo_74:Bool = false;
        var _name_60:stdgo.GoString = ("" : stdgo.GoString);
        var _err_77:stdgo.Error = (null : stdgo.Error);
        var _all_11:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _pkgtargetroot_1:stdgo.GoString = ("" : stdgo.GoString);
        var _xTestImportPos_55:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var sfiles_47:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _dir_34:stdgo.GoString = ("" : stdgo.GoString);
        var _isDir_33:Bool = false;
        var _dir_32:stdgo.GoString = ("" : stdgo.GoString);
        var _iterator_4384387_18:stdgo.GoInt = (0 : stdgo.GoInt);
        var _iterator_4387750_30:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i_12:stdgo.GoInt = (0 : stdgo.GoInt);
        var _err_63:stdgo.Error = (null : stdgo.Error);
        var _list_64:stdgo.Ref<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
        var _tried_23:stdgo._internal.go.build.Build_t__struct_0.T__struct_0 = ({ _vendor : (null : stdgo.Slice<stdgo.GoString>), _goroot : ("" : stdgo.GoString), _gopath : (null : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.go.build.Build_t__struct_0.T__struct_0);
        var _iterator_4396257 = 0i32;
        var _fileList_78:stdgo.Ref<stdgo.Slice<stdgo.GoString>> = (null : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
        var _sub_9:stdgo.GoString = ("" : stdgo.GoString);
        var _root_8:stdgo.GoString = ("" : stdgo.GoString);
        var _isTest_68:Bool = false;
        var _importPos_53:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _root_31:stdgo.GoString = ("" : stdgo.GoString);
        var _emb_85:stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed = ({} : stdgo._internal.go.build.Build_t_fileembed.T_fileEmbed);
        var _dir_41:stdgo.GoString = ("" : stdgo.GoString);
        var _tag_86:stdgo.GoString = ("" : stdgo.GoString);
        var _searchVendor_24:(stdgo.GoString, Bool) -> Bool = null;
        var _setPkga_5:() -> Void = null;
        var _iterator_4395911_82:stdgo.GoInt = (0 : stdgo.GoInt);
        var _pkg_67:stdgo.GoString = ("" : stdgo.GoString);
        var _ext_61:stdgo.GoString = ("" : stdgo.GoString);
        var _embedPos_50:stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>> = (null : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _gotoNext;
                        if (__value__ == (0i32)) {
                            _p_0 = (stdgo.Go.setRef(({ importPath : _path?.__copy__() } : stdgo._internal.go.build.Build_package.Package)) : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>);
                            if (_path == ((stdgo.Go.str() : stdgo.GoString))) {
                                _gotoNext = 4382157i32;
                            } else {
                                _gotoNext = 4382227i32;
                            };
                            break;
                        } else if (__value__ == (4382157i32)) {
                            return { _0 : _p_0, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("import %q: invalid import path" : stdgo.GoString), stdgo.Go.toInterface(_path)) };
                            _gotoNext = 4382227i32;
                            break;
                        } else if (__value__ == (4382227i32)) {
                            _suffix_4 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                            if ((@:checkr _ctxt ?? throw "null pointer dereference").installSuffix != ((stdgo.Go.str() : stdgo.GoString))) {
                                _gotoNext = 4382330i32;
                            } else {
                                _gotoNext = 4382372i32;
                            };
                            break;
                        } else if (__value__ == (4382330i32)) {
                            _suffix_4 = (("_" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").installSuffix?.__copy__() : stdgo.GoString)?.__copy__();
                            _gotoNext = 4382372i32;
                            break;
                        } else if (__value__ == (4382372i32)) {
                            _gotoNext = 4382372i32;
                            {
                                final __value__ = (@:checkr _ctxt ?? throw "null pointer dereference").compiler;
                                if (__value__ == (("gccgo" : stdgo.GoString))) {
                                    _gotoNext = 4382396i32;
                                } else if (__value__ == (("gc" : stdgo.GoString))) {
                                    _gotoNext = 4382483i32;
                                } else {
                                    _gotoNext = 4382561i32;
                                };
                            };
                            break;
                        } else if (__value__ == (4382396i32)) {
                            _pkgtargetroot_1 = ((((("pkg/gccgo_" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOOS?.__copy__() : stdgo.GoString) + ("_" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOARCH?.__copy__() : stdgo.GoString) + _suffix_4?.__copy__() : stdgo.GoString)?.__copy__();
                            _gotoNext = 4382688i32;
                            break;
                        } else if (__value__ == (4382483i32)) {
                            _pkgtargetroot_1 = ((((("pkg/" : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOOS?.__copy__() : stdgo.GoString) + ("_" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _ctxt ?? throw "null pointer dereference").gOARCH?.__copy__() : stdgo.GoString) + _suffix_4?.__copy__() : stdgo.GoString)?.__copy__();
                            _gotoNext = 4382688i32;
                            break;
                        } else if (__value__ == (4382561i32)) {
                            _pkgerr_3 = stdgo._internal.fmt.Fmt_errorf.errorf(("import %q: unknown compiler %q" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface((@:checkr _ctxt ?? throw "null pointer dereference").compiler));
                            _gotoNext = 4382688i32;
                            break;
                        } else if (__value__ == (4382688i32)) {
                            _setPkga_5 = function():Void {
                                {
                                    final __value__ = (@:checkr _ctxt ?? throw "null pointer dereference").compiler;
                                    if (__value__ == (("gccgo" : stdgo.GoString))) {
                                        var __tmp__ = stdgo._internal.path.Path_split.split((@:checkr _p_0 ?? throw "null pointer dereference").importPath?.__copy__()), _dir:stdgo.GoString = __tmp__._0, _elem:stdgo.GoString = __tmp__._1;
                                        _pkga_2 = (((((_pkgtargetroot_1 + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _dir?.__copy__() : stdgo.GoString) + ("lib" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _elem?.__copy__() : stdgo.GoString) + (".a" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                                    } else if (__value__ == (("gc" : stdgo.GoString))) {
                                        _pkga_2 = (((_pkgtargetroot_1 + ("/" : stdgo.GoString)?.__copy__() : stdgo.GoString) + (@:checkr _p_0 ?? throw "null pointer dereference").importPath?.__copy__() : stdgo.GoString) + (".a" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                                    };
                                };
                            };
                            _setPkga_5();
                            _binaryOnly_6 = false;
                            if (stdgo._internal.go.build.Build_islocalimport.isLocalImport(_path?.__copy__())) {
                                _gotoNext = 4382980i32;
                            } else {
                                _gotoNext = 4384832i32;
                            };
                            break;
                        } else if (__value__ == (4382980i32)) {
                            _pkga_2 = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                            if (_srcDir == ((stdgo.Go.str() : stdgo.GoString))) {
                                _gotoNext = 4383052i32;
                            } else {
                                _gotoNext = 4383141i32;
                            };
                            break;
                        } else if (__value__ == (4383052i32)) {
                            return { _0 : _p_0, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("import %q: import relative to unknown directory" : stdgo.GoString), stdgo.Go.toInterface(_path)) };
                            _gotoNext = 4383141i32;
                            break;
                        } else if (__value__ == (4383141i32)) {
                            if (!@:check2r _ctxt._isAbsPath(_path?.__copy__())) {
                                _gotoNext = 4383166i32;
                            } else {
                                _gotoNext = 4383431i32;
                            };
                            break;
                        } else if (__value__ == (4383166i32)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").dir = @:check2r _ctxt._joinPath(_srcDir?.__copy__(), _path?.__copy__())?.__copy__();
                            _gotoNext = 4383431i32;
                            break;
                        } else if (__value__ == (4383431i32)) {
                            _inTestdata_7 = function(_sub:stdgo.GoString):Bool {
                                return (((stdgo._internal.strings.Strings_contains.contains(_sub?.__copy__(), ("/testdata/" : stdgo.GoString)) || stdgo._internal.strings.Strings_hassuffix.hasSuffix(_sub?.__copy__(), ("/testdata" : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_sub?.__copy__(), ("testdata/" : stdgo.GoString)) : Bool) || (_sub == ("testdata" : stdgo.GoString)) : Bool);
                            };
                            if ((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT != ((stdgo.Go.str() : stdgo.GoString))) {
                                _gotoNext = 4383641i32;
                            } else {
                                _gotoNext = 4383891i32;
                            };
                            break;
                        } else if (__value__ == (4383641i32)) {
                            _root_8 = @:check2r _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString))?.__copy__();
                            {
                                {
                                    var __tmp__ = @:check2r _ctxt._hasSubdir(_root_8?.__copy__(), (@:checkr _p_0 ?? throw "null pointer dereference").dir?.__copy__());
                                    _sub_9 = @:tmpset0 __tmp__._0?.__copy__();
                                    _ok_10 = @:tmpset0 __tmp__._1;
                                };
                                if ((_ok_10 && !_inTestdata_7(_sub_9?.__copy__()) : Bool)) {
                                    _gotoNext = 4383757i32;
                                } else {
                                    _gotoNext = 4383891i32;
                                };
                            };
                            break;
                        } else if (__value__ == (4383757i32)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").goroot = true;
                            (@:checkr _p_0 ?? throw "null pointer dereference").importPath = _sub_9?.__copy__();
                            (@:checkr _p_0 ?? throw "null pointer dereference").root = (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__();
                            _setPkga_5();
                            _gotoNext = 4389419i32;
                            break;
                        } else if (__value__ == (4383891i32)) {
                            _all_11 = @:check2r _ctxt._gopath();
                            if ((0i32 : stdgo.GoInt) < (_all_11.length)) {
                                _gotoNext = 4384717i32;
                            } else {
                                _gotoNext = 4389419i32;
                            };
                            break;
                        } else if (__value__ == (4383918i32)) {
                            _i_12++;
                            _gotoNext = 4384718i32;
                            break;
                        } else if (__value__ == (4383939i32)) {
                            _root_13 = _all_11[(_i_12 : stdgo.GoInt)]?.__copy__();
                            _rootsrc_14 = @:check2r _ctxt._joinPath(_root_13?.__copy__(), ("src" : stdgo.GoString))?.__copy__();
                            {
                                {
                                    var __tmp__ = @:check2r _ctxt._hasSubdir(_rootsrc_14?.__copy__(), (@:checkr _p_0 ?? throw "null pointer dereference").dir?.__copy__());
                                    _sub_15 = @:tmpset0 __tmp__._0?.__copy__();
                                    _ok_16 = @:tmpset0 __tmp__._1;
                                };
                                if ((_ok_16 && !_inTestdata_7(_sub_15?.__copy__()) : Bool)) {
                                    _gotoNext = 4384054i32;
                                } else {
                                    _gotoNext = 4383918i32;
                                };
                            };
                            break;
                        } else if (__value__ == (4384054i32)) {
                            if ((((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT != (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _ctxt ?? throw "null pointer dereference").compiler != ("gccgo" : stdgo.GoString)) : Bool)) {
                                _gotoNext = 4384232i32;
                            } else {
                                _gotoNext = 4384367i32;
                            };
                            break;
                        } else if (__value__ == (4384232i32)) {
                            {
                                _dir_17 = @:check2r _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString), _sub_15?.__copy__())?.__copy__();
                                if (@:check2r _ctxt._isDir(_dir_17?.__copy__())) {
                                    _gotoNext = 4384305i32;
                                } else {
                                    _gotoNext = 4384367i32;
                                };
                            };
                            break;
                        } else if (__value__ == (4384305i32)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").conflictDir = _dir_17?.__copy__();
                            _gotoNext = 4389419i32;
                            break;
                        } else if (__value__ == (4384367i32)) {
                            if ((0i32 : stdgo.GoInt) < ((_all_11.__slice__(0, _i_12) : stdgo.Slice<stdgo.GoString>).length)) {
                                _gotoNext = 4384527i32;
                            } else {
                                _gotoNext = 4384621i32;
                            };
                            break;
                        } else if (__value__ == (4384371i32)) {
                            _iterator_4384387_18++;
                            _gotoNext = 4384528i32;
                            break;
                        } else if (__value__ == (4384401i32)) {
                            _earlyRoot_19 = (_all_11.__slice__(0, _i_12) : stdgo.Slice<stdgo.GoString>)[(_iterator_4384387_18 : stdgo.GoInt)]?.__copy__();
                            {
                                _dir_20 = @:check2r _ctxt._joinPath(_earlyRoot_19?.__copy__(), ("src" : stdgo.GoString), _sub_15?.__copy__())?.__copy__();
                                if (@:check2r _ctxt._isDir(_dir_20?.__copy__())) {
                                    _gotoNext = 4384472i32;
                                } else {
                                    _gotoNext = 4384371i32;
                                };
                            };
                            break;
                        } else if (__value__ == (4384472i32)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").conflictDir = _dir_20?.__copy__();
                            _gotoNext = 4389419i32;
                            break;
                        } else if (__value__ == (4384527i32)) {
                            {
                                final __tmp__0 = 0i32;
                                final __tmp__1 = (_all_11.__slice__(0, _i_12) : stdgo.Slice<stdgo.GoString>)[(0i32 : stdgo.GoInt)]?.__copy__();
                                _iterator_4384387_18 = @:binopAssign __tmp__0;
                                _earlyRoot_19 = @:binopAssign __tmp__1;
                            };
                            _gotoNext = 4384528i32;
                            break;
                        } else if (__value__ == (4384528i32)) {
                            if (_iterator_4384387_18 < ((_all_11.__slice__(0, _i_12) : stdgo.Slice<stdgo.GoString>).length)) {
                                _gotoNext = 4384401i32;
                            } else {
                                _gotoNext = 4384621i32;
                            };
                            break;
                        } else if (__value__ == (4384621i32)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").importPath = _sub_15?.__copy__();
                            (@:checkr _p_0 ?? throw "null pointer dereference").root = _root_13?.__copy__();
                            _setPkga_5();
                            _gotoNext = 4389419i32;
                            break;
                        } else if (__value__ == (4384717i32)) {
                            {
                                final __tmp__0 = 0i32;
                                final __tmp__1 = _all_11[(0i32 : stdgo.GoInt)]?.__copy__();
                                _i_12 = @:binopAssign __tmp__0;
                                _root_13 = @:binopAssign __tmp__1;
                            };
                            _gotoNext = 4384718i32;
                            break;
                        } else if (__value__ == (4384718i32)) {
                            if (_i_12 < (_all_11.length)) {
                                _gotoNext = 4383939i32;
                            } else {
                                _gotoNext = 4389419i32;
                            };
                            break;
                        } else if (__value__ == (4384832i32)) {
                            _gotoNext = 4384832i32;
                            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_path?.__copy__(), ("/" : stdgo.GoString))) {
                                _gotoNext = 4384868i32;
                            } else {
                                _gotoNext = 4384949i32;
                            };
                            break;
                        } else if (__value__ == (4384868i32)) {
                            return { _0 : _p_0, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("import %q: cannot import absolute path" : stdgo.GoString), stdgo.Go.toInterface(_path)) };
                            _gotoNext = 4384949i32;
                            break;
                        } else if (__value__ == (4384949i32)) {
                            {
                                _err_21 = @:check2r _ctxt._importGo(_p_0, _path?.__copy__(), _srcDir?.__copy__(), _mode);
                                if (_err_21 == null) {
                                    _gotoNext = 4385008i32;
                                } else if (stdgo.Go.toInterface(_err_21) != (stdgo.Go.toInterface(stdgo._internal.go.build.Build__errnomodules._errNoModules))) {
                                    _gotoNext = 4385056i32;
                                } else {
                                    _gotoNext = 4385082i32;
                                };
                            };
                            break;
                        } else if (__value__ == (4385008i32)) {
                            _gotoNext = 4389419i32;
                            break;
                        } else if (__value__ == (4385056i32)) {
                            return { _0 : _p_0, _1 : _err_21 };
                            _gotoNext = 4385082i32;
                            break;
                        } else if (__value__ == (4385082i32)) {
                            _gopath_22 = @:check2r _ctxt._gopath();
                            if ((((_mode & (8u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) == (0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) && (_srcDir != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                                _gotoNext = 4385406i32;
                            } else {
                                _gotoNext = 4386451i32;
                            };
                            break;
                        } else if (__value__ == (4385406i32)) {
                            _searchVendor_24 = function(_root:stdgo.GoString, _isGoroot:Bool):Bool {
                                var __tmp__ = @:check2r _ctxt._hasSubdir(_root?.__copy__(), _srcDir?.__copy__()), _sub:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (((!_ok || !stdgo._internal.strings.Strings_hasprefix.hasPrefix(_sub?.__copy__(), ("src/" : stdgo.GoString)) : Bool) || stdgo._internal.strings.Strings_contains.contains(_sub?.__copy__(), ("/testdata/" : stdgo.GoString)) : Bool)) {
                                    return false;
                                };
                                while (true) {
                                    var _vendor = (@:check2r _ctxt._joinPath(_root?.__copy__(), _sub?.__copy__(), ("vendor" : stdgo.GoString))?.__copy__() : stdgo.GoString);
                                    if (@:check2r _ctxt._isDir(_vendor?.__copy__())) {
                                        var _dir = (@:check2r _ctxt._joinPath(_vendor?.__copy__(), _path?.__copy__())?.__copy__() : stdgo.GoString);
                                        if ((@:check2r _ctxt._isDir(_dir?.__copy__()) && stdgo._internal.go.build.Build__hasgofiles._hasGoFiles(_ctxt, _dir?.__copy__()) : Bool)) {
                                            (@:checkr _p_0 ?? throw "null pointer dereference").dir = _dir?.__copy__();
                                            (@:checkr _p_0 ?? throw "null pointer dereference").importPath = stdgo._internal.strings.Strings_trimprefix.trimPrefix(stdgo._internal.path.Path_join.join(_sub?.__copy__(), ("vendor" : stdgo.GoString), _path?.__copy__())?.__copy__(), ("src/" : stdgo.GoString))?.__copy__();
                                            (@:checkr _p_0 ?? throw "null pointer dereference").goroot = _isGoroot;
                                            (@:checkr _p_0 ?? throw "null pointer dereference").root = _root?.__copy__();
                                            _setPkga_5();
                                            return true;
                                        };
                                        _tried_23._vendor = (_tried_23._vendor.__append__(_dir?.__copy__()));
                                    };
                                    var _i = (stdgo._internal.strings.Strings_lastindex.lastIndex(_sub?.__copy__(), ("/" : stdgo.GoString)) : stdgo.GoInt);
                                    if ((_i < (0 : stdgo.GoInt) : Bool)) {
                                        break;
                                    };
                                    _sub = (_sub.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                                };
                                return false;
                            };
                            if ((((@:checkr _ctxt ?? throw "null pointer dereference").compiler != (("gccgo" : stdgo.GoString)) && (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && _searchVendor_24((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), true) : Bool)) {
                                _gotoNext = 4386284i32;
                            } else {
                                _gotoNext = 4386309i32;
                            };
                            break;
                        } else if (__value__ == (4386284i32)) {
                            _gotoNext = 4389419i32;
                            break;
                        } else if (__value__ == (4386309i32)) {
                            if ((0i32 : stdgo.GoInt) < (_gopath_22.length)) {
                                _gotoNext = 4386398i32;
                            } else {
                                _gotoNext = 4386451i32;
                            };
                            break;
                        } else if (__value__ == (4386313i32)) {
                            _iterator_4386324_25++;
                            _gotoNext = 4386399i32;
                            break;
                        } else if (__value__ == (4386337i32)) {
                            _root_26 = _gopath_22[(_iterator_4386324_25 : stdgo.GoInt)]?.__copy__();
                            if (_searchVendor_24(_root_26?.__copy__(), false)) {
                                _gotoNext = 4386372i32;
                            } else {
                                _gotoNext = 4386313i32;
                            };
                            break;
                        } else if (__value__ == (4386372i32)) {
                            _gotoNext = 4389419i32;
                            break;
                        } else if (__value__ == (4386398i32)) {
                            {
                                final __tmp__0 = 0i32;
                                final __tmp__1 = _gopath_22[(0i32 : stdgo.GoInt)]?.__copy__();
                                _iterator_4386324_25 = @:binopAssign __tmp__0;
                                _root_26 = @:binopAssign __tmp__1;
                            };
                            _gotoNext = 4386399i32;
                            break;
                        } else if (__value__ == (4386399i32)) {
                            if (_iterator_4386324_25 < (_gopath_22.length)) {
                                _gotoNext = 4386337i32;
                            } else {
                                _gotoNext = 4386451i32;
                            };
                            break;
                        } else if (__value__ == (4386451i32)) {
                            if ((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT != ((stdgo.Go.str() : stdgo.GoString))) {
                                _gotoNext = 4386472i32;
                            } else {
                                _gotoNext = 4387735i32;
                            };
                            break;
                        } else if (__value__ == (4386472i32)) {
                            _gorootFirst_27 = ((_srcDir == (stdgo.Go.str() : stdgo.GoString)) || !stdgo._internal.strings.Strings_hasprefix.hasPrefix(_path?.__copy__(), ("vendor/" : stdgo.GoString)) : Bool);
                            if (!_gorootFirst_27) {
                                _gotoNext = 4386863i32;
                            } else {
                                _gotoNext = 4386930i32;
                            };
                            break;
                        } else if (__value__ == (4386863i32)) {
                            {
                                var __tmp__ = @:check2r _ctxt._hasSubdir((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), _srcDir?.__copy__());
                                _gorootFirst_27 = @:tmpset0 __tmp__._1;
                            };
                            _gotoNext = 4386930i32;
                            break;
                        } else if (__value__ == (4386930i32)) {
                            if (_gorootFirst_27) {
                                _gotoNext = 4386945i32;
                            } else {
                                _gotoNext = 4387333i32;
                            };
                            break;
                        } else if (__value__ == (4386945i32)) {
                            _dir_28 = @:check2r _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString), _path?.__copy__())?.__copy__();
                            if ((@:checkr _ctxt ?? throw "null pointer dereference").compiler != (("gccgo" : stdgo.GoString))) {
                                _gotoNext = 4387030i32;
                            } else {
                                _gotoNext = 4387306i32;
                            };
                            break;
                        } else if (__value__ == (4387030i32)) {
                            _isDir_29 = @:check2r _ctxt._isDir(_dir_28?.__copy__());
                            _binaryOnly_6 = (((!_isDir_29 && (_mode & (2u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) : Bool) && _pkga_2 != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && @:check2r _ctxt._isFile(@:check2r _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), _pkga_2?.__copy__())?.__copy__()) : Bool);
                            if ((_isDir_29 || _binaryOnly_6 : Bool)) {
                                _gotoNext = 4387203i32;
                            } else {
                                _gotoNext = 4387306i32;
                            };
                            break;
                        } else if (__value__ == (4387203i32)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").dir = _dir_28?.__copy__();
                            (@:checkr _p_0 ?? throw "null pointer dereference").goroot = true;
                            (@:checkr _p_0 ?? throw "null pointer dereference").root = (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__();
                            _gotoNext = 4389419i32;
                            break;
                        } else if (__value__ == (4387306i32)) {
                            _tried_23._goroot = _dir_28?.__copy__();
                            _gotoNext = 4387333i32;
                            break;
                        } else if (__value__ == (4387333i32)) {
                            if ((((@:checkr _ctxt ?? throw "null pointer dereference").compiler == ("gccgo" : stdgo.GoString)) && stdgo._internal.internal.goroot.Goroot_isstandardpackage.isStandardPackage((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), (@:checkr _ctxt ?? throw "null pointer dereference").compiler?.__copy__(), _path?.__copy__()) : Bool)) {
                                _gotoNext = 4387423i32;
                            } else {
                                _gotoNext = 4387735i32;
                            };
                            break;
                        } else if (__value__ == (4387423i32)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").dir = @:check2r _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString), _path?.__copy__())?.__copy__();
                            (@:checkr _p_0 ?? throw "null pointer dereference").goroot = true;
                            (@:checkr _p_0 ?? throw "null pointer dereference").root = (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__();
                            _gotoNext = 4389419i32;
                            break;
                        } else if (__value__ == (4387735i32)) {
                            if ((0i32 : stdgo.GoInt) < (_gopath_22.length)) {
                                _gotoNext = 4388067i32;
                            } else {
                                _gotoNext = 4388280i32;
                            };
                            break;
                        } else if (__value__ == (4387763i32)) {
                            _root_31 = _gopath_22[(_iterator_4387750_30 : stdgo.GoInt)]?.__copy__();
                            _dir_32 = @:check2r _ctxt._joinPath(_root_31?.__copy__(), ("src" : stdgo.GoString), _path?.__copy__())?.__copy__();
                            _isDir_33 = @:check2r _ctxt._isDir(_dir_32?.__copy__());
                            _binaryOnly_6 = (((!_isDir_33 && (_mode & (2u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) : Bool) && _pkga_2 != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && @:check2r _ctxt._isFile(@:check2r _ctxt._joinPath(_root_31?.__copy__(), _pkga_2?.__copy__())?.__copy__()) : Bool);
                            if ((_isDir_33 || _binaryOnly_6 : Bool)) {
                                _gotoNext = 4387966i32;
                            } else {
                                _gotoNext = 4388025i32;
                            };
                            break;
                        } else if (__value__ == (4387966i32)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").dir = _dir_32?.__copy__();
                            (@:checkr _p_0 ?? throw "null pointer dereference").root = _root_31?.__copy__();
                            _gotoNext = 4389419i32;
                            break;
                        } else if (__value__ == (4388025i32)) {
                            _tried_23._gopath = (_tried_23._gopath.__append__(_dir_32?.__copy__()));
                            _iterator_4387750_30++;
                            _gotoNext = 4388068i32;
                            break;
                        } else if (__value__ == (4388067i32)) {
                            {
                                final __tmp__0 = 0i32;
                                final __tmp__1 = _gopath_22[(0i32 : stdgo.GoInt)]?.__copy__();
                                _iterator_4387750_30 = @:binopAssign __tmp__0;
                                _root_31 = @:binopAssign __tmp__1;
                            };
                            _gotoNext = 4388068i32;
                            break;
                        } else if (__value__ == (4388068i32)) {
                            if (_iterator_4387750_30 < (_gopath_22.length)) {
                                _gotoNext = 4387763i32;
                            } else {
                                _gotoNext = 4388280i32;
                            };
                            break;
                        } else if (__value__ == (4388280i32)) {
                            if ((((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT != (stdgo.Go.str() : stdgo.GoString)) && (_tried_23._goroot == (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                                _gotoNext = 4388323i32;
                            } else {
                                _gotoNext = 4388725i32;
                            };
                            break;
                        } else if (__value__ == (4388323i32)) {
                            _dir_34 = @:check2r _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString), _path?.__copy__())?.__copy__();
                            if ((@:checkr _ctxt ?? throw "null pointer dereference").compiler != (("gccgo" : stdgo.GoString))) {
                                _gotoNext = 4388406i32;
                            } else {
                                _gotoNext = 4388672i32;
                            };
                            break;
                        } else if (__value__ == (4388406i32)) {
                            _isDir_35 = @:check2r _ctxt._isDir(_dir_34?.__copy__());
                            _binaryOnly_6 = (((!_isDir_35 && (_mode & (2u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) : Bool) && _pkga_2 != ((stdgo.Go.str() : stdgo.GoString)) : Bool) && @:check2r _ctxt._isFile(@:check2r _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), _pkga_2?.__copy__())?.__copy__()) : Bool);
                            if ((_isDir_35 || _binaryOnly_6 : Bool)) {
                                _gotoNext = 4388576i32;
                            } else {
                                _gotoNext = 4388672i32;
                            };
                            break;
                        } else if (__value__ == (4388576i32)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").dir = _dir_34?.__copy__();
                            (@:checkr _p_0 ?? throw "null pointer dereference").goroot = true;
                            (@:checkr _p_0 ?? throw "null pointer dereference").root = (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__();
                            _gotoNext = 4389419i32;
                            break;
                        } else if (__value__ == (4388672i32)) {
                            _tried_23._goroot = _dir_34?.__copy__();
                            _gotoNext = 4388725i32;
                            break;
                        } else if (__value__ == (4388725i32)) {
                            _format_37 = ("\t%s (vendor tree)" : stdgo.GoString);
                            if ((0i32 : stdgo.GoInt) < (_tried_23._vendor.length)) {
                                _gotoNext = 4388885i32;
                            } else {
                                _gotoNext = 4388890i32;
                            };
                            break;
                        } else if (__value__ == (4388812i32)) {
                            _dir_39 = _tried_23._vendor[(_iterator_4388793_38 : stdgo.GoInt)]?.__copy__();
                            _paths_36 = (_paths_36.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(_format_37?.__copy__(), stdgo.Go.toInterface(_dir_39))?.__copy__()));
                            _format_37 = ("\t%s" : stdgo.GoString);
                            _iterator_4388793_38++;
                            _gotoNext = 4388886i32;
                            break;
                        } else if (__value__ == (4388885i32)) {
                            {
                                final __tmp__0 = 0i32;
                                final __tmp__1 = _tried_23._vendor[(0i32 : stdgo.GoInt)]?.__copy__();
                                _iterator_4388793_38 = @:binopAssign __tmp__0;
                                _dir_39 = @:binopAssign __tmp__1;
                            };
                            _gotoNext = 4388886i32;
                            break;
                        } else if (__value__ == (4388886i32)) {
                            if (_iterator_4388793_38 < (_tried_23._vendor.length)) {
                                _gotoNext = 4388812i32;
                            } else {
                                _gotoNext = 4388890i32;
                            };
                            break;
                        } else if (__value__ == (4388890i32)) {
                            if (_tried_23._goroot != ((stdgo.Go.str() : stdgo.GoString))) {
                                _gotoNext = 4388912i32;
                            } else {
                                _gotoNext = 4388998i32;
                            };
                            break;
                        } else if (__value__ == (4388912i32)) {
                            _paths_36 = (_paths_36.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("\t%s (from $GOROOT)" : stdgo.GoString), stdgo.Go.toInterface(_tried_23._goroot))?.__copy__()));
                            _gotoNext = 4389054i32;
                            break;
                        } else if (__value__ == (4388998i32)) {
                            _gotoNext = 4388998i32;
                            _paths_36 = (_paths_36.__append__((("\t($GOROOT not set)" : stdgo.GoString) : stdgo.GoString)));
                            0i32;
                            _gotoNext = 4389054i32;
                            break;
                        } else if (__value__ == (4389054i32)) {
                            _format_37 = ("\t%s (from $GOPATH)" : stdgo.GoString);
                            if ((0i32 : stdgo.GoInt) < (_tried_23._gopath.length)) {
                                _gotoNext = 4389193i32;
                            } else {
                                _gotoNext = 4389198i32;
                            };
                            break;
                        } else if (__value__ == (4389120i32)) {
                            _dir_41 = _tried_23._gopath[(_iterator_4389101_40 : stdgo.GoInt)]?.__copy__();
                            _paths_36 = (_paths_36.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(_format_37?.__copy__(), stdgo.Go.toInterface(_dir_41))?.__copy__()));
                            _format_37 = ("\t%s" : stdgo.GoString);
                            _iterator_4389101_40++;
                            _gotoNext = 4389194i32;
                            break;
                        } else if (__value__ == (4389193i32)) {
                            {
                                final __tmp__0 = 0i32;
                                final __tmp__1 = _tried_23._gopath[(0i32 : stdgo.GoInt)]?.__copy__();
                                _iterator_4389101_40 = @:binopAssign __tmp__0;
                                _dir_41 = @:binopAssign __tmp__1;
                            };
                            _gotoNext = 4389194i32;
                            break;
                        } else if (__value__ == (4389194i32)) {
                            if (_iterator_4389101_40 < (_tried_23._gopath.length)) {
                                _gotoNext = 4389120i32;
                            } else {
                                _gotoNext = 4389198i32;
                            };
                            break;
                        } else if (__value__ == (4389198i32)) {
                            if ((_tried_23._gopath.length) == ((0 : stdgo.GoInt))) {
                                _gotoNext = 4389224i32;
                            } else {
                                _gotoNext = 4389320i32;
                            };
                            break;
                        } else if (__value__ == (4389224i32)) {
                            _paths_36 = (_paths_36.__append__((("\t($GOPATH not set. For more details see: \'go help gopath\')" : stdgo.GoString) : stdgo.GoString)));
                            _gotoNext = 4389320i32;
                            break;
                        } else if (__value__ == (4389320i32)) {
                            return { _0 : _p_0, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot find package %q in any of:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_path), stdgo.Go.toInterface(stdgo._internal.strings.Strings_join.join(_paths_36, ("\n" : stdgo.GoString)))) };
                            0i32;
                            _gotoNext = 4389419i32;
                            break;
                        } else if (__value__ == (4389419i32)) {
                            _gotoNext = 4389419i32;
                            if ((@:checkr _p_0 ?? throw "null pointer dereference").root != ((stdgo.Go.str() : stdgo.GoString))) {
                                _gotoNext = 4389443i32;
                            } else {
                                _gotoNext = 4390361i32;
                            };
                            break;
                        } else if (__value__ == (4389443i32)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").srcRoot = @:check2r _ctxt._joinPath((@:checkr _p_0 ?? throw "null pointer dereference").root?.__copy__(), ("src" : stdgo.GoString))?.__copy__();
                            (@:checkr _p_0 ?? throw "null pointer dereference").pkgRoot = @:check2r _ctxt._joinPath((@:checkr _p_0 ?? throw "null pointer dereference").root?.__copy__(), ("pkg" : stdgo.GoString))?.__copy__();
                            (@:checkr _p_0 ?? throw "null pointer dereference").binDir = @:check2r _ctxt._joinPath((@:checkr _p_0 ?? throw "null pointer dereference").root?.__copy__(), ("bin" : stdgo.GoString))?.__copy__();
                            if (_pkga_2 != ((stdgo.Go.str() : stdgo.GoString))) {
                                _gotoNext = 4389589i32;
                            } else {
                                _gotoNext = 4390361i32;
                            };
                            break;
                        } else if (__value__ == (4389589i32)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").pkgTargetRoot = @:check2r _ctxt._joinPath((@:checkr _p_0 ?? throw "null pointer dereference").root?.__copy__(), _pkgtargetroot_1?.__copy__())?.__copy__();
                            if ((!(@:checkr _p_0 ?? throw "null pointer dereference").goroot || (((@:check2r stdgo._internal.go.build.Build__installgoroot._installgoroot.value() == (("all" : stdgo.GoString)) && (@:checkr _p_0 ?? throw "null pointer dereference").importPath != (("unsafe" : stdgo.GoString)) : Bool) && ((@:checkr _p_0 ?? throw "null pointer dereference").importPath != ("builtin" : stdgo.GoString)) : Bool)) : Bool)) {
                                _gotoNext = 4389888i32;
                            } else {
                                _gotoNext = 4390361i32;
                            };
                            break;
                        } else if (__value__ == (4389888i32)) {
                            if ((@:checkr _p_0 ?? throw "null pointer dereference").goroot) {
                                _gotoNext = 4389906i32;
                            } else {
                                _gotoNext = 4389953i32;
                            };
                            break;
                        } else if (__value__ == (4389906i32)) {
                            @:check2r stdgo._internal.go.build.Build__installgoroot._installgoroot.incNonDefault();
                            _gotoNext = 4389953i32;
                            break;
                        } else if (__value__ == (4389953i32)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").pkgObj = @:check2r _ctxt._joinPath((@:checkr _p_0 ?? throw "null pointer dereference").root?.__copy__(), _pkga_2?.__copy__())?.__copy__();
                            _gotoNext = 4390361i32;
                            break;
                        } else if (__value__ == (4390361i32)) {
                            if ((stdgo._internal.go.build.Build_islocalimport.isLocalImport(_path?.__copy__()) && !@:check2r _ctxt._isDir((@:checkr _p_0 ?? throw "null pointer dereference").dir?.__copy__()) : Bool)) {
                                _gotoNext = 4390406i32;
                            } else {
                                _gotoNext = 4390634i32;
                            };
                            break;
                        } else if (__value__ == (4390406i32)) {
                            if ((((@:checkr _ctxt ?? throw "null pointer dereference").compiler == ("gccgo" : stdgo.GoString)) && (@:checkr _p_0 ?? throw "null pointer dereference").goroot : Bool)) {
                                _gotoNext = 4390450i32;
                            } else {
                                _gotoNext = 4390551i32;
                            };
                            break;
                        } else if (__value__ == (4390450i32)) {
                            return { _0 : _p_0, _1 : (null : stdgo.Error) };
                            _gotoNext = 4390551i32;
                            break;
                        } else if (__value__ == (4390551i32)) {
                            return { _0 : _p_0, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("cannot find package %q in:\n\t%s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p_0 ?? throw "null pointer dereference").importPath), stdgo.Go.toInterface((@:checkr _p_0 ?? throw "null pointer dereference").dir)) };
                            _gotoNext = 4390634i32;
                            break;
                        } else if (__value__ == (4390634i32)) {
                            if ((_mode & (1u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode))) {
                                _gotoNext = 4390656i32;
                            } else {
                                _gotoNext = 4390681i32;
                            };
                            break;
                        } else if (__value__ == (4390656i32)) {
                            return { _0 : _p_0, _1 : _pkgerr_3 };
                            _gotoNext = 4390681i32;
                            break;
                        } else if (__value__ == (4390681i32)) {
                            if ((_binaryOnly_6 && ((_mode & (2u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != (0u32 : stdgo._internal.go.build.Build_importmode.ImportMode)) : Bool)) {
                                _gotoNext = 4390722i32;
                            } else {
                                _gotoNext = 4390748i32;
                            };
                            break;
                        } else if (__value__ == (4390722i32)) {
                            return { _0 : _p_0, _1 : _pkgerr_3 };
                            _gotoNext = 4390748i32;
                            break;
                        } else if (__value__ == (4390748i32)) {
                            if ((((@:checkr _ctxt ?? throw "null pointer dereference").compiler == ("gccgo" : stdgo.GoString)) && (@:checkr _p_0 ?? throw "null pointer dereference").goroot : Bool)) {
                                _gotoNext = 4390788i32;
                            } else {
                                _gotoNext = 4390858i32;
                            };
                            break;
                        } else if (__value__ == (4390788i32)) {
                            return { _0 : _p_0, _1 : (null : stdgo.Error) };
                            _gotoNext = 4390858i32;
                            break;
                        } else if (__value__ == (4390858i32)) {
                            {
                                var __tmp__ = @:check2r _ctxt._readDir((@:checkr _p_0 ?? throw "null pointer dereference").dir?.__copy__());
                                _dirs_42 = @:tmpset0 __tmp__._0;
                                _err_43 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_43 != null) {
                                _gotoNext = 4390906i32;
                            } else {
                                _gotoNext = 4390929i32;
                            };
                            break;
                        } else if (__value__ == (4390906i32)) {
                            return { _0 : _p_0, _1 : _err_43 };
                            _gotoNext = 4390929i32;
                            break;
                        } else if (__value__ == (4390929i32)) {
                            _badGoFiles_45 = (({
                                final x = new stdgo.GoMap.GoStringMap<Bool>();
                                x.__defaultValue__ = () -> false;
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
                            _badGoFile_46 = function(_name:stdgo.GoString, _err:stdgo.Error):Void {
                                if (_badGoError_44 == null) {
                                    _badGoError_44 = _err;
                                };
                                if (!(_badGoFiles_45[_name] ?? false)) {
                                    (@:checkr _p_0 ?? throw "null pointer dereference").invalidGoFiles = ((@:checkr _p_0 ?? throw "null pointer dereference").invalidGoFiles.__append__(_name?.__copy__()));
                                    _badGoFiles_45[_name] = true;
                                };
                            };
                            _embedPos_50 = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
                                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
                            _testEmbedPos_51 = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
                                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
                            _xTestEmbedPos_52 = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
                                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
                            _importPos_53 = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
                                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
                            _testImportPos_54 = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
                                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
                            _xTestImportPos_55 = (({
                                final x = new stdgo.GoMap.GoStringMap<stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>();
                                x.__defaultValue__ = () -> (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>);
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>) : stdgo.GoMap<stdgo.GoString, stdgo.Slice<stdgo._internal.go.token.Token_position.Position>>);
                            _allTags_56 = (({
                                final x = new stdgo.GoMap.GoStringMap<Bool>();
                                x.__defaultValue__ = () -> false;
                                {};
                                x;
                            } : stdgo.GoMap<stdgo.GoString, Bool>) : stdgo.GoMap<stdgo.GoString, Bool>);
                            _fset_57 = stdgo._internal.go.token.Token_newfileset.newFileSet();
                            if ((0i32 : stdgo.GoInt) < (_dirs_42.length)) {
                                _gotoNext = 4396241i32;
                            } else {
                                _gotoNext = 4396246i32;
                            };
                            break;
                        } else if (__value__ == (4391714i32)) {
                            _iterator_4391722_58++;
                            _gotoNext = 4396242i32;
                            break;
                        } else if (__value__ == (4391733i32)) {
                            _d_59 = _dirs_42[(_iterator_4391722_58 : stdgo.GoInt)];
                            if (_d_59.isDir()) {
                                _gotoNext = 4391750i32;
                            } else {
                                _gotoNext = 4391770i32;
                            };
                            break;
                        } else if (__value__ == (4391750i32)) {
                            _iterator_4391722_58++;
                            _gotoNext = 4396242i32;
                            break;
                        } else if (__value__ == (4391770i32)) {
                            if (_d_59.type() == ((134217728u32 : stdgo._internal.io.fs.Fs_filemode.FileMode))) {
                                _gotoNext = 4391800i32;
                            } else {
                                _gotoNext = 4391931i32;
                            };
                            break;
                        } else if (__value__ == (4391800i32)) {
                            if (@:check2r _ctxt._isDir(@:check2r _ctxt._joinPath((@:checkr _p_0 ?? throw "null pointer dereference").dir?.__copy__(), _d_59.name()?.__copy__())?.__copy__())) {
                                _gotoNext = 4391851i32;
                            } else {
                                _gotoNext = 4391931i32;
                            };
                            break;
                        } else if (__value__ == (4391851i32)) {
                            _iterator_4391722_58++;
                            _gotoNext = 4396242i32;
                            break;
                        } else if (__value__ == (4391931i32)) {
                            _name_60 = _d_59.name()?.__copy__();
                            _ext_61 = stdgo._internal.go.build.Build__nameext._nameExt(_name_60?.__copy__())?.__copy__();
                            {
                                var __tmp__ = @:check2r _ctxt._matchFile((@:checkr _p_0 ?? throw "null pointer dereference").dir?.__copy__(), _name_60?.__copy__(), _allTags_56, stdgo.Go.pointer((@:checkr _p_0 ?? throw "null pointer dereference").binaryOnly), _fset_57);
                                _info_62 = @:tmpset0 __tmp__._0;
                                _err_63 = @:tmpset0 __tmp__._1;
                            };
                            if (((_err_63 != null) && stdgo._internal.strings.Strings_hassuffix.hasSuffix(_name_60?.__copy__(), (".go" : stdgo.GoString)) : Bool)) {
                                _gotoNext = 4392095i32;
                            } else {
                                _gotoNext = 4392139i32;
                            };
                            break;
                        } else if (__value__ == (4392095i32)) {
                            _badGoFile_46(_name_60?.__copy__(), _err_63);
                            _iterator_4391722_58++;
                            _gotoNext = 4396242i32;
                            break;
                        } else if (__value__ == (4392139i32)) {
                            if (({
                                final value = _info_62;
                                (value == null || (value : Dynamic).__nil__);
                            })) {
                                _gotoNext = 4392154i32;
                            } else {
                                _gotoNext = 4392549i32;
                            };
                            break;
                        } else if (__value__ == (4392154i32)) {
                            if ((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name_60?.__copy__(), ("_" : stdgo.GoString)) || stdgo._internal.strings.Strings_hasprefix.hasPrefix(_name_60?.__copy__(), ("." : stdgo.GoString)) : Bool)) {
                                _gotoNext = 4392223i32;
                            } else if (_ext_61 == ((".go" : stdgo.GoString))) {
                                _gotoNext = 4392302i32;
                            } else if (({
                                final value = stdgo._internal.go.build.Build__filelistforext._fileListForExt(_p_0, _ext_61?.__copy__());
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                _gotoNext = 4392401i32;
                            } else {
                                _gotoNext = 4392471i32;
                            };
                            break;
                        } else if (__value__ == (4392223i32)) {
                            _gotoNext = 4392471i32;
                            break;
                        } else if (__value__ == (4392302i32)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").ignoredGoFiles = ((@:checkr _p_0 ?? throw "null pointer dereference").ignoredGoFiles.__append__(_name_60?.__copy__()));
                            _gotoNext = 4392471i32;
                            break;
                        } else if (__value__ == (4392401i32)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").ignoredOtherFiles = ((@:checkr _p_0 ?? throw "null pointer dereference").ignoredOtherFiles.__append__(_name_60?.__copy__()));
                            _gotoNext = 4392471i32;
                            break;
                        } else if (__value__ == (4392471i32)) {
                            _iterator_4391722_58++;
                            _gotoNext = 4396242i32;
                            break;
                        } else if (__value__ == (4392549i32)) {
                            _gotoNext = 4392549i32;
                            {
                                final __value__ = _ext_61;
                                if (__value__ == ((".go" : stdgo.GoString))) {
                                    _gotoNext = 4392564i32;
                                } else if (__value__ == ((".S" : stdgo.GoString)) || __value__ == ((".sx" : stdgo.GoString))) {
                                    _gotoNext = 4392595i32;
                                } else {
                                    _gotoNext = 4392703i32;
                                };
                            };
                            break;
                        } else if (__value__ == (4392564i32)) {
                            _gotoNext = 4392820i32;
                            break;
                        } else if (__value__ == (4392595i32)) {
                            sfiles_47 = (sfiles_47.__append__(_name_60?.__copy__()));
                            _iterator_4391722_58++;
                            _gotoNext = 4396242i32;
                            break;
                        } else if (__value__ == (4392703i32)) {
                            {
                                _list_64 = stdgo._internal.go.build.Build__filelistforext._fileListForExt(_p_0, _ext_61?.__copy__());
                                if (({
                                    final value = _list_64;
                                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                                })) {
                                    _gotoNext = 4392762i32;
                                } else {
                                    _gotoNext = 4392804i32;
                                };
                            };
                            break;
                        } else if (__value__ == (4392762i32)) {
                            (_list_64 : stdgo.Slice<stdgo.GoString>).__setData__(((_list_64 : stdgo.Slice<stdgo.GoString>).__append__(_name_60?.__copy__())));
                            _gotoNext = 4392804i32;
                            break;
                        } else if (__value__ == (4392804i32)) {
                            _iterator_4391722_58++;
                            _gotoNext = 4396242i32;
                            break;
                        } else if (__value__ == (4392820i32)) {
                            {
                                final __tmp__0 = (@:checkr _info_62 ?? throw "null pointer dereference")._header;
                                final __tmp__1 = (@:checkr _info_62 ?? throw "null pointer dereference")._name?.__copy__();
                                _data_65 = @:binopAssign __tmp__0;
                                _filename_66 = @:binopAssign __tmp__1;
                            };
                            if ((@:checkr _info_62 ?? throw "null pointer dereference")._parseErr != null) {
                                _gotoNext = 4392888i32;
                            } else {
                                _gotoNext = 4393059i32;
                            };
                            break;
                        } else if (__value__ == (4392888i32)) {
                            _badGoFile_46(_name_60?.__copy__(), (@:checkr _info_62 ?? throw "null pointer dereference")._parseErr);
                            _gotoNext = 4393059i32;
                            break;
                        } else if (__value__ == (4393059i32)) {
                            if (({
                                final value = (@:checkr _info_62 ?? throw "null pointer dereference")._parsed;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                _gotoNext = 4393098i32;
                            } else {
                                _gotoNext = 4393241i32;
                            };
                            break;
                        } else if (__value__ == (4393098i32)) {
                            _pkg_67 = (@:checkr (@:checkr (@:checkr _info_62 ?? throw "null pointer dereference")._parsed ?? throw "null pointer dereference").name ?? throw "null pointer dereference").name?.__copy__();
                            if (_pkg_67 == (("documentation" : stdgo.GoString))) {
                                _gotoNext = 4393160i32;
                            } else {
                                _gotoNext = 4393241i32;
                            };
                            break;
                        } else if (__value__ == (4393160i32)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").ignoredGoFiles = ((@:checkr _p_0 ?? throw "null pointer dereference").ignoredGoFiles.__append__(_name_60?.__copy__()));
                            _iterator_4391722_58++;
                            _gotoNext = 4396242i32;
                            break;
                        } else if (__value__ == (4393241i32)) {
                            _isTest_68 = stdgo._internal.strings.Strings_hassuffix.hasSuffix(_name_60?.__copy__(), ("_test.go" : stdgo.GoString));
                            _isXTest_69 = false;
                            if (((_isTest_68 && stdgo._internal.strings.Strings_hassuffix.hasSuffix(_pkg_67?.__copy__(), ("_test" : stdgo.GoString)) : Bool) && ((@:checkr _p_0 ?? throw "null pointer dereference").name != _pkg_67) : Bool)) {
                                _gotoNext = 4393370i32;
                            } else {
                                _gotoNext = 4393434i32;
                            };
                            break;
                        } else if (__value__ == (4393370i32)) {
                            _isXTest_69 = true;
                            _pkg_67 = (_pkg_67.__slice__(0, ((_pkg_67.length) - ((("_test" : stdgo.GoString) : stdgo.GoString).length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            _gotoNext = 4393434i32;
                            break;
                        } else if (__value__ == (4393434i32)) {
                            if ((@:checkr _p_0 ?? throw "null pointer dereference").name == ((stdgo.Go.str() : stdgo.GoString))) {
                                _gotoNext = 4393450i32;
                            } else if (_pkg_67 != ((@:checkr _p_0 ?? throw "null pointer dereference").name)) {
                                _gotoNext = 4393514i32;
                            } else {
                                _gotoNext = 4393972i32;
                            };
                            break;
                        } else if (__value__ == (4393450i32)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").name = _pkg_67?.__copy__();
                            _firstFile_48 = _name_60?.__copy__();
                            _gotoNext = 4393972i32;
                            break;
                        } else if (__value__ == (4393514i32)) {
                            _badGoFile_46(_name_60?.__copy__(), stdgo.Go.asInterface((stdgo.Go.setRef(({ dir : (@:checkr _p_0 ?? throw "null pointer dereference").dir?.__copy__(), packages : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[(@:checkr _p_0 ?? throw "null pointer dereference").name?.__copy__(), _pkg_67?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>), files : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[_firstFile_48?.__copy__(), _name_60?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.go.build.Build_multiplepackageerror.MultiplePackageError)) : stdgo.Ref<stdgo._internal.go.build.Build_multiplepackageerror.MultiplePackageError>)));
                            _gotoNext = 4393972i32;
                            break;
                        } else if (__value__ == (4393972i32)) {
                            if (((((({
                                final value = (@:checkr _info_62 ?? throw "null pointer dereference")._parsed;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            }) && ({
                                final value = (@:checkr (@:checkr _info_62 ?? throw "null pointer dereference")._parsed ?? throw "null pointer dereference").doc;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            }) : Bool) && (@:checkr _p_0 ?? throw "null pointer dereference").doc == ((stdgo.Go.str() : stdgo.GoString)) : Bool) && !_isTest_68 : Bool) && !_isXTest_69 : Bool)) {
                                _gotoNext = 4394058i32;
                            } else {
                                _gotoNext = 4394115i32;
                            };
                            break;
                        } else if (__value__ == (4394058i32)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").doc = stdgo._internal.go.doc.Doc_synopsis.synopsis(@:check2r (@:checkr (@:checkr _info_62 ?? throw "null pointer dereference")._parsed ?? throw "null pointer dereference").doc.text()?.__copy__())?.__copy__();
                            _gotoNext = 4394115i32;
                            break;
                        } else if (__value__ == (4394115i32)) {
                            if ((_mode & (4u32 : stdgo._internal.go.build.Build_importmode.ImportMode) : stdgo._internal.go.build.Build_importmode.ImportMode) != ((0u32 : stdgo._internal.go.build.Build_importmode.ImportMode))) {
                                _gotoNext = 4394142i32;
                            } else {
                                _gotoNext = 4394683i32;
                            };
                            break;
                        } else if (__value__ == (4394142i32)) {
                            {
                                var __tmp__ = stdgo._internal.go.build.Build__findimportcomment._findImportComment(_data_65);
                                _qcom_70 = @:tmpset0 __tmp__._0?.__copy__();
                                _line_71 = @:tmpset0 __tmp__._1;
                            };
                            if (_line_71 != ((0 : stdgo.GoInt))) {
                                _gotoNext = 4394201i32;
                            } else {
                                _gotoNext = 4394683i32;
                            };
                            break;
                        } else if (__value__ == (4394201i32)) {
                            {
                                var __tmp__ = stdgo._internal.strconv.Strconv_unquote.unquote(_qcom_70?.__copy__());
                                _com_72 = @:tmpset0 __tmp__._0?.__copy__();
                                _err_73 = @:tmpset0 __tmp__._1;
                            };
                            if (_err_73 != null) {
                                _gotoNext = 4394259i32;
                            } else if ((@:checkr _p_0 ?? throw "null pointer dereference").importComment == ((stdgo.Go.str() : stdgo.GoString))) {
                                _gotoNext = 4394384i32;
                            } else if ((@:checkr _p_0 ?? throw "null pointer dereference").importComment != (_com_72)) {
                                _gotoNext = 4394479i32;
                            } else {
                                _gotoNext = 4394683i32;
                            };
                            break;
                        } else if (__value__ == (4394259i32)) {
                            _badGoFile_46(_name_60?.__copy__(), stdgo._internal.fmt.Fmt_errorf.errorf(("%s:%d: cannot parse import comment" : stdgo.GoString), stdgo.Go.toInterface(_filename_66), stdgo.Go.toInterface(_line_71)));
                            _gotoNext = 4394683i32;
                            break;
                        } else if (__value__ == (4394384i32)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").importComment = _com_72?.__copy__();
                            _firstCommentFile_49 = _name_60?.__copy__();
                            _gotoNext = 4394683i32;
                            break;
                        } else if (__value__ == (4394479i32)) {
                            _badGoFile_46(_name_60?.__copy__(), stdgo._internal.fmt.Fmt_errorf.errorf(("found import comments %q (%s) and %q (%s) in %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _p_0 ?? throw "null pointer dereference").importComment), stdgo.Go.toInterface(_firstCommentFile_49), stdgo.Go.toInterface(_com_72), stdgo.Go.toInterface(_name_60), stdgo.Go.toInterface((@:checkr _p_0 ?? throw "null pointer dereference").dir)));
                            _gotoNext = 4394683i32;
                            break;
                        } else if (__value__ == (4394683i32)) {
                            _isCgo_74 = false;
                            if ((0i32 : stdgo.GoInt) < ((@:checkr _info_62 ?? throw "null pointer dereference")._imports.length)) {
                                _gotoNext = 4395028i32;
                            } else {
                                _gotoNext = 4395034i32;
                            };
                            break;
                        } else if (__value__ == (4394704i32)) {
                            _iterator_4394714_75++;
                            _gotoNext = 4395029i32;
                            break;
                        } else if (__value__ == (4394733i32)) {
                            _imp_76 = (@:checkr _info_62 ?? throw "null pointer dereference")._imports[(_iterator_4394714_75 : stdgo.GoInt)];
                            if (_imp_76._path == (("C" : stdgo.GoString))) {
                                _gotoNext = 4394757i32;
                            } else {
                                _gotoNext = 4394704i32;
                            };
                            break;
                        } else if (__value__ == (4394757i32)) {
                            if (_isTest_68) {
                                _gotoNext = 4394773i32;
                            } else {
                                _gotoNext = 4394881i32;
                            };
                            break;
                        } else if (__value__ == (4394773i32)) {
                            _badGoFile_46(_name_60?.__copy__(), stdgo._internal.fmt.Fmt_errorf.errorf(("use of cgo in test %s not supported" : stdgo.GoString), stdgo.Go.toInterface(_filename_66)));
                            _iterator_4394714_75++;
                            _gotoNext = 4395029i32;
                            break;
                        } else if (__value__ == (4394881i32)) {
                            _isCgo_74 = true;
                            if (({
                                final value = _imp_76._doc;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                _gotoNext = 4394916i32;
                            } else {
                                _gotoNext = 4394704i32;
                            };
                            break;
                        } else if (__value__ == (4394916i32)) {
                            {
                                _err_77 = @:check2r _ctxt._saveCgo(_filename_66?.__copy__(), _p_0, _imp_76._doc);
                                if (_err_77 != null) {
                                    _gotoNext = 4394980i32;
                                } else {
                                    _gotoNext = 4394704i32;
                                };
                            };
                            break;
                        } else if (__value__ == (4394980i32)) {
                            _badGoFile_46(_name_60?.__copy__(), _err_77);
                            _gotoNext = 4394704i32;
                            break;
                        } else if (__value__ == (4395028i32)) {
                            {
                                final __tmp__0 = 0i32;
                                final __tmp__1 = (@:checkr _info_62 ?? throw "null pointer dereference")._imports[(0i32 : stdgo.GoInt)];
                                _iterator_4394714_75 = @:binopAssign __tmp__0;
                                _imp_76 = @:binopAssign __tmp__1;
                            };
                            _gotoNext = 4395029i32;
                            break;
                        } else if (__value__ == (4395029i32)) {
                            if (_iterator_4394714_75 < ((@:checkr _info_62 ?? throw "null pointer dereference")._imports.length)) {
                                _gotoNext = 4394733i32;
                            } else {
                                _gotoNext = 4395034i32;
                            };
                            break;
                        } else if (__value__ == (4395034i32)) {
                            _gotoNext = 4395143i32;
                            break;
                        } else if (__value__ == (4395143i32)) {
                            if (_isCgo_74) {
                                _gotoNext = 4395154i32;
                            } else if (_isXTest_69) {
                                _gotoNext = 4395443i32;
                            } else if (_isTest_68) {
                                _gotoNext = 4395582i32;
                            } else {
                                _gotoNext = 4395716i32;
                            };
                            break;
                        } else if (__value__ == (4395154i32)) {
                            _allTags_56[("cgo" : stdgo.GoString)] = true;
                            if ((@:checkr _ctxt ?? throw "null pointer dereference").cgoEnabled) {
                                _gotoNext = 4395213i32;
                            } else {
                                _gotoNext = 4395333i32;
                            };
                            break;
                        } else if (__value__ == (4395213i32)) {
                            _fileList_78 = (stdgo.Go.setRef((@:checkr _p_0 ?? throw "null pointer dereference").cgoFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
                            _importMap_79 = _importPos_53;
                            _embedMap_80 = _embedPos_50;
                            _directives_81 = (stdgo.Go.setRef((@:checkr _p_0 ?? throw "null pointer dereference").directives) : stdgo.Ref<stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>>);
                            _gotoNext = 4395834i32;
                            break;
                        } else if (__value__ == (4395333i32)) {
                            _gotoNext = 4395333i32;
                            _fileList_78 = (stdgo.Go.setRef((@:checkr _p_0 ?? throw "null pointer dereference").ignoredGoFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
                            0i32;
                            _gotoNext = 4395834i32;
                            break;
                        } else if (__value__ == (4395443i32)) {
                            _fileList_78 = (stdgo.Go.setRef((@:checkr _p_0 ?? throw "null pointer dereference").xTestGoFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
                            _importMap_79 = _xTestImportPos_55;
                            _embedMap_80 = _xTestEmbedPos_52;
                            _directives_81 = (stdgo.Go.setRef((@:checkr _p_0 ?? throw "null pointer dereference").xTestDirectives) : stdgo.Ref<stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>>);
                            _gotoNext = 4395834i32;
                            break;
                        } else if (__value__ == (4395582i32)) {
                            _fileList_78 = (stdgo.Go.setRef((@:checkr _p_0 ?? throw "null pointer dereference").testGoFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
                            _importMap_79 = _testImportPos_54;
                            _embedMap_80 = _testEmbedPos_51;
                            _directives_81 = (stdgo.Go.setRef((@:checkr _p_0 ?? throw "null pointer dereference").testDirectives) : stdgo.Ref<stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>>);
                            _gotoNext = 4395834i32;
                            break;
                        } else if (__value__ == (4395716i32)) {
                            _fileList_78 = (stdgo.Go.setRef((@:checkr _p_0 ?? throw "null pointer dereference").goFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
                            _importMap_79 = _importPos_53;
                            _embedMap_80 = _embedPos_50;
                            _directives_81 = (stdgo.Go.setRef((@:checkr _p_0 ?? throw "null pointer dereference").directives) : stdgo.Ref<stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>>);
                            _gotoNext = 4395834i32;
                            break;
                        } else if (__value__ == (4395834i32)) {
                            (_fileList_78 : stdgo.Slice<stdgo.GoString>).__setData__(((_fileList_78 : stdgo.Slice<stdgo.GoString>).__append__(_name_60?.__copy__())));
                            if (_importMap_79 != null) {
                                _gotoNext = 4395892i32;
                            } else {
                                _gotoNext = 4396021i32;
                            };
                            break;
                        } else if (__value__ == (4395892i32)) {
                            if ((0i32 : stdgo.GoInt) < ((@:checkr _info_62 ?? throw "null pointer dereference")._imports.length)) {
                                _gotoNext = 4396012i32;
                            } else {
                                _gotoNext = 4396021i32;
                            };
                            break;
                        } else if (__value__ == (4395930i32)) {
                            _imp_83 = (@:checkr _info_62 ?? throw "null pointer dereference")._imports[(_iterator_4395911_82 : stdgo.GoInt)];
                            _importMap_79[_imp_83._path] = ((_importMap_79[_imp_83._path] ?? (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>)).__append__(@:check2r _fset_57.position(_imp_83._pos)?.__copy__()));
                            _iterator_4395911_82++;
                            _gotoNext = 4396013i32;
                            break;
                        } else if (__value__ == (4396012i32)) {
                            {
                                final __tmp__0 = 0i32;
                                final __tmp__1 = (@:checkr _info_62 ?? throw "null pointer dereference")._imports[(0i32 : stdgo.GoInt)];
                                _iterator_4395911_82 = @:binopAssign __tmp__0;
                                _imp_83 = @:binopAssign __tmp__1;
                            };
                            _gotoNext = 4396013i32;
                            break;
                        } else if (__value__ == (4396013i32)) {
                            if (_iterator_4395911_82 < ((@:checkr _info_62 ?? throw "null pointer dereference")._imports.length)) {
                                _gotoNext = 4395930i32;
                            } else {
                                _gotoNext = 4396021i32;
                            };
                            break;
                        } else if (__value__ == (4396021i32)) {
                            if (_embedMap_80 != null) {
                                _gotoNext = 4396040i32;
                            } else {
                                _gotoNext = 4396157i32;
                            };
                            break;
                        } else if (__value__ == (4396040i32)) {
                            if ((0i32 : stdgo.GoInt) < ((@:checkr _info_62 ?? throw "null pointer dereference")._embeds.length)) {
                                _gotoNext = 4396148i32;
                            } else {
                                _gotoNext = 4396157i32;
                            };
                            break;
                        } else if (__value__ == (4396077i32)) {
                            _emb_85 = (@:checkr _info_62 ?? throw "null pointer dereference")._embeds[(_iterator_4396059_84 : stdgo.GoInt)];
                            _embedMap_80[_emb_85._pattern] = ((_embedMap_80[_emb_85._pattern] ?? (null : stdgo.Slice<stdgo._internal.go.token.Token_position.Position>)).__append__(_emb_85._pos?.__copy__()));
                            _iterator_4396059_84++;
                            _gotoNext = 4396149i32;
                            break;
                        } else if (__value__ == (4396148i32)) {
                            {
                                final __tmp__0 = 0i32;
                                final __tmp__1 = (@:checkr _info_62 ?? throw "null pointer dereference")._embeds[(0i32 : stdgo.GoInt)];
                                _iterator_4396059_84 = @:binopAssign __tmp__0;
                                _emb_85 = @:binopAssign __tmp__1;
                            };
                            _gotoNext = 4396149i32;
                            break;
                        } else if (__value__ == (4396149i32)) {
                            if (_iterator_4396059_84 < ((@:checkr _info_62 ?? throw "null pointer dereference")._embeds.length)) {
                                _gotoNext = 4396077i32;
                            } else {
                                _gotoNext = 4396157i32;
                            };
                            break;
                        } else if (__value__ == (4396157i32)) {
                            if (({
                                final value = _directives_81;
                                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                            })) {
                                _gotoNext = 4396178i32;
                            } else {
                                _gotoNext = 4391714i32;
                            };
                            break;
                        } else if (__value__ == (4396178i32)) {
                            (_directives_81 : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>).__setData__(((_directives_81 : stdgo.Slice<stdgo._internal.go.build.Build_directive.Directive>).__append__(...((@:checkr _info_62 ?? throw "null pointer dereference")._directives : Array<stdgo._internal.go.build.Build_directive.Directive>))));
                            _gotoNext = 4391714i32;
                            break;
                        } else if (__value__ == (4396241i32)) {
                            {
                                final __tmp__0 = 0i32;
                                final __tmp__1 = _dirs_42[(0i32 : stdgo.GoInt)];
                                _iterator_4391722_58 = @:binopAssign __tmp__0;
                                _d_59 = @:binopAssign __tmp__1;
                            };
                            _gotoNext = 4396242i32;
                            break;
                        } else if (__value__ == (4396242i32)) {
                            if (_iterator_4391722_58 < (_dirs_42.length)) {
                                _gotoNext = 4391733i32;
                            } else {
                                _gotoNext = 4396246i32;
                            };
                            break;
                        } else if (__value__ == (4396246i32)) {
                            _keys_4396246 = (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>);
                            for (_key => _ in _allTags_56) {
                                _keys_4396246 = (_keys_4396246.__append__(_key));
                            };
                            if ((0i32 : stdgo.GoInt) < (_allTags_56.length)) {
                                _gotoNext = 4396310i32;
                            } else {
                                _gotoNext = 4396314i32;
                            };
                            break;
                        } else if (__value__ == (4396271i32)) {
                            _tag_86 = _keys_4396246[@:invalid_index_invalid_type _iterator_4396257]?.__copy__();
                            (@:checkr _p_0 ?? throw "null pointer dereference").allTags = ((@:checkr _p_0 ?? throw "null pointer dereference").allTags.__append__(_tag_86?.__copy__()));
                            _iterator_4396257++;
                            _gotoNext = 4396311i32;
                            break;
                        } else if (__value__ == (4396310i32)) {
                            _iterator_4396257 = 0i32;
                            _gotoNext = 4396311i32;
                            break;
                        } else if (__value__ == (4396311i32)) {
                            if (_iterator_4396257 < (_keys_4396246.length)) {
                                _gotoNext = 4396271i32;
                            } else {
                                _gotoNext = 4396314i32;
                            };
                            break;
                        } else if (__value__ == (4396314i32)) {
                            stdgo._internal.sort.Sort_strings.strings((@:checkr _p_0 ?? throw "null pointer dereference").allTags);
                            {
                                var __tmp__ = stdgo._internal.go.build.Build__cleandecls._cleanDecls(_embedPos_50);
                                (@:checkr _p_0 ?? throw "null pointer dereference").embedPatterns = @:tmpset0 __tmp__._0;
                                (@:checkr _p_0 ?? throw "null pointer dereference").embedPatternPos = @:tmpset0 __tmp__._1;
                            };
                            {
                                var __tmp__ = stdgo._internal.go.build.Build__cleandecls._cleanDecls(_testEmbedPos_51);
                                (@:checkr _p_0 ?? throw "null pointer dereference").testEmbedPatterns = @:tmpset0 __tmp__._0;
                                (@:checkr _p_0 ?? throw "null pointer dereference").testEmbedPatternPos = @:tmpset0 __tmp__._1;
                            };
                            {
                                var __tmp__ = stdgo._internal.go.build.Build__cleandecls._cleanDecls(_xTestEmbedPos_52);
                                (@:checkr _p_0 ?? throw "null pointer dereference").xTestEmbedPatterns = @:tmpset0 __tmp__._0;
                                (@:checkr _p_0 ?? throw "null pointer dereference").xTestEmbedPatternPos = @:tmpset0 __tmp__._1;
                            };
                            {
                                var __tmp__ = stdgo._internal.go.build.Build__cleandecls._cleanDecls(_importPos_53);
                                (@:checkr _p_0 ?? throw "null pointer dereference").imports = @:tmpset0 __tmp__._0;
                                (@:checkr _p_0 ?? throw "null pointer dereference").importPos = @:tmpset0 __tmp__._1;
                            };
                            {
                                var __tmp__ = stdgo._internal.go.build.Build__cleandecls._cleanDecls(_testImportPos_54);
                                (@:checkr _p_0 ?? throw "null pointer dereference").testImports = @:tmpset0 __tmp__._0;
                                (@:checkr _p_0 ?? throw "null pointer dereference").testImportPos = @:tmpset0 __tmp__._1;
                            };
                            {
                                var __tmp__ = stdgo._internal.go.build.Build__cleandecls._cleanDecls(_xTestImportPos_55);
                                (@:checkr _p_0 ?? throw "null pointer dereference").xTestImports = @:tmpset0 __tmp__._0;
                                (@:checkr _p_0 ?? throw "null pointer dereference").xTestImportPos = @:tmpset0 __tmp__._1;
                            };
                            if ((((@:checkr _p_0 ?? throw "null pointer dereference").cgoFiles.length) > (0 : stdgo.GoInt) : Bool)) {
                                _gotoNext = 4396876i32;
                            } else {
                                _gotoNext = 4396952i32;
                            };
                            break;
                        } else if (__value__ == (4396876i32)) {
                            (@:checkr _p_0 ?? throw "null pointer dereference").sFiles = ((@:checkr _p_0 ?? throw "null pointer dereference").sFiles.__append__(...(sfiles_47 : Array<stdgo.GoString>)));
                            stdgo._internal.sort.Sort_strings.strings((@:checkr _p_0 ?? throw "null pointer dereference").sFiles);
                            _gotoNext = 4397058i32;
                            break;
                        } else if (__value__ == (4396952i32)) {
                            _gotoNext = 4396952i32;
                            (@:checkr _p_0 ?? throw "null pointer dereference").ignoredOtherFiles = ((@:checkr _p_0 ?? throw "null pointer dereference").ignoredOtherFiles.__append__(...(sfiles_47 : Array<stdgo.GoString>)));
                            stdgo._internal.sort.Sort_strings.strings((@:checkr _p_0 ?? throw "null pointer dereference").ignoredOtherFiles);
                            0i32;
                            _gotoNext = 4397058i32;
                            break;
                        } else if (__value__ == (4397058i32)) {
                            if (_badGoError_44 != null) {
                                _gotoNext = 4397079i32;
                            } else {
                                _gotoNext = 4397108i32;
                            };
                            break;
                        } else if (__value__ == (4397079i32)) {
                            return { _0 : _p_0, _1 : _badGoError_44 };
                            _gotoNext = 4397108i32;
                            break;
                        } else if (__value__ == (4397108i32)) {
                            if ((((((@:checkr _p_0 ?? throw "null pointer dereference").goFiles.length) + ((@:checkr _p_0 ?? throw "null pointer dereference").cgoFiles.length) : stdgo.GoInt) + ((@:checkr _p_0 ?? throw "null pointer dereference").testGoFiles.length) : stdgo.GoInt) + ((@:checkr _p_0 ?? throw "null pointer dereference").xTestGoFiles.length) : stdgo.GoInt) == ((0 : stdgo.GoInt))) {
                                _gotoNext = 4397186i32;
                            } else {
                                _gotoNext = 4397222i32;
                            };
                            break;
                        } else if (__value__ == (4397186i32)) {
                            return { _0 : _p_0, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.go.build.Build_nogoerror.NoGoError((@:checkr _p_0 ?? throw "null pointer dereference").dir?.__copy__()) : stdgo._internal.go.build.Build_nogoerror.NoGoError)) : stdgo.Ref<stdgo._internal.go.build.Build_nogoerror.NoGoError>)) };
                            _gotoNext = 4397222i32;
                            break;
                        } else if (__value__ == (4397222i32)) {
                            return { _0 : _p_0, _1 : _pkgerr_3 };
                            _gotoNext = -1i32;
                            break;
                        };
                    };
                    break;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function importDir( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _dir:stdgo.GoString, _mode:stdgo._internal.go.build.Build_importmode.ImportMode):{ var _0 : stdgo.Ref<stdgo._internal.go.build.Build_package.Package>; var _1 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        return @:check2r _ctxt.import_(("." : stdgo.GoString), _dir?.__copy__(), _mode);
    }
    @:keep
    @:tdfield
    static public function srcDirs( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>):stdgo.Slice<stdgo.GoString> {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _all:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        if ((((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT != (stdgo.Go.str() : stdgo.GoString)) && ((@:checkr _ctxt ?? throw "null pointer dereference").compiler != ("gccgo" : stdgo.GoString)) : Bool)) {
            var _dir = (@:check2r _ctxt._joinPath((@:checkr _ctxt ?? throw "null pointer dereference").gOROOT?.__copy__(), ("src" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (@:check2r _ctxt._isDir(_dir?.__copy__())) {
                _all = (_all.__append__(_dir?.__copy__()));
            };
        };
        for (__0 => _p in @:check2r _ctxt._gopath()) {
            var _dir = (@:check2r _ctxt._joinPath(_p?.__copy__(), ("src" : stdgo.GoString))?.__copy__() : stdgo.GoString);
            if (@:check2r _ctxt._isDir(_dir?.__copy__())) {
                _all = (_all.__append__(_dir?.__copy__()));
            };
        };
        return _all;
    }
    @:keep
    @:tdfield
    static public function _gopath( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>):stdgo.Slice<stdgo.GoString> {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _all:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        for (__0 => _p in @:check2r _ctxt._splitPathList((@:checkr _ctxt ?? throw "null pointer dereference").gOPATH?.__copy__())) {
            if (((_p == (stdgo.Go.str() : stdgo.GoString)) || (_p == (@:checkr _ctxt ?? throw "null pointer dereference").gOROOT) : Bool)) {
                continue;
            };
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_p?.__copy__(), ("~" : stdgo.GoString))) {
                continue;
            };
            _all = (_all.__append__(_p?.__copy__()));
        };
        return _all;
    }
    @:keep
    @:tdfield
    static public function _isFile( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _path:stdgo.GoString):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var __tmp__ = @:check2r _ctxt._openFile(_path?.__copy__()), _f:stdgo._internal.io.Io_readcloser.ReadCloser = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return false;
        };
        _f.close();
        return true;
    }
    @:keep
    @:tdfield
    static public function _openFile( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _path:stdgo.GoString):{ var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        {
            var _fn = ((@:checkr _ctxt ?? throw "null pointer dereference").openFile : stdgo.GoString -> { var _0 : stdgo._internal.io.Io_readcloser.ReadCloser; var _1 : stdgo.Error; });
            if (_fn != null) {
                return _fn(_path?.__copy__());
            };
        };
        var __tmp__ = stdgo._internal.os.Os_open.open(_path?.__copy__()), _f:stdgo.Ref<stdgo._internal.os.Os_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo._internal.io.Io_readcloser.ReadCloser), _1 : _err };
        };
        return { _0 : stdgo.Go.asInterface(_f), _1 : (null : stdgo.Error) };
    }
    @:keep
    @:tdfield
    static public function _readDir( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _path:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>; var _1 : stdgo.Error; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        {
            var _f = ((@:checkr _ctxt ?? throw "null pointer dereference").readDir : stdgo.GoString -> { var _0 : stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo>; var _1 : stdgo.Error; });
            if (_f != null) {
                var __tmp__ = _f(_path?.__copy__()), _fis:stdgo.Slice<stdgo._internal.io.fs.Fs_fileinfo.FileInfo> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>), _1 : _err };
                };
                var _des = (new stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>((_fis.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo._internal.io.fs.Fs_direntry.DirEntry>);
                for (_i => _fi in _fis) {
                    _des[(_i : stdgo.GoInt)] = stdgo._internal.io.fs.Fs_fileinfotodirentry.fileInfoToDirEntry(_fi);
                };
                return { _0 : _des, _1 : (null : stdgo.Error) };
            };
        };
        return stdgo._internal.os.Os_readdir.readDir(_path?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _hasSubdir( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _root:stdgo.GoString, _dir:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        var _rel = ("" : stdgo.GoString), _ok = false;
        {
            var _f = ((@:checkr _ctxt ?? throw "null pointer dereference").hasSubdir : (stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : Bool; });
            if (_f != null) {
                return _f(_root?.__copy__(), _dir?.__copy__());
            };
        };
        {
            {
                var __tmp__ = stdgo._internal.go.build.Build__hassubdir._hasSubdir(_root?.__copy__(), _dir?.__copy__());
                _rel = @:tmpset0 __tmp__._0?.__copy__();
                _ok = @:tmpset0 __tmp__._1;
            };
            if (_ok) {
                return { _0 : _rel, _1 : _ok };
            };
        };
        var __tmp__ = stdgo._internal.path.filepath.Filepath_evalsymlinks.evalSymlinks(_root?.__copy__()), _rootSym:stdgo.GoString = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        var __tmp__ = stdgo._internal.path.filepath.Filepath_evalsymlinks.evalSymlinks(_dir?.__copy__()), _dirSym:stdgo.GoString = __tmp__._0, __1:stdgo.Error = __tmp__._1;
        {
            {
                var __tmp__ = stdgo._internal.go.build.Build__hassubdir._hasSubdir(_rootSym?.__copy__(), _dir?.__copy__());
                _rel = @:tmpset0 __tmp__._0?.__copy__();
                _ok = @:tmpset0 __tmp__._1;
            };
            if (_ok) {
                return { _0 : _rel, _1 : _ok };
            };
        };
        {
            {
                var __tmp__ = stdgo._internal.go.build.Build__hassubdir._hasSubdir(_root?.__copy__(), _dirSym?.__copy__());
                _rel = @:tmpset0 __tmp__._0?.__copy__();
                _ok = @:tmpset0 __tmp__._1;
            };
            if (_ok) {
                return { _0 : _rel, _1 : _ok };
            };
        };
        return stdgo._internal.go.build.Build__hassubdir._hasSubdir(_rootSym?.__copy__(), _dirSym?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _isDir( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _path:stdgo.GoString):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        {
            var _f = ((@:checkr _ctxt ?? throw "null pointer dereference").isDir : stdgo.GoString -> Bool);
            if (_f != null) {
                return _f(_path?.__copy__());
            };
        };
        var __tmp__ = stdgo._internal.os.Os_stat.stat(_path?.__copy__()), _fi:stdgo._internal.io.fs.Fs_fileinfo.FileInfo = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        return ((_err == null) && _fi.isDir() : Bool);
    }
    @:keep
    @:tdfield
    static public function _isAbsPath( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _path:stdgo.GoString):Bool {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        {
            var _f = ((@:checkr _ctxt ?? throw "null pointer dereference").isAbsPath : stdgo.GoString -> Bool);
            if (_f != null) {
                return _f(_path?.__copy__());
            };
        };
        return stdgo._internal.path.filepath.Filepath_isabs.isAbs(_path?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _splitPathList( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _s:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        {
            var _f = (@:checkr _ctxt ?? throw "null pointer dereference").splitPathList;
            if (_f != null) {
                return _f(_s?.__copy__());
            };
        };
        return stdgo._internal.path.filepath.Filepath_splitlist.splitList(_s?.__copy__());
    }
    @:keep
    @:tdfield
    static public function _joinPath( _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context>, _elem:haxe.Rest<stdgo.GoString>):stdgo.GoString {
        var _elem = new stdgo.Slice<stdgo.GoString>(_elem.length, 0, ..._elem);
        @:recv var _ctxt:stdgo.Ref<stdgo._internal.go.build.Build_context.Context> = _ctxt;
        {
            var _f = (@:checkr _ctxt ?? throw "null pointer dereference").joinPath;
            if (_f != null) {
                return _f(...(_elem : Array<stdgo.GoString>))?.__copy__();
            };
        };
        return stdgo._internal.path.filepath.Filepath_join.join(...(_elem : Array<stdgo.GoString>))?.__copy__();
    }
}
