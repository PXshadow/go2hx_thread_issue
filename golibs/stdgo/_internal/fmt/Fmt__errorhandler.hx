package stdgo._internal.fmt;
function _errorHandler(_errp:stdgo.Ref<stdgo.Error>):Void {
        {
            var _e = ({
                final r = stdgo.Go.recover_exception;
                stdgo.Go.recover_exception = null;
                r;
            } : stdgo.AnyInterface);
            if (_e != null) {
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert((_e : stdgo._internal.fmt.Fmt_t_scanerror.T_scanError)) : stdgo._internal.fmt.Fmt_t_scanerror.T_scanError), _1 : true };
                    } catch(_) {
                        { _0 : ({} : stdgo._internal.fmt.Fmt_t_scanerror.T_scanError), _1 : false };
                    }, _se = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        {
                            var __tmp__ = _se._err;
                            var x = (_errp : stdgo.Error);
                            x.error = __tmp__.error;
                        };
                    } else {
                        var __tmp__ = try {
                            { _0 : (stdgo.Go.typeAssert((_e : stdgo.Error)) : stdgo.Error), _1 : true };
                        } catch(_) {
                            { _0 : (null : stdgo.Error), _1 : false };
                        }, _eof = __tmp__._0, _ok = __tmp__._1;
                        if ((_ok && (new stdgo.AnyInterface(_eof, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo.Error", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null }))) == new stdgo.AnyInterface(stdgo._internal.io.Io_eof.eOF, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo.Error", [], stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(false, []), false, { get : () -> null })))) : Bool)) {
                            {
                                var __tmp__ = _eof;
                                var x = (_errp : stdgo.Error);
                                x.error = __tmp__.error;
                            };
                        } else {
                            throw new stdgo.AnyInterface(_e, new stdgo._internal.internal.reflect.Reflect._Type(stdgo._internal.internal.reflect.Reflect.GoType.interfaceType(true, [])));
                        };
                    };
                };
            };
        };
    }
