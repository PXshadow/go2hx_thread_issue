package _internal.githubdotcom.go2hx.go4hx.rnd;

import stdgo._internal.sync.Sync;

function generate(_ch:stdgo.Ref<_internal.githubdotcom.go2hx.go4hx.rnd.Rnd_channel.Channel>):Void {
	{
		var _i = (2 : stdgo.GoInt);
		while (true) {
			@:check2r _ch.send(_i);
			_i++;
		};
	};
}
