.class public Lcom/henrythompson/quoda/language/CPlusPlusStyler;
.super Lcom/henrythompson/quoda/language/LanguageStyler;


# instance fields
.field private CStyleBlockCommentEnd:[C

.field mSource:Lcom/henrythompson/quoda/styler/StringStream;

.field mTheme:Lcom/henrythompson/quoda/styler/Theme;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/LanguageStyler;-><init>()V

    const/4 v1, 0x7

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->CStyleBlockCommentEnd:[C

    nop

    return-void

    const/4 v1, 0x7

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

    const/4 v1, 0x1

    const-string v0, "c++"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    const/4 v1, 0x7
.end method

.method public parse()V
    .locals 14

    const/4 v13, 0x3

    const/4 v13, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->getStream()Lcom/henrythompson/quoda/styler/StringStream;

    move-result-object v10

    iput-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v13, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v10

    iput-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->setCaseSensitive(Z)V

    const/4 v13, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->getParseEnd()I

    move-result v6

    const/4 v13, 0x1

    const-string v10, "(\\b(?!(new|friend|explicit|virtual|while|for|do|if|else|switch|sizeof|alignof|Alignof|type|catch|enumerate|return|r?iterate)\\s*\\()(?:(?!NS)[A-Za-z_][A-Za-z0-9_]*+\\b|::)+)\\s*(\\()"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x3

    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_0

    const/4 v6, 0x0

    const/4 v13, 0x0

    :cond_0
    const-string v10, "\\b(class|struct)\\s+([_A-Za-z][_A-Za-z0-9]*\\b)"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_1

    const/4 v13, 0x7

    const/4 v13, 0x3

    :cond_1
    const-string v10, "\\b(namespace|friend|export|mutable|typename|break|case|continue|default|define|do|else|for|goto|if|_Pragma|return|switch|while|const|extern|register|restrict|static|volatile|inline|private|protected|public|catch|operator|try|throw|using|delete|new|this)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_2

    const/4 v6, 0x0

    const/4 v13, 0x5

    :cond_2
    const-string v10, "#\\s*(define(d)?|e(rror|l(if|se))|i(f|fdef|fndef)|line|pragma|undef|warning)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x7

    :goto_3
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getPreprocessorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_3

    const/4 v7, 0x6

    const/4 v13, 0x0

    :cond_3
    const-string v10, "\\b(class|wchar_t|template|asm|__asm__|auto|bool|_Bool|char|_Complex|double|enum|float|_Imaginary|int|long|s(hort|igned|truct)|typedef|un(ion|signed)|void|u_(char|short|int|long|quad_t)|u(short|int)|((quad|qaddr|caddr|daddr|dev|fixpt|blkcnt|blksize|gid|in_addr|in_port|ino|key|mMode|nlink|id|pid|off|segsz|swblk|uid|id|clock|size|ssize|time|useconds|suseconds|pthread_attr|pthread_cond|pthread_condattr|pthread_mutex|pthread_mutexattr|pthread_once|pthread_rwlock|pthread_rwlockattr|pthread|pthread_key|int8|int16|int32|int64|uint8|uint16|uint32|uint64|int_least8|int_least16|int_least32|int_least64|uint_least8|uint_least16|uint_least32|uint_least64|int_fast8|int_fast16|int_fast32|int_fast64|uint_fast8|uint_fast16|uint_fast32|uint_fast64|intptr|uintptr|intmax|intmax|uintmax|uintmax)_t)|AbsoluteTime|B(oolean|yt(e|eCount|eOffset|ePtr))|Co(mpTimeValue|nst(LogicalAddress|StrFileNameParam|StringPtr))|Duration|Fixe(d|dPtr)|Float(3(2|2Point)|64|80|96)|FourCharCode|Frac(t|tPtr)|Handle|ItemCount|LogicalAddress|O(ptionBits|S(Err|Status|Type|TypePtr))|P(hysicalAddress|roc(essSerialNumbe(r|rPtr)|Handle)|tr)|ResTyp(e|ePtr)|ShortFixe(d|dPtr)|S(ignedByte|Int(16|32|64|8)|ize|tr(FileName|(Handle|Ptr)))|Time(Base|Record|Scale|Value|Value64)|U(Int(16|32|64|8)|ni(Cha(r|rCount|rCountPtr|rPtr)|codeScalarValue|(versalPro(cHandle|cPtr))|nsigne(dFixed|dFixedPtr|dWide)|TF(16Char|32Char|8Char))))\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x2

    :goto_4
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getTypeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_4

    const/4 v4, 0x5

    const/4 v13, 0x5

    :cond_4
    const-string v10, "\\bk[A-Z]\\w*\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x5

    const-string v10, "\\b(f|m)[A-Z]\\w*\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x7

    :goto_5
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getVariableStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_5

    const/4 v13, 0x5

    const/4 v13, 0x5

    :cond_5
    const-string v10, "!|\\$|%|&|\\*|\\-|\\+|~|=|<|>|\\?|\\:|\\^|\\b(sizeof|alignof|Alignof|type|not|and|or|xor|not_eq|and_eq|or_eq|xor_eq|compl|bitand|bitor|const_cast|dynamic_cast|reinterpret_cast|static_cast)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x1

    :goto_6
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_6

    const/4 v4, 0x5

    const/4 v13, 0x0

    :cond_6
    const-string v10, "(#\\s*(import|include))\\s+((<[^>\n]*>)|(\"[^\"\n]*\"))?"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x3

    :goto_7
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getPreprocessorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->start(I)I

    move-result v11

    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Ljava/util/regex/Matcher;->end(I)I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_7

    const/4 v11, 0x1

    const/4 v13, 0x2

    :cond_7
    const-string v10, "\\b((0(x|X)[0-9a-fA-F]*)|(([0-9]+\\.?[0-9]*)|(\\.[0-9]+))((e|E)(\\+|-)?[0-9]+)?)(L|l|UL|ul|u|U|F|f|ll|LL|ull|ULL)?\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x6

    :goto_8
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_8

    const/4 v11, 0x5

    const/4 v13, 0x2

    :cond_8
    const-string v10, "\\b(NULL|true|false|TRUE|FALSE)\\b"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    invoke-virtual {v5, v10, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v13, 0x5

    :goto_9
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    invoke-virtual {p0, v10, v11, v12}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_9

    const/4 v4, 0x0

    const/4 v13, 0x1

    :cond_9
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x2a

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_25

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x2a

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_22

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v8, v10, -0x3

    const/4 v13, 0x1

    :goto_a
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v10

    if-nez v10, :cond_a

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v11, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->CStyleBlockCommentEnd:[C

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v10

    if-eqz v10, :cond_21

    const/4 v13, 0x3

    :cond_a
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x1

    :cond_b
    :goto_b
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_28

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    if-ge v10, v6, :cond_28

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v0

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_11

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x22

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_11

    const/4 v13, 0x1

    const/4 v9, 0x1

    const/4 v13, 0x1

    const/4 v3, 0x0

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    const/4 v13, 0x5

    :goto_c
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_c

    const/4 v13, 0x0

    if-nez v3, :cond_e

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x22

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v13, 0x5

    const/4 v9, 0x0

    const/4 v13, 0x6

    :cond_c
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x0

    if-nez v9, :cond_10

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x6

    :cond_d
    :goto_d
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_b

    const/4 v11, 0x6

    const/4 v13, 0x0

    :cond_e
    if-nez v3, :cond_f

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x5c

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_f

    const/4 v13, 0x7

    const/4 v3, 0x1

    const/4 v13, 0x2

    goto :goto_c

    const/4 v4, 0x2

    const/4 v13, 0x0

    :cond_f
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_c

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_c

    const/4 v0, 0x6

    const/4 v13, 0x0

    :cond_10
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_d

    const/4 v6, 0x0

    const/4 v13, 0x7

    :cond_11
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v13, 0x7

    const/4 v9, 0x1

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v8, v10, -0x1

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-eqz v10, :cond_13

    const/4 v13, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x3

    :cond_12
    :goto_e
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x3

    if-nez v9, :cond_20

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_d

    const/4 v11, 0x3

    const/4 v13, 0x0

    :cond_13
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x5c

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_1e

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x78

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_17

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x4

    const/4 v4, 0x0

    :goto_f
    const/4 v10, 0x4

    if-ge v4, v10, :cond_14

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v1

    const/4 v13, 0x6

    const/16 v10, 0x27

    if-ne v1, v10, :cond_15

    const/4 v13, 0x4

    :cond_14
    :goto_10
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_12

    const/4 v13, 0x2

    const/4 v9, 0x1

    const/4 v13, 0x5

    :goto_11
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_12

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_11

    const/4 v7, 0x5

    const/4 v13, 0x1

    :cond_15
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_16

    const/16 v10, 0x61

    if-eq v1, v10, :cond_16

    const/16 v10, 0x62

    if-eq v1, v10, :cond_16

    const/16 v10, 0x63

    if-eq v1, v10, :cond_16

    const/16 v10, 0x64

    if-eq v1, v10, :cond_16

    const/16 v10, 0x65

    if-eq v1, v10, :cond_16

    const/16 v10, 0x66

    if-eq v1, v10, :cond_16

    const/16 v10, 0x41

    if-eq v1, v10, :cond_16

    const/16 v10, 0x42

    if-eq v1, v10, :cond_16

    const/16 v10, 0x43

    if-eq v1, v10, :cond_16

    const/16 v10, 0x44

    if-eq v1, v10, :cond_16

    const/16 v10, 0x45

    if-eq v1, v10, :cond_16

    const/16 v10, 0x46

    if-eq v1, v10, :cond_16

    const/16 v10, 0x27

    if-eq v1, v10, :cond_16

    const/4 v13, 0x5

    const/4 v9, 0x1

    const/4 v13, 0x0

    goto :goto_10

    const/4 v2, 0x0

    const/4 v13, 0x4

    :cond_16
    add-int/lit8 v4, v4, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_f

    const/4 v9, 0x6

    const/4 v13, 0x2

    :cond_17
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v13, 0x3

    const/4 v9, 0x0

    const/4 v13, 0x7

    const/4 v4, 0x0

    :goto_12
    const/4 v10, 0x4

    if-ge v4, v10, :cond_18

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v1

    const/4 v13, 0x6

    const/16 v10, 0x27

    if-ne v1, v10, :cond_19

    const/4 v13, 0x3

    :cond_18
    :goto_13
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_1b

    const/4 v13, 0x0

    const/4 v9, 0x1

    const/4 v13, 0x7

    :goto_14
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_12

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_14

    const/4 v13, 0x1

    const/4 v13, 0x3

    :cond_19
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_1a

    const/4 v13, 0x4

    const/4 v9, 0x1

    const/4 v13, 0x5

    goto :goto_13

    const/4 v8, 0x5

    const/4 v13, 0x0

    :cond_1a
    add-int/lit8 v4, v4, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_12

    const/4 v11, 0x2

    const/4 v13, 0x3

    :cond_1b
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v13, 0x7

    const/4 v9, 0x0

    goto/16 :goto_e

    const/4 v5, 0x4

    const/4 v13, 0x7

    :cond_1c
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_12

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_1d

    const/4 v13, 0x0

    const/4 v9, 0x0

    goto/16 :goto_e

    const/4 v5, 0x7

    const/4 v13, 0x2

    :cond_1d
    :goto_15
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_12

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_15

    const/4 v9, 0x3

    const/4 v13, 0x2

    :cond_1e
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_12

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_1f

    const/4 v13, 0x2

    const/4 v9, 0x0

    goto/16 :goto_e

    const/4 v0, 0x0

    const/4 v13, 0x3

    :cond_1f
    :goto_16
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x27

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-nez v10, :cond_12

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v10

    if-nez v10, :cond_12

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_12

    const/4 v13, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_16

    const/4 v2, 0x1

    const/4 v13, 0x5

    :cond_20
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_d

    const/4 v0, 0x1

    const/4 v13, 0x6

    :cond_21
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_a

    const/4 v8, 0x1

    const/4 v13, 0x5

    :cond_22
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v8, v10, -0x2

    const/4 v13, 0x2

    :goto_17
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_23

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v10

    if-nez v10, :cond_23

    const/4 v13, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v11, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->CStyleBlockCommentEnd:[C

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v10

    if-eqz v10, :cond_24

    const/4 v13, 0x0

    :cond_23
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_b

    const/4 v4, 0x6

    const/4 v13, 0x2

    :cond_24
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_17

    const/4 v4, 0x1

    const/4 v13, 0x0

    :cond_25
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0x2f

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v10

    add-int/lit8 v8, v10, -0x2

    const/4 v13, 0x3

    :goto_18
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->isCancelled()Z

    move-result v10

    if-nez v10, :cond_26

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v10

    if-nez v10, :cond_26

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v10

    if-eqz v10, :cond_27

    const/4 v13, 0x2

    :cond_26
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v10

    invoke-virtual {p0, v10, v8, v2}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_b

    const/4 v10, 0x7

    const/4 v13, 0x1

    :cond_27
    iget-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_18

    const/4 v9, 0x5

    const/4 v13, 0x4

    :cond_28
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v13, 0x4

    nop

    return-void

    const/4 v1, 0x2
.end method
