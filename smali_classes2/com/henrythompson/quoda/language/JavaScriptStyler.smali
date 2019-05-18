.class public Lcom/henrythompson/quoda/language/JavaScriptStyler;
.super Lcom/henrythompson/quoda/language/LanguageStyler;


# instance fields
.field private CStyleBlockCommentEnd:[C

.field private mSource:Lcom/henrythompson/quoda/styler/StringStream;

.field private mTheme:Lcom/henrythompson/quoda/styler/Theme;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/LanguageStyler;-><init>()V

    const/4 v1, 0x7

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->CStyleBlockCommentEnd:[C

    nop

    return-void

    const/4 v1, 0x2

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

    const/4 v1, 0x7

    const/4 v1, 0x1

    const-string v0, "javascript"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    const/4 v0, 0x5
.end method

.method public parse()V
    .locals 15

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->getStream()Lcom/henrythompson/quoda/styler/StringStream;

    move-result-object v12

    iput-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v12

    iput-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/henrythompson/quoda/styler/StringStream;->setCaseSensitive(Z)V

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->getParseEnd()I

    move-result v6

    const-string v12, "\\b(function|prototype|debugger|super|this|const|export|extends|final|implements|native|private|protected|public|static|synchronized|throws|transient|volatile|delete|in|instanceof|new|typeof|with|break|case|catch|continue|default|do|else|finally|for|goto|if|import|package|return|switch|throw|try|while)\\b"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v12

    invoke-virtual {v5, v12, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v12

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v13

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v14

    invoke-virtual {p0, v12, v13, v14}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_0

    const/4 v1, 0x3

    :cond_0
    const-string v12, "\\b(boolean|byte|char|class|double|enum|float|int|interface|long|short|var|void)\\b"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v12

    invoke-virtual {v5, v12, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/Theme;->getTypeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v12

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v13

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v14

    invoke-virtual {p0, v12, v13, v14}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_1

    const/4 v2, 0x3

    :cond_1
    const-string v12, "!|\\$|%|&|\\*|\\-|\\+|~|=|<|>|\\?|\\:|\\^|\\b(delete|in|instanceof|new|typeof|void|with)\\b"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v12

    invoke-virtual {v5, v12, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v12

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v13

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v14

    invoke-virtual {p0, v12, v13, v14}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_2

    const/4 v0, 0x1

    :cond_2
    const-string v12, "\\b(((0(x|X)[0-9a-fA-F]+)|([0-9]+(\\.[0-9]+)?)))\\b"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v12

    invoke-virtual {v5, v12, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_3
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v12

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v13

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v14

    invoke-virtual {p0, v12, v13, v14}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_3

    const/4 v4, 0x7

    :cond_3
    const-string v12, "\\b(true|false|null|NaN|Infinity|undefined)\\b"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v12

    invoke-virtual {v5, v12, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    :goto_4
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/Theme;->getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v12

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v13

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v14

    invoke-virtual {p0, v12, v13, v14}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_4

    const/4 v10, 0x0

    :cond_4
    const/4 v8, 0x0

    :goto_5
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->isCancelled()Z

    move-result v12

    if-nez v12, :cond_21

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v12

    if-ge v12, v6, :cond_21

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v0

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v12

    if-nez v12, :cond_b

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v13, 0x22

    invoke-virtual {v12, v13}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v12

    add-int/lit8 v10, v12, -0x1

    :goto_6
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->isCancelled()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v13, 0x22

    invoke-virtual {v12, v13}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v12

    if-eqz v12, :cond_7

    const/4 v11, 0x0

    :cond_5
    :goto_7
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    if-nez v11, :cond_a

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v12

    invoke-virtual {p0, v12, v10, v2}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    :goto_8
    const/4 v8, 0x0

    :cond_6
    :goto_9
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_5

    const/4 v7, 0x0

    :cond_7
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v12

    if-nez v12, :cond_9

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v13, 0x5c

    invoke-virtual {v12, v13}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v12

    if-eqz v12, :cond_9

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    :cond_8
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_6

    const/4 v4, 0x1

    :cond_9
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_7

    const/4 v0, 0x0

    :cond_a
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v12

    invoke-virtual {p0, v12, v10, v2}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_8

    const/4 v12, 0x2

    :cond_b
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v12

    if-nez v12, :cond_11

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v13, 0x27

    invoke-virtual {v12, v13}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v12

    if-eqz v12, :cond_11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v12

    add-int/lit8 v10, v12, -0x1

    :goto_a
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->isCancelled()Z

    move-result v12

    if-nez v12, :cond_c

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v12

    if-nez v12, :cond_c

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v13, 0x27

    invoke-virtual {v12, v13}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v11, 0x0

    :cond_c
    :goto_b
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    if-nez v11, :cond_10

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v12

    invoke-virtual {p0, v12, v10, v2}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    :goto_c
    const/4 v8, 0x0

    goto/16 :goto_9

    const/4 v5, 0x1

    :cond_d
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v12

    if-nez v12, :cond_f

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v13, 0x5c

    invoke-virtual {v12, v13}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v12

    if-eqz v12, :cond_f

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    :cond_e
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_a

    const/4 v4, 0x1

    :cond_f
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v12

    if-nez v12, :cond_c

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v12

    if-eqz v12, :cond_e

    goto :goto_b

    const/4 v5, 0x5

    :cond_10
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v12

    invoke-virtual {p0, v12, v10, v2}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_c

    const/4 v6, 0x6

    :cond_11
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v13, 0x2f

    invoke-virtual {v12, v13}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v12

    if-eqz v12, :cond_1e

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v13, 0x2a

    invoke-virtual {v12, v13}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v12

    if-eqz v12, :cond_14

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v12

    add-int/lit8 v10, v12, -0x2

    :goto_d
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->isCancelled()Z

    move-result v12

    if-nez v12, :cond_12

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v12

    if-nez v12, :cond_12

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v13, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->CStyleBlockCommentEnd:[C

    invoke-virtual {v12, v13}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v12

    if-eqz v12, :cond_13

    :cond_12
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v12

    invoke-virtual {p0, v12, v10, v2}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v8, 0x0

    goto/16 :goto_5

    const/4 v10, 0x5

    :cond_13
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_d

    const/4 v1, 0x5

    :cond_14
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v13, 0x2f

    invoke-virtual {v12, v13}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v12

    if-eqz v12, :cond_17

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v12

    add-int/lit8 v10, v12, -0x2

    :goto_e
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->isCancelled()Z

    move-result v12

    if-nez v12, :cond_15

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v12

    if-nez v12, :cond_15

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v13, 0xa

    invoke-virtual {v12, v13}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v12

    if-eqz v12, :cond_16

    :cond_15
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v12

    invoke-virtual {p0, v12, v10, v2}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v8, 0x0

    goto/16 :goto_5

    const/4 v11, 0x5

    :cond_16
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_e

    const/4 v13, 0x1

    :cond_17
    if-eqz v8, :cond_6

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v12

    add-int/lit8 v10, v12, -0x1

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v12

    iget-object v13, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v13}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v13

    sub-int v3, v12, v13

    const/4 v4, 0x0

    :goto_f
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->isCancelled()Z

    move-result v12

    if-nez v12, :cond_1c

    if-ge v4, v3, :cond_1c

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12, v4}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v12

    const/16 v13, 0x5c

    if-ne v12, v13, :cond_19

    add-int/lit8 v4, v4, 0x1

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    const/4 v5, 0x7

    :cond_19
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12, v4}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v12

    const/16 v13, 0x2f

    if-ne v12, v13, :cond_1d

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    add-int/lit8 v13, v4, 0x1

    invoke-virtual {v12, v13}, Lcom/henrythompson/quoda/styler/StringStream;->advance(I)C

    const/4 v9, 0x0

    :goto_10
    const/4 v12, 0x3

    if-ge v9, v12, :cond_1b

    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12, v9}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v1

    const/16 v12, 0x69

    if-eq v1, v12, :cond_1a

    const/16 v12, 0x67

    if-eq v1, v12, :cond_1a

    const/16 v12, 0x6d

    if-ne v1, v12, :cond_1b

    :cond_1a
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    add-int/lit8 v9, v9, 0x1

    goto :goto_10

    const/4 v7, 0x7

    :cond_1b
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v12

    iget-object v13, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v13}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v13

    invoke-virtual {p0, v12, v10, v13}, Lcom/henrythompson/quoda/language/JavaScriptStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    :cond_1c
    :goto_11
    const/4 v8, 0x0

    goto/16 :goto_9

    const/4 v8, 0x3

    :cond_1d
    iget-object v12, p0, Lcom/henrythompson/quoda/language/JavaScriptStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v12, v4}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v12

    const/16 v13, 0xa

    if-ne v12, v13, :cond_18

    goto :goto_11

    const/4 v13, 0x6

    :cond_1e
    const/16 v12, 0x28

    if-eq v0, v12, :cond_1f

    const/16 v12, 0x3d

    if-eq v0, v12, :cond_1f

    const/16 v12, 0x5b

    if-eq v0, v12, :cond_1f

    const/16 v12, 0x26

    if-eq v0, v12, :cond_1f

    const/16 v12, 0x3a

    if-eq v0, v12, :cond_1f

    const/16 v12, 0x3f

    if-eq v0, v12, :cond_1f

    const/16 v12, 0x2c

    if-ne v0, v12, :cond_20

    :cond_1f
    const/4 v8, 0x1

    goto/16 :goto_9

    const/4 v5, 0x2

    :cond_20
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v12

    if-nez v12, :cond_6

    const/4 v8, 0x0

    goto/16 :goto_9

    const/4 v10, 0x3

    :cond_21
    nop

    return-void

    const/4 v14, 0x1
.end method
