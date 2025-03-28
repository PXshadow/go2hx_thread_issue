package stdgo._internal.net;
@:interface typedef T_sockaddr = stdgo.StructType & {
    public function network():stdgo.GoString;
    public function string():stdgo.GoString;
};
