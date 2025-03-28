package _internal;
import stdgo._internal.sync.Sync;
function newChannel(_size:stdgo.GoInt):stdgo.Ref<_internal.Main_channel.Channel> {
        var _ch = (stdgo.Go.setRef(({ _buffer : (new stdgo.Slice<stdgo.GoInt>((0 : stdgo.GoInt).toBasic(), _size).__setNumber32__() : stdgo.Slice<stdgo.GoInt>), _closed : false } : _internal.Main_channel.Channel)) : stdgo.Ref<_internal.Main_channel.Channel>);
        (@:checkr _ch ?? throw "null pointer dereference")._cond = stdgo._internal.sync.Sync_newcond.newCond(stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _ch ?? throw "null pointer dereference")._lock) : stdgo.Ref<stdgo._internal.sync.Sync_mutex.Mutex>)));
        return _ch;
    }
