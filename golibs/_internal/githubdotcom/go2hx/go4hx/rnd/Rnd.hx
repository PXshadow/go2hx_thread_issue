package _internal.githubdotcom.go2hx.go4hx.rnd;

import stdgo._internal.sync.Sync;

function main():Void {
	var _ch = _internal.githubdotcom.go2hx.go4hx.rnd.Rnd_newchannel.newChannel((0 : stdgo.GoInt));
	stdgo.Go.routine(() -> _internal.githubdotcom.go2hx.go4hx.rnd.Rnd_generate.generate(_ch));
	{
		var _i = (0 : stdgo.GoInt);
		while ((_i < (10:stdgo.GoInt) : Bool)) {
			var _prime = (_ch.receive() : stdgo.GoInt);
			stdgo.Go.println(_prime);
			var _ch1 = _internal.githubdotcom.go2hx.go4hx.rnd.Rnd_newchannel.newChannel((0 : stdgo.GoInt));
			stdgo.Go.routine(() -> _internal.githubdotcom.go2hx.go4hx.rnd.Rnd_filter.filter(_ch, _ch1, _prime));
			_ch = _ch1;
			_i++;
		};
	};
	stdgo.Go.println(("CLOSE1" : stdgo.GoString));
	@:check2r _ch.close();
}
