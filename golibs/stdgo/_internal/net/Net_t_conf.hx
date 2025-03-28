package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_conf_static_extension.T_conf_static_extension) class T_conf {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_conf();
    }
}
