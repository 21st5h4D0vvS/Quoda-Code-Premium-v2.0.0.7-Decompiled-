.class public Lcom/henrythompson/quoda/language/LanguageMatcher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/language/LanguageMatcher$Style;
    }
.end annotation


# instance fields
.field private final mPattern:Ljava/util/regex/Pattern;

.field private final mRegexGroup:I

.field private final mStyle:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/henrythompson/quoda/language/LanguageMatcher$Style;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/language/LanguageMatcher;->mPattern:Ljava/util/regex/Pattern;

    const/4 v1, 0x2

    iput p2, p0, Lcom/henrythompson/quoda/language/LanguageMatcher;->mRegexGroup:I

    const/4 v1, 0x0

    iput-object p3, p0, Lcom/henrythompson/quoda/language/LanguageMatcher;->mStyle:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x0
.end method

.method private getStyleSpan(Lcom/henrythompson/quoda/styler/Theme;)Lcom/henrythompson/quoda/styler/StyleSpan;
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x2

    sget-object v0, Lcom/henrythompson/quoda/language/LanguageMatcher$1;->$SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I

    iget-object v1, p0, Lcom/henrythompson/quoda/language/LanguageMatcher;->mStyle:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/Theme;->getNormalTextStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    :goto_0
    return-object v0

    const/4 v2, 0x0

    const/4 v2, 0x7

    :pswitch_0
    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/Theme;->getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    goto :goto_0

    const/4 v1, 0x2

    const/4 v2, 0x1

    :pswitch_1
    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/Theme;->getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    goto :goto_0

    const/4 v0, 0x3

    const/4 v2, 0x3

    :pswitch_2
    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    goto :goto_0

    const/4 v0, 0x4

    const/4 v2, 0x1

    :pswitch_3
    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/Theme;->getEscapeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    goto :goto_0

    const/4 v0, 0x0

    const/4 v2, 0x6

    :pswitch_4
    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    goto :goto_0

    const/4 v0, 0x2

    const/4 v2, 0x3

    :pswitch_5
    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/Theme;->getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    goto :goto_0

    const/4 v0, 0x6

    const/4 v2, 0x5

    :pswitch_6
    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/Theme;->getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    goto :goto_0

    const/4 v1, 0x5

    const/4 v2, 0x6

    :pswitch_7
    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/Theme;->getNormalTextStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    goto :goto_0

    const/4 v2, 0x3

    const/4 v2, 0x0

    :pswitch_8
    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/Theme;->getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    goto :goto_0

    const/4 v2, 0x5

    const/4 v2, 0x6

    :pswitch_9
    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/Theme;->getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    goto :goto_0

    const/4 v2, 0x1

    const/4 v2, 0x1

    :pswitch_a
    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/Theme;->getPreprocessorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    goto :goto_0

    const/4 v0, 0x4

    const/4 v2, 0x4

    :pswitch_b
    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    goto :goto_0

    const/4 v0, 0x0

    const/4 v2, 0x5

    :pswitch_c
    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/Theme;->getTagAttributeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    goto :goto_0

    const/4 v0, 0x2

    const/4 v2, 0x7

    :pswitch_d
    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/Theme;->getTagBraceStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    goto :goto_0

    const/4 v2, 0x0

    const/4 v2, 0x4

    :pswitch_e
    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/Theme;->getTagNameStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    goto :goto_0

    const/4 v1, 0x4

    const/4 v2, 0x4

    :pswitch_f
    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/Theme;->getTypeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    goto :goto_0

    const/4 v2, 0x0

    const/4 v2, 0x0

    :pswitch_10
    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/Theme;->getUserConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    goto :goto_0

    const/4 v2, 0x5

    const/4 v2, 0x4

    :pswitch_11
    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/Theme;->getVariableStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    goto :goto_0

    const/4 v2, 0x2

    const/4 v2, 0x1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method


# virtual methods
.method public match(Lcom/henrythompson/quoda/styler/StringStream;ILcom/henrythompson/quoda/styler/Theme;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/henrythompson/quoda/styler/StringStream;",
            "I",
            "Lcom/henrythompson/quoda/styler/Theme;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v6, 0x7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/language/LanguageMatcher;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v6, 0x5

    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    invoke-virtual {v0, v2, p2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v6, 0x5

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x3

    new-instance v2, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;

    invoke-direct {p0, p3}, Lcom/henrythompson/quoda/language/LanguageMatcher;->getStyleSpan(Lcom/henrythompson/quoda/styler/Theme;)Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v3

    iget v4, p0, Lcom/henrythompson/quoda/language/LanguageMatcher;->mRegexGroup:I

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    iget v5, p0, Lcom/henrythompson/quoda/language/LanguageMatcher;->mRegexGroup:I

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;-><init>(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v1, 0x0

    const/4 v6, 0x1

    :cond_0
    return-object v1

    const/4 v6, 0x2
.end method
