.class public Lcom/henrythompson/quoda/language/HtmlStyler;
.super Lcom/henrythompson/quoda/language/LanguageStyler;


# instance fields
.field private mHTMLCdataStart:[C

.field private mHTMLCommentStart:[C

.field private mHTMLDoctypeStart:[C

.field private mHTMLPhpShorthandStart:[C

.field private mHTMLPhpStart:[C

.field private mHTMLScriptStart:[C

.field private mHTMLStyleStart:[C

.field private mHTMLXmlStart:[C

.field mSource:Lcom/henrythompson/quoda/styler/StringStream;

.field mTheme:Lcom/henrythompson/quoda/styler/Theme;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x5

    const/4 v1, 0x2

    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/LanguageStyler;-><init>()V

    const/4 v3, 0x4

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mHTMLCommentStart:[C

    const/4 v3, 0x3

    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mHTMLCdataStart:[C

    const/4 v3, 0x6

    new-array v0, v1, [C

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mHTMLDoctypeStart:[C

    const/4 v3, 0x1

    new-array v0, v2, [C

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mHTMLXmlStart:[C

    const/4 v3, 0x2

    new-array v0, v2, [C

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mHTMLPhpStart:[C

    const/4 v3, 0x2

    new-array v0, v1, [C

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mHTMLPhpShorthandStart:[C

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mHTMLStyleStart:[C

    const/4 v3, 0x3

    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mHTMLScriptStart:[C

    nop

    return-void

    const/4 v1, 0x2

    const/4 v3, 0x6

    :array_0
    .array-data 2
        0x3cs
        0x21s
        0x2ds
        0x2ds
    .end array-data

    const/4 v3, 0x1

    nop

    :array_1
    .array-data 2
        0x3cs
        0x21s
        0x5bs
        0x43s
        0x44s
        0x41s
        0x54s
        0x41s
        0x5bs
    .end array-data

    const/4 v3, 0x5

    :array_2
    .array-data 2
        0x3cs
        0x21s
    .end array-data

    const/4 v3, 0x1

    nop

    :array_3
    .array-data 2
        0x3cs
        0x3fs
        0x78s
        0x6ds
        0x6cs
    .end array-data

    const/4 v3, 0x2

    :array_4
    .array-data 2
        0x3cs
        0x3fs
        0x70s
        0x68s
        0x70s
    .end array-data

    const/4 v3, 0x1

    :array_5
    .array-data 2
        0x3cs
        0x3fs
    .end array-data

    const/4 v3, 0x2

    nop

    :array_6
    .array-data 2
        0x3cs
        0x73s
        0x74s
        0x79s
        0x6cs
        0x65s
    .end array-data

    const/4 v3, 0x4

    nop

    :array_7
    .array-data 2
        0x3cs
        0x73s
        0x63s
        0x72s
        0x69s
        0x70s
        0x74s
    .end array-data
.end method

.method private parseCDATA()V
    .locals 5

    const/4 v4, 0x4

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    add-int/lit8 v1, v2, -0x9

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v3, "]]>"

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(Ljava/lang/String;)I

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/Theme;->getUserConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/henrythompson/quoda/language/HtmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v4, 0x1

    nop

    return-void

    const/4 v3, 0x4
.end method

.method private parseComment()V
    .locals 5

    const/4 v4, 0x4

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    add-int/lit8 v1, v2, -0x4

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(Ljava/lang/String;)I

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/henrythompson/quoda/language/HtmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v4, 0x3

    nop

    return-void

    const/4 v0, 0x5
.end method

.method private parseDTD()V
    .locals 5

    const/4 v4, 0x0

    const/4 v4, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    add-int/lit8 v1, v2, -0x2

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(C)I

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/Theme;->getPreprocessorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/henrythompson/quoda/language/HtmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v4, 0x2

    nop

    return-void

    const/4 v1, 0x7
.end method

.method private parseEscapeCharacter()V
    .locals 5

    const/4 v4, 0x0

    const/4 v4, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v4, 0x7

    :goto_0
    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v4, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    :cond_0
    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/Theme;->getEscapeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/henrythompson/quoda/language/HtmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v4, 0x4

    :cond_1
    nop

    return-void

    const/4 v3, 0x1

    const/4 v4, 0x3

    :cond_2
    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_0

    const/4 v2, 0x0
.end method

.method private parseHTMLTag()V
    .locals 14

    const/4 v13, 0x3

    const/16 v12, 0x3e

    const/16 v11, 0x2f

    const/16 v10, 0x27

    const/16 v9, 0x22

    const/4 v8, 0x0

    const/4 v13, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    const/4 v13, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v13, 0x6

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagBraceStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v5, v6, v7}, Lcom/henrythompson/quoda/language/HtmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x2

    :goto_0
    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v13, 0x1

    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v13, 0x2

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    const/4 v13, 0x5

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_1

    if-eq v0, v12, :cond_1

    if-ne v0, v11, :cond_7

    const/4 v13, 0x0

    :cond_1
    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagNameStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/henrythompson/quoda/language/HtmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x6

    :cond_2
    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v13, 0x1

    :goto_2
    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_10

    const/4 v13, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v5

    if-ne v5, v9, :cond_9

    const/4 v13, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagAttributeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v13, 0x7

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    const/4 v13, 0x0

    invoke-virtual {p0, v5, v1, v6}, Lcom/henrythompson/quoda/language/HtmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v13, 0x2

    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v13, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5, v9}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v13, 0x1

    :cond_4
    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v13, 0x2

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    const/4 v13, 0x3

    invoke-virtual {p0, v5, v2, v6}, Lcom/henrythompson/quoda/language/HtmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v13, 0x0

    :cond_5
    :goto_4
    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v6, "/>"

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v13, 0x6

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagAttributeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {p0, v5, v1, v6}, Lcom/henrythompson/quoda/language/HtmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagBraceStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/henrythompson/quoda/language/HtmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    invoke-virtual {p0, v4, v5, v8}, Lcom/henrythompson/quoda/language/HtmlStyler;->addContextSpan(III)V

    const/4 v13, 0x4

    :goto_5
    nop

    return-void

    const/4 v5, 0x5

    const/4 v13, 0x1

    :cond_6
    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagBraceStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/henrythompson/quoda/language/HtmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_0

    const/4 v9, 0x7

    const/4 v13, 0x7

    :cond_7
    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v13, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagNameStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/henrythompson/quoda/language/HtmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_1

    const/4 v3, 0x3

    const/4 v13, 0x5

    :cond_8
    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v13, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_3

    const/4 v1, 0x5

    const/4 v13, 0x3

    :cond_9
    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v5

    if-ne v5, v10, :cond_5

    const/4 v13, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagAttributeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v13, 0x5

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    const/4 v13, 0x6

    invoke-virtual {p0, v5, v1, v6}, Lcom/henrythompson/quoda/language/HtmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x6

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v13, 0x7

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v13, 0x4

    :cond_a
    :goto_6
    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v13, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v13, 0x0

    :cond_b
    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v13, 0x6

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    const/4 v13, 0x1

    invoke-virtual {p0, v5, v2, v6}, Lcom/henrythompson/quoda/language/HtmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x6

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    goto/16 :goto_4

    const/4 v1, 0x3

    const/4 v13, 0x4

    :cond_c
    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-nez v5, :cond_a

    const/4 v13, 0x7

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_6

    const/4 v2, 0x0

    const/4 v13, 0x5

    :cond_d
    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5, v12}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v13, 0x7

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagAttributeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v1, v6}, Lcom/henrythompson/quoda/language/HtmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagBraceStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/henrythompson/quoda/language/HtmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v13, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    invoke-virtual {p0, v4, v5, v8}, Lcom/henrythompson/quoda/language/HtmlStyler;->addContextSpan(III)V

    goto/16 :goto_5

    const/4 v8, 0x2

    const/4 v13, 0x6

    :cond_e
    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-nez v5, :cond_f

    const/4 v13, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_2

    const/4 v11, 0x3

    const/4 v13, 0x2

    :cond_f
    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagAttributeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v5, v1, v6}, Lcom/henrythompson/quoda/language/HtmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_2

    const/4 v4, 0x2

    const/4 v13, 0x3

    :cond_10
    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v3

    const/4 v13, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v13, 0x6

    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x2

    :cond_11
    invoke-virtual {p0, v4, v3, v8}, Lcom/henrythompson/quoda/language/HtmlStyler;->addContextSpan(III)V

    goto/16 :goto_5

    const/4 v6, 0x6
.end method

.method private parseScriptTag()V
    .locals 7

    const/4 v6, 0x6

    const/4 v3, 0x2

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v6, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->parseHTMLTag()V

    const/4 v6, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v6, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/styler/StringStream;->advance(I)C

    const/4 v6, 0x1

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v3, 0x4

    const/4 v6, 0x2

    :cond_1
    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/styler/StringStream;->advance(I)C

    const/4 v6, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "javascript"

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/Language;->getNewStylerObject()Lcom/henrythompson/quoda/language/LanguageStyler;

    move-result-object v0

    const/4 v6, 0x4

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    const-string v1, "</script\\b"

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->getDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->getSyntaxHighlightSpans()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->getContextSpans()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/henrythompson/quoda/language/LanguageStyler;->parse(Ljava/lang/String;Lcom/henrythompson/quoda/styler/StringStream;Lcom/henrythompson/quoda/document/Document;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    const/4 v2, 0x7
.end method

.method private parseStyleTag()V
    .locals 7

    const/4 v6, 0x5

    const/4 v3, 0x2

    const/4 v6, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v6, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->parseHTMLTag()V

    const/4 v6, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/styler/StringStream;->advance(I)C

    const/4 v6, 0x1

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v6, 0x2

    const/4 v6, 0x3

    :cond_1
    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/styler/StringStream;->advance(I)C

    const/4 v6, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "css"

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/Language;->getNewStylerObject()Lcom/henrythompson/quoda/language/LanguageStyler;

    move-result-object v0

    const/4 v6, 0x6

    if-eqz v0, :cond_0

    const/4 v6, 0x4

    const-string v1, "</style\\b"

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->getDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->getSyntaxHighlightSpans()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->getContextSpans()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/henrythompson/quoda/language/LanguageStyler;->parse(Ljava/lang/String;Lcom/henrythompson/quoda/styler/StringStream;Lcom/henrythompson/quoda/document/Document;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    const/4 v5, 0x4
.end method

.method private parseXMLDeclaration()V
    .locals 5

    const/4 v4, 0x1

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    add-int/lit8 v1, v2, -0x5

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(C)I

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/Theme;->getPreprocessorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/henrythompson/quoda/language/HtmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v4, 0x6

    nop

    return-void

    const/4 v3, 0x6
.end method


# virtual methods
.method public canParseLanguage(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x3

    const-string v0, "html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    const/4 v0, 0x5
.end method

.method public parse()V
    .locals 7

    const/4 v6, 0x1

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->getStream()Lcom/henrythompson/quoda/styler/StringStream;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    const/4 v6, 0x1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->setCaseSensitive(Z)V

    const/4 v6, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mHTMLCommentStart:[C

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->parseComment()V

    goto :goto_0

    const/4 v1, 0x0

    const/4 v6, 0x3

    :cond_1
    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mHTMLCdataStart:[C

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v6, 0x6

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->parseCDATA()V

    goto :goto_0

    const/4 v6, 0x6

    const/4 v6, 0x6

    :cond_2
    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mHTMLDoctypeStart:[C

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v6, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->parseDTD()V

    goto :goto_0

    const/4 v2, 0x4

    const/4 v6, 0x3

    :cond_3
    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mHTMLXmlStart:[C

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v6, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->parseXMLDeclaration()V

    goto :goto_0

    const/4 v6, 0x4

    const/4 v6, 0x3

    :cond_4
    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mHTMLPhpStart:[C

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v6, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v6, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "css"

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/Language;->getNewStylerObject()Lcom/henrythompson/quoda/language/LanguageStyler;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    const-string v1, "\\?>"

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->getDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->getSyntaxHighlightSpans()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->getContextSpans()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/henrythompson/quoda/language/LanguageStyler;->parse(Ljava/lang/String;Lcom/henrythompson/quoda/styler/StringStream;Lcom/henrythompson/quoda/document/Document;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    const/4 v1, 0x6

    const/4 v6, 0x2

    :cond_5
    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mHTMLPhpShorthandStart:[C

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v6, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v6, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "php"

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/Language;->getNewStylerObject()Lcom/henrythompson/quoda/language/LanguageStyler;

    move-result-object v0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    const/4 v6, 0x6

    const-string v1, "\\?>"

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->getDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->getSyntaxHighlightSpans()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->getContextSpans()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/henrythompson/quoda/language/LanguageStyler;->parse(Ljava/lang/String;Lcom/henrythompson/quoda/styler/StringStream;Lcom/henrythompson/quoda/document/Document;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    const/4 v0, 0x1

    const/4 v6, 0x7

    :cond_6
    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mHTMLStyleStart:[C

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->parseStyleTag()V

    goto/16 :goto_0

    const/4 v0, 0x3

    const/4 v6, 0x2

    :cond_7
    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v2, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mHTMLScriptStart:[C

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v6, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->parseScriptTag()V

    goto/16 :goto_0

    const/4 v0, 0x2

    const/4 v6, 0x6

    :cond_8
    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v6, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->parseHTMLTag()V

    goto/16 :goto_0

    const/4 v2, 0x0

    const/4 v6, 0x1

    :cond_9
    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v2, "&"

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v6, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/HtmlStyler;->parseEscapeCharacter()V

    goto/16 :goto_0

    const/4 v2, 0x7

    const/4 v6, 0x7

    :cond_a
    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_0

    const/4 v1, 0x4

    const/4 v6, 0x0

    :cond_b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/henrythompson/quoda/language/HtmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v6, 0x1

    nop

    return-void

    const/4 v0, 0x5
.end method
