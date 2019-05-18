.class public Lcom/henrythompson/quoda/language/ObjectiveCStyler;
.super Lcom/henrythompson/quoda/language/LanguageStyler;


# instance fields
.field private CStyleBlockCommentEnd:[C

.field mSource:Lcom/henrythompson/quoda/styler/StringStream;

.field mTheme:Lcom/henrythompson/quoda/styler/Theme;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/LanguageStyler;-><init>()V

    const/4 v1, 0x4

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->CStyleBlockCommentEnd:[C

    nop

    return-void

    const/4 v0, 0x0

    nop

    :array_0
    .array-data 2
        0x2as
        0x2fs
    .end array-data
.end method


# virtual methods
.method public canParseLanguage(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x2

    const-string v0, "objective-c"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    const/4 v0, 0x1
.end method

.method public parse()V
    .locals 14

    const/4 v13, 0x4

    const/4 v13, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->getStream()Lcom/henrythompson/quoda/styler/StringStream;

    move-result-object v10

    iput-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v13, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v10

    iput-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->setCaseSensitive(Z)V

    const/4 v13, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->getParseEnd()I

    move-result v6

    const/4 v13, 0x5

    const-string v10, "\\bNS[A-Za-z0-9]+\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x4

    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_0

    const/4 v6, 0x5

    const/4 v13, 0x7

    :cond_0
    const-string v10, "(\\b(?!(while|for|do|if|else|switch|sizeof|alignof|Alignof|type|catch|enumerate|return|r?iterate)\\s*\\()(?:(?!NS)[A-Za-z_][A-Za-z0-9_]*+\\b|::)++)\\s*(\\()"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x6

    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_1

    const/4 v6, 0x1

    const/4 v13, 0x2

    :cond_1
    const-string v10, "(@(try|catch|finally|throw|synchronized|defs|encode)\\b)|(\\b(getter|setter|readonly|readwrite|assign|retain|copy|nonatomic|in|out|inout|oneway|bycopy|byref|_cmd|super|self|ANYKEY|SUBQUERY|CAST|TRUEPREDICATE|FALSEPREDICATE|C(ASEINSENSITIVE|I)|MATCHES|CONTAINS|BEGINSWITH|ENDSWITH|BETWEEN|AND|OR|NOT|IN|NS_DURING|NS_HANDLER|NS_ENDHANDLER|break|case|continue|default|define|do|else|for|goto|if|_Pragma|return|switch|while|const|extern|register|restrict|static|volatile|inline)\\b)"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x2

    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_2

    const/4 v8, 0x5

    const/4 v13, 0x4

    :cond_2
    const-string v10, "#\\s*(define(d)?|e(ndif|rror|l(if|se))|i(f|fdef|fndef)|line|pragma(\\s+mark.*)?|undef|warning)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x1

    :goto_3
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getPreprocessorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_3

    const/4 v13, 0x6

    const/4 v13, 0x4

    :cond_3
    const-string v10, "(@(class|protocol|selector)\\b)|(\\b(void|IBOutlet|IBAction|BOOL|SEL|id|unichar|IMP|Class|char|int|asm|__asm__|auto|bool|_Bool|char|_Complex|double|enum|float|_Imaginary|long|s(hort|igned|truct)|typedef|un(ion|signed)|void|u_(char|short|int|long|quad_t)|u(short|int)|((quad|qaddr|caddr|daddr|dev|fixpt|blkcnt|blksize|gid|in_addr|in_port|ino|key|mMode|nlink|id|pid|off|segsz|swblk|uid|id|clock|size|ssize|time|useconds|suseconds|pthread_attr|pthread_cond|pthread_condattr|pthread_mutex|pthread_mutexattr|pthread_once|pthread_rwlock|pthread_rwlockattr|pthread|pthread_key|int8|int16|int32|int64|uint8|uint16|uint32|uint64|int_least8|int_least16|int_least32|int_least64|uint_least8|uint_least16|uint_least32|uint_least64|int_fast8|int_fast16|int_fast32|int_fast64|uint_fast8|uint_fast16|uint_fast32|uint_fast64|intptr|uintptr|intmax|intmax|uintmax|uintmax)_t)|AbsoluteTime|B(oolean|yt(e|eCount|eOffset|ePtr))|Co(mpTimeValue|nst(LogicalAddress|StrFileNameParam|StringPtr))|Duration|Fixe(d|dPtr)|Float(3(2|2Point)|64|80|96)|FourCharCode|Frac(t|tPtr)|Handle|ItemCount|LogicalAddress|O(ptionBits|S(Err|Status|Type|TypePtr))|P(hysicalAddress|roc(essSerialNumbe(r|rPtr)|Handle)|tr)|ResTyp(e|ePtr)|ShortFixe(d|dPtr)|S(ignedByte|Int(16|32|64|8)|ize|tr(FileName|(Handle|Ptr)))|Time(Base|Record|Scale|Value|Value64)|U(Int(16|32|64|8)|ni(Cha(r|rCount|rCountPtr|rPtr)|codeScalarValue|(versalPro(cHandle|cPtr))|nsigne(dFixed|dFixedPtr|dWide)|TF(16Char|32Char|8Char))))\\b)"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getTypeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_4

    const/4 v8, 0x0

    const/4 v13, 0x4

    :cond_4
    const-string v10, "@(property|dynamic|synthesize|synchronized|public|private|protected)"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x2

    :goto_5
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_5

    const/4 v6, 0x7

    const/4 v13, 0x1

    :cond_5
    const-string v10, "#\\s*(define(d)?|e(rror|l(if|se))|i(f|fdef|fndef)|line|pragma|undef|warning)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x2

    :goto_6
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getPreprocessorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_6

    const/4 v4, 0x0

    const/4 v13, 0x3

    :cond_6
    const-string v10, "(@(interface|protocol|implementation))\\s+(([A-Za-z_][A-Za-z0-9_]*)(\\s*:\\s*([A-Za-z_][A-Za-z0-9_]*))?\\b)?"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x2

    :goto_7
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getTypeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_7

    const/4 v10, 0x5

    const/4 v13, 0x4

    :cond_7
    const-string v10, "(-|\\+)(\\s*\\(.*?\\)\\s*)([A-Za-z_][A-Za-z0-9_]*)(\\s*:\\s*\\(.*?\\)\\s*([A-Za-z_][A-Za-z0-9_]*))?"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x1

    :goto_8
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getVariableStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x5

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x5

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_8

    const/4 v4, 0x4

    const/4 v13, 0x1

    :cond_8
    const-string v10, "@end\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x1

    :goto_9
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getTypeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_9

    const/4 v8, 0x2

    const/4 v13, 0x4

    :cond_9
    const-string v10, "\\bk[A-Z]\\w*\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x4

    :goto_a
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getUserConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_a

    const/4 v3, 0x5

    const/4 v13, 0x4

    :cond_a
    const-string v10, "!|\\$|%|&|\\*|\\-|\\+|~|=|<|>|\\?|\\:|\\^|\\b(sizeof|alignof|Alignof|type|not|and|or|xor|not_eq|and_eq|or_eq|xor_eq|compl|bitand|bitor|const_cast|dynamic_cast|reinterpret_cast|static_cast)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x0

    :goto_b
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_b

    const/4 v10, 0x1

    const/4 v13, 0x7

    :cond_b
    const-string v10, "(#\\s*include)\\s+((<[^>\n]*>)|(\"[^\"\n]*\"))?"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x3

    :goto_c
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getPreprocessorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_c

    const/4 v5, 0x6

    const/4 v13, 0x5

    :cond_c
    const-string v10, "\\b((0(x|X)[0-9a-fA-F]*)|(([0-9]+\\.?[0-9]*)|(\\.[0-9]+))((e|E)(\\+|-)?[0-9]+)?)(L|l|UL|ul|u|U|F|f|ll|LL|ull|ULL)?\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x2

    :goto_d
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_d

    const/4 v0, 0x5

    const/4 v13, 0x4

    :cond_d
    const-string v10, "\\b(NULL|true|false|TRUE|FALSE|YES|NO|Nil|nil|ALL|ANY|SOME|NONE|NULL|NIL|SELF|TRUE|YES|FALSE|NO|FIRST|LAST|SIZE)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x3

    :goto_e
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_e

    const/4 v1, 0x6

    const/4 v13, 0x7

    :cond_e
    const-string v10, "\\bNS([a-zA-Z0-9_]*)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x6

    :goto_f
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_f

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_f

    const/4 v6, 0x5

    const/4 v13, 0x5

    :cond_f
    const-string v10, "(#\\s*(import))(\\s+((\".*?\")|(<.*?>)))?"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x4

    :goto_10
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getPreprocessorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_10

    const/4 v4, 0x1

    const/4 v13, 0x0

    :cond_10
    :try_start_0
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_2d

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x2a

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_2a

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v8, v10, -0x2

    const/4 v13, 0x5

    :goto_11
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_11

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v10

    if-nez v10, :cond_11

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v11, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->CStyleBlockCommentEnd:[C

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v10

    if-eqz v10, :cond_29

    const/4 v13, 0x6

    :cond_11
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x6

    :cond_12
    :goto_12
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_2e

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    if-ge v10, v6, :cond_2e

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_19

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x22

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_19

    const/4 v13, 0x4

    const/4 v9, 0x1

    const/4 v13, 0x3

    const/4 v3, 0x0

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    const/4 v11, 0x1

    if-lt v10, v11, :cond_13

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v11, -0x2

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v10

    const/16 v11, 0x40

    if-ne v10, v11, :cond_13

    const/4 v13, 0x0

    add-int/lit8 v8, v8, -0x1

    const/4 v13, 0x1

    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_14

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v10

    if-nez v10, :cond_14

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_14

    const/4 v13, 0x1

    if-nez v3, :cond_16

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x22

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_16

    const/4 v13, 0x5

    const/4 v9, 0x0

    const/4 v13, 0x3

    :cond_14
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x4

    if-nez v9, :cond_18

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x1

    :cond_15
    :goto_14
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_12

    const/4 v1, 0x0

    const/4 v13, 0x3

    :catch_0
    move-exception v1

    const/4 v13, 0x6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    const/4 v13, 0x0

    :goto_15
    nop

    return-void

    const/4 v10, 0x5

    const/4 v13, 0x6

    :cond_16
    if-nez v3, :cond_17

    :try_start_1
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x5c

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_17

    const/4 v13, 0x1

    const/4 v3, 0x1

    const/4 v13, 0x1

    goto :goto_13

    const/4 v13, 0x7

    const/4 v13, 0x6

    :cond_17
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_14

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_14

    const/4 v13, 0x7

    const/4 v3, 0x0

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_13

    const/4 v4, 0x0

    const/4 v13, 0x5

    :cond_18
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_14

    const/4 v2, 0x1

    const/4 v13, 0x6

    :cond_19
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_10

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v13, 0x3

    const/4 v9, 0x1

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-eqz v10, :cond_1b

    const/4 v13, 0x5

    const/4 v9, 0x0

    const/4 v13, 0x0

    :cond_1a
    :goto_16
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x4

    if-nez v9, :cond_28

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_14

    const/4 v8, 0x7

    const/4 v13, 0x6

    :cond_1b
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x5c

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_26

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x78

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_1f

    const/4 v13, 0x6

    const/4 v9, 0x0

    const/4 v13, 0x4

    const/4 v4, 0x0

    :goto_17
    const/4 v10, 0x4

    if-ge v4, v10, :cond_1c

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v0

    const/4 v13, 0x1

    const/16 v10, 0x27

    if-ne v0, v10, :cond_1d

    const/4 v13, 0x3

    :cond_1c
    :goto_18
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_1a

    const/4 v13, 0x3

    const/4 v9, 0x1

    const/4 v13, 0x3

    :goto_19
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_1a

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_1a

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_1a

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_1a

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_19

    const/4 v0, 0x2

    const/4 v13, 0x7

    :cond_1d
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_1e

    const/16 v10, 0x61

    if-eq v0, v10, :cond_1e

    const/16 v10, 0x62

    if-eq v0, v10, :cond_1e

    const/16 v10, 0x63

    if-eq v0, v10, :cond_1e

    const/16 v10, 0x64

    if-eq v0, v10, :cond_1e

    const/16 v10, 0x65

    if-eq v0, v10, :cond_1e

    const/16 v10, 0x66

    if-eq v0, v10, :cond_1e

    const/16 v10, 0x41

    if-eq v0, v10, :cond_1e

    const/16 v10, 0x42

    if-eq v0, v10, :cond_1e

    const/16 v10, 0x43

    if-eq v0, v10, :cond_1e

    const/16 v10, 0x44

    if-eq v0, v10, :cond_1e

    const/16 v10, 0x45

    if-eq v0, v10, :cond_1e

    const/16 v10, 0x46

    if-eq v0, v10, :cond_1e

    const/16 v10, 0x27

    if-eq v0, v10, :cond_1e

    const/4 v13, 0x1

    const/4 v9, 0x1

    const/4 v13, 0x6

    goto :goto_18

    const/4 v10, 0x4

    const/4 v13, 0x7

    :cond_1e
    add-int/lit8 v4, v4, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_17

    const/4 v5, 0x6

    const/4 v13, 0x1

    :cond_1f
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_24

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x5

    const/4 v4, 0x0

    :goto_1a
    const/4 v10, 0x4

    if-ge v4, v10, :cond_20

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v0

    const/4 v13, 0x0

    const/16 v10, 0x27

    if-ne v0, v10, :cond_21

    const/4 v13, 0x1

    :cond_20
    :goto_1b
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_23

    const/4 v13, 0x3

    const/4 v9, 0x1

    const/4 v13, 0x3

    :goto_1c
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_1a

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_1a

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_1a

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_1a

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_1c

    const/4 v9, 0x7

    const/4 v13, 0x2

    :cond_21
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_22

    const/4 v13, 0x3

    const/4 v9, 0x1

    const/4 v13, 0x3

    goto :goto_1b

    const/4 v5, 0x3

    const/4 v13, 0x3

    :cond_22
    add-int/lit8 v4, v4, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_1a

    const/4 v9, 0x1

    const/4 v13, 0x3

    :cond_23
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_1a

    const/4 v13, 0x2

    const/4 v9, 0x0

    goto/16 :goto_16

    const/4 v4, 0x2

    const/4 v13, 0x2

    :cond_24
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_1a

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_25

    const/4 v13, 0x5

    const/4 v9, 0x0

    goto/16 :goto_16

    const/4 v12, 0x7

    const/4 v13, 0x4

    :cond_25
    :goto_1d
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_1a

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_1a

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_1a

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_1a

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_1d

    const/4 v1, 0x0

    const/4 v13, 0x7

    :cond_26
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_1a

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_27

    const/4 v13, 0x7

    const/4 v9, 0x0

    goto/16 :goto_16

    const/4 v4, 0x1

    const/4 v13, 0x7

    :cond_27
    :goto_1e
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_1a

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_1a

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_1a

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_1a

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_1e

    const/4 v10, 0x7

    const/4 v13, 0x6

    :cond_28
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_14

    const/4 v10, 0x3

    const/4 v13, 0x7

    :cond_29
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_11

    const/4 v12, 0x0

    const/4 v13, 0x4

    :cond_2a
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_15

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v8, v10, -0x2

    const/4 v13, 0x2

    :goto_1f
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_2b

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v10

    if-nez v10, :cond_2b

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_2c

    const/4 v13, 0x1

    :cond_2b
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_12

    const/4 v7, 0x4

    const/4 v13, 0x7

    :cond_2c
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_1f

    const/4 v9, 0x4

    const/4 v13, 0x4

    :cond_2d
    iget-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x5b

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_15

    const/4 v13, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->parseMethodCall()V

    goto/16 :goto_14

    const/4 v4, 0x0

    const/4 v13, 0x1

    :cond_2e
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_15

    const/4 v4, 0x3
.end method

.method public parseMethodCall()V
    .locals 11

    const/4 v10, 0x6

    const/16 v9, 0x5d

    const/16 v8, 0x22

    const/4 v10, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v3

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v10, 0x5

    :goto_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v10, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v10, 0x4

    :cond_0
    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v6

    if-ne v6, v9, :cond_c

    const/4 v10, 0x3

    :cond_1
    :goto_1
    nop

    return-void

    const/4 v10, 0x7

    const/4 v10, 0x2

    :cond_2
    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v6

    const/16 v7, 0x5f

    if-ne v6, v7, :cond_4

    const/4 v10, 0x4

    :cond_3
    const/4 v2, 0x1

    const/4 v10, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_0

    const/4 v7, 0x4

    const/4 v10, 0x6

    :cond_4
    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v7, 0x5b

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v10, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    iget-object v7, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v6, v3, v7}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v10, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->parseMethodCall()V

    const/4 v10, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v3

    goto :goto_0

    const/4 v8, 0x4

    const/4 v10, 0x3

    :cond_5
    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v8}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v10, 0x4

    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    const/4 v7, 0x1

    if-lt v6, v7, :cond_6

    const/4 v10, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v7, -0x2

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v6

    const/16 v7, 0x40

    if-ne v6, v7, :cond_6

    const/4 v10, 0x7

    add-int/lit8 v4, v4, -0x1

    const/4 v10, 0x0

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v10, 0x5

    if-nez v1, :cond_8

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6, v8}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x3

    :cond_7
    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v10, 0x2

    if-nez v5, :cond_a

    const/4 v10, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v10, 0x1

    :goto_3
    const/4 v3, -0x1

    const/4 v10, 0x5

    goto/16 :goto_0

    const/4 v4, 0x4

    const/4 v10, 0x1

    :cond_8
    if-nez v1, :cond_9

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v7, 0x5c

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v10, 0x5

    const/4 v1, 0x1

    const/4 v10, 0x4

    goto :goto_2

    const/4 v10, 0x1

    const/4 v10, 0x4

    :cond_9
    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v10, 0x2

    const/4 v1, 0x0

    const/4 v10, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_2

    const/4 v2, 0x6

    const/4 v10, 0x5

    :cond_a
    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {p0, v6, v4, v0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_3

    const/4 v3, 0x7

    const/4 v10, 0x4

    :cond_b
    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v6

    if-eq v6, v9, :cond_0

    const/4 v10, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_0

    const/4 v5, 0x7

    const/4 v10, 0x1

    :cond_c
    if-ltz v3, :cond_1

    if-eqz v2, :cond_1

    const/4 v10, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    iget-object v7, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    invoke-virtual {p0, v6, v3, v7}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v10, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->parseMethodCallMethodName()V

    goto/16 :goto_1

    const/4 v2, 0x3
.end method

.method public parseMethodCallMethodName()V
    .locals 9

    const/4 v8, 0x1

    const/16 v7, 0x22

    const/4 v8, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v8, 0x5

    :goto_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v8, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v8, 0x0

    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v2, v6}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v8, 0x7

    nop

    return-void

    const/4 v2, 0x5

    const/4 v8, 0x1

    :cond_1
    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v8, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v2, v6}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v8, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->parseMethodCall()V

    const/4 v8, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    goto :goto_0

    const/4 v7, 0x3

    const/4 v8, 0x2

    :cond_2
    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v8, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v2, v6}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->parseMethodCallMethodNameValue()V

    const/4 v8, 0x6

    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v8, 0x5

    goto :goto_1

    const/4 v2, 0x1

    const/4 v8, 0x3

    :cond_3
    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v8, 0x3

    const/4 v4, 0x1

    const/4 v8, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x2

    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    const/4 v8, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_4

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v5

    const/16 v6, 0x40

    if-ne v5, v6, :cond_4

    const/4 v8, 0x3

    add-int/lit8 v3, v3, -0x1

    const/4 v8, 0x2

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v8, 0x0

    if-nez v1, :cond_6

    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5, v7}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x3

    :cond_5
    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v8, 0x1

    if-nez v4, :cond_8

    const/4 v8, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    invoke-virtual {p0, v5, v3, v0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_0

    const/4 v5, 0x5

    const/4 v8, 0x4

    :cond_6
    if-nez v1, :cond_7

    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v6, 0x5c

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v8, 0x3

    const/4 v1, 0x1

    const/4 v8, 0x2

    goto :goto_2

    const/4 v4, 0x5

    const/4 v8, 0x2

    :cond_7
    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v8, 0x4

    const/4 v1, 0x0

    const/4 v8, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_2

    const/4 v2, 0x2

    const/4 v8, 0x7

    :cond_8
    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    invoke-virtual {p0, v5, v3, v0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_0

    const/4 v2, 0x0

    const/4 v8, 0x0

    :cond_9
    iget-object v5, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_0

    const/4 v3, 0x2
.end method

.method public parseMethodCallMethodNameValue()V
    .locals 8

    const/4 v7, 0x1

    const/16 v6, 0x22

    const/4 v7, 0x3

    :goto_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v7, 0x5

    iget-object v4, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->goBack()C

    const/4 v7, 0x0

    :cond_0
    nop

    return-void

    const/4 v1, 0x0

    const/4 v7, 0x2

    :cond_1
    iget-object v4, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4, v6}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    const/4 v7, 0x5

    iget-object v4, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    const/4 v7, 0x5

    iget-object v4, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v4

    const/16 v5, 0x40

    if-ne v4, v5, :cond_2

    const/4 v7, 0x4

    add-int/lit8 v2, v2, -0x1

    const/4 v7, 0x0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v7, 0x3

    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4, v6}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x5

    :cond_3
    iget-object v4, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v7, 0x2

    if-nez v3, :cond_6

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v4

    invoke-virtual {p0, v4, v2, v0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_0

    const/4 v7, 0x4

    const/4 v7, 0x1

    :cond_4
    if-nez v1, :cond_5

    iget-object v4, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v5, 0x5c

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v7, 0x1

    const/4 v1, 0x1

    const/4 v7, 0x4

    goto :goto_1

    const/4 v1, 0x5

    const/4 v7, 0x0

    :cond_5
    iget-object v4, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v7, 0x7

    const/4 v1, 0x0

    const/4 v7, 0x7

    iget-object v4, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_1

    const/4 v1, 0x7

    const/4 v7, 0x7

    :cond_6
    iget-object v4, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v4

    invoke-virtual {p0, v4, v2, v0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_0

    const/4 v5, 0x2

    const/4 v7, 0x4

    :cond_7
    iget-object v4, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->parseMethodCall()V

    goto/16 :goto_0

    const/4 v3, 0x7

    const/4 v7, 0x0

    :cond_8
    iget-object v4, p0, Lcom/henrythompson/quoda/language/ObjectiveCStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_0

    const/4 v1, 0x7
.end method
