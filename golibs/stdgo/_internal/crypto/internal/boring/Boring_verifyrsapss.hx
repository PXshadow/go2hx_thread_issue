package stdgo._internal.crypto.internal.boring;
function verifyRSAPSS(_pub:stdgo.Ref<stdgo._internal.crypto.internal.boring.Boring_publickeyrsa.PublicKeyRSA>, _h:stdgo._internal.crypto.Crypto_hash.Hash, _hashed:stdgo.Slice<stdgo.GoUInt8>, _sig:stdgo.Slice<stdgo.GoUInt8>, _saltLen:stdgo.GoInt):stdgo.Error {
        throw stdgo.Go.toInterface(("boringcrypto: not available" : stdgo.GoString));
    }
