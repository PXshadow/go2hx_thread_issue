package stdgo._internal.go.token;
function testFileSetRace2(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet(), _file = @:check2r _fset.addFile((stdgo.Go.str() : stdgo.GoString)?.__copy__(), (-1 : stdgo.GoInt), (1000 : stdgo.GoInt)), _ch = (new stdgo.Chan<stdgo.GoInt>((2 : stdgo.GoInt).toBasic(), () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>);
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (1000 : stdgo.GoInt) : Bool)) {
                        @:check2r _file.addLine(_i);
                        _i++;
                    };
                };
                _ch.__send__((1 : stdgo.GoInt));
            };
            a();
        }));
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                var _pos = (@:check2r _file.pos((0 : stdgo.GoInt)) : stdgo._internal.go.token.Token_pos.Pos);
                {
                    var _i = (0 : stdgo.GoInt);
                    while ((_i < (1000 : stdgo.GoInt) : Bool)) {
                        @:check2r _fset.positionFor(_pos, false);
                        _i++;
                    };
                };
                _ch.__send__((1 : stdgo.GoInt));
            };
            a();
        }));
        _ch.__get__();
        _ch.__get__();
    }
