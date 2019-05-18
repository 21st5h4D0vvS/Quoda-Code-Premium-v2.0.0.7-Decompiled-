.class public abstract Lcom/henrythompson/quoda/language/Language;
.super Ljava/lang/Object;


# instance fields
.field private mSnippets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/snippet/Snippet;",
            ">;"
        }
    .end annotation
.end field

.field private mStyler:Lcom/henrythompson/quoda/language/LanguageStyler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public cancelStyler()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/language/Language;->mStyler:Lcom/henrythompson/quoda/language/LanguageStyler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/language/Language;->mStyler:Lcom/henrythompson/quoda/language/LanguageStyler;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/language/LanguageStyler;->cancel()V

    const/4 v1, 0x3

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/henrythompson/quoda/language/Language;->mStyler:Lcom/henrythompson/quoda/language/LanguageStyler;

    const/4 v1, 0x6

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public abstract getBlockCommentEnd()Ljava/lang/String;
.end method

.method public abstract getBlockCommentStart()Ljava/lang/String;
.end method

.method public abstract getLineComment()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method abstract getNewStylerObject()Lcom/henrythompson/quoda/language/LanguageStyler;
.end method

.method public getSnippets()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/snippet/Snippet;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/language/Language;->mSnippets:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v2, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getInstance()Lcom/henrythompson/quoda/snippet/SnippetsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getSnippetsForLanguage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/language/Language;->mSnippets:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/language/Language;->mSnippets:Ljava/util/ArrayList;

    return-object v0

    const/4 v0, 0x5
.end method

.method public getSuggestionsProvider(Lcom/henrythompson/quoda/document/Document;)Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x1

    new-instance v0, Lcom/henrythompson/quoda/suggestions/StandardSuggestionsProvider;

    invoke-direct {v0, p1}, Lcom/henrythompson/quoda/suggestions/StandardSuggestionsProvider;-><init>(Lcom/henrythompson/quoda/document/Document;)V

    return-object v0

    const/4 v0, 0x6
.end method

.method public final runStyler()V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/Language;->cancelStyler()V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/Language;->getNewStylerObject()Lcom/henrythompson/quoda/language/LanguageStyler;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/language/Language;->mStyler:Lcom/henrythompson/quoda/language/LanguageStyler;

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/language/Language;->mStyler:Lcom/henrythompson/quoda/language/LanguageStyler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/language/Language;->mStyler:Lcom/henrythompson/quoda/language/LanguageStyler;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/language/LanguageStyler;->runStyler()V

    const/4 v1, 0x6

    :cond_0
    nop

    return-void

    const/4 v1, 0x0
.end method
