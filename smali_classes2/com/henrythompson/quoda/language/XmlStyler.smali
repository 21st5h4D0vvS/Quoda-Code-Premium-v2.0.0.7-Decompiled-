.class public Lcom/henrythompson/quoda/language/XmlStyler;
.super Lcom/henrythompson/quoda/language/LanguageStyler;


# instance fields
.field mSource:Lcom/henrythompson/quoda/styler/StringStream;

.field mTheme:Lcom/henrythompson/quoda/styler/Theme;

.field private mXMLCdataStart:[C

.field private mXMLCommentStart:[C

.field private mXMLXmlStart:[C


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/LanguageStyler;-><init>()V

    const/4 v1, 0x1

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mXMLCommentStart:[C

    const/4 v1, 0x2

    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mXMLCdataStart:[C

    const/4 v1, 0x3

    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mXMLXmlStart:[C

    nop

    return-void

    const/4 v0, 0x4

    const/4 v1, 0x1

    nop

    :array_0
    .array-data 2
        0x3cs
        0x21s
        0x2ds
        0x2ds
    .end array-data

    const/4 v1, 0x6

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

    const/4 v1, 0x6

    :array_2
    .array-data 2
        0x3cs
        0x3fs
        0x78s
        0x6ds
        0x6cs
    .end array-data
.end method

.method private parseCDATA()V
    .locals 5

    const/4 v4, 0x3

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    add-int/lit8 v1, v2, -0x9

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v3, "]]>"

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(Ljava/lang/String;)I

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/Theme;->getUserConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/henrythompson/quoda/language/XmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v4, 0x2

    nop

    return-void

    const/4 v3, 0x5
.end method

.method private parseComment()V
    .locals 5

    const/4 v4, 0x4

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    add-int/lit8 v1, v2, -0x4

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(Ljava/lang/String;)I

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/henrythompson/quoda/language/XmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v4, 0x7

    nop

    return-void

    const/4 v4, 0x0
.end method

.method private parseEscapeCharacter()V
    .locals 5

    const/4 v4, 0x4

    const/4 v4, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v4, 0x7

    :goto_0
    iget-object v2, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/XmlStyler;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x7

    :cond_0
    iget-object v2, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/Theme;->getEscapeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/henrythompson/quoda/language/XmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v4, 0x2

    :cond_1
    nop

    return-void

    const/4 v2, 0x2

    const/4 v4, 0x0

    :cond_2
    iget-object v2, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_0

    const/4 v2, 0x6
.end method

.method private parseScriptTag()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x2

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/XmlStyler;->parseXMLTag()V

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v1, "/>"

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance(I)C

    const/4 v3, 0x2

    :goto_0
    nop

    return-void

    const/4 v2, 0x1

    const/4 v3, 0x6

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance(I)C

    goto :goto_0

    const/4 v0, 0x7
.end method

.method private parseStyleTag()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/XmlStyler;->parseXMLTag()V

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v1, "/>"

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance(I)C

    const/4 v3, 0x1

    :goto_0
    nop

    return-void

    const/4 v3, 0x2

    const/4 v3, 0x3

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance(I)C

    goto :goto_0

    const/4 v3, 0x2
.end method

.method private parseXMLDeclaration()V
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    add-int/lit8 v1, v2, -0x5

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(C)I

    const/4 v4, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/Theme;->getPreprocessorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/henrythompson/quoda/language/XmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v4, 0x6

    nop

    return-void

    const/4 v3, 0x7
.end method

.method private parseXMLTag()V
    .locals 13

    const/4 v12, 0x3

    const/16 v11, 0x3e

    const/16 v10, 0x2f

    const/16 v9, 0x27

    const/16 v8, 0x22

    const/4 v12, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    const/4 v12, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v12, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagBraceStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    iget-object v7, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p0, v5, v6, v7}, Lcom/henrythompson/quoda/language/XmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v12, 0x3

    :goto_0
    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v12, 0x1

    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v12, 0x2

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    const/4 v12, 0x2

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_1

    if-eq v0, v11, :cond_1

    if-ne v0, v10, :cond_9

    const/4 v12, 0x6

    :cond_1
    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagNameStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/henrythompson/quoda/language/XmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v12, 0x4

    :cond_2
    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v12, 0x2

    :goto_2
    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/XmlStyler;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_12

    const/4 v12, 0x7

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v5

    if-ne v5, v8, :cond_b

    const/4 v12, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagAttributeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v12, 0x0

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    const/4 v12, 0x3

    invoke-virtual {p0, v5, v1, v6}, Lcom/henrythompson/quoda/language/XmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v12, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v12, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v12, 0x4

    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/XmlStyler;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v12, 0x6

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5, v8}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v12, 0x2

    :cond_4
    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v12, 0x4

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    const/4 v12, 0x6

    invoke-virtual {p0, v5, v2, v6}, Lcom/henrythompson/quoda/language/XmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v12, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v12, 0x5

    :cond_5
    :goto_4
    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v6, "/>"

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v12, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagAttributeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {p0, v5, v1, v6}, Lcom/henrythompson/quoda/language/XmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v12, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagBraceStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    iget-object v7, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/henrythompson/quoda/language/XmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v12, 0x6

    :cond_6
    :goto_5
    nop

    return-void

    const/4 v7, 0x2

    const/4 v12, 0x5

    :cond_7
    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v6, 0x21

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v12, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagBraceStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    iget-object v7, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/henrythompson/quoda/language/XmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_0

    const/4 v1, 0x4

    const/4 v12, 0x6

    :cond_8
    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagBraceStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/henrythompson/quoda/language/XmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_0

    const/4 v1, 0x2

    const/4 v12, 0x7

    :cond_9
    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v12, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagNameStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    invoke-virtual {p0, v5, v1, v6}, Lcom/henrythompson/quoda/language/XmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_1

    const/4 v11, 0x3

    const/4 v12, 0x1

    :cond_a
    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v12, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_3

    const/4 v5, 0x3

    const/4 v12, 0x4

    :cond_b
    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v5

    if-ne v5, v9, :cond_5

    const/4 v12, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagAttributeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v12, 0x7

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    const/4 v12, 0x7

    invoke-virtual {p0, v5, v1, v6}, Lcom/henrythompson/quoda/language/XmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v12, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v12, 0x2

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v12, 0x7

    :cond_c
    :goto_6
    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/XmlStyler;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_d

    const/4 v12, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5, v9}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v12, 0x4

    :cond_d
    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v12, 0x7

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    const/4 v12, 0x5

    invoke-virtual {p0, v5, v2, v6}, Lcom/henrythompson/quoda/language/XmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v12, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    goto/16 :goto_4

    const/4 v6, 0x5

    const/4 v12, 0x7

    :cond_e
    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v12, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_6

    const/4 v12, 0x0

    const/4 v12, 0x0

    :cond_f
    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5, v11}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v12, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagAttributeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v5, v1, v6}, Lcom/henrythompson/quoda/language/XmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v12, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagBraceStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/henrythompson/quoda/language/XmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_5

    const/4 v6, 0x2

    const/4 v12, 0x5

    :cond_10
    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-nez v5, :cond_11

    const/4 v12, 0x7

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_2

    const/4 v8, 0x5

    const/4 v12, 0x6

    :cond_11
    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/Theme;->getTagAttributeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v5, v1, v6}, Lcom/henrythompson/quoda/language/XmlStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_2

    const/4 v0, 0x7

    const/4 v12, 0x5

    :cond_12
    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v3

    const/4 v12, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v12, 0x3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    const/4 v8, 0x1
.end method


# virtual methods
.method public canParseLanguage(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x2

    const-string v0, "html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v0, 0x7

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x0
.end method

.method public parse()V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/XmlStyler;->getStream()Lcom/henrythompson/quoda/styler/StringStream;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/XmlStyler;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    const/4 v2, 0x2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/XmlStyler;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/StringStream;->setCaseSensitive(Z)V

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v1, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mXMLCommentStart:[C

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/XmlStyler;->parseComment()V

    goto :goto_0

    const/4 v2, 0x4

    const/4 v2, 0x2

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v1, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mXMLCdataStart:[C

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/XmlStyler;->parseCDATA()V

    goto :goto_0

    const/4 v0, 0x6

    const/4 v2, 0x6

    :cond_2
    iget-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v1, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mXMLXmlStart:[C

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/XmlStyler;->parseXMLDeclaration()V

    goto :goto_0

    const/4 v1, 0x7

    const/4 v2, 0x4

    :cond_3
    iget-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/XmlStyler;->parseXMLTag()V

    goto :goto_0

    const/4 v2, 0x4

    const/4 v2, 0x1

    :cond_4
    iget-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/XmlStyler;->parseEscapeCharacter()V

    goto :goto_0

    const/4 v0, 0x7

    const/4 v2, 0x2

    :cond_5
    iget-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_0

    const/4 v2, 0x7

    const/4 v2, 0x2

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/henrythompson/quoda/language/XmlStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v2, 0x3

    nop

    return-void

    const/4 v2, 0x5
.end method
