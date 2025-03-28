package stdgo._internal.net;
@:keep @:allow(stdgo._internal.net.Net.T_tcpConnWithoutWriteTo_asInterface) class T_tcpConnWithoutWriteTo_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function _writeTo( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo, _0:stdgo._internal.io.Io_writer.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_5 __self__._writeTo(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _readFrom( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo, _0:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_5 __self__._readFrom(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function _ok( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo):Bool return @:_5 __self__._ok();
    @:embedded
    @:embeddededffieldsffun
    public static function write( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.write(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function syscallConn( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo):{ var _0 : stdgo._internal.syscall.Syscall_rawconn.RawConn; var _1 : stdgo.Error; } return @:_5 __self__.syscallConn();
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteDeadline( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setWriteDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setWriteBuffer( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo, _0:stdgo.GoInt):stdgo.Error return @:_5 __self__.setWriteBuffer(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadDeadline( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setReadDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setReadBuffer( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo, _0:stdgo.GoInt):stdgo.Error return @:_5 __self__.setReadBuffer(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setNoDelay( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo, _0:Bool):stdgo.Error return @:_5 __self__.setNoDelay(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setLinger( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo, _0:stdgo.GoInt):stdgo.Error return @:_5 __self__.setLinger(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setKeepAlivePeriod( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo, _0:stdgo._internal.time.Time_duration.Duration):stdgo.Error return @:_5 __self__.setKeepAlivePeriod(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setKeepAliveConfig( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo, _0:stdgo._internal.net.Net_keepaliveconfig.KeepAliveConfig):stdgo.Error return @:_5 __self__.setKeepAliveConfig(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setKeepAlive( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo, _0:Bool):stdgo.Error return @:_5 __self__.setKeepAlive(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function setDeadline( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo, _0:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_5 __self__.setDeadline(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function remoteAddr( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.remoteAddr();
    @:embedded
    @:embeddededffieldsffun
    public static function readFrom( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo, _0:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_5 __self__.readFrom(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function read( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo, _0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_5 __self__.read(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function multipathTCP( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo):{ var _0 : Bool; var _1 : stdgo.Error; } return @:_5 __self__.multipathTCP();
    @:embedded
    @:embeddededffieldsffun
    public static function localAddr( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo):stdgo._internal.net.Net_addr.Addr return @:_5 __self__.localAddr();
    @:embedded
    @:embeddededffieldsffun
    public static function file( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo):{ var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:_5 __self__.file();
    @:embedded
    @:embeddededffieldsffun
    public static function closeWrite( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo):stdgo.Error return @:_5 __self__.closeWrite();
    @:embedded
    @:embeddededffieldsffun
    public static function closeRead( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo):stdgo.Error return @:_5 __self__.closeRead();
    @:embedded
    @:embeddededffieldsffun
    public static function close( __self__:stdgo._internal.net.Net_t_tcpconnwithoutwriteto.T_tcpConnWithoutWriteTo):stdgo.Error return @:_5 __self__.close();
}
