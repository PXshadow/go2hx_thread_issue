package stdgo._internal.io;
function pipe():{ var _0 : stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader>; var _1 : stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter>; } {
        var _p = (stdgo.Go.setRef(({ _wrCh : (new stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>(0, () -> (null : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.Chan<stdgo.Slice<stdgo.GoUInt8>>), _rdCh : (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>), _done : (new stdgo.Chan<stdgo._internal.io.Io_t_discard.T_discard>(0, () -> ({} : stdgo._internal.io.Io_t_discard.T_discard)) : stdgo.Chan<stdgo._internal.io.Io_t_discard.T_discard>) } : stdgo._internal.io.Io_t_pipe.T_pipe)) : stdgo.Ref<stdgo._internal.io.Io_t_pipe.T_pipe>);
        return { _0 : (stdgo.Go.setRef((new stdgo._internal.io.Io_pipereader.PipeReader(_p) : stdgo._internal.io.Io_pipereader.PipeReader)) : stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader>), _1 : (stdgo.Go.setRef((new stdgo._internal.io.Io_pipewriter.PipeWriter(_p) : stdgo._internal.io.Io_pipewriter.PipeWriter)) : stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter>) };
    }
