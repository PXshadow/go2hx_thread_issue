package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_resolverdialhandler_static_extension.T_resolverDialHandler_static_extension) class T_resolverDialHandler {
    public var startDial : (stdgo.GoString, stdgo.GoString) -> stdgo.Error = null;
    public var question : (_internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header, _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question) -> Void = null;
    public var handleA : (stdgo._internal.net.Net_awriter.AWriter, stdgo.GoString) -> stdgo.Error = null;
    public var handleAAAA : (stdgo._internal.net.Net_aaaawriter.AAAAWriter, stdgo.GoString) -> stdgo.Error = null;
    public var handleSRV : (stdgo._internal.net.Net_srvwriter.SRVWriter, stdgo.GoString) -> stdgo.Error = null;
    public function new(?startDial:(stdgo.GoString, stdgo.GoString) -> stdgo.Error, ?question:(_internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header, _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question) -> Void, ?handleA:(stdgo._internal.net.Net_awriter.AWriter, stdgo.GoString) -> stdgo.Error, ?handleAAAA:(stdgo._internal.net.Net_aaaawriter.AAAAWriter, stdgo.GoString) -> stdgo.Error, ?handleSRV:(stdgo._internal.net.Net_srvwriter.SRVWriter, stdgo.GoString) -> stdgo.Error) {
        if (startDial != null) this.startDial = startDial;
        if (question != null) this.question = question;
        if (handleA != null) this.handleA = handleA;
        if (handleAAAA != null) this.handleAAAA = handleAAAA;
        if (handleSRV != null) this.handleSRV = handleSRV;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_resolverDialHandler(startDial, question, handleA, handleAAAA, handleSRV);
    }
}
