package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_deadlinetimer_static_extension.T_deadlineTimer_static_extension) class T_deadlineTimer {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_deadlineTimer();
    }
}
