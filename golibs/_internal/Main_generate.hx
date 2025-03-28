package _internal;
import stdgo._internal.sync.Sync;
function generate(_ch:stdgo.Ref<_internal.Main_channel.Channel>):Void {
        {
            var _i = (2 : stdgo.GoInt);
            while (true) {
                @:check2r _ch.send(_i);
                _i++;
            };
        };
    }
