.class public Lcom/henrythompson/quoda/language/JavaStyler;
.super Lcom/henrythompson/quoda/language/LanguageStyler;


# instance fields
.field private CStyleBlockCommentEnd:[C

.field private mMatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/language/LanguageMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mSource:Lcom/henrythompson/quoda/styler/StringStream;

.field private mTheme:Lcom/henrythompson/quoda/styler/Theme;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x6

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/LanguageStyler;-><init>()V

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mMatchers:Ljava/util/ArrayList;

    const/4 v5, 0x5

    new-array v0, v4, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/henrythompson/quoda/language/JavaStyler;->CStyleBlockCommentEnd:[C

    const/4 v5, 0x7

    const-string v0, "\\b(?!((if|else|do|while|catch|synchronized|for|switch)\\s*|@))([a-zA-Z_][a-zA-Z0-9_]+)\\s*\\("

    const/4 v1, 0x3

    sget-object v2, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->Function:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-direct {p0, v0, v1, v2}, Lcom/henrythompson/quoda/language/JavaStyler;->addLanguageMatcher(Ljava/lang/String;ILcom/henrythompson/quoda/language/LanguageMatcher$Style;)V

    const/4 v5, 0x6

    const-string v0, "\\b(abstract|continue|for|new|switch|assert|default|if|package|synchronized|boolean|do|goto|private|this|break|double|implements|protected|throw|byte|else|import|public|throws|case|enum|instanceof|return|transient|catch|extends|int|short|try|char|final|interface|static|void|class|finally|long|strictfp|volatile|const|float|native|super|while)\\b"

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->Keyword:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-direct {p0, v0, v3, v1}, Lcom/henrythompson/quoda/language/JavaStyler;->addLanguageMatcher(Ljava/lang/String;ILcom/henrythompson/quoda/language/LanguageMatcher$Style;)V

    const/4 v5, 0x2

    const-string v0, "\\b(byte|int|short|long|double|float|char|boolean)\\b"

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->Type:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-direct {p0, v0, v3, v1}, Lcom/henrythompson/quoda/language/JavaStyler;->addLanguageMatcher(Ljava/lang/String;ILcom/henrythompson/quoda/language/LanguageMatcher$Style;)V

    const/4 v5, 0x7

    const-string v0, "\\b(new)\\s*(\\w+)\\s*\\("

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->Class:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-direct {p0, v0, v4, v1}, Lcom/henrythompson/quoda/language/JavaStyler;->addLanguageMatcher(Ljava/lang/String;ILcom/henrythompson/quoda/language/LanguageMatcher$Style;)V

    const/4 v5, 0x4

    const-string v0, "\\b(?:[a-z]\\w*(\\.))*([A-Z]+\\w*)(?!\\()\\b"

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->Class:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-direct {p0, v0, v4, v1}, Lcom/henrythompson/quoda/language/JavaStyler;->addLanguageMatcher(Ljava/lang/String;ILcom/henrythompson/quoda/language/LanguageMatcher$Style;)V

    const/4 v5, 0x2

    const-string v0, "(import|package)([^;]*;)"

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->NormalText:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-direct {p0, v0, v4, v1}, Lcom/henrythompson/quoda/language/JavaStyler;->addLanguageMatcher(Ljava/lang/String;ILcom/henrythompson/quoda/language/LanguageMatcher$Style;)V

    const/4 v5, 0x7

    const-string v0, "(\\.)?\\b([A-Z][A-Z0-9_]+)(?!&lt;|\\.class|\\s*\\w+\\s*=)\\b"

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->UserConst:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-direct {p0, v0, v4, v1}, Lcom/henrythompson/quoda/language/JavaStyler;->addLanguageMatcher(Ljava/lang/String;ILcom/henrythompson/quoda/language/LanguageMatcher$Style;)V

    const/4 v5, 0x0

    const-string v0, "@\\w*"

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->Preprocessor:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-direct {p0, v0, v3, v1}, Lcom/henrythompson/quoda/language/JavaStyler;->addLanguageMatcher(Ljava/lang/String;ILcom/henrythompson/quoda/language/LanguageMatcher$Style;)V

    const/4 v5, 0x7

    const-string v0, "!|\\$|%|&|\\*|\\-|\\+|~|=|<|>|\\?|\\:|\\^"

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->Operator:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-direct {p0, v0, v3, v1}, Lcom/henrythompson/quoda/language/JavaStyler;->addLanguageMatcher(Ljava/lang/String;ILcom/henrythompson/quoda/language/LanguageMatcher$Style;)V

    const/4 v5, 0x1

    const-string v0, "\\b(((0(x|X)[0-9a-fA-F]*)|(([0-9]+\\.?[0-9]*)|(\\.[0-9]+))((e|E)(\\+|-)?[0-9]+)?)([LlFfUuDd]|UL|ul)?)\\b"

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->Number:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-direct {p0, v0, v3, v1}, Lcom/henrythompson/quoda/language/JavaStyler;->addLanguageMatcher(Ljava/lang/String;ILcom/henrythompson/quoda/language/LanguageMatcher$Style;)V

    const/4 v5, 0x6

    const-string v0, "\\b(true|false|null)\\b"

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->LangConst:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-direct {p0, v0, v3, v1}, Lcom/henrythompson/quoda/language/JavaStyler;->addLanguageMatcher(Ljava/lang/String;ILcom/henrythompson/quoda/language/LanguageMatcher$Style;)V

    const/4 v5, 0x3

    nop

    return-void

    const/4 v1, 0x3

    const/4 v5, 0x1

    nop

    :array_0
    .array-data 2
        0x2as
        0x2fs
    .end array-data
.end method

.method private addLanguageMatcher(Ljava/lang/String;ILcom/henrythompson/quoda/language/LanguageMatcher$Style;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mMatchers:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/language/LanguageMatcher;

    invoke-direct {v1, p1, p2, p3}, Lcom/henrythompson/quoda/language/LanguageMatcher;-><init>(Ljava/lang/String;ILcom/henrythompson/quoda/language/LanguageMatcher$Style;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x3

    nop

    return-void

    const/4 v2, 0x1
.end method


# virtual methods
.method public canParseLanguage(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x1

    const-string v0, "java"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    const/4 v0, 0x0
.end method

.method public parse()V
    .locals 13

    const/4 v12, 0x3

    const/4 v12, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/JavaStyler;->getStream()Lcom/henrythompson/quoda/styler/StringStream;

    move-result-object v9

    iput-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/JavaStyler;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v9

    iput-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    const/4 v12, 0x2

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->setCaseSensitive(Z)V

    const/4 v12, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/JavaStyler;->getParseEnd()I

    move-result v6

    const/4 v12, 0x5

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mMatchers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/henrythompson/quoda/language/LanguageMatcher;

    const/4 v12, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v11, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5, v10, v6, v11}, Lcom/henrythompson/quoda/language/LanguageMatcher;->match(Lcom/henrythompson/quoda/styler/StringStream;ILcom/henrythompson/quoda/styler/Theme;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/henrythompson/quoda/language/JavaStyler;->addSpans(Ljava/util/ArrayList;)V

    goto :goto_0

    const/4 v2, 0x6

    const/4 v12, 0x4

    :cond_0
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v12, 0x1

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v10, 0x2a

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v9

    if-eqz v9, :cond_16

    const/4 v12, 0x6

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v10, 0x2a

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v9

    if-eqz v9, :cond_13

    const/4 v12, 0x1

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v9

    add-int/lit8 v7, v9, -0x3

    const/4 v12, 0x7

    :goto_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/JavaStyler;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v12, 0x2

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v10, p0, Lcom/henrythompson/quoda/language/JavaStyler;->CStyleBlockCommentEnd:[C

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v9

    if-eqz v9, :cond_12

    const/4 v12, 0x5

    :cond_1
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v12, 0x3

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v9

    invoke-virtual {p0, v9, v7, v2}, Lcom/henrythompson/quoda/language/JavaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v12, 0x2

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/JavaStyler;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_19

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v9

    if-ge v9, v6, :cond_19

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v0

    const/4 v12, 0x6

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v12, 0x5

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    const/4 v12, 0x5

    :goto_3
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/JavaStyler;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/JavaStyler;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v12, 0x4

    if-nez v3, :cond_5

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v12, 0x3

    :cond_3
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v12, 0x0

    if-nez v8, :cond_7

    const/4 v12, 0x3

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v9

    invoke-virtual {p0, v9, v7, v2}, Lcom/henrythompson/quoda/language/JavaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v12, 0x6

    :cond_4
    :goto_4
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_2

    const/4 v4, 0x6

    const/4 v12, 0x2

    :cond_5
    if-nez v3, :cond_6

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v10, 0x5c

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v12, 0x7

    const/4 v3, 0x1

    const/4 v12, 0x6

    goto :goto_3

    const/4 v7, 0x2

    const/4 v12, 0x5

    :cond_6
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v12, 0x6

    const/4 v3, 0x0

    const/4 v12, 0x7

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_3

    const/4 v11, 0x7

    const/4 v12, 0x6

    :cond_7
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v9

    invoke-virtual {p0, v9, v7, v2}, Lcom/henrythompson/quoda/language/JavaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_4

    const/4 v6, 0x3

    const/4 v12, 0x4

    :cond_8
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v10, 0x27

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x3

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    const/4 v12, 0x2

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v12, 0x2

    const/4 v8, 0x0

    const/4 v12, 0x6

    :cond_9
    :goto_5
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v12, 0x7

    if-nez v8, :cond_11

    const/4 v12, 0x6

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/Theme;->getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v9

    invoke-virtual {p0, v9, v7, v2}, Lcom/henrythompson/quoda/language/JavaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto :goto_4

    const/4 v4, 0x2

    const/4 v12, 0x7

    :cond_a
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v10, 0x5c

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v9

    if-eqz v9, :cond_f

    const/4 v12, 0x1

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v10, 0x75

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v9

    if-eqz v9, :cond_e

    const/4 v12, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x5

    const/4 v4, 0x0

    :goto_6
    const/4 v9, 0x4

    if-ge v4, v9, :cond_b

    const/4 v12, 0x7

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->peek()C

    move-result v1

    const/4 v12, 0x4

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_c

    const/16 v9, 0x61

    if-eq v1, v9, :cond_c

    const/16 v9, 0x62

    if-eq v1, v9, :cond_c

    const/16 v9, 0x63

    if-eq v1, v9, :cond_c

    const/16 v9, 0x64

    if-eq v1, v9, :cond_c

    const/16 v9, 0x65

    if-eq v1, v9, :cond_c

    const/16 v9, 0x66

    if-eq v1, v9, :cond_c

    const/16 v9, 0x41

    if-eq v1, v9, :cond_c

    const/16 v9, 0x42

    if-eq v1, v9, :cond_c

    const/16 v9, 0x43

    if-eq v1, v9, :cond_c

    const/16 v9, 0x44

    if-eq v1, v9, :cond_c

    const/16 v9, 0x45

    if-eq v1, v9, :cond_c

    const/16 v9, 0x46

    if-eq v1, v9, :cond_c

    const/4 v12, 0x6

    const/4 v8, 0x1

    const/4 v12, 0x2

    :cond_b
    :goto_7
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v10, 0x27

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v9

    if-nez v9, :cond_9

    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x0

    :goto_8
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v10, 0x27

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/JavaStyler;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_9

    const/4 v12, 0x7

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_8

    const/4 v10, 0x1

    const/4 v12, 0x6

    :cond_c
    const/16 v9, 0x27

    if-ne v1, v9, :cond_d

    const/4 v12, 0x5

    const/4 v8, 0x1

    const/4 v12, 0x5

    goto :goto_7

    const/4 v8, 0x3

    const/4 v12, 0x0

    :cond_d
    add-int/lit8 v4, v4, 0x1

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_6

    const/4 v1, 0x1

    const/4 v12, 0x0

    :cond_e
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v12, 0x6

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v10, 0x27

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v12, 0x3

    const/4 v8, 0x0

    goto/16 :goto_5

    const/4 v2, 0x5

    const/4 v12, 0x0

    :cond_f
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v9

    if-nez v9, :cond_9

    const/4 v12, 0x6

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    const/4 v12, 0x6

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v10, 0x27

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v9

    if-eqz v9, :cond_10

    const/4 v12, 0x2

    const/4 v8, 0x0

    goto/16 :goto_5

    const/4 v1, 0x1

    const/4 v12, 0x2

    :cond_10
    :goto_9
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v10, 0x27

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->atEndOfStream()Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/JavaStyler;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_9

    const/4 v12, 0x1

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_9

    const/4 v1, 0x5

    const/4 v12, 0x4

    :cond_11
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/Theme;->getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v9

    invoke-virtual {p0, v9, v7, v2}, Lcom/henrythompson/quoda/language/JavaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_4

    const/4 v11, 0x5

    const/4 v12, 0x7

    :cond_12
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto/16 :goto_1

    const/4 v8, 0x0

    const/4 v12, 0x2

    :cond_13
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v9

    add-int/lit8 v7, v9, -0x2

    const/4 v12, 0x1

    :goto_a
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/JavaStyler;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_14

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v9

    if-nez v9, :cond_14

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    iget-object v10, p0, Lcom/henrythompson/quoda/language/JavaStyler;->CStyleBlockCommentEnd:[C

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match([C)Z

    move-result v9

    if-eqz v9, :cond_15

    const/4 v12, 0x6

    :cond_14
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v12, 0x3

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v9

    invoke-virtual {p0, v9, v7, v2}, Lcom/henrythompson/quoda/language/JavaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_2

    const/4 v8, 0x4

    const/4 v12, 0x4

    :cond_15
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_a

    const/4 v1, 0x4

    const/4 v12, 0x6

    :cond_16
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v12, 0x7

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v9

    add-int/lit8 v7, v9, -0x2

    const/4 v12, 0x1

    :goto_b
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/JavaStyler;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_17

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->passedEndOfStream()Z

    move-result v9

    if-nez v9, :cond_17

    const/4 v12, 0x1

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/styler/StringStream;->match(C)Z

    move-result v9

    if-eqz v9, :cond_18

    const/4 v12, 0x3

    :cond_17
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v2

    const/4 v12, 0x4

    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/Theme;->getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v9

    invoke-virtual {p0, v9, v7, v2}, Lcom/henrythompson/quoda/language/JavaStyler;->addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    goto/16 :goto_2

    const/4 v12, 0x1

    const/4 v12, 0x2

    :cond_18
    iget-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/styler/StringStream;->advance()C

    goto :goto_b

    const/4 v3, 0x1

    const/4 v12, 0x0

    :cond_19
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/henrythompson/quoda/language/JavaStyler;->mSource:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v12, 0x7

    nop

    return-void

    const/4 v10, 0x4
.end method
