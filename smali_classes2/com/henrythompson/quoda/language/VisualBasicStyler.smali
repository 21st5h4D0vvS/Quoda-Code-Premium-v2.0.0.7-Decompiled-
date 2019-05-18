.class public Lcom/henrythompson/quoda/language/VisualBasicStyler;
.super Lcom/henrythompson/quoda/language/LanguageStyler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/LanguageStyler;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public canParseLanguage(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x2

    const/4 v0, 0x0

    return v0

    const/4 v0, 0x0
.end method

.method public parse()V
    .locals 14

    const/4 v13, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/VisualBasicStyler;->getStream()Lcom/henrythompson/quoda/styler/StringStream;

    move-result-object v3

    const/4 v13, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/VisualBasicStyler;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v4

    const/4 v13, 0x4

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/henrythompson/quoda/styler/StringStream;->setCaseSensitive(Z)V

    const/4 v13, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/VisualBasicStyler;->getParseEnd()I

    move-result v6

    const/4 v13, 0x3

    const-string v10, "\\b(A(dd(Handler|ressOf)|lias|n(d|dAlso|si)|s|ssembly|uto)|By(Ref|Val)|C(a(ll|se|tch)|lass|onst)|D(e(clare|fault|legate)|i(m|irectCase)|o)|E(ach|ls(e|eIf)|n(d|um)|r(ase|ror)|vent|xit)|F(inally|or|riend|unction)|G(e(t|tType)|oSub|oTo)|Handles|I(f|mp(lements|orts))|I(n|nherits|nterface|s)|L(et|(i(b|ke))|oop)|M(e|od|odule|(ust(Inherit|Override))|yBase|yClass)|N(amespace|e(w|xt)|o(t|thing|tInheritable|tOverridable))|O(n|ptio(n|nal)|r|rElse|ver(loads|ridable|rides))|P(aramArray|r(eserve|ivate|operty|otected)|ublic)|R(aiseEvent|e(adOnly|Dim|moveHandler|sume|turn))|S(e(lect|t)|h(adows|ared|ort)|t(atic|ep|op|ructure)|ub|yncLock)|T(h(en|row)|o|ry|ypeOf)|Un(icode|til)|Variant|W(h(en|ile)|it(h|hEvents)|riteOnly)|Xor)\\b"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x1

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x0

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x4

    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v13, 0x4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/VisualBasicStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_0

    const/4 v10, 0x2

    const/4 v13, 0x0

    :cond_0
    const-string v10, "\\b(B(oolean|yte)|Char|D(ecimal|ouble|ate)|Integer|Long|String)\\b"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x7

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x1

    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v13, 0x6

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/Theme;->getTypeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/VisualBasicStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_1

    const/4 v13, 0x0

    const/4 v13, 0x0

    :cond_1
    const-string v10, "\\b(\\s*)([a-zA-Z0-9_]+)\\s*\\("

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x7

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x4

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x4

    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v13, 0x0

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/VisualBasicStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_2

    const/4 v8, 0x2

    const/4 v13, 0x4

    :cond_2
    const-string v10, "(#)(\\s*|\\s*(End)\\s*)(Const|E(xternalSource|lse)|If|Then|Region)\\b"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x5

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x6

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x4

    :goto_3
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v13, 0x5

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/Theme;->getPreprocessorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/VisualBasicStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_3

    const/4 v13, 0x6

    const/4 v13, 0x3

    :cond_3
    const-string v10, "!|\\$|%|&|\\*|\\-|\\+|~|=|<|>|\\?|\\:|\\^"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x5

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x6

    :goto_4
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v13, 0x1

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/VisualBasicStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_4

    const/4 v3, 0x6

    const/4 v13, 0x1

    :cond_4
    const-string v10, "\\b([0-9][0-9\\.]+&??)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x4

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x7

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x2

    :goto_5
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v13, 0x4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/VisualBasicStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_5

    const/4 v11, 0x4

    const/4 v13, 0x2

    :cond_5
    const-string v10, "\\b(True|False)\\b"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x2

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x5

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x0

    :goto_6
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v13, 0x5

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/Theme;->getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/VisualBasicStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_6

    const/4 v13, 0x6

    const/4 v13, 0x2

    :cond_6
    const/16 v10, 0x27

    invoke-virtual {v3, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v13, 0x1

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v8, v10, -0x2

    const/4 v13, 0x3

    :goto_7
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/VisualBasicStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v10

    if-nez v10, :cond_7

    const/4 v13, 0x6

    const/16 v10, 0xa

    invoke-virtual {v3, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v13, 0x7

    :cond_7
    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v13, 0x5

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v1}, Lcom/henrythompson/quoda/language/VisualBasicStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x0

    :cond_8
    :goto_8
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/VisualBasicStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_11

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    if-ge v10, v6, :cond_11

    const/4 v13, 0x1

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v0

    const/4 v13, 0x2

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_6

    const/16 v10, 0x22

    invoke-virtual {v3, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v13, 0x0

    const/4 v9, 0x1

    const/4 v13, 0x4

    const/4 v2, 0x0

    const/4 v13, 0x6

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    const/4 v13, 0x7

    :goto_9
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/VisualBasicStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/VisualBasicStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_9

    const/4 v13, 0x7

    if-nez v2, :cond_b

    const/16 v10, 0x22

    invoke-virtual {v3, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x5

    :cond_9
    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v13, 0x4

    if-nez v9, :cond_c

    const/4 v13, 0x4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v1}, Lcom/henrythompson/quoda/language/VisualBasicStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x6

    :cond_a
    :goto_a
    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_8

    const/4 v2, 0x0

    const/4 v13, 0x3

    :cond_b
    const/16 v10, 0xa

    invoke-virtual {v3, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_9

    const/4 v13, 0x4

    const/4 v2, 0x0

    const/4 v13, 0x2

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_9

    const/4 v4, 0x0

    const/4 v13, 0x5

    :cond_c
    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v1}, Lcom/henrythompson/quoda/language/VisualBasicStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_a

    const/4 v7, 0x4

    const/4 v13, 0x7

    :cond_d
    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_7

    const/4 v4, 0x2

    const/4 v13, 0x3

    :cond_e
    const-string v10, "REM"

    invoke-virtual {v3, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v13, 0x5

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v0

    const/4 v13, 0x6

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v13, 0x3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v8, v10, -0x4

    const/4 v13, 0x2

    :goto_b
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/VisualBasicStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_f

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v10

    if-nez v10, :cond_f

    const/4 v13, 0x3

    const/16 v10, 0xa

    invoke-virtual {v3, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v13, 0x6

    :cond_f
    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v13, 0x1

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v1}, Lcom/henrythompson/quoda/language/VisualBasicStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_8

    const/4 v8, 0x2

    const/4 v13, 0x1

    :cond_10
    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_b

    const/4 v12, 0x7

    const/4 v13, 0x1

    :cond_11
    const/4 v3, 0x0

    const/4 v13, 0x7

    nop

    return-void

    const/4 v8, 0x5
.end method
