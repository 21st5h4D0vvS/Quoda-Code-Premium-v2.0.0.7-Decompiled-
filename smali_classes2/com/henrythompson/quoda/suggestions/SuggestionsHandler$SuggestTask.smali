.class Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/henrythompson/quoda/suggestions/Suggestion;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mSuggestor:Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;

.field final synthetic this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;


# direct methods
.method private constructor <init>(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method

.method synthetic constructor <init>(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$1;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;-><init>(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)V

    nop

    return-void

    const/4 v0, 0x3
.end method

.method private setSnippetsSuggestor(Lcom/henrythompson/quoda/document/Document;)Z
    .locals 6

    const/4 v5, 0x4

    const/4 v5, 0x7

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getSelectionStart()I

    move-result v3

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getSnippetStart()I

    move-result v4

    sub-int v0, v3, v4

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getCurrentlyInsertedSnippet()Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v3

    invoke-virtual {v3, v0, v0}, Lcom/henrythompson/quoda/snippet/Tabstop;->getSnippetContainingRange(II)Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v1

    const/4 v5, 0x6

    if-eqz v1, :cond_0

    const/4 v5, 0x6

    invoke-virtual {v1}, Lcom/henrythompson/quoda/snippet/Tabstop;->getCodeCompletions()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v5, 0x3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v5, 0x5

    new-instance v3, Lcom/henrythompson/quoda/suggestions/SnippetSuggestionsProvider;

    invoke-direct {v3, p1, v1}, Lcom/henrythompson/quoda/suggestions/SnippetSuggestionsProvider;-><init>(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/snippet/Tabstop;)V

    iput-object v3, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;->mSuggestor:Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x7

    :goto_0
    return v3

    const/4 v0, 0x7

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    const/4 v2, 0x1
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    const/4 v1, 0x0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x3

    :try_start_0
    iget-object v2, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-static {v2}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->access$700(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;->mSuggestor:Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;->mSuggestor:Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;->getSuggestions()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v4, 0x2

    :cond_0
    :goto_0
    return-object v1

    const/4 v2, 0x3

    const/4 v4, 0x5

    :catch_0
    move-exception v0

    const/4 v4, 0x4

    const-string v2, "SUGGESTIONS"

    const-string v3, "ERROR"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    const/4 v2, 0x0
.end method

.method public onCancel()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;->mSuggestor:Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;->cancel()V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x2
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x7

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;->onPostExecute(Ljava/util/ArrayList;)V

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/suggestions/Suggestion;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x7

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-static {v0, p1}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->access$800(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;Ljava/util/ArrayList;)V

    const/4 v1, 0x1

    :goto_0
    nop

    return-void

    const/4 v0, 0x0

    const/4 v1, 0x2

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->hidePopup()V

    goto :goto_0

    const/4 v0, 0x4
.end method

.method public onPreExecute()V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-static {v1}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->access$300(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/CodeView;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->isInSnippetMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;->setSnippetsSuggestor(Lcom/henrythompson/quoda/document/Document;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x5

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getSuggestionsProvider()Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;->mSuggestor:Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;

    const/4 v2, 0x1

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v2, 0x4

    const/4 v2, 0x6

    :cond_1
    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getSuggestionsProvider()Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;->mSuggestor:Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;

    goto :goto_0

    const/4 v1, 0x6
.end method
