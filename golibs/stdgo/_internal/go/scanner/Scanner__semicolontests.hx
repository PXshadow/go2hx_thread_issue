package stdgo._internal.go.scanner;
var _semicolonTests : stdgo.GoArray<stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1> = (new stdgo.GoArray<stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1>(101, 101, ...[
({ _input : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("\ufeff;" : stdgo.GoString), _want : (";" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : (";" : stdgo.GoString), _want : (";" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("foo\n" : stdgo.GoString), _want : ("IDENT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("123\n" : stdgo.GoString), _want : ("INT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("1.2\n" : stdgo.GoString), _want : ("FLOAT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("\'x\'\n" : stdgo.GoString), _want : ("CHAR ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("\"x\"\n" : stdgo.GoString), _want : ("STRING ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("`x`\n" : stdgo.GoString), _want : ("STRING ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("+\n" : stdgo.GoString), _want : ("+" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("-\n" : stdgo.GoString), _want : ("-" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("*\n" : stdgo.GoString), _want : ("*" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("/\n" : stdgo.GoString), _want : ("/" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("%\n" : stdgo.GoString), _want : ("%" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("&\n" : stdgo.GoString), _want : ("&" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("|\n" : stdgo.GoString), _want : ("|" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("^\n" : stdgo.GoString), _want : ("^" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("<<\n" : stdgo.GoString), _want : ("<<" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : (">>\n" : stdgo.GoString), _want : (">>" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("&^\n" : stdgo.GoString), _want : ("&^" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("+=\n" : stdgo.GoString), _want : ("+=" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("-=\n" : stdgo.GoString), _want : ("-=" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("*=\n" : stdgo.GoString), _want : ("*=" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("/=\n" : stdgo.GoString), _want : ("/=" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("%=\n" : stdgo.GoString), _want : ("%=" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("&=\n" : stdgo.GoString), _want : ("&=" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("|=\n" : stdgo.GoString), _want : ("|=" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("^=\n" : stdgo.GoString), _want : ("^=" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("<<=\n" : stdgo.GoString), _want : ("<<=" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : (">>=\n" : stdgo.GoString), _want : (">>=" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("&^=\n" : stdgo.GoString), _want : ("&^=" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("&&\n" : stdgo.GoString), _want : ("&&" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("||\n" : stdgo.GoString), _want : ("||" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("<-\n" : stdgo.GoString), _want : ("<-" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("++\n" : stdgo.GoString), _want : ("++ ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("--\n" : stdgo.GoString), _want : ("-- ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("==\n" : stdgo.GoString), _want : ("==" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("<\n" : stdgo.GoString), _want : ("<" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : (">\n" : stdgo.GoString), _want : (">" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("=\n" : stdgo.GoString), _want : ("=" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("!\n" : stdgo.GoString), _want : ("!" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("!=\n" : stdgo.GoString), _want : ("!=" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("<=\n" : stdgo.GoString), _want : ("<=" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : (">=\n" : stdgo.GoString), _want : (">=" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : (":=\n" : stdgo.GoString), _want : (":=" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("...\n" : stdgo.GoString), _want : ("..." : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("(\n" : stdgo.GoString), _want : ("(" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("[\n" : stdgo.GoString), _want : ("[" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("{\n" : stdgo.GoString), _want : ("{" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : (",\n" : stdgo.GoString), _want : ("," : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : (".\n" : stdgo.GoString), _want : ("." : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : (")\n" : stdgo.GoString), _want : (") ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("]\n" : stdgo.GoString), _want : ("] ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("}\n" : stdgo.GoString), _want : ("} ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : (";\n" : stdgo.GoString), _want : (";" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : (":\n" : stdgo.GoString), _want : (":" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("break\n" : stdgo.GoString), _want : ("break ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("case\n" : stdgo.GoString), _want : ("case" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("chan\n" : stdgo.GoString), _want : ("chan" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("const\n" : stdgo.GoString), _want : ("const" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("continue\n" : stdgo.GoString), _want : ("continue ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("default\n" : stdgo.GoString), _want : ("default" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("defer\n" : stdgo.GoString), _want : ("defer" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("else\n" : stdgo.GoString), _want : ("else" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("fallthrough\n" : stdgo.GoString), _want : ("fallthrough ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("for\n" : stdgo.GoString), _want : ("for" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("func\n" : stdgo.GoString), _want : ("func" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("go\n" : stdgo.GoString), _want : ("go" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("goto\n" : stdgo.GoString), _want : ("goto" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("if\n" : stdgo.GoString), _want : ("if" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("import\n" : stdgo.GoString), _want : ("import" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("interface\n" : stdgo.GoString), _want : ("interface" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("map\n" : stdgo.GoString), _want : ("map" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("package\n" : stdgo.GoString), _want : ("package" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("range\n" : stdgo.GoString), _want : ("range" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("return\n" : stdgo.GoString), _want : ("return ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("select\n" : stdgo.GoString), _want : ("select" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("struct\n" : stdgo.GoString), _want : ("struct" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("switch\n" : stdgo.GoString), _want : ("switch" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("type\n" : stdgo.GoString), _want : ("type" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("var\n" : stdgo.GoString), _want : ("var" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("foo//comment\n" : stdgo.GoString), _want : ("IDENT COMMENT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("foo//comment" : stdgo.GoString), _want : ("IDENT COMMENT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("foo/*comment*/\n" : stdgo.GoString), _want : ("IDENT COMMENT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("foo/*\n*/" : stdgo.GoString), _want : ("IDENT COMMENT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("foo/*comment*/    \n" : stdgo.GoString), _want : ("IDENT COMMENT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("foo/*\n*/    " : stdgo.GoString), _want : ("IDENT COMMENT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("foo    // comment\n" : stdgo.GoString), _want : ("IDENT COMMENT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("foo    // comment" : stdgo.GoString), _want : ("IDENT COMMENT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("foo    /*comment*/\n" : stdgo.GoString), _want : ("IDENT COMMENT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("foo    /*\n*/" : stdgo.GoString), _want : ("IDENT COMMENT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("foo    /*  */ /* \n */ bar/**/\n" : stdgo.GoString), _want : ("IDENT COMMENT COMMENT ; IDENT COMMENT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("foo    /*0*/ /*1*/ /*2*/\n" : stdgo.GoString), _want : ("IDENT COMMENT COMMENT COMMENT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("foo    /*comment*/    \n" : stdgo.GoString), _want : ("IDENT COMMENT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("foo    /*0*/ /*1*/ /*2*/    \n" : stdgo.GoString), _want : ("IDENT COMMENT COMMENT COMMENT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("foo\t/**/ /*-------------*/       /*----\n*/bar       /*  \n*/baa\n" : stdgo.GoString), _want : ("IDENT COMMENT COMMENT COMMENT ; IDENT COMMENT ; IDENT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("foo    /* an EOF terminates a line */" : stdgo.GoString), _want : ("IDENT COMMENT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("foo    /* an EOF terminates a line */ /*" : stdgo.GoString), _want : ("IDENT COMMENT COMMENT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("foo    /* an EOF terminates a line */ //" : stdgo.GoString), _want : ("IDENT COMMENT COMMENT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("package main\n\nfunc main() {\n\tif {\n\t\treturn /* */ }\n}\n" : stdgo.GoString), _want : ("package IDENT ; func IDENT ( ) { if { return COMMENT } ; } ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1),
({ _input : ("package main" : stdgo.GoString), _want : ("package IDENT ;" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1)].concat([for (i in 101 ... (101 > 101 ? 101 : 101 : stdgo.GoInt).toBasic()) ({ _input : ("" : stdgo.GoString), _want : ("" : stdgo.GoString) } : stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1)])) : stdgo.GoArray<stdgo._internal.go.scanner.Scanner_t__struct_1.T__struct_1>);
