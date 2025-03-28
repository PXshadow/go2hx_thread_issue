package _internal.githubdotcom.go2hx.go4hx.rnd;

import stdgo._internal.sync.Sync;

function filter(_in:stdgo.Ref<_internal.githubdotcom.go2hx.go4hx.rnd.Rnd_channel.Channel>,
		_out:stdgo.Ref<_internal.githubdotcom.go2hx.go4hx.rnd.Rnd_channel.Channel>, _prime:stdgo.GoInt):Void {
	var __deferstack__:Array<{var ran:Bool; var f:Void->Void;}> = [];
	try {
		{
			__deferstack__.unshift({
				ran: false,
				f: () -> ({
					var a = function():Void {
						stdgo.Go.println(("CLOSE0" : stdgo.GoString));
						@:check2r _out.close();
					};
					a();
				})
			});
		};
		while (true) {
			var _i = (@:check2r _in.receive() : stdgo.GoInt);
			if (_i == ((0 : stdgo.GoInt))) {
				stdgo.Go.println(("closure signal" : stdgo.GoString));
				break;
			};
			if ((_i % _prime : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
				@:check2r _out.send(_i);
			};
		};
		{
			for (defer in __deferstack__) {
				if (defer.ran)
					continue;
				defer.ran = true;
				defer.f();
			};
			if (stdgo.Go.recover_exception != null) {
				final e = stdgo.Go.recover_exception;
				stdgo.Go.recover_exception = null;
				throw e;
			};
			return;
		};
	} catch (__exception__) {
		{
			var exe:Dynamic = __exception__.native;
			if ((exe is haxe.ValueException))
				exe = exe.value;
			if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
				if (__exception__.message == "__return__")
					throw "__return__";
				exe = stdgo.Go.toInterface(__exception__.message);
			};
			stdgo.Go.recover_exception = exe;
			{
				function f() {
					try {
						{
							for (defer in __deferstack__) {
								if (defer.ran)
									continue;
								defer.ran = true;
								defer.f();
							};
						};
					} catch (__exception__2) {
						var exe:Dynamic = __exception__2.native;
						if ((exe is haxe.ValueException))
							exe = exe.value;
						if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
							if (__exception__.message == "__return__")
								throw "__return__";
							exe = stdgo.Go.toInterface(__exception__.message);
						};
						stdgo.Go.recover_exception = exe;
						f();
					};
				};
				f();
			};
			if (stdgo.Go.recover_exception != null) {
				final e = stdgo.Go.recover_exception;
				stdgo.Go.recover_exception = null;
				throw e;
			};
			return;
		};
	};
}
