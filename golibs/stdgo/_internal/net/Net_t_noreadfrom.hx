package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_noreadfrom_static_extension.T_noReadFrom_static_extension) class T_noReadFrom {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_noReadFrom();
    }
}
