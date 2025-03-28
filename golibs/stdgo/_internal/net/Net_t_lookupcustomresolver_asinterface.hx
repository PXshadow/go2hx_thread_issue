package stdgo._internal.net;
class T_lookupCustomResolver_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _tryOneName(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>, _2:stdgo.GoString, _3:_internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_):{ var _0 : _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return @:_0 __self__.value._tryOneName(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _strictErrors():Bool return @:_0 __self__.value._strictErrors();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _resolveAddrList(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString, _3:stdgo.GoString, _4:stdgo._internal.net.Net_addr.Addr):{ var _0 : stdgo._internal.net.Net_t_addrlist.T_addrList; var _1 : stdgo.Error; } return @:_0 __self__.value._resolveAddrList(_0, _1, _2, _3, _4);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _preferGo():Bool return @:_0 __self__.value._preferGo();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _lookupTXT(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value._lookupTXT(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _lookupSRV(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString, _3:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } return @:_0 __self__.value._lookupSRV(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _lookupPort(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value._lookupPort(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _lookupNS(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; } return @:_0 __self__.value._lookupNS(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _lookupMX(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; } return @:_0 __self__.value._lookupMX(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _lookupIPAddr(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } return @:_0 __self__.value._lookupIPAddr(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _lookupIP(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } return @:_0 __self__.value._lookupIP(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _lookupHost(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value._lookupHost(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _lookupCNAME(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value._lookupCNAME(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _lookupAddr(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value._lookupAddr(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _lookup(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:_internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_, _3:stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>):{ var _0 : _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return @:_0 __self__.value._lookup(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _internetAddrList(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_t_addrlist.T_addrList; var _1 : stdgo.Error; } return @:_0 __self__.value._internetAddrList(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _goLookupTXT(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value._goLookupTXT(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _goLookupSRV(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString, _3:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } return @:_0 __self__.value._goLookupSRV(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _goLookupPTR(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo._internal.net.Net_t_hostlookuporder.T_hostLookupOrder, _3:stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value._goLookupPTR(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _goLookupNS(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; } return @:_0 __self__.value._goLookupNS(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _goLookupMX(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; } return @:_0 __self__.value._goLookupMX(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _goLookupIPCNAMEOrder(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString, _3:stdgo._internal.net.Net_t_hostlookuporder.T_hostLookupOrder, _4:stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name; var _2 : stdgo.Error; } return @:_0 __self__.value._goLookupIPCNAMEOrder(_0, _1, _2, _3, _4);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _goLookupIP(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString, _3:stdgo._internal.net.Net_t_hostlookuporder.T_hostLookupOrder, _4:stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } return @:_0 __self__.value._goLookupIP(_0, _1, _2, _3, _4);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _goLookupHostOrder(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo._internal.net.Net_t_hostlookuporder.T_hostLookupOrder, _3:stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value._goLookupHostOrder(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _goLookupCNAME(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo._internal.net.Net_t_hostlookuporder.T_hostLookupOrder, _3:stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value._goLookupCNAME(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _getLookupGroup():stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_group.Group> return @:_0 __self__.value._getLookupGroup();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _exchange(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:_internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question, _3:stdgo._internal.time.Time_duration.Duration, _4:Bool, _5:Bool):{ var _0 : _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser; var _1 : _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header; var _2 : stdgo.Error; } return @:_0 __self__.value._exchange(_0, _1, _2, _3, _4, _5);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function lookupTXT(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupTXT(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function lookupSRV(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString, _3:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } return @:_0 __self__.value.lookupSRV(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function lookupPort(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupPort(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function lookupNetIP(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.netip.Netip_addr.Addr>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupNetIP(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function lookupNS(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupNS(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function lookupMX(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupMX(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function lookupIPAddr(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupIPAddr(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function lookupIP(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ip.IP>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupIP(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function lookupHost(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupHost(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function lookupCNAME(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupCNAME(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function lookupAddr(_0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.lookupAddr(_0, _1);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_t_lookupcustomresolverpointer.T_lookupCustomResolverPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
