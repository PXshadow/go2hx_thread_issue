package stdgo._internal.go.constant;
function _smallInt(_x:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>):Bool {
        return (@:check2r _x.bitLen() < (4096 : stdgo.GoInt) : Bool);
    }
