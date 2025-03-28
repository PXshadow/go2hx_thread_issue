package stdgo._internal.net;
class T_tcpConnWithoutWriteTo_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _writeTo(_0:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value._writeTo(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _readFrom(_0:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value._readFrom(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _ok():Bool return @:_0 __self__.value._ok();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function syscallConn():{ var _0 : stdgo._internal.syscall.Syscall_rawconn.RawConn; var _1 : stdgo.Error; } return @:_0 __self__.value.syscallConn();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setWriteDeadline(_0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setWriteDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setWriteBuffer(_0:stdgo.GoInt):stdgo.Error return @:_0 __self__.value.setWriteBuffer(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setReadDeadline(_0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setReadDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setReadBuffer(_0:stdgo.GoInt):stdgo.Error return @:_0 __self__.value.setReadBuffer(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setNoDelay(_0:Bool):stdgo.Error return @:_0 __self__.value.setNoDelay(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setLinger(_0:stdgo.GoInt):stdgo.Error return @:_0 __self__.value.setLinger(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setKeepAlivePeriod(_0:stdgo._internal.time.Time_duration.Duration):stdgo.Error return @:_0 __self__.value.setKeepAlivePeriod(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setKeepAliveConfig(_0:stdgo._internal.net.Net_keepaliveconfig.KeepAliveConfig):stdgo.Error return @:_0 __self__.value.setKeepAliveConfig(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setKeepAlive(_0:Bool):stdgo.Error return @:_0 __self__.value.setKeepAlive(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function setDeadline(_0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function remoteAddr():stdgo._internal.net.Net_addr.Addr return @:_0 __self__.value.remoteAddr();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readFrom(_0:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value.readFrom(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function multipathTCP():{ var _0 : Bool; var _1 : stdgo.Error; } return @:_0 __self__.value.multipathTCP();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function localAddr():stdgo._internal.net.Net_addr.Addr return @:_0 __self__.value.localAddr();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function file():{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:_0 __self__.value.file();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function closeWrite():stdgo.Error return @:_0 __self__.value.closeWrite();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function closeRead():stdgo.Error return @:_0 __self__.value.closeRead();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.Net_t_tcpconnwithoutwritetopointer.T_tcpConnWithoutWriteToPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
