.class public Lcom/henrythompson/quoda/styler/StringStream;
.super Ljava/lang/Object;


# instance fields
.field private mCaseSensitive:Z

.field private mString:Landroid/text/Editable;

.field private pos:I


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/document/Document;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x5

    const/4 v0, 0x0

    iput v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    const/4 v1, 0x4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->mCaseSensitive:Z

    const/4 v1, 0x7

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->mString:Landroid/text/Editable;

    const/4 v1, 0x0

    nop

    return-void

    const/4 v1, 0x5
.end method

.method private caseInsensitiveEquals(CC)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    const/4 v3, 0x5

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    const/4 v2, 0x1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    const/4 v2, 0x6
.end method


# virtual methods
.method public advance()C
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x1

    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->mString:Landroid/text/Editable;

    iget v1, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/4 v2, 0x7

    :goto_0
    return v0

    const/4 v1, 0x7

    :cond_0
    const v0, 0xffff

    goto :goto_0

    const/4 v0, 0x0
.end method

.method public advance(I)C
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    const/4 v2, 0x7

    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    invoke-virtual {p0}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->mString:Landroid/text/Editable;

    iget v1, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/4 v2, 0x5

    :goto_0
    return v0

    const/4 v2, 0x1

    :cond_0
    const v0, 0xffff

    goto :goto_0

    const/4 v2, 0x7
.end method

.method public atEndOfStream()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x4

    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    invoke-virtual {p0}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v0, 0x5

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x3
.end method

.method public eof()I
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->mString:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    return v0

    const/4 v0, 0x3
.end method

.method public findNext(C)I
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x3

    iget-boolean v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->mCaseSensitive:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    :goto_0
    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    invoke-virtual {p0}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->mString:Landroid/text/Editable;

    iget v1, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    if-eq v0, p1, :cond_1

    const/4 v2, 0x5

    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    goto :goto_0

    const/4 v0, 0x2

    const/4 v2, 0x3

    :cond_0
    :goto_1
    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    invoke-virtual {p0}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->mString:Landroid/text/Editable;

    iget v1, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    const/4 v2, 0x1

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/henrythompson/quoda/styler/StringStream;->caseInsensitiveEquals(CC)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x6

    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    goto :goto_1

    const/4 v1, 0x3

    const/4 v2, 0x0

    :cond_1
    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    invoke-virtual {p0}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v1

    if-lt v0, v1, :cond_2

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v0

    const/4 v2, 0x7

    :goto_2
    return v0

    const/4 v2, 0x3

    :cond_2
    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    goto :goto_2

    const/4 v0, 0x1
.end method

.method public findNext(Ljava/lang/String;)I
    .locals 9

    const/4 v8, 0x2

    const/4 v8, 0x7

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v6

    array-length v7, v1

    sub-int v5, v6, v7

    const/4 v8, 0x5

    array-length v4, v1

    const/4 v8, 0x5

    add-int/lit8 v2, v4, -0x1

    const/4 v8, 0x5

    :goto_0
    iget v6, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    if-gt v6, v5, :cond_4

    const/4 v8, 0x1

    const/4 v3, 0x0

    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_0

    const/4 v8, 0x4

    iget v6, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    add-int/2addr v6, v3

    if-ltz v6, :cond_3

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/styler/StringStream;->mString:Landroid/text/Editable;

    iget v7, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    add-int/2addr v7, v3

    invoke-interface {v6, v7}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/4 v8, 0x1

    iget-boolean v6, p0, Lcom/henrythompson/quoda/styler/StringStream;->mCaseSensitive:Z

    if-eqz v6, :cond_1

    aget-char v6, v1, v3

    if-eq v0, v6, :cond_1

    const/4 v8, 0x0

    :cond_0
    iget v6, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    goto :goto_0

    const/4 v3, 0x5

    const/4 v8, 0x2

    :cond_1
    iget-boolean v6, p0, Lcom/henrythompson/quoda/styler/StringStream;->mCaseSensitive:Z

    if-nez v6, :cond_2

    aget-char v6, v1, v3

    invoke-direct {p0, v0, v6}, Lcom/henrythompson/quoda/styler/StringStream;->caseInsensitiveEquals(CC)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x0

    :cond_2
    if-ne v3, v2, :cond_3

    const/4 v8, 0x1

    iget v6, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    const/4 v8, 0x6

    :goto_2
    return v6

    const/4 v8, 0x4

    const/4 v8, 0x6

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    const/4 v2, 0x4

    const/4 v8, 0x2

    :cond_4
    invoke-virtual {p0}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v6

    iput v6, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    const/4 v8, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v6

    goto :goto_2

    const/4 v5, 0x2
.end method

.method public getPosition()I
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x7

    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    const/4 v1, 0x7

    :goto_0
    return v0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v0

    goto :goto_0

    const/4 v0, 0x3
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->mString:Landroid/text/Editable;

    return-object v0

    const/4 v0, 0x5
.end method

.method public goBack()C
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x0

    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    if-lez v0, :cond_0

    const/4 v2, 0x6

    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    const/4 v2, 0x2

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->mString:Landroid/text/Editable;

    iget v1, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    return v0

    const/4 v1, 0x4
.end method

.method public goBack(I)C
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x5

    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    if-le p1, v0, :cond_0

    const/4 v2, 0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->mString:Landroid/text/Editable;

    iget v1, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/4 v2, 0x6

    :goto_0
    return v0

    const/4 v2, 0x4

    const/4 v2, 0x7

    :cond_0
    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->mString:Landroid/text/Editable;

    iget v1, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    goto :goto_0

    const/4 v2, 0x2

    const/4 v2, 0x0

    :cond_1
    const v0, 0xffff

    goto :goto_0

    const/4 v1, 0x2
.end method

.method public gotoEnd()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x1
.end method

.method public gotoStart()V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    const/4 v0, 0x0

    iput v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x4
.end method

.method public match(C)Z
    .locals 6

    const/4 v5, 0x7

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x4

    iget v3, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    iget-object v4, p0, Lcom/henrythompson/quoda/styler/StringStream;->mString:Landroid/text/Editable;

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-lt v3, v4, :cond_1

    const/4 v5, 0x7

    :cond_0
    :goto_0
    return v1

    const/4 v2, 0x5

    const/4 v5, 0x3

    :cond_1
    iget-object v3, p0, Lcom/henrythompson/quoda/styler/StringStream;->mString:Landroid/text/Editable;

    iget v4, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    invoke-interface {v3, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/4 v5, 0x5

    iget-boolean v3, p0, Lcom/henrythompson/quoda/styler/StringStream;->mCaseSensitive:Z

    if-eqz v3, :cond_2

    if-ne v0, p1, :cond_2

    const/4 v5, 0x2

    iget v1, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    move v1, v2

    const/4 v5, 0x0

    goto :goto_0

    const/4 v0, 0x7

    const/4 v5, 0x2

    :cond_2
    iget-boolean v3, p0, Lcom/henrythompson/quoda/styler/StringStream;->mCaseSensitive:Z

    if-nez v3, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/henrythompson/quoda/styler/StringStream;->caseInsensitiveEquals(CC)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x7

    iget v1, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    move v1, v2

    const/4 v5, 0x2

    goto :goto_0

    const/4 v0, 0x0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x5

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v0

    return v0

    const/4 v1, 0x4
.end method

.method public match([C)Z
    .locals 7

    const/4 v6, 0x5

    const/4 v3, 0x0

    const/4 v6, 0x1

    array-length v2, p1

    const/4 v6, 0x1

    iget v4, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    add-int/2addr v4, v2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v5

    if-le v4, v5, :cond_1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    return v3

    const/4 v3, 0x2

    const/4 v6, 0x7

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    const/4 v6, 0x7

    iget v4, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    add-int/2addr v4, v1

    if-ltz v4, :cond_3

    const/4 v6, 0x5

    iget-object v4, p0, Lcom/henrythompson/quoda/styler/StringStream;->mString:Landroid/text/Editable;

    iget v5, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    add-int/2addr v5, v1

    invoke-interface {v4, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/4 v6, 0x5

    iget-boolean v4, p0, Lcom/henrythompson/quoda/styler/StringStream;->mCaseSensitive:Z

    if-eqz v4, :cond_2

    aget-char v4, p1, v1

    if-ne v0, v4, :cond_0

    const/4 v6, 0x1

    :cond_2
    iget-boolean v4, p0, Lcom/henrythompson/quoda/styler/StringStream;->mCaseSensitive:Z

    if-nez v4, :cond_3

    aget-char v4, p1, v1

    invoke-direct {p0, v0, v4}, Lcom/henrythompson/quoda/styler/StringStream;->caseInsensitiveEquals(CC)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v6, 0x6

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    const/4 v0, 0x6

    const/4 v6, 0x4

    :cond_4
    iget v3, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    array-length v4, p1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    const/4 v6, 0x0

    const/4 v3, 0x1

    goto :goto_0

    const/4 v1, 0x4
.end method

.method public passedEndOfStream()Z
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x3

    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    invoke-virtual {p0}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v0, 0x4

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v2, 0x7
.end method

.method public peek()C
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x0

    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    invoke-virtual {p0}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    if-ltz v0, :cond_0

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->mString:Landroid/text/Editable;

    iget v1, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/4 v2, 0x5

    :goto_0
    return v0

    const/4 v0, 0x1

    :cond_0
    const v0, 0xffff

    goto :goto_0

    const/4 v2, 0x0
.end method

.method public peek(I)C
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x1

    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    add-int/2addr v0, p1

    if-ltz v0, :cond_0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->mString:Landroid/text/Editable;

    iget v1, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/4 v2, 0x0

    :goto_0
    return v0

    const/4 v0, 0x7

    :cond_0
    const v0, 0xffff

    goto :goto_0

    const/4 v2, 0x3
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x5

    const/4 v0, 0x0

    iput v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x2
.end method

.method public setCaseSensitive(Z)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x6

    iput-boolean p1, p0, Lcom/henrythompson/quoda/styler/StringStream;->mCaseSensitive:Z

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setPosition(I)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x0

    iput p1, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public skipWhiteSpace()V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x2

    :goto_0
    iget-object v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->mString:Landroid/text/Editable;

    iget v1, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/henrythompson/quoda/styler/StringStream;->pos:I

    goto :goto_0

    const/4 v0, 0x0

    const/4 v2, 0x5

    :cond_0
    nop

    return-void

    const/4 v1, 0x2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/henrythompson/quoda/styler/StringStream;->mString:Landroid/text/Editable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0

    const/4 v2, 0x5
.end method
