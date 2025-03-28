package _internal.githubdotcom.go2hx.go4hx.rnd;

import stdgo._internal.sync.Sync;

@:keep @:allow(_internal.githubdotcom.go2hx.go4hx.rnd.Rnd.Channel_asInterface) class Channel_static_extension {
	@:keep
	@:tdfield
	static public function close(_ch:stdgo.Ref<_internal.githubdotcom.go2hx.go4hx.rnd.Rnd_channel.Channel>):Void {
		@:recv var _ch:stdgo.Ref<_internal.githubdotcom.go2hx.go4hx.rnd.Rnd_channel.Channel> = _ch;
		var __deferstack__:Array<{var ran:Bool; var f:Void->Void;}> = [];
		try {
			@:check2 (@:checkr _ch ?? throw "null pointer dereference")._lock.lock();
			{
				final __f__ = @:check2 (@:checkr _ch ?? throw "null pointer dereference")._lock.unlock;
				__deferstack__.unshift({ran: false, f: () -> __f__()});
			};
			(@:checkr _ch ?? throw "null pointer dereference")._closed = true;
			@:check2r (@:checkr _ch ?? throw "null pointer dereference")._cond.broadcast();
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

	@:keep
	@:tdfield
	static public function receive(_ch:stdgo.Ref<_internal.githubdotcom.go2hx.go4hx.rnd.Rnd_channel.Channel>):stdgo.GoInt {
		@:recv var _ch:stdgo.Ref<_internal.githubdotcom.go2hx.go4hx.rnd.Rnd_channel.Channel> = _ch;
		var __deferstack__:Array<{var ran:Bool; var f:Void->Void;}> = [];
		try {
			@:check2 (@:checkr _ch ?? throw "null pointer dereference")._lock.lock();
			{
				final __f__ = @:check2 (@:checkr _ch ?? throw "null pointer dereference")._lock.unlock;
				__deferstack__.unshift({ran: false, f: () -> __f__()});
			};
			while ((((@:checkr _ch ?? throw "null pointer dereference")._buffer.length == (0 : stdgo.GoInt))
				&& !(@:checkr _ch ?? throw "null pointer dereference")._closed : Bool)) {
				@:check2r (@:checkr _ch ?? throw "null pointer dereference")._cond.wait_();
			};
			if (((@:checkr _ch ?? throw "null pointer dereference")._closed
				&& ((@:checkr _ch ?? throw "null pointer dereference")._buffer.length == (0 : stdgo.GoInt)):Bool)) {
				{
					final __ret__:stdgo.GoInt = (0 : stdgo.GoInt);
					for (defer in __deferstack__) {
						if (defer.ran)
							continue;
						defer.ran = true;
						defer.f();
					};
					return __ret__;
				};
			};
			var _value = ((@:checkr _ch ?? throw "null pointer dereference")._buffer[(0 : stdgo.GoInt)] : stdgo.GoInt);
			(@:checkr _ch ?? throw "null pointer dereference")._buffer = ((@:checkr _ch ?? throw "null pointer dereference")
				._buffer.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
			{
				for (defer in __deferstack__) {
					if (defer.ran)
						continue;
					defer.ran = true;
					defer.f();
				};
				return _value;
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
				return (0 : stdgo.GoInt);
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
				return (0 : stdgo.GoInt);
			};
		};
	}

	@:keep
	@:tdfield
	static public function send(_ch:stdgo.Ref<_internal.githubdotcom.go2hx.go4hx.rnd.Rnd_channel.Channel>, _value:stdgo.GoInt):Void {
		@:recv var _ch:stdgo.Ref<_internal.githubdotcom.go2hx.go4hx.rnd.Rnd_channel.Channel> = _ch;
		var __deferstack__:Array<{var ran:Bool; var f:Void->Void;}> = [];
		try {
			@:check2 (@:checkr _ch ?? throw "null pointer dereference")._lock.lock();
			{
				final __f__ = @:check2 (@:checkr _ch ?? throw "null pointer dereference")._lock.unlock;
				__deferstack__.unshift({ran: false, f: () -> __f__()});
			};
			if ((@:checkr _ch ?? throw "null pointer dereference")._closed) {
				throw stdgo.Go.toInterface(("send on closed channel" : stdgo.GoString));
			};
			(@:checkr _ch ?? throw "null pointer dereference")._buffer = ((@:checkr _ch ?? throw "null pointer dereference")
				._buffer.__append__(_value) : stdgo.Slice<stdgo.GoInt>);
			@:check2r (@:checkr _ch ?? throw "null pointer dereference")._cond.signal();
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
}
