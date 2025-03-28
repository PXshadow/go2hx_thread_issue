package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.T_lookupCustomResolver_asInterface) class T_lookupCustomResolver_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function _tryOneName( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>, _2:stdgo.GoString, _3:_internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_):{ var _0 : _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return @:_5 __self__._tryOneName(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public static function _strictErrors( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver):Bool return @:_5 __self__._strictErrors();
    @:embedded
    @:embeddededffieldsffun
    public static function _resolveAddrList( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString, _3:stdgo.GoString, _4:stdgo._internal.net.Net_addr.Addr):{ var _0 : stdgo._internal.net.Net_t_addrlist.T_addrList; var _1 : stdgo.Error; } return @:_5 __self__._resolveAddrList(_0, _1, _2, _3, _4);
    @:embedded
    @:embeddededffieldsffun
    public static function _preferGo( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver):Bool return @:_5 __self__._preferGo();
    @:embedded
    @:embeddededffieldsffun
    public static function _lookupTXT( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_5 __self__._lookupTXT(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _lookupSRV( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString, _3:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } return @:_5 __self__._lookupSRV(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public static function _lookupPort( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__._lookupPort(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _lookupNS( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; } return @:_5 __self__._lookupNS(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _lookupMX( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; } return @:_5 __self__._lookupMX(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _lookupIPAddr( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } return @:_5 __self__._lookupIPAddr(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _lookupIP( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } return @:_5 __self__._lookupIP(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _lookupHost( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_5 __self__._lookupHost(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _lookupCNAME( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_5 __self__._lookupCNAME(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _lookupAddr( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_5 __self__._lookupAddr(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _lookup( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:_internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_type_.Type_, _3:stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>):{ var _0 : _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser; var _1 : stdgo.GoString; var _2 : stdgo.Error; } return @:_5 __self__._lookup(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public static function _internetAddrList( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo._internal.net.Net_t_addrlist.T_addrList; var _1 : stdgo.Error; } return @:_5 __self__._internetAddrList(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function _goLookupTXT( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_5 __self__._goLookupTXT(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _goLookupSRV( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString, _3:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } return @:_5 __self__._goLookupSRV(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public static function _goLookupPTR( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo._internal.net.Net_t_hostlookuporder.T_hostLookupOrder, _3:stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_5 __self__._goLookupPTR(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public static function _goLookupNS( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; } return @:_5 __self__._goLookupNS(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _goLookupMX( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; } return @:_5 __self__._goLookupMX(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _goLookupIPCNAMEOrder( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString, _3:stdgo._internal.net.Net_t_hostlookuporder.T_hostLookupOrder, _4:stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_name.Name; var _2 : stdgo.Error; } return @:_5 __self__._goLookupIPCNAMEOrder(_0, _1, _2, _3, _4);
    @:embedded
    @:embeddededffieldsffun
    public static function _goLookupIP( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString, _3:stdgo._internal.net.Net_t_hostlookuporder.T_hostLookupOrder, _4:stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } return @:_5 __self__._goLookupIP(_0, _1, _2, _3, _4);
    @:embedded
    @:embeddededffieldsffun
    public static function _goLookupHostOrder( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo._internal.net.Net_t_hostlookuporder.T_hostLookupOrder, _3:stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_5 __self__._goLookupHostOrder(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public static function _goLookupCNAME( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo._internal.net.Net_t_hostlookuporder.T_hostLookupOrder, _3:stdgo.Ref<stdgo._internal.net.Net_t_dnsconfig.T_dnsConfig>):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_5 __self__._goLookupCNAME(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public static function _getLookupGroup( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver):stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_group.Group> return @:_5 __self__._getLookupGroup();
    @:embedded
    @:embeddededffieldsffun
    public static function _exchange( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:_internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_question.Question, _3:stdgo._internal.time.Time_duration.Duration, _4:Bool, _5:Bool):{ var _0 : _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_parser.Parser; var _1 : _internal.vendor.golangdotorg.x.net.dns.dnsmessage.Dnsmessage_header.Header; var _2 : stdgo.Error; } return @:_5 __self__._exchange(_0, _1, _2, _3, _4, _5);
    @:embedded
    @:embeddededffieldsffun
    public static function lookupTXT( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_5 __self__.lookupTXT(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function lookupSRV( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString, _3:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_srv.SRV>>; var _2 : stdgo.Error; } return @:_5 __self__.lookupSRV(_0, _1, _2, _3);
    @:embedded
    @:embeddededffieldsffun
    public static function lookupPort( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.lookupPort(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function lookupNetIP( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.netip.Netip_addr.Addr>; var _1 : stdgo.Error; } return @:_5 __self__.lookupNetIP(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function lookupNS( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ns.NS>>; var _1 : stdgo.Error; } return @:_5 __self__.lookupNS(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function lookupMX( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_mx.MX>>; var _1 : stdgo.Error; } return @:_5 __self__.lookupMX(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function lookupIPAddr( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ipaddr.IPAddr>; var _1 : stdgo.Error; } return @:_5 __self__.lookupIPAddr(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function lookupIP( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString, _2:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo._internal.net.Net_ip.IP>; var _1 : stdgo.Error; } return @:_5 __self__.lookupIP(_0, _1, _2);
    @:embedded
    @:embeddededffieldsffun
    public static function lookupHost( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_5 __self__.lookupHost(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function lookupCNAME( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } return @:_5 __self__.lookupCNAME(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function lookupAddr( __self__:stdgo._internal.net.Net_t_lookupcustomresolver.T_lookupCustomResolver, _0:stdgo._internal.context.Context_context.Context, _1:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_5 __self__.lookupAddr(_0, _1);
}
