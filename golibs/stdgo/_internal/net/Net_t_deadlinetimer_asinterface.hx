package stdgo._internal.net;
class T_deadlineTimer_asInterface {
    @:keep
    @:tdfield
    public dynamic function reset(_deadline:stdgo._internal.time.Time_time.Time):Bool return @:_0 __self__.value.reset(_deadline);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_t_deadlinetimerpointer.T_deadlineTimerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
