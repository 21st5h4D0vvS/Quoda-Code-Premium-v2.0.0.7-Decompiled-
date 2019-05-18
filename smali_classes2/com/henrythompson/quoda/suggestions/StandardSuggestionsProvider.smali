.class public Lcom/henrythompson/quoda/suggestions/StandardSuggestionsProvider;
.super Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;


# instance fields
.field mPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/document/Document;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x2

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;-><init>(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v1, 0x1

    sget-object v0, Lcom/henrythompson/quoda/suggestions/WordsManager;->mWordRegex:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/suggestions/StandardSuggestionsProvider;->mPattern:Ljava/util/regex/Pattern;

    const/4 v1, 0x4

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public getSuggestions()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x3

    const/4 v5, 0x0

    const/4 v10, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/suggestions/StandardSuggestionsProvider;->getDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v10, 0x4

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getSelectionStart()I

    move-result v4

    const/4 v10, 0x1

    move v1, v4

    const/4 v10, 0x1

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getEditableText()Landroid/text/Editable;

    move-result-object v6

    const/4 v10, 0x7

    if-ltz v1, :cond_0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v1, v7, :cond_1

    const/4 v10, 0x7

    :cond_0
    return-object v5

    const/4 v9, 0x3

    const/4 v10, 0x3

    :cond_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/suggestions/StandardSuggestionsProvider;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_2

    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    const/4 v10, 0x4

    iget-object v7, p0, Lcom/henrythompson/quoda/suggestions/StandardSuggestionsProvider;->mPattern:Ljava/util/regex/Pattern;

    invoke-interface {v6, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v10, 0x0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    invoke-interface {v6, v4, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v10, 0x3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lez v7, :cond_0

    const/4 v10, 0x6

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getWords()Lcom/henrythompson/quoda/suggestions/WordsManager;

    move-result-object v7

    invoke-virtual {v7, v2, v4, v1}, Lcom/henrythompson/quoda/suggestions/WordsManager;->getSuggestions(Ljava/lang/CharSequence;II)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v10, 0x1

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v7

    invoke-virtual {v7}, Lcom/henrythompson/quoda/language/Language;->getSnippets()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/henrythompson/quoda/snippet/Snippet;

    const/4 v10, 0x3

    new-instance v8, Lcom/henrythompson/quoda/suggestions/Suggestion;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/snippet/Snippet;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v3, v4, v1}, Lcom/henrythompson/quoda/suggestions/Suggestion;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v1, 0x5
.end method
