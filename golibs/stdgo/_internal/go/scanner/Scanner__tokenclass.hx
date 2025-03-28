package stdgo._internal.go.scanner;
function _tokenclass(_tok:stdgo._internal.go.token.Token_token.Token):stdgo.GoInt {
        if (_tok.isLiteral()) {
            return (1 : stdgo.GoInt);
        } else if (_tok.isOperator()) {
            return (2 : stdgo.GoInt);
        } else if (_tok.isKeyword()) {
            return (3 : stdgo.GoInt);
        };
        return (0 : stdgo.GoInt);
    }
