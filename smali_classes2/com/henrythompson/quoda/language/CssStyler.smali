.class public Lcom/henrythompson/quoda/language/CssStyler;
.super Lcom/henrythompson/quoda/language/LanguageStyler;


# static fields
.field public static final ATTRIBUTE_AND_VALUE_SELECTOR:I = 0x4

.field public static final CLASS_SELECTOR:I = 0x2

.field public static final ID_SELECTOR:I = 0x1

.field public static final PSEUDO_CLASS_SELECTOR:I = 0x3

.field public static final TAG_SELECTOR:I


# instance fields
.field mParseEnd:I

.field mSource:Lcom/henrythompson/quoda/styler/StringStream;

.field mTheme:Lcom/henrythompson/quoda/styler/Theme;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/LanguageStyler;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method

.method private addSelectorSpan(III)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x4

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x4

    :goto_0
    nop

    return-void

    const/4 v0, 0x1

    const/4 v1, 0x0

    :pswitch_0
    iget-object v0, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/styler/Theme;->getTagNameStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_0

    const/4 v0, 0x6

    const/4 v1, 0x1

    :pswitch_1
    iget-object v0, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/styler/Theme;->getVariableStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_0

    const/4 v0, 0x1

    const/4 v1, 0x3

    :pswitch_2
    iget-object v0, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_0

    const/4 v1, 0x1

    const/4 v1, 0x7

    :pswitch_3
    iget-object v0, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_0

    const/4 v1, 0x2

    const/4 v1, 0x0

    :pswitch_4
    iget-object v0, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_0

    const/4 v0, 0x4

    const/4 v1, 0x3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private nextLetterIsSeparator()Z
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v0, 0x4

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x3
.end method

.method private parseCSSAtCharset()V
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v4, 0x3

    :goto_0
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CssStyler;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    iget v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mParseEnd:I

    if-ge v2, v3, :cond_0

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x6

    :cond_0
    :goto_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x2

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->goBack()C

    const/4 v4, 0x0

    nop

    return-void

    const/4 v1, 0x2

    const/4 v4, 0x5

    :cond_2
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v3, "</style"

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    goto :goto_1

    const/4 v1, 0x1

    const/4 v4, 0x7

    :cond_3
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_4

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x6

    goto :goto_1

    const/4 v0, 0x2

    const/4 v4, 0x1

    :cond_4
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_0

    const/4 v1, 0x4
.end method

.method private parseCSSAtFontFace()V
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v3, 0x1

    :goto_0
    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CssStyler;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    iget v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mParseEnd:I

    if-ge v1, v2, :cond_2

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v2, "/*"

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->parseCSSComment()V

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v3, 0x0

    :cond_0
    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_0

    const/4 v3, 0x1

    const/4 v3, 0x5

    :cond_1
    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_0

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v3, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->parseCSSDeclarationGroup()V

    const/4 v3, 0x1

    :cond_2
    nop

    return-void

    const/4 v2, 0x6
.end method

.method private parseCSSAtImport()V
    .locals 5

    const/4 v4, 0x3

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v4, 0x3

    const/4 v0, -0x1

    const/4 v4, 0x2

    :goto_0
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CssStyler;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    iget v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mParseEnd:I

    if-ge v2, v3, :cond_0

    const/4 v4, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x2

    :cond_0
    :goto_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x5

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->goBack()C

    const/4 v4, 0x6

    nop

    return-void

    const/4 v0, 0x1

    const/4 v4, 0x0

    :cond_2
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v3, "</style"

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    goto :goto_1

    const/4 v4, 0x6

    const/4 v4, 0x7

    :cond_3
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_4

    const/4 v4, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x3

    goto :goto_1

    const/4 v0, 0x5

    const/4 v4, 0x2

    :cond_4
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_0

    const/4 v1, 0x5
.end method

.method private parseCSSAtMedia()V
    .locals 5

    const/4 v4, 0x6

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v4, 0x1

    const/4 v0, -0x1

    const/4 v4, 0x4

    :goto_0
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CssStyler;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    iget v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mParseEnd:I

    if-ge v2, v3, :cond_0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_2

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v4, 0x3

    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x7

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v4, 0x0

    nop

    return-void

    const/4 v0, 0x1

    const/4 v4, 0x0

    :cond_2
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_0

    const/4 v2, 0x5
.end method

.method private parseCSSAtNamespace()V
    .locals 5

    const/4 v4, 0x6

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v4, 0x6

    const/4 v0, -0x1

    const/4 v4, 0x5

    :goto_0
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CssStyler;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    iget v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mParseEnd:I

    if-ge v2, v3, :cond_0

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x6

    :cond_0
    :goto_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x1

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->goBack()C

    const/4 v4, 0x0

    nop

    return-void

    const/4 v4, 0x2

    const/4 v4, 0x5

    :cond_2
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v3, "</style"

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    goto :goto_1

    const/4 v2, 0x5

    const/4 v4, 0x3

    :cond_3
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_4

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x1

    goto :goto_1

    const/4 v4, 0x4

    const/4 v4, 0x0

    :cond_4
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_0

    const/4 v3, 0x6
.end method

.method private parseCSSAtPage()V
    .locals 4

    const/4 v3, 0x0

    const/4 v3, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v3, 0x1

    :goto_0
    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CssStyler;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    iget v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mParseEnd:I

    if-ge v1, v2, :cond_2

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v2, "/*"

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v3, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->parseCSSComment()V

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v3, 0x3

    :cond_0
    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_0

    const/4 v3, 0x6

    const/4 v3, 0x2

    :cond_1
    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v1

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_0

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->parseCSSDeclarationGroup()V

    const/4 v3, 0x7

    :cond_2
    nop

    return-void

    const/4 v2, 0x7
.end method

.method private parseCSSAttributeAndValueSelector()V
    .locals 5

    const/4 v4, 0x1

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v4, 0x0

    const/4 v0, -0x1

    const/4 v4, 0x0

    :goto_0
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CssStyler;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    iget v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mParseEnd:I

    if-ge v2, v3, :cond_0

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_2

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v4, 0x1

    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x0

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v4, 0x6

    nop

    return-void

    const/4 v4, 0x1

    const/4 v4, 0x6

    :cond_2
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_0

    const/4 v3, 0x0
.end method

.method private parseCSSComment()V
    .locals 4

    const/4 v3, 0x5

    const/4 v3, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v3, 0x1

    :goto_0
    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CssStyler;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    iget v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mParseEnd:I

    if-ge v1, v2, :cond_0

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v2, "*/"

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x6

    :cond_0
    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v3, 0x5

    nop

    return-void

    const/4 v1, 0x6

    const/4 v3, 0x2

    :cond_1
    iget-object v1, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_0

    const/4 v0, 0x2
.end method

.method private parseCSSDeclarationGroup()V
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v4, 0x5

    :goto_0
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CssStyler;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    iget v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mParseEnd:I

    if-ge v2, v3, :cond_2

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v3, "/*"

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/Theme;->getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v2

    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v3

    invoke-virtual {p0, v2, v1, v3}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v4, 0x6

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->parseCSSComment()V

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v4, 0x5

    goto :goto_0

    const/4 v0, 0x0

    const/4 v4, 0x3

    :cond_0
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_1

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/Theme;->getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v2

    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v3

    invoke-virtual {p0, v2, v1, v3}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v4, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->parseCSSValue()V

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v4, 0x6

    goto :goto_0

    const/4 v1, 0x2

    const/4 v4, 0x2

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v2

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_3

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/Theme;->getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v2

    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v3

    invoke-virtual {p0, v2, v1, v3}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/henrythompson/quoda/language/CssStyler;->addContextSpan(III)V

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v4, 0x6

    :cond_2
    nop

    return-void

    const/4 v3, 0x3

    const/4 v4, 0x3

    :cond_3
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_0

    const/4 v0, 0x7
.end method

.method private parseCSSValue()V
    .locals 6

    const/4 v5, 0x5

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v5, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v5, 0x4

    const/4 v0, -0x1

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x1

    :goto_0
    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CssStyler;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v3

    iget v4, p0, Lcom/henrythompson/quoda/language/CssStyler;->mParseEnd:I

    if-ge v3, v4, :cond_3

    const/4 v5, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v4, "/*"

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v5, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v3

    iget-object v4, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v4

    invoke-virtual {p0, v3, v2, v4}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->parseCSSComment()V

    const/4 v5, 0x7

    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v5, 0x4

    goto :goto_0

    const/4 v1, 0x5

    const/4 v5, 0x7

    :cond_0
    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v4, 0x21

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x7

    const/4 v1, 0x1

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v0

    const/4 v5, 0x0

    goto :goto_0

    const/4 v0, 0x6

    const/4 v5, 0x4

    :cond_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v4, "!important"

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v5, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v3, v2, v4}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/Theme;->getTypeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v3

    iget-object v4, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v4

    invoke-virtual {p0, v3, v0, v4}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v5, 0x7

    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v5, 0x4

    goto/16 :goto_0

    const/4 v1, 0x1

    const/4 v5, 0x3

    :cond_2
    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_4

    const/4 v5, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v3

    iget-object v4, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v4

    invoke-virtual {p0, v3, v2, v4}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v5, 0x0

    :cond_3
    :goto_1
    nop

    return-void

    const/4 v0, 0x5

    const/4 v5, 0x1

    :cond_4
    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v3

    const/16 v4, 0x7d

    if-ne v3, v4, :cond_5

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v3

    iget-object v4, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v4

    invoke-virtual {p0, v3, v2, v4}, Lcom/henrythompson/quoda/language/CssStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_1

    const/4 v5, 0x2

    const/4 v5, 0x2

    :cond_5
    iget-object v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_0

    const/4 v1, 0x7
.end method


# virtual methods
.method public canParseLanguage(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x5

    const-string v0, "css"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    const/4 v1, 0x3
.end method

.method public parse()V
    .locals 10

    const/4 v9, 0x4

    const/16 v8, 0x9

    const/16 v7, 0x8

    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v9, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CssStyler;->getStream()Lcom/henrythompson/quoda/styler/StringStream;

    move-result-object v2

    iput-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v9, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CssStyler;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v2

    iput-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    const/4 v9, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v9, 0x4

    const/4 v0, 0x0

    const/4 v9, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CssStyler;->getParseEnd()I

    move-result v2

    iput v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mParseEnd:I

    const/4 v9, 0x7

    :goto_0
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    iget v3, p0, Lcom/henrythompson/quoda/language/CssStyler;->mParseEnd:I

    if-ge v2, v3, :cond_14

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/CssStyler;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v9, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->setCaseSensitive(Z)V

    const/4 v9, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v3, "/*"

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v9, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v9, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/henrythompson/quoda/language/CssStyler;->addSelectorSpan(III)V

    const/4 v9, 0x1

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->parseCSSComment()V

    const/4 v9, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v9, 0x0

    goto :goto_0

    const/4 v7, 0x5

    const/4 v9, 0x5

    :cond_0
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_2

    const/4 v9, 0x4

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/henrythompson/quoda/language/CssStyler;->addSelectorSpan(III)V

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v9, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v9, 0x3

    const/4 v0, 0x0

    const/4 v9, 0x3

    goto :goto_0

    const/4 v9, 0x5

    const/4 v9, 0x6

    :cond_2
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v2

    const/16 v3, 0x7b

    if-ne v2, v3, :cond_3

    const/4 v9, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/henrythompson/quoda/language/CssStyler;->addSelectorSpan(III)V

    const/4 v9, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->parseCSSDeclarationGroup()V

    const/4 v9, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v9, 0x3

    const/4 v0, 0x0

    const/4 v9, 0x4

    goto/16 :goto_0

    const/4 v9, 0x3

    const/4 v9, 0x7

    :cond_3
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_4

    const/4 v9, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/henrythompson/quoda/language/CssStyler;->addSelectorSpan(III)V

    const/4 v9, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v9, 0x1

    const/4 v0, 0x2

    const/4 v9, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v9, 0x3

    goto/16 :goto_0

    const/4 v3, 0x3

    const/4 v9, 0x0

    :cond_4
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_5

    const/4 v9, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/henrythompson/quoda/language/CssStyler;->addSelectorSpan(III)V

    const/4 v9, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v9, 0x1

    const/4 v0, 0x1

    const/4 v9, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v9, 0x2

    goto/16 :goto_0

    const/4 v8, 0x2

    const/4 v9, 0x3

    :cond_5
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_6

    const/4 v9, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/henrythompson/quoda/language/CssStyler;->addSelectorSpan(III)V

    const/4 v9, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v9, 0x0

    const/4 v0, 0x3

    const/4 v9, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v9, 0x1

    goto/16 :goto_0

    const/4 v7, 0x1

    const/4 v9, 0x4

    :cond_6
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_7

    const/4 v9, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/henrythompson/quoda/language/CssStyler;->addSelectorSpan(III)V

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->parseCSSAttributeAndValueSelector()V

    const/4 v9, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v9, 0x1

    const/4 v0, 0x4

    const/4 v9, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v9, 0x6

    goto/16 :goto_0

    const/4 v3, 0x2

    const/4 v9, 0x7

    :cond_7
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v3, "@charset"

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->nextLetterIsSeparator()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v9, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2, v7}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v9, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/henrythompson/quoda/language/CssStyler;->addSelectorSpan(III)V

    const/4 v9, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->parseCSSAtCharset()V

    const/4 v9, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    const/4 v9, 0x3

    :cond_8
    :goto_1
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_0

    const/4 v2, 0x2

    const/4 v9, 0x6

    :cond_9
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2, v7}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    goto :goto_1

    const/4 v3, 0x2

    const/4 v9, 0x6

    :cond_a
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v3, "@namespace"

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v9, 0x1

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->nextLetterIsSeparator()Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v9, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v9, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/henrythompson/quoda/language/CssStyler;->addSelectorSpan(III)V

    const/4 v9, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->parseCSSAtNamespace()V

    const/4 v9, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    goto :goto_1

    const/4 v4, 0x2

    const/4 v9, 0x4

    :cond_b
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    goto :goto_1

    const/4 v4, 0x6

    const/4 v9, 0x3

    :cond_c
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v3, "@import"

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v9, 0x1

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->nextLetterIsSeparator()Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v9, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2, v6}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v9, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/henrythompson/quoda/language/CssStyler;->addSelectorSpan(III)V

    const/4 v9, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->parseCSSAtImport()V

    const/4 v9, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    const/4 v1, 0x2

    const/4 v9, 0x7

    :cond_d
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2, v6}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    goto/16 :goto_1

    const/4 v2, 0x4

    const/4 v9, 0x2

    :cond_e
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v3, "@media"

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v9, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->nextLetterIsSeparator()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v9, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2, v5}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/henrythompson/quoda/language/CssStyler;->addSelectorSpan(III)V

    const/4 v9, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->parseCSSAtMedia()V

    const/4 v9, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    goto/16 :goto_1

    const/4 v7, 0x2

    const/4 v9, 0x0

    :cond_f
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2, v5}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    goto/16 :goto_1

    const/4 v7, 0x3

    const/4 v9, 0x6

    :cond_10
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v3, "@page"

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v9, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->nextLetterIsSeparator()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v9, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2, v4}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v9, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/henrythompson/quoda/language/CssStyler;->addSelectorSpan(III)V

    const/4 v9, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->parseCSSAtPage()V

    const/4 v9, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    goto/16 :goto_1

    const/4 v9, 0x6

    const/4 v9, 0x6

    :cond_11
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2, v4}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    goto/16 :goto_1

    const/4 v4, 0x5

    const/4 v9, 0x0

    :cond_12
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const-string v3, "@font-face"

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/styler/StringStream;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->nextLetterIsSeparator()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v9, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2, v8}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    const/4 v9, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/henrythompson/quoda/language/CssStyler;->addSelectorSpan(III)V

    const/4 v9, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/CssStyler;->parseCSSAtFontFace()V

    const/4 v9, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    goto/16 :goto_1

    const/4 v5, 0x1

    const/4 v9, 0x7

    :cond_13
    iget-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2, v8}, Lcom/henrythompson/quoda/styler/StringStream;->goBack(I)C

    goto/16 :goto_1

    const/4 v5, 0x7

    const/4 v9, 0x1

    :cond_14
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/henrythompson/quoda/language/CssStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v9, 0x1

    nop

    return-void

    const/4 v6, 0x6
.end method
