.class public abstract Lcom/henrythompson/quoda/language/LanguageStyler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;
    }
.end annotation


# static fields
.field private static mContextSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/styler/ContextSpan;",
            ">;"
        }
    .end annotation
.end field

.field private static mDocument:Lcom/henrythompson/quoda/document/Document;

.field private static mStream:Lcom/henrythompson/quoda/styler/StringStream;


# instance fields
.field private isParsingAsPartOfAnotherLanguage:Z

.field private mCancelled:Z

.field private mHasParsed:Z

.field mParseEnd:I

.field private mSyntaxHighlightSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mTask:Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x6

    iput-boolean v0, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mHasParsed:Z

    const/4 v1, 0x6

    iput-boolean v0, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mCancelled:Z

    const/4 v1, 0x5

    iput-boolean v0, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->isParsingAsPartOfAnotherLanguage:Z

    const/4 v1, 0x3

    iput v0, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mParseEnd:I

    nop

    return-void

    const/4 v0, 0x4
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/language/LanguageStyler;)Ljava/util/ArrayList;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mSyntaxHighlightSpans:Ljava/util/ArrayList;

    return-object v0

    const/4 v0, 0x0
.end method

.method static synthetic access$002(Lcom/henrythompson/quoda/language/LanguageStyler;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mSyntaxHighlightSpans:Ljava/util/ArrayList;

    return-object p1

    const/4 v0, 0x7
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    sget-object v0, Lcom/henrythompson/quoda/language/LanguageStyler;->mContextSpans:Ljava/util/ArrayList;

    return-object v0

    const/4 v1, 0x1
.end method

.method static synthetic access$102(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x7

    sput-object p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mContextSpans:Ljava/util/ArrayList;

    return-object p0

    const/4 v0, 0x4
.end method

.method static synthetic access$200()Lcom/henrythompson/quoda/document/Document;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    sget-object v0, Lcom/henrythompson/quoda/language/LanguageStyler;->mDocument:Lcom/henrythompson/quoda/document/Document;

    return-object v0

    const/4 v0, 0x6
.end method


# virtual methods
.method public final addContextSpan(III)V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x5

    if-le p2, p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p1, :cond_0

    sget-object v0, Lcom/henrythompson/quoda/language/LanguageStyler;->mStream:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v0

    if-gt p1, v0, :cond_0

    sget-object v0, Lcom/henrythompson/quoda/language/LanguageStyler;->mStream:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gt p2, v0, :cond_0

    const/4 v2, 0x0

    sget-object v0, Lcom/henrythompson/quoda/language/LanguageStyler;->mContextSpans:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/styler/ContextSpan;

    invoke-direct {v1, p1, p2, p3}, Lcom/henrythompson/quoda/styler/ContextSpan;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x3

    :cond_0
    nop

    return-void

    const/4 v1, 0x2
.end method

.method public final addSpan(Lcom/henrythompson/quoda/styler/StyleSpan;II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x0

    if-le p3, p2, :cond_0

    if-ltz p3, :cond_0

    if-ltz p2, :cond_0

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageStyler;->mStream:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v1

    if-gt p2, v1, :cond_0

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageStyler;->mStream:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v1

    if-gt p3, v1, :cond_0

    const/4 v2, 0x0

    new-instance v0, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;

    invoke-direct {v0, p1, p2, p3}, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;-><init>(Lcom/henrythompson/quoda/styler/StyleSpan;II)V

    const/4 v2, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mSyntaxHighlightSpans:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    :cond_0
    nop

    return-void

    const/4 v1, 0x5
.end method

.method public final addSpans(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x5

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mSyntaxHighlightSpans:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public abstract canParseLanguage(Ljava/lang/String;)Z
.end method

.method public cancel()V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    iput-boolean v1, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mCancelled:Z

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mTask:Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mTask:Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;->cancel(Z)Z

    const/4 v2, 0x0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mTask:Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;

    const/4 v2, 0x4

    nop

    return-void

    const/4 v1, 0x2
.end method

.method protected getContextSpans()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/styler/ContextSpan;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x5

    const/4 v1, 0x1

    sget-object v0, Lcom/henrythompson/quoda/language/LanguageStyler;->mContextSpans:Ljava/util/ArrayList;

    return-object v0

    const/4 v1, 0x3
.end method

.method public final getDocument()Lcom/henrythompson/quoda/document/Document;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x5

    sget-object v0, Lcom/henrythompson/quoda/language/LanguageStyler;->mDocument:Lcom/henrythompson/quoda/document/Document;

    return-object v0

    const/4 v1, 0x4
.end method

.method public getParseEnd()I
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x4

    iget v0, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mParseEnd:I

    return v0

    const/4 v0, 0x7
.end method

.method public final getStream()Lcom/henrythompson/quoda/styler/StringStream;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x0

    sget-object v0, Lcom/henrythompson/quoda/language/LanguageStyler;->mStream:Lcom/henrythompson/quoda/styler/StringStream;

    return-object v0

    const/4 v0, 0x7
.end method

.method protected getSyntaxHighlightSpans()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mSyntaxHighlightSpans:Ljava/util/ArrayList;

    return-object v0

    const/4 v1, 0x7
.end method

.method public final getTheme()Lcom/henrythompson/quoda/styler/Theme;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/QuodaPreferences;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v0

    return-object v0

    const/4 v1, 0x4
.end method

.method public final isCancelled()Z
    .locals 3

    const/4 v2, 0x4

    const/4 v0, 0x1

    const/4 v2, 0x6

    iget-boolean v1, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mCancelled:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v0

    const/4 v2, 0x0

    const/4 v2, 0x1

    :cond_1
    iget-object v1, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mTask:Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;

    if-eqz v1, :cond_2

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mTask:Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;->isCancelled()Z

    move-result v0

    goto :goto_0

    const/4 v1, 0x5

    const/4 v2, 0x1

    :cond_2
    iget-boolean v1, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->isParsingAsPartOfAnotherLanguage:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x7
.end method

.method public abstract parse()V
.end method

.method public parse(Ljava/lang/String;Lcom/henrythompson/quoda/styler/StringStream;Lcom/henrythompson/quoda/document/Document;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/henrythompson/quoda/styler/StringStream;",
            "Lcom/henrythompson/quoda/document/Document;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/styler/ContextSpan;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x5

    iget-boolean v1, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mHasParsed:Z

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    const-string v1, "LanguageParser.parse(...)"

    const-string v2, "Tried to use a parser which has already been used"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x7

    :goto_0
    nop

    return-void

    const/4 v2, 0x0

    const/4 v3, 0x4

    :cond_0
    iput-boolean v2, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mHasParsed:Z

    const/4 v3, 0x2

    sput-object p2, Lcom/henrythompson/quoda/language/LanguageStyler;->mStream:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v3, 0x7

    sput-object p3, Lcom/henrythompson/quoda/language/LanguageStyler;->mDocument:Lcom/henrythompson/quoda/document/Document;

    const/4 v3, 0x0

    iput-object p4, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mSyntaxHighlightSpans:Ljava/util/ArrayList;

    const/4 v3, 0x0

    sput-object p5, Lcom/henrythompson/quoda/language/LanguageStyler;->mContextSpans:Ljava/util/ArrayList;

    const/4 v3, 0x5

    iput-boolean v2, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->isParsingAsPartOfAnotherLanguage:Z

    const/4 v3, 0x1

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageStyler;->mStream:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v1

    iput v1, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mParseEnd:I

    const/4 v3, 0x7

    if-eqz p1, :cond_1

    const/4 v3, 0x4

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sget-object v2, Lcom/henrythompson/quoda/language/LanguageStyler;->mStream:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/styler/StringStream;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v3, 0x5

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageStyler;->mStream:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x5

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    iput v1, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mParseEnd:I

    const/4 v3, 0x7

    :cond_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/LanguageStyler;->parse()V

    goto :goto_0

    const/4 v3, 0x2
.end method

.method public final runStyler()V
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x4

    iget-boolean v1, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mHasParsed:Z

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    const-string v1, "LanguageParser.runStyler()"

    const-string v2, "Tried to use a parser which has already been used"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    :goto_0
    nop

    return-void

    const/4 v2, 0x5

    const/4 v4, 0x5

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mHasParsed:Z

    const/4 v4, 0x7

    const-string v1, "LanguageStyler"

    const-string v2, "runStyler() has been called. Starting styler."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v0

    const/4 v4, 0x6

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    sput-object v1, Lcom/henrythompson/quoda/language/LanguageStyler;->mDocument:Lcom/henrythompson/quoda/document/Document;

    const/4 v4, 0x4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->isParsingAsPartOfAnotherLanguage:Z

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mTask:Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;

    if-eqz v1, :cond_1

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mTask:Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;->cancelTask()Z

    const/4 v4, 0x7

    :cond_1
    new-instance v1, Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;-><init>(Lcom/henrythompson/quoda/language/LanguageStyler;)V

    iput-object v1, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mTask:Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;

    const/4 v4, 0x0

    new-instance v1, Lcom/henrythompson/quoda/styler/StringStream;

    sget-object v2, Lcom/henrythompson/quoda/language/LanguageStyler;->mDocument:Lcom/henrythompson/quoda/document/Document;

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/styler/StringStream;-><init>(Lcom/henrythompson/quoda/document/Document;)V

    sput-object v1, Lcom/henrythompson/quoda/language/LanguageStyler;->mStream:Lcom/henrythompson/quoda/styler/StringStream;

    const/4 v4, 0x6

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageStyler;->mStream:Lcom/henrythompson/quoda/styler/StringStream;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/styler/StringStream;->eof()I

    move-result v1

    iput v1, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mParseEnd:I

    const/4 v4, 0x6

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_2

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mTask:Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    const/4 v1, 0x5

    const/4 v4, 0x6

    :catch_0
    move-exception v1

    goto :goto_0

    const/4 v3, 0x7

    const/4 v4, 0x2

    :cond_2
    iget-object v2, p0, Lcom/henrythompson/quoda/language/LanguageStyler;->mTask:Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v1}, Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v2, 0x4
.end method
