.class public Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;
.super Ljava/lang/Object;


# static fields
.field public static final COMPLETION_COMMAND_COLOR_PICKER:Ljava/lang/String; = "-1"


# instance fields
.field private final mCompletionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mDocument:Lcom/henrythompson/quoda/document/Document;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/henrythompson/quoda/document/Document;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;",
            ">;",
            "Lcom/henrythompson/quoda/document/Document;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;->mCompletionItems:Ljava/util/ArrayList;

    const/4 v0, 0x4

    iput-object p2, p0, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;->mDocument:Lcom/henrythompson/quoda/document/Document;

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x3
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;)Lcom/henrythompson/quoda/document/Document;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;->mDocument:Lcom/henrythompson/quoda/document/Document;

    return-object v0

    const/4 v1, 0x3
.end method

.method private convertToSuggestion(Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;I)Lcom/henrythompson/quoda/suggestions/Suggestion;
    .locals 7

    const/4 v6, 0x3

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;->getCompletionStart()I

    move-result v4

    add-int v2, v4, p2

    const/4 v6, 0x2

    invoke-virtual {p1}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;->getCompletionEnd()I

    move-result v4

    add-int v1, v4, p2

    const/4 v6, 0x5

    invoke-virtual {p1}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;->getNewCursorPosition()I

    move-result v4

    add-int v0, v4, p2

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;->getCompletion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v6, 0x1

    new-instance v3, Lcom/henrythompson/quoda/suggestions/Suggestion;

    invoke-virtual {p1}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;->getCompletion()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2, v1}, Lcom/henrythompson/quoda/suggestions/Suggestion;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    const/4 v6, 0x7

    invoke-virtual {v3, v0}, Lcom/henrythompson/quoda/suggestions/Suggestion;->setCursorPositionAfter(I)V

    const/4 v6, 0x0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/suggestions/Suggestion;->setShowSuggestionsAfterSelection(Z)V

    const/4 v6, 0x0

    :goto_0
    return-object v3

    const/4 v0, 0x0

    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;->createColorPickerSuggestion(II)Lcom/henrythompson/quoda/suggestions/Suggestion;

    move-result-object v3

    goto :goto_0

    const/4 v1, 0x2
.end method

.method private createColorPickerSuggestion(II)Lcom/henrythompson/quoda/suggestions/Suggestion;
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x3

    new-instance v0, Lcom/henrythompson/quoda/suggestions/Suggestion;

    const v1, 0x7f0d0234

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter$1;-><init>(Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;II)V

    invoke-direct {v0, v1, v2}, Lcom/henrythompson/quoda/suggestions/Suggestion;-><init>(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    return-object v0

    const/4 v0, 0x1
.end method

.method private getString(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x4
.end method


# virtual methods
.method public convertCodeCompletionItemsToSuggestions()Ljava/util/ArrayList;
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

    const/4 v5, 0x0

    const/4 v5, 0x2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x7

    iget-object v3, p0, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;->mDocument:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getSelectionStart()I

    move-result v0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;->mCompletionItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;

    const/4 v5, 0x4

    invoke-direct {p0, v1, v0}, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;->convertToSuggestion(Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;I)Lcom/henrythompson/quoda/suggestions/Suggestion;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v0, 0x1

    const/4 v5, 0x4

    :cond_0
    return-object v2

    const/4 v3, 0x2
.end method
