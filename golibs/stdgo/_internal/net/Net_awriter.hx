package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_awriter_static_extension.AWriter_static_extension) class AWriter {
    @:embedded
    public var responseWriter : stdgo._internal.net.Net_responsewriter.ResponseWriter = ({} : stdgo._internal.net.Net_responsewriter.ResponseWriter);
    public function new(?responseWriter:stdgo._internal.net.Net_responsewriter.ResponseWriter) {
        if (responseWriter != null) this.responseWriter = responseWriter;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var setTTL(get, never) : stdgo.GoUInt32 -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_setTTL():stdgo.GoUInt32 -> Void return @:check31 (this.responseWriter ?? throw "null pointer dereference").setTTL;
    public var _header(get, never) : () -> _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader;
    @:embedded
    @:embeddededffieldsffun
    public function get__header():() -> _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_resourceheader.ResourceHeader return @:check31 (this.responseWriter ?? throw "null pointer dereference")._header;
    public function __copy__() {
        return new AWriter(responseWriter);
    }
}
