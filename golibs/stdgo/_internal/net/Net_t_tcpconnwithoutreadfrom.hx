package stdgo._internal.net;
@:structInit @:using(stdgo._internal.net.Net_t_tcpconnwithoutreadfrom_static_extension.T_tcpConnWithoutReadFrom_static_extension) class T_tcpConnWithoutReadFrom {
    @:embedded
    public var tCPConn : stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn> = (null : stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>);
    public function new(?tCPConn:stdgo.Ref<stdgo._internal.net.Net_tcpconn.TCPConn>) {
        if (tCPConn != null) this.tCPConn = tCPConn;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var close(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_close():() -> stdgo.Error return @:check32 this.new.close;
    public var closeRead(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_closeRead():() -> stdgo.Error return @:check32 this.new.closeRead;
    public var closeWrite(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_closeWrite():() -> stdgo.Error return @:check32 this.new.closeWrite;
    public var file(get, never) : () -> { var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_file():() -> { var _0 : stdgo.Ref<stdgo._internal.os.Os_file.File>; var _1 : stdgo.Error; } return @:check32 this.new.file;
    public var localAddr(get, never) : () -> stdgo._internal.net.Net_addr.Addr;
    @:embedded
    @:embeddededffieldsffun
    public function get_localAddr():() -> stdgo._internal.net.Net_addr.Addr return @:check32 this.new.localAddr;
    public var multipathTCP(get, never) : () -> { var _0 : Bool; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_multipathTCP():() -> { var _0 : Bool; var _1 : stdgo.Error; } return @:check32 this.new.multipathTCP;
    public var read(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_read():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this.new.read;
    public var remoteAddr(get, never) : () -> stdgo._internal.net.Net_addr.Addr;
    @:embedded
    @:embeddededffieldsffun
    public function get_remoteAddr():() -> stdgo._internal.net.Net_addr.Addr return @:check32 this.new.remoteAddr;
    public var setDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check32 this.new.setDeadline;
    public var setKeepAlive(get, never) : Bool -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setKeepAlive():Bool -> stdgo.Error return @:check32 this.new.setKeepAlive;
    public var setKeepAliveConfig(get, never) : stdgo._internal.net.Net_keepaliveconfig.KeepAliveConfig -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setKeepAliveConfig():stdgo._internal.net.Net_keepaliveconfig.KeepAliveConfig -> stdgo.Error return @:check32 this.new.setKeepAliveConfig;
    public var setKeepAlivePeriod(get, never) : stdgo._internal.time.Time_duration.Duration -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setKeepAlivePeriod():stdgo._internal.time.Time_duration.Duration -> stdgo.Error return @:check32 this.new.setKeepAlivePeriod;
    public var setLinger(get, never) : stdgo.GoInt -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setLinger():stdgo.GoInt -> stdgo.Error return @:check32 this.new.setLinger;
    public var setNoDelay(get, never) : Bool -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setNoDelay():Bool -> stdgo.Error return @:check32 this.new.setNoDelay;
    public var setReadBuffer(get, never) : stdgo.GoInt -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setReadBuffer():stdgo.GoInt -> stdgo.Error return @:check32 this.new.setReadBuffer;
    public var setReadDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setReadDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check32 this.new.setReadDeadline;
    public var setWriteBuffer(get, never) : stdgo.GoInt -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setWriteBuffer():stdgo.GoInt -> stdgo.Error return @:check32 this.new.setWriteBuffer;
    public var setWriteDeadline(get, never) : stdgo._internal.time.Time_time.Time -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_setWriteDeadline():stdgo._internal.time.Time_time.Time -> stdgo.Error return @:check32 this.new.setWriteDeadline;
    public var syscallConn(get, never) : () -> { var _0 : stdgo._internal.syscall.Syscall_rawconn.RawConn; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_syscallConn():() -> { var _0 : stdgo._internal.syscall.Syscall_rawconn.RawConn; var _1 : stdgo.Error; } return @:check32 this.new.syscallConn;
    public var write(get, never) : stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_write():stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:check32 this.new.write;
    public var writeTo(get, never) : stdgo._internal.io.Io_writer.Writer -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_writeTo():stdgo._internal.io.Io_writer.Writer -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:check32 this.new.writeTo;
    public var _ok(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__ok():() -> Bool return @:check32 this.new._ok;
    public var _readFrom(get, never) : stdgo._internal.io.Io_reader.Reader -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__readFrom():stdgo._internal.io.Io_reader.Reader -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:check32 this.new._readFrom;
    public var _writeTo(get, never) : stdgo._internal.io.Io_writer.Writer -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__writeTo():stdgo._internal.io.Io_writer.Writer -> { var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:check32 this.new._writeTo;
    public function __copy__() {
        return new T_tcpConnWithoutReadFrom(tCPConn);
    }
}
