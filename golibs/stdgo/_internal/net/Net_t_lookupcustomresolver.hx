package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_lookupcustomresolver_static_extension.T_lookupCustomResolver_static_extension) class T_lookupCustomResolver {
    @:embedded
    public var resolver : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver> = (null : stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>);
    public function new(?resolver:stdgo.Ref<stdgo._internal.net.Net_resolver.Resolver>) {
        if (resolver != null) this.resolver = resolver;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var lookupAddr(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_lookupAddr():(stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:check32 this.resolver.lookupAddr;
    public var lookupCNAME(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_lookupCNAME():(stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:check32 this.resolver.lookupCNAME;
    public var lookupHost(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_lookupHost():(stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:check32 this.resolver.lookupHost;
    public var lookupIP(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo._internal.net.Net_ip.IP>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_lookupIP():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo._internal.net.Net_ip.IP>; var _1 : stdgo.Error; } return @:check32 this.resolver.lookupIP;
    public var lookupIPAddr(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_lookupIPAddr():(stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } return @:check32 this.resolver.lookupIPAddr;
    public var lookupMX(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_lookupMX():(stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; } return @:check32 this.resolver.lookupMX;
    public var lookupNS(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_lookupNS():(stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; } return @:check32 this.resolver.lookupNS;
    public var lookupNetIP(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo._internal.net.netip.Netip_addr.Addr>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_lookupNetIP():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo._internal.net.netip.Netip_addr.Addr>; var _1 : stdgo.Error; } return @:check32 this.resolver.lookupNetIP;
    public var lookupPort(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_lookupPort():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this.resolver.lookupPort;
    public var lookupSRV(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_lookupSRV():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } return @:check32 this.resolver.lookupSRV;
    public var lookupTXT(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_lookupTXT():(stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:check32 this.resolver.lookupTXT;
    public var _exchange(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question, stdgo._internal.time.Time_duration.Duration, Bool, Bool) -> { var _0 : _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser; var _1 : _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__exchange():(stdgo._internal.context.Context_context.Context, stdgo.GoString, _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question, stdgo._internal.time.Time_duration.Duration, Bool, Bool) -> { var _0 : _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser; var _1 : _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header; var _2 : stdgo.Error; } return @:check32 this.resolver._exchange;
    public var _getLookupGroup(get, never) : () -> stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_group.Group>;
    @:embedded
    @:embeddededffieldsffun
    public function get__getLookupGroup():() -> stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_group.Group> return @:check32 this.resolver._getLookupGroup;
    public var _goLookupCNAME(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo._internal.net.Net_t_hostlookuporder.T_hostLookupOrder, stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>) -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__goLookupCNAME():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo._internal.net.Net_t_hostlookuporder.T_hostLookupOrder, stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>) -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:check32 this.resolver._goLookupCNAME;
    public var _goLookupHostOrder(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo._internal.net.Net_t_hostlookuporder.T_hostLookupOrder, stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>) -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__goLookupHostOrder():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo._internal.net.Net_t_hostlookuporder.T_hostLookupOrder, stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>) -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:check32 this.resolver._goLookupHostOrder;
    public var _goLookupIP(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.net.Net_t_hostlookuporder.T_hostLookupOrder, stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>) -> { var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__goLookupIP():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.net.Net_t_hostlookuporder.T_hostLookupOrder, stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>) -> { var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } return @:check32 this.resolver._goLookupIP;
    public var _goLookupIPCNAMEOrder(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.net.Net_t_hostlookuporder.T_hostLookupOrder, stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>) -> { var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__goLookupIPCNAMEOrder():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo._internal.net.Net_t_hostlookuporder.T_hostLookupOrder, stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>) -> { var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name; var _2 : stdgo.Error; } return @:check32 this.resolver._goLookupIPCNAMEOrder;
    public var _goLookupMX(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__goLookupMX():(stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; } return @:check32 this.resolver._goLookupMX;
    public var _goLookupNS(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__goLookupNS():(stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; } return @:check32 this.resolver._goLookupNS;
    public var _goLookupPTR(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo._internal.net.Net_t_hostlookuporder.T_hostLookupOrder, stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>) -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__goLookupPTR():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo._internal.net.Net_t_hostlookuporder.T_hostLookupOrder, stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>) -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:check32 this.resolver._goLookupPTR;
    public var _goLookupSRV(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__goLookupSRV():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } return @:check32 this.resolver._goLookupSRV;
    public var _goLookupTXT(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__goLookupTXT():(stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:check32 this.resolver._goLookupTXT;
    public var _internetAddrList(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_t_addrlist.T_addrList; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__internetAddrList():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo._internal.net.Net_t_addrlist.T_addrList; var _1 : stdgo.Error; } return @:check32 this.resolver._internetAddrList;
    public var _lookup(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_, stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>) -> { var _0 : _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser; var _1 : stdgo.GoString; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__lookup():(stdgo._internal.context.Context_context.Context, stdgo.GoString, _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_, stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>) -> { var _0 : _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return @:check32 this.resolver._lookup;
    public var _lookupAddr(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__lookupAddr():(stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:check32 this.resolver._lookupAddr;
    public var _lookupCNAME(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__lookupCNAME():(stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:check32 this.resolver._lookupCNAME;
    public var _lookupHost(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__lookupHost():(stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:check32 this.resolver._lookupHost;
    public var _lookupIP(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__lookupIP():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } return @:check32 this.resolver._lookupIP;
    public var _lookupIPAddr(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__lookupIPAddr():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } return @:check32 this.resolver._lookupIPAddr;
    public var _lookupMX(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__lookupMX():(stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; } return @:check32 this.resolver._lookupMX;
    public var _lookupNS(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__lookupNS():(stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; } return @:check32 this.resolver._lookupNS;
    public var _lookupPort(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__lookupPort():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this.resolver._lookupPort;
    public var _lookupSRV(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__lookupSRV():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo.GoString) -> { var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } return @:check32 this.resolver._lookupSRV;
    public var _lookupTXT(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__lookupTXT():(stdgo._internal.context.Context_context.Context, stdgo.GoString) -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:check32 this.resolver._lookupTXT;
    public var _preferGo(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__preferGo():() -> Bool return @:check32 this.resolver._preferGo;
    public var _resolveAddrList(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo.GoString, stdgo._internal.net.Net_addr.Addr) -> { var _0 : stdgo._internal.net.Net_t_addrlist.T_addrList; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__resolveAddrList():(stdgo._internal.context.Context_context.Context, stdgo.GoString, stdgo.GoString, stdgo.GoString, stdgo._internal.net.Net_addr.Addr) -> { var _0 : stdgo._internal.net.Net_t_addrlist.T_addrList; var _1 : stdgo.Error; } return @:check32 this.resolver._resolveAddrList;
    public var _strictErrors(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__strictErrors():() -> Bool return @:check32 this.resolver._strictErrors;
    public var _tryOneName(get, never) : (stdgo._internal.context.Context_context.Context, stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>, stdgo.GoString, _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_) -> { var _0 : _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser; var _1 : stdgo.GoString; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__tryOneName():(stdgo._internal.context.Context_context.Context, stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>, stdgo.GoString, _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_) -> { var _0 : _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return @:check32 this.resolver._tryOneName;
    public function __copy__() {
        return new T_lookupCustomResolver(resolver);
    }
}
