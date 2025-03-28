package _internal;
import stdgo._internal.sync.Sync;
class Channel_asInterface {
    @:keep
    @:tdfield
    public dynamic function close():Void @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function receive():stdgo.GoInt return @:_0 __self__.value.receive();
    @:keep
    @:tdfield
    public dynamic function send(_value:stdgo.GoInt):Void @:_0 __self__.value.send(_value);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : _internal.Main_channelpointer.ChannelPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
