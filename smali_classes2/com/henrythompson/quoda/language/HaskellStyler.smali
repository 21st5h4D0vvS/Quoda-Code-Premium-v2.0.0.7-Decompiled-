.class public Lcom/henrythompson/quoda/language/HaskellStyler;
.super Lcom/henrythompson/quoda/language/LanguageStyler;


# instance fields
.field mSource:Lcom/henrythompson/quoda/styler/StringStream;

.field mTheme:Lcom/henrythompson/quoda/styler/Theme;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/LanguageStyler;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public canParseLanguage(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x3

    const-string v0, "haskell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    const/4 v1, 0x2
.end method

.method public parse()V
    .locals 14

    const/4 v13, 0x1

    const/16 v12, 0x22

    const/16 v11, 0xa

    const/16 v10, 0x8

    const/4 v13, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HaskellStyler;->getStream()Lcom/henrythompson/quoda/styler/StringStream;

    move-result-object v7

    iput-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v13, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HaskellStyler;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v7

    iput-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    const/4 v13, 0x7

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/henrythompson/quoda/styler/StringStream;->setCaseSensitive(Z)V

    const/4 v13, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HaskellStyler;->getParseEnd()I

    move-result v3

    const/4 v13, 0x6

    const-string v7, "((`)[a-zA-Z_\']*?(`))|\\b(abs|acos|acosh|all|and|any|appendFile|applyM|asTypeOf|asin|asinh|atan|atan2|atanh|break|catch|ceiling|compare|concat|concatMap|const|cos|cosh|curry|cycle|decodeFloat|div|divMod|drop|dropWhile|elem|encodeFloat|enumFrom|enumFromThen|enumFromThenTo|enumFromTo|error|even|exp|exponent|fail|filter|flip|floatDigits|floatRadix|floatRange|floor|fmap|foldl|foldl1|foldr|foldr1|fromEnum|fromInteger|fromIntegral|fromRational|fst|gcd|getChar|getContents|getLine|head|id|init|interact|ioError|isDenormalized|isIEEE|isInfinite|isNaN|isNegativeZero|iterate|last|lcm|length|lex|mTokens|log|logBase|lookup|map|mapM|mapM_|max|maxBound|maximum|maybe|min|minBound|minimum|mod|negate|not|notElem|null|odd|or|otherwise|pi|pred|print|product|properFraction|putChar|putStr|putStrLn|quot|quotRem|read|readFile|readIO|readList|readLn|readParen|reads|readsPrec|realToFrac|recip|rem|repeat|replicate|return|reverse|round|scaleFloat|scanl|scanl1|scanr|scanr1|seq|sequence|sequence_|show|showChar|showList|showParen|showString|shows|showsPrec|significand|signum|sin|sinh|snd|span|splitAt|sqrt|subtract|succ|sum|tail|take|takeWhile|tan|tanh|toEnum|toInteger|toRational|truncate|uncurry|undefined|unlines|until|unwords|unzip|unzip3|userError|words|writeFile|zip|zip3|zipWith|zipWith3)\\b"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v13, 0x0

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v13, 0x1

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    invoke-virtual {v2, v7, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x1

    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v13, 0x2

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/henrythompson/quoda/language/HaskellStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_0

    const/4 v6, 0x1

    const/4 v13, 0x1

    :cond_0
    const-string v7, "(^\\s*([a-z_][a-zA-Z0-9_\']*|\\([|!%$+\\-.,=</>]+\\))\\s*(::))"

    invoke-static {v7, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v13, 0x2

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v13, 0x2

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    invoke-virtual {v2, v7, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x5

    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v13, 0x5

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/henrythompson/quoda/language/HaskellStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_1

    const/4 v0, 0x5

    const/4 v13, 0x5

    :cond_1
    const-string v7, "\\b(module|where|class|instance|import|qualified|as|hiding|deriving|data|type|case|of|let|in|newtype|default|infix[lr]?|do|if|then|else)\\b"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v13, 0x2

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v13, 0x3

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    invoke-virtual {v2, v7, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v13, 0x0

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/henrythompson/quoda/language/HaskellStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_2

    const/4 v8, 0x2

    const/4 v13, 0x6

    :cond_2
    const-string v7, "\\b(Int(eger)?|Maybe|Either|Bool|Float|Double|Char|String|Ordering|ShowS|ReadS|FilePath|IO(Error)?)\\b"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v13, 0x2

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v13, 0x6

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    invoke-virtual {v2, v7, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x5

    :goto_3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v13, 0x1

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/Theme;->getTypeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/henrythompson/quoda/language/HaskellStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_3

    const/4 v13, 0x6

    const/4 v13, 0x0

    :cond_3
    const-string v7, "\\b(Monad|Functor|Eq|Ord|Read|Show|Num|(Frac|Ra)tional|Enum|Bounded|Real(Frac|Float)?|Integral|Floating|)\\b|(\\b[A-Z][A-Za-z_\']*\\b)"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v13, 0x7

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v13, 0x4

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    invoke-virtual {v2, v7, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x7

    :goto_4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v13, 0x1

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/henrythompson/quoda/language/HaskellStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_4

    const/4 v10, 0x2

    const/4 v13, 0x0

    :cond_4
    const-string v7, "\\b[A-Z]\\w*\\b"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v13, 0x4

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v13, 0x4

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    invoke-virtual {v2, v7, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x6

    :goto_5
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v13, 0x2

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/Theme;->getUserConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/henrythompson/quoda/language/HaskellStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_5

    const/4 v10, 0x6

    const/4 v13, 0x5

    :cond_5
    const-string v7, "^\\s*(#)\\s*\\w+"

    invoke-static {v7, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v13, 0x2

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v13, 0x4

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    invoke-virtual {v2, v7, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x3

    :goto_6
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v13, 0x3

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/Theme;->getPreprocessorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/henrythompson/quoda/language/HaskellStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_6

    const/4 v12, 0x3

    const/4 v13, 0x7

    :cond_6
    const-string v7, "!|\\$|%|&|\\*|\\-|\\+|~|=|<|>|\\?|\\:|\\^"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v13, 0x0

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v13, 0x1

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    invoke-virtual {v2, v7, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x2

    :goto_7
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v13, 0x1

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/henrythompson/quoda/language/HaskellStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_7

    const/4 v8, 0x0

    const/4 v13, 0x1

    :cond_7
    const-string v7, "\\b([0-9]+\\.[0-9]+([eE][+-]?[0-9]+)?|[0-9]+[eE][+-]?[0-9]+)\\b|\\b([0-9]+|0([xX][0-9a-fA-F]+|[oO][0-7]+))\\b"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v13, 0x5

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v13, 0x4

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    invoke-virtual {v2, v7, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x6

    :goto_8
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v13, 0x4

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/henrythompson/quoda/language/HaskellStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_8

    const/4 v10, 0x0

    const/4 v13, 0x6

    :cond_8
    const-string v7, "(\\(\\))|(\\[\\])|\\b(Just|Nothing|Left|Right|True|False|LT|EQ|GT)\\b"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v13, 0x2

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v13, 0x0

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    invoke-virtual {v2, v7, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x3

    :goto_9
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v13, 0x4

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/Theme;->getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/henrythompson/quoda/language/HaskellStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_9

    const/4 v4, 0x0

    const/4 v13, 0x3

    :cond_9
    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v8, "{-"

    invoke-virtual {v7, v8}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    const/4 v13, 0x3

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    add-int/lit8 v5, v7, -0x2

    const/4 v13, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HaskellStyler;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v7

    if-nez v7, :cond_a

    const/4 v13, 0x3

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v8, "-}"

    invoke-virtual {v7, v8}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v13, 0x6

    :cond_a
    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v13, 0x2

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v7

    invoke-virtual {p0, v7, v5, v0}, Lcom/henrythompson/quoda/language/HaskellStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x6

    :cond_b
    :goto_b
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HaskellStyler;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_13

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    if-ge v7, v3, :cond_13

    const/4 v13, 0x6

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7, v12}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v13, 0x5

    const/4 v6, 0x1

    const/4 v13, 0x6

    const/4 v1, 0x0

    const/4 v13, 0x4

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    const/4 v13, 0x7

    :goto_c
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HaskellStyler;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HaskellStyler;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_c

    const/4 v13, 0x2

    if-nez v1, :cond_e

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7, v12}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v13, 0x5

    const/4 v6, 0x0

    const/4 v13, 0x6

    :cond_c
    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v13, 0x4

    if-nez v6, :cond_10

    const/4 v13, 0x2

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v7

    invoke-virtual {p0, v7, v5, v0}, Lcom/henrythompson/quoda/language/HaskellStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x4

    :cond_d
    :goto_d
    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_b

    const/4 v5, 0x2

    const/4 v13, 0x7

    :cond_e
    if-nez v1, :cond_f

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v13, 0x4

    const/4 v1, 0x1

    const/4 v13, 0x4

    goto :goto_c

    const/4 v10, 0x1

    const/4 v13, 0x7

    :cond_f
    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v7

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v7

    if-nez v7, :cond_c

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v13, 0x6

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_c

    const/4 v10, 0x1

    const/4 v13, 0x1

    :cond_10
    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v7

    invoke-virtual {p0, v7, v5, v0}, Lcom/henrythompson/quoda/language/HaskellStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_d

    const/4 v12, 0x6

    const/4 v13, 0x1

    :cond_11
    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_a

    const/4 v5, 0x5

    const/4 v13, 0x0

    :cond_12
    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v8, "--"

    invoke-virtual {v7, v8}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v13, 0x3

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    add-int/lit8 v5, v7, -0x2

    const/4 v13, 0x0

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7, v11}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(C)I

    move-result v0

    const/4 v13, 0x2

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v7

    invoke-virtual {p0, v7, v5, v0}, Lcom/henrythompson/quoda/language/HaskellStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_b

    const/4 v6, 0x6

    const/4 v13, 0x1

    :cond_13
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/henrythompson/quoda/language/HaskellStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v13, 0x5

    nop

    return-void

    const/4 v13, 0x3
.end method
