.class public Lcom/henrythompson/quoda/suggestions/HtmlSuggestionsProvider;
.super Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;-><init>(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x7
.end method

.method private getSuggestionsFromHandler()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v5, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/suggestions/HtmlSuggestionsProvider;->getDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    const/4 v5, 0x2

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getSelectionStart()I

    move-result v0

    const/4 v5, 0x7

    new-instance v2, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;

    invoke-direct {v2}, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/suggestions/HtmlSuggestionsProvider;->getDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v4

    invoke-virtual {v2, v4, v3, v0}, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->getCodeCompletions(Lcom/henrythompson/quoda/document/Document;Landroid/text/Editable;I)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4

    const/4 v0, 0x5
.end method


# virtual methods
.method public getSuggestions()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/suggestions/HtmlSuggestionsProvider;->getSuggestionsFromHandler()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x5

    new-instance v1, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/suggestions/HtmlSuggestionsProvider;->getDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;-><init>(Ljava/util/ArrayList;Lcom/henrythompson/quoda/document/Document;)V

    invoke-virtual {v1}, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;->convertCodeCompletionItemsToSuggestions()Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    const/4 v1, 0x1
.end method
