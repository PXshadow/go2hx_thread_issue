package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_keepaliveconfig_static_extension.KeepAliveConfig_static_extension) class KeepAliveConfig {
    public var enable : Bool = false;
    public var idle : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var interval : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var count : stdgo.GoInt = 0;
    public function new(?enable:Bool, ?idle:stdgo._internal.time.Time_duration.Duration, ?interval:stdgo._internal.time.Time_duration.Duration, ?count:stdgo.GoInt) {
        if (enable != null) this.enable = enable;
        if (idle != null) this.idle = idle;
        if (interval != null) this.interval = interval;
        if (count != null) this.count = count;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new KeepAliveConfig(enable, idle, interval, count);
    }
}
