package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_responsewriter_static_extension.ResponseWriter_static_extension) class ResponseWriter {
    public function new() {}
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ResponseWriter();
    }
}
