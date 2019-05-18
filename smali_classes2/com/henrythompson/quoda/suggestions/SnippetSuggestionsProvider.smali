.class public Lcom/henrythompson/quoda/suggestions/SnippetSuggestionsProvider;
.super Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;


# instance fields
.field private mHandler:Lcom/henrythompson/quoda/codecompletion/SnippetCodeCompletionHandler;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/snippet/Tabstop;)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;-><init>(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v1, 0x2

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/SnippetCodeCompletionHandler;

    invoke-direct {v0, p2}, Lcom/henrythompson/quoda/codecompletion/SnippetCodeCompletionHandler;-><init>(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/suggestions/SnippetSuggestionsProvider;->mHandler:Lcom/henrythompson/quoda/codecompletion/SnippetCodeCompletionHandler;

    const/4 v1, 0x4

    nop

    return-void

    const/4 v1, 0x1
.end method


# virtual methods
.method public getSuggestions()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v5, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/suggestions/SnippetSuggestionsProvider;->getDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/suggestions/SnippetSuggestionsProvider;->mHandler:Lcom/henrythompson/quoda/codecompletion/SnippetCodeCompletionHandler;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getSelectionStart()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/henrythompson/quoda/codecompletion/SnippetCodeCompletionHandler;->getCodeCompletions(Lcom/henrythompson/quoda/document/Document;Landroid/text/Editable;I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v5, 0x1

    new-instance v2, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/suggestions/SnippetSuggestionsProvider;->getDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;-><init>(Ljava/util/ArrayList;Lcom/henrythompson/quoda/document/Document;)V

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;->convertCodeCompletionItemsToSuggestions()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v5, 0x3

    return-object v2

    const/4 v2, 0x6
.end method
