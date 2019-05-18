.class public Lcom/henrythompson/quoda/language/MarkdownStyler;
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

.field private mIsAtStartOfLine:Z

.field private mPreviousLineBlank:Z

.field mSource:Lcom/henrythompson/quoda/styler/StringStream;

.field mTheme:Lcom/henrythompson/quoda/styler/Theme;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x7

    const/4 v3, 0x5

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/LanguageStyler;-><init>()V

    const/4 v4, 0x2

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mHTMLCommentStart:[C

    const/4 v4, 0x7

    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mHTMLCdataStart:[C

    const/4 v4, 0x5

    new-array v0, v2, [C

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mHTMLDoctypeStart:[C

    const/4 v4, 0x4

    new-array v0, v3, [C

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mHTMLXmlStart:[C

    const/4 v4, 0x6

    new-array v0, v3, [C

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mHTMLPhpStart:[C

    const/4 v4, 0x3

    new-array v0, v2, [C

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mHTMLPhpShorthandStart:[C

    const/4 v4, 0x6

    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mHTMLStyleStart:[C

    const/4 v4, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mHTMLScriptStart:[C

    const/4 v4, 0x3

    iput-boolean v1, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mPreviousLineBlank:Z

    const/4 v4, 0x2

    iput-boolean v1, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mIsAtStartOfLine:Z

    nop

    return-void

    const/4 v4, 0x4

    const/4 v4, 0x5

    nop

    :array_0
    .array-data 2
        0x3cs
        0x21s
        0x2ds
        0x2ds
    .end array-data

    const/4 v4, 0x3

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

    const/4 v4, 0x5

    :array_2
    .array-data 2
        0x3cs
        0x21s
    .end array-data

    const/4 v4, 0x1

    nop

    :array_3
    .array-data 2
        0x3cs
        0x3fs
        0x78s
        0x6ds
        0x6cs
    .end array-data

    const/4 v4, 0x2

    :array_4
    .array-data 2
        0x3cs
        0x3fs
        0x70s
        0x68s
        0x70s
    .end array-data

    const/4 v4, 0x6

    :array_5
    .array-data 2
        0x3cs
        0x3fs
    .end array-data

    const/4 v4, 0x4

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

    const/4 v4, 0x6

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

.method private findNextBlankLineStart(Z)I
    .locals 7

    const/4 v6, 0x1

    const/16 v5, 0xa

    const/4 v6, 0x3

    iget-object v4, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v0

    const/4 v6, 0x3

    :goto_0
    iget-object v4, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v6, 0x2

    if-ne v0, v5, :cond_2

    const/4 v6, 0x6

    :cond_0
    const/4 v1, 0x1

    const/4 v6, 0x3

    iget-object v4, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v6, 0x5

    const/4 v3, 0x0

    const/4 v6, 0x7

    iget-object v4, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    const/4 v6, 0x6

    :goto_1
    iget-object v4, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v6, 0x7

    if-eqz v1, :cond_5

    if-ne v0, v5, :cond_5

    const/4 v6, 0x7

    if-eqz p1, :cond_3

    const/4 v6, 0x2

    :cond_1
    iget-object v4, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4, v2}, Lcom/henrythompson/quoda/styler/StringStream;->setPosition(I)V

    const/4 v6, 0x5

    return v2

    const/4 v4, 0x6

    const/4 v6, 0x4

    :cond_2
    iget-object v4, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    goto :goto_0

    const/4 v2, 0x2

    const/4 v6, 0x1

    :cond_3
    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x6

    const/4 v1, 0x1

    const/4 v6, 0x5

    iget-object v4, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v6, 0x2

    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    goto :goto_1

    const/4 v2, 0x2

    const/4 v6, 0x7

    :cond_5
    if-nez v1, :cond_6

    if-ne v0, v5, :cond_6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v6, 0x2

    iget-object v4, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    goto :goto_2

    const/4 v2, 0x0

    const/4 v6, 0x4

    :cond_6
    const/16 v4, 0x20

    if-ne v0, v4, :cond_7

    const/4 v6, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    const/4 v3, 0x1

    const/4 v6, 0x5

    :cond_7
    const/16 v4, 0x9

    if-ne v0, v4, :cond_8

    const/4 v6, 0x6

    add-int/lit8 v3, v3, 0x4

    goto :goto_2

    const/4 v0, 0x1

    const/4 v6, 0x4

    :cond_8
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v6, 0x2

    const/4 v1, 0x0

    goto :goto_2

    const/4 v6, 0x3
.end method


# virtual methods
.method public canParseLanguage(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x4

    const-string v0, "markdown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    const/4 v1, 0x2
.end method

.method public parse()V
    .locals 15

    const/4 v14, 0x0

    const/4 v14, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->getStream()Lcom/henrythompson/quoda/styler/StringStream;

    move-result-object v11

    iput-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v14, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v11

    iput-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    const/4 v14, 0x5

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mPreviousLineBlank:Z

    const/4 v14, 0x2

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mIsAtStartOfLine:Z

    const/4 v14, 0x1

    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v11

    if-nez v11, :cond_1c

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_1c

    const/4 v14, 0x0

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v0

    const/4 v14, 0x6

    iget-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mIsAtStartOfLine:Z

    if-eqz v11, :cond_1b

    const/4 v14, 0x4

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mIsAtStartOfLine:Z

    const/4 v14, 0x5

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v9

    const/4 v14, 0x6

    const/16 v11, 0x23

    if-ne v0, v11, :cond_1

    const/4 v14, 0x2

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Lcom/henrythompson/quoda/styler/StringStream;->findNext(C)I

    move-result v1

    const/4 v14, 0x3

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v11

    invoke-virtual {p0, v11, v9, v1}, Lcom/henrythompson/quoda/language/MarkdownStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x1

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mIsAtStartOfLine:Z

    const/4 v14, 0x3

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mPreviousLineBlank:Z

    goto :goto_0

    const/4 v5, 0x3

    const/4 v14, 0x5

    :cond_1
    const/16 v11, 0x3d

    if-ne v0, v11, :cond_5

    const/4 v14, 0x4

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    const/4 v14, 0x0

    :goto_1
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v14, 0x1

    const/16 v11, 0xa

    if-ne v0, v11, :cond_3

    const/4 v14, 0x6

    :cond_2
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v14, 0x5

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/Theme;->getVariableStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v11

    invoke-virtual {p0, v11, v9, v1}, Lcom/henrythompson/quoda/language/MarkdownStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x7

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mIsAtStartOfLine:Z

    const/4 v14, 0x2

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mPreviousLineBlank:Z

    goto :goto_0

    const/4 v4, 0x2

    const/4 v14, 0x2

    :cond_3
    const/16 v11, 0x3d

    if-eq v0, v11, :cond_4

    const/16 v11, 0x20

    if-ne v0, v11, :cond_0

    const/4 v14, 0x2

    :cond_4
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    goto :goto_1

    const/4 v3, 0x6

    const/4 v14, 0x5

    :cond_5
    const/16 v11, 0x3e

    if-ne v0, v11, :cond_8

    const/4 v14, 0x1

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v14, 0x6

    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/henrythompson/quoda/language/MarkdownStyler;->findNextBlankLineStart(Z)I

    move-result v1

    const/4 v14, 0x1

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v11

    invoke-virtual {p0, v11, v9, v1}, Lcom/henrythompson/quoda/language/MarkdownStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x6

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mIsAtStartOfLine:Z

    const/4 v14, 0x2

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mPreviousLineBlank:Z

    const/4 v14, 0x7

    :cond_6
    :goto_2
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_0

    const/4 v2, 0x4

    const/4 v14, 0x2

    :cond_7
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    const/4 v14, 0x0

    :cond_8
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_a

    const/4 v14, 0x6

    const/16 v11, 0xa

    if-ne v0, v11, :cond_9

    const/4 v14, 0x3

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mIsAtStartOfLine:Z

    const/4 v14, 0x5

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mPreviousLineBlank:Z

    const/4 v14, 0x5

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_0

    const/4 v6, 0x3

    const/4 v14, 0x2

    :cond_9
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-nez v11, :cond_7

    const/4 v14, 0x1

    :cond_a
    const/16 v11, 0x2d

    if-ne v0, v11, :cond_10

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v14, 0x5

    const/4 v3, 0x1

    const/4 v14, 0x3

    :cond_b
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v11

    if-nez v11, :cond_c

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_c

    const/4 v14, 0x5

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v11, v2}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v0

    const/4 v14, 0x5

    const/16 v11, 0xa

    if-ne v0, v11, :cond_d

    const/4 v14, 0x3

    :cond_c
    :goto_3
    if-nez v3, :cond_e

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v14, 0x2

    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/henrythompson/quoda/language/MarkdownStyler;->findNextBlankLineStart(Z)I

    move-result v1

    const/4 v14, 0x1

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v11

    invoke-virtual {p0, v11, v9, v1}, Lcom/henrythompson/quoda/language/MarkdownStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x2

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mIsAtStartOfLine:Z

    const/4 v14, 0x3

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mPreviousLineBlank:Z

    goto/16 :goto_2

    const/4 v14, 0x3

    const/4 v14, 0x4

    :cond_d
    const/16 v11, 0x20

    if-eq v0, v11, :cond_b

    const/16 v11, 0x9

    if-eq v0, v11, :cond_b

    const/16 v11, 0x2d

    if-eq v0, v11, :cond_b

    const/4 v14, 0x5

    const/4 v3, 0x0

    const/4 v14, 0x6

    goto :goto_3

    const/4 v3, 0x4

    const/4 v14, 0x3

    :cond_e
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11, v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance(I)C

    const/4 v14, 0x3

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v14, 0x4

    if-eqz v3, :cond_f

    const/4 v14, 0x2

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/Theme;->getPreprocessorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v11

    invoke-virtual {p0, v11, v9, v1}, Lcom/henrythompson/quoda/language/MarkdownStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x4

    :cond_f
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mIsAtStartOfLine:Z

    const/4 v14, 0x0

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mPreviousLineBlank:Z

    goto/16 :goto_0

    const/4 v11, 0x6

    const/4 v14, 0x2

    :cond_10
    const/16 v11, 0x2a

    if-ne v0, v11, :cond_16

    const/4 v14, 0x1

    const/4 v2, 0x0

    const/4 v14, 0x3

    const/4 v3, 0x1

    const/4 v14, 0x0

    :cond_11
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v11

    if-nez v11, :cond_12

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_12

    const/4 v14, 0x6

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v11, v2}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v0

    const/4 v14, 0x3

    const/16 v11, 0xa

    if-ne v0, v11, :cond_13

    const/4 v14, 0x1

    :cond_12
    :goto_4
    if-nez v3, :cond_14

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_14

    const/4 v14, 0x3

    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/henrythompson/quoda/language/MarkdownStyler;->findNextBlankLineStart(Z)I

    move-result v1

    const/4 v14, 0x6

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v11

    invoke-virtual {p0, v11, v9, v1}, Lcom/henrythompson/quoda/language/MarkdownStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x5

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mIsAtStartOfLine:Z

    const/4 v14, 0x7

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mPreviousLineBlank:Z

    goto/16 :goto_2

    const/4 v3, 0x1

    const/4 v14, 0x4

    :cond_13
    const/16 v11, 0x20

    if-eq v0, v11, :cond_11

    const/16 v11, 0x9

    if-eq v0, v11, :cond_11

    const/16 v11, 0x2a

    if-eq v0, v11, :cond_11

    const/4 v14, 0x2

    const/4 v3, 0x0

    const/4 v14, 0x6

    goto :goto_4

    const/4 v14, 0x3

    const/4 v14, 0x7

    :cond_14
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11, v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance(I)C

    const/4 v14, 0x3

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v14, 0x1

    if-eqz v3, :cond_15

    const/4 v14, 0x2

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/Theme;->getPreprocessorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v11

    invoke-virtual {p0, v11, v9, v1}, Lcom/henrythompson/quoda/language/MarkdownStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x2

    :cond_15
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mIsAtStartOfLine:Z

    const/4 v14, 0x4

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mPreviousLineBlank:Z

    goto/16 :goto_0

    const/4 v5, 0x3

    const/4 v14, 0x3

    :cond_16
    const/16 v11, 0x2b

    if-ne v0, v11, :cond_17

    const/4 v14, 0x5

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v14, 0x7

    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/henrythompson/quoda/language/MarkdownStyler;->findNextBlankLineStart(Z)I

    move-result v1

    const/4 v14, 0x2

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v11

    invoke-virtual {p0, v11, v9, v1}, Lcom/henrythompson/quoda/language/MarkdownStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x5

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mIsAtStartOfLine:Z

    const/4 v14, 0x0

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mPreviousLineBlank:Z

    goto/16 :goto_2

    const/4 v12, 0x4

    const/4 v14, 0x6

    :cond_17
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v14, 0x5

    :goto_5
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v11

    if-nez v11, :cond_18

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_18

    const/4 v14, 0x6

    const/16 v11, 0x2e

    if-ne v0, v11, :cond_19

    const/4 v14, 0x0

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    const/4 v14, 0x5

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v14, 0x1

    :cond_18
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/henrythompson/quoda/language/MarkdownStyler;->findNextBlankLineStart(Z)I

    move-result v1

    const/4 v14, 0x7

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v11

    invoke-virtual {p0, v11, v9, v1}, Lcom/henrythompson/quoda/language/MarkdownStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x1

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mIsAtStartOfLine:Z

    const/4 v14, 0x3

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mPreviousLineBlank:Z

    goto/16 :goto_2

    const/4 v12, 0x1

    const/4 v14, 0x4

    :cond_19
    const/16 v11, 0xa

    if-ne v0, v11, :cond_1a

    const/4 v14, 0x1

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mIsAtStartOfLine:Z

    const/4 v14, 0x7

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mPreviousLineBlank:Z

    const/4 v14, 0x0

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_0

    const/4 v4, 0x1

    const/4 v14, 0x5

    :cond_1a
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v14, 0x6

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    goto :goto_5

    const/4 v14, 0x2

    const/4 v14, 0x1

    :cond_1b
    const/16 v11, 0xa

    if-ne v0, v11, :cond_6

    const/4 v14, 0x3

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mIsAtStartOfLine:Z

    goto/16 :goto_2

    const/4 v14, 0x0

    const/4 v14, 0x1

    :cond_1c
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_1e

    const/4 v14, 0x4

    :cond_1d
    nop

    return-void

    const/4 v5, 0x0

    const/4 v14, 0x0

    :cond_1e
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/henrythompson/quoda/styler/StringStream;->setPosition(I)V

    const/4 v14, 0x3

    :cond_1f
    :goto_6
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v11

    if-nez v11, :cond_20

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_20

    const/4 v14, 0x3

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    const/4 v14, 0x7

    const/16 v11, 0x5c

    if-ne v0, v11, :cond_21

    const/4 v14, 0x2

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v14, 0x2

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v11

    if-eqz v11, :cond_21

    const/4 v14, 0x1

    :cond_20
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_1d

    const/4 v14, 0x5

    const-string v11, "\\[(.*?)\\](\\((.*?)(\".*?\"\\s*)?\\)|\\[(.*?)\\])"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v14, 0x7

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v14, 0x1

    :goto_7
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_37

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_37

    const/4 v14, 0x0

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/Theme;->getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->start(I)I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->end(I)I

    move-result v13

    invoke-virtual {p0, v11, v12, v13}, Lcom/henrythompson/quoda/language/MarkdownStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x6

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->start(I)I

    move-result v12

    const/4 v13, 0x3

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->end(I)I

    move-result v13

    invoke-virtual {p0, v11, v12, v13}, Lcom/henrythompson/quoda/language/MarkdownStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x6

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v11

    const/4 v12, 0x4

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->start(I)I

    move-result v12

    const/4 v13, 0x4

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->end(I)I

    move-result v13

    invoke-virtual {p0, v11, v12, v13}, Lcom/henrythompson/quoda/language/MarkdownStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x2

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/Theme;->getTagAttributeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->start(I)I

    move-result v12

    const/4 v13, 0x5

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->end(I)I

    move-result v13

    invoke-virtual {p0, v11, v12, v13}, Lcom/henrythompson/quoda/language/MarkdownStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_7

    const/4 v12, 0x2

    const/4 v14, 0x7

    :cond_21
    const/16 v11, 0x2a

    if-ne v0, v11, :cond_29

    const/4 v14, 0x3

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v9

    const/4 v14, 0x4

    const/4 v8, 0x1

    const/4 v14, 0x4

    const/4 v10, 0x1

    const/4 v14, 0x5

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    const/16 v11, 0x2a

    if-ne v0, v11, :cond_25

    const/4 v14, 0x5

    const/4 v8, 0x0

    const/4 v14, 0x4

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-nez v11, :cond_1f

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v11

    const/16 v12, 0x2a

    if-eq v11, v12, :cond_1f

    const/4 v14, 0x3

    :cond_22
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v14, 0x7

    :cond_23
    :goto_8
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v11

    if-nez v11, :cond_24

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_24

    const/4 v14, 0x2

    const/16 v11, 0x2a

    if-ne v0, v11, :cond_28

    const/4 v14, 0x4

    if-nez v8, :cond_26

    const/4 v14, 0x0

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    const/16 v11, 0x2a

    if-ne v0, v11, :cond_23

    const/4 v14, 0x2

    :cond_24
    :goto_9
    if-eqz v10, :cond_1f

    const/4 v14, 0x4

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v11

    add-int/lit8 v1, v11, 0x1

    const/4 v14, 0x2

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/Theme;->getTypeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v11

    invoke-virtual {p0, v11, v9, v1}, Lcom/henrythompson/quoda/language/MarkdownStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_6

    const/4 v0, 0x3

    const/4 v14, 0x6

    :cond_25
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_22

    goto/16 :goto_6

    const/4 v6, 0x1

    const/4 v14, 0x3

    :cond_26
    if-nez v8, :cond_24

    const/4 v14, 0x5

    :cond_27
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    goto :goto_8

    const/4 v6, 0x1

    const/4 v14, 0x4

    :cond_28
    const/16 v11, 0xa

    if-ne v0, v11, :cond_27

    const/4 v14, 0x3

    const/4 v10, 0x0

    const/4 v14, 0x6

    goto :goto_9

    const/4 v14, 0x2

    const/4 v14, 0x2

    :cond_29
    const/16 v11, 0x5f

    if-ne v0, v11, :cond_31

    const/4 v14, 0x1

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v9

    const/4 v14, 0x0

    const/4 v8, 0x1

    const/4 v14, 0x7

    const/4 v10, 0x1

    const/4 v14, 0x0

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    const/16 v11, 0x5f

    if-ne v0, v11, :cond_2d

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x6

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-nez v11, :cond_1f

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/henrythompson/quoda/styler/StringStream;->peek(I)C

    move-result v11

    const/16 v12, 0x5f

    if-eq v11, v12, :cond_1f

    const/4 v14, 0x7

    :cond_2a
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v14, 0x6

    :cond_2b
    :goto_a
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v11

    if-nez v11, :cond_2c

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_2c

    const/4 v14, 0x4

    const/16 v11, 0x5f

    if-ne v0, v11, :cond_30

    const/4 v14, 0x7

    if-nez v8, :cond_2e

    const/4 v14, 0x1

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    const/16 v11, 0x5f

    if-ne v0, v11, :cond_2b

    const/4 v14, 0x3

    :cond_2c
    :goto_b
    if-eqz v10, :cond_1f

    const/4 v14, 0x0

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v11

    add-int/lit8 v1, v11, 0x1

    const/4 v14, 0x3

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/Theme;->getTypeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v11

    invoke-virtual {p0, v11, v9, v1}, Lcom/henrythompson/quoda/language/MarkdownStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_6

    const/4 v14, 0x6

    const/4 v14, 0x6

    :cond_2d
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_2a

    goto/16 :goto_6

    const/4 v5, 0x0

    const/4 v14, 0x2

    :cond_2e
    if-nez v8, :cond_2c

    const/4 v14, 0x3

    :cond_2f
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    goto :goto_a

    const/4 v4, 0x2

    const/4 v14, 0x3

    :cond_30
    const/16 v11, 0xa

    if-ne v0, v11, :cond_2f

    const/4 v14, 0x6

    const/4 v10, 0x0

    const/4 v14, 0x5

    goto :goto_b

    const/4 v8, 0x5

    const/4 v14, 0x2

    :cond_31
    const/16 v11, 0x60

    if-ne v0, v11, :cond_1f

    const/4 v14, 0x0

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v9

    const/4 v14, 0x1

    const/4 v5, 0x1

    const/4 v14, 0x6

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    const/4 v14, 0x6

    :goto_c
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v11

    if-nez v11, :cond_32

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_32

    const/4 v14, 0x7

    const/16 v11, 0x60

    if-ne v0, v11, :cond_32

    const/4 v14, 0x6

    add-int/lit8 v5, v5, 0x1

    const/4 v14, 0x0

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    goto :goto_c

    const/4 v6, 0x6

    const/4 v14, 0x7

    :cond_32
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v14, 0x4

    :goto_d
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v11

    if-nez v11, :cond_33

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_33

    const/4 v14, 0x3

    const/16 v11, 0x60

    if-ne v0, v11, :cond_35

    const/4 v14, 0x3

    const/4 v6, 0x1

    const/4 v14, 0x7

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    const/4 v14, 0x5

    :goto_e
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v11

    if-nez v11, :cond_35

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_35

    const/4 v14, 0x2

    if-ne v6, v5, :cond_34

    const/4 v14, 0x3

    :cond_33
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v11

    add-int/lit8 v1, v11, 0x1

    const/4 v14, 0x5

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/Theme;->getPreprocessorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v11

    invoke-virtual {p0, v11, v9, v1}, Lcom/henrythompson/quoda/language/MarkdownStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_6

    const/4 v1, 0x0

    const/4 v14, 0x4

    :cond_34
    const/16 v11, 0x60

    if-eq v0, v11, :cond_36

    const/4 v14, 0x2

    :cond_35
    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    goto :goto_d

    const/4 v5, 0x5

    const/4 v14, 0x6

    :cond_36
    add-int/lit8 v6, v6, 0x1

    const/4 v14, 0x7

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    move-result v0

    goto :goto_e

    const/4 v7, 0x5

    const/4 v14, 0x5

    :cond_37
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_1d

    const/4 v14, 0x5

    const-string v11, "^\\s*\\[(.*?)\\]\\s*:\\s*([^\\s]+)\\s+((\".*?\")|(\'.*?\')|(\\(.*?\\)))?\\s*$"

    const/16 v12, 0x8

    invoke-static {v11, v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v7

    const/4 v14, 0x1

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v14, 0x7

    :goto_f
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_1d

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/MarkdownStyler;->isCancelled()Z

    move-result v11

    if-nez v11, :cond_1d

    const/4 v14, 0x1

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/Theme;->getTagAttributeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->start(I)I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->end(I)I

    move-result v13

    invoke-virtual {p0, v11, v12, v13}, Lcom/henrythompson/quoda/language/MarkdownStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x4

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->start(I)I

    move-result v12

    const/4 v13, 0x2

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->end(I)I

    move-result v13

    invoke-virtual {p0, v11, v12, v13}, Lcom/henrythompson/quoda/language/MarkdownStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v14, 0x5

    iget-object v11, p0, Lcom/henrythompson/quoda/language/MarkdownStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v4, v12}, Ljava/util/regex/Matcher;->start(I)I

    move-result v12

    const/4 v13, 0x3

    invoke-virtual {v4, v13}, Ljava/util/regex/Matcher;->end(I)I

    move-result v13

    invoke-virtual {p0, v11, v12, v13}, Lcom/henrythompson/quoda/language/MarkdownStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_f

    const/4 v3, 0x3
.end method
