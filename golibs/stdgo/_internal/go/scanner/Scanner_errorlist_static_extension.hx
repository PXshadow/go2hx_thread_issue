package stdgo._internal.go.scanner;
@:keep @:allow(stdgo._internal.go.scanner.Scanner.ErrorList_asInterface) class ErrorList_static_extension {
    @:keep
    @:tdfield
    static public function err( _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList):stdgo.Error {
        @:recv var _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList = _p;
        if ((_p.length) == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Error);
        };
        return stdgo.Go.asInterface(_p);
    }
    @:keep
    @:tdfield
    static public function error( _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList):stdgo.GoString {
        @:recv var _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList = _p;
        {
            final __value__ = (_p.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                return ("no errors" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                return (@:checkr _p[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").error()?.__copy__();
            };
        };
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("%s (and %d more errors)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_p[(0 : stdgo.GoInt)])), stdgo.Go.toInterface(((_p.length) - (1 : stdgo.GoInt) : stdgo.GoInt)))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function removeMultiples( _p:stdgo.Ref<stdgo._internal.go.scanner.Scanner_errorlist.ErrorList>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.scanner.Scanner_errorlist.ErrorList> = _p;
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_p));
        var _last:stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position);
        var _i = (0 : stdgo.GoInt);
        for (__0 => _e in (_p : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList)) {
            if ((((@:checkr _e ?? throw "null pointer dereference").pos.filename != _last.filename) || ((@:checkr _e ?? throw "null pointer dereference").pos.line != _last.line) : Bool)) {
                _last = (@:checkr _e ?? throw "null pointer dereference").pos?.__copy__();
                ((_p : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList))[(_i : stdgo.GoInt)] = _e;
                _i++;
            };
        };
        (_p : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList).__setData__((((_p : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList)).__slice__((0 : stdgo.GoInt), _i) : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList));
    }
    @:keep
    @:tdfield
    static public function sort( _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList):Void {
        @:recv var _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList = _p;
        stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_p));
    }
    @:keep
    @:tdfield
    static public function less( _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList = _p;
        var _e = (stdgo.Go.setRef((@:checkr _p[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").pos) : stdgo.Ref<stdgo._internal.go.token.Token_position.Position>);
        var _f = (stdgo.Go.setRef((@:checkr _p[(_j : stdgo.GoInt)] ?? throw "null pointer dereference").pos) : stdgo.Ref<stdgo._internal.go.token.Token_position.Position>);
        if ((@:checkr _e ?? throw "null pointer dereference").filename != ((@:checkr _f ?? throw "null pointer dereference").filename)) {
            return ((@:checkr _e ?? throw "null pointer dereference").filename < (@:checkr _f ?? throw "null pointer dereference").filename : Bool);
        };
        if ((@:checkr _e ?? throw "null pointer dereference").line != ((@:checkr _f ?? throw "null pointer dereference").line)) {
            return ((@:checkr _e ?? throw "null pointer dereference").line < (@:checkr _f ?? throw "null pointer dereference").line : Bool);
        };
        if ((@:checkr _e ?? throw "null pointer dereference").column != ((@:checkr _f ?? throw "null pointer dereference").column)) {
            return ((@:checkr _e ?? throw "null pointer dereference").column < (@:checkr _f ?? throw "null pointer dereference").column : Bool);
        };
        return ((@:checkr _p[(_i : stdgo.GoInt)] ?? throw "null pointer dereference").msg < (@:checkr _p[(_j : stdgo.GoInt)] ?? throw "null pointer dereference").msg : Bool);
    }
    @:keep
    @:tdfield
    static public function swap( _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList = _p;
        {
            final __tmp__0 = _p[(_j : stdgo.GoInt)];
            final __tmp__1 = _p[(_i : stdgo.GoInt)];
            final __tmp__2 = _p;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _p;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
            __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function len( _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList):stdgo.GoInt {
        @:recv var _p:stdgo._internal.go.scanner.Scanner_errorlist.ErrorList = _p;
        return (_p.length);
    }
    @:keep
    @:tdfield
    static public function reset( _p:stdgo.Ref<stdgo._internal.go.scanner.Scanner_errorlist.ErrorList>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.scanner.Scanner_errorlist.ErrorList> = _p;
        (_p : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList).__setData__((((_p : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList)).__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList));
    }
    @:keep
    @:tdfield
    static public function add( _p:stdgo.Ref<stdgo._internal.go.scanner.Scanner_errorlist.ErrorList>, _pos:stdgo._internal.go.token.Token_position.Position, _msg:stdgo.GoString):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.go.scanner.Scanner_errorlist.ErrorList> = _p;
        (_p : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList).__setData__(((_p : stdgo._internal.go.scanner.Scanner_errorlist.ErrorList).__append__((stdgo.Go.setRef((new stdgo._internal.go.scanner.Scanner_error.Error(_pos?.__copy__(), _msg?.__copy__()) : stdgo._internal.go.scanner.Scanner_error.Error)) : stdgo.Ref<stdgo._internal.go.scanner.Scanner_error.Error>))));
    }
}
