package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_contextwithnonzerodeadline_static_extension.T_contextWithNonZeroDeadline_static_extension) class T_contextWithNonZeroDeadline {
    @:embedded
    public var context : stdgo._internal.context.Context_context.Context = (null : stdgo._internal.context.Context_context.Context);
    public function new(?context:stdgo._internal.context.Context_context.Context) {
        if (context != null) this.context = context;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var done(get, never) : () -> stdgo.Chan<{ }>;
    @:embedded
    @:embeddededffieldsffun
    public function get_done():() -> stdgo.Chan<{ }> return @:check31 (this.context ?? throw "null pointer dereference").done;
    public var err(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_err():() -> stdgo.Error return @:check31 (this.context ?? throw "null pointer dereference").err;
    public var value(get, never) : stdgo.AnyInterface -> stdgo.AnyInterface;
    @:embedded
    @:embeddededffieldsffun
    public function get_value():stdgo.AnyInterface -> stdgo.AnyInterface return @:check31 (this.context ?? throw "null pointer dereference").value;
    public function __copy__() {
        return new T_contextWithNonZeroDeadline(context);
    }
}
