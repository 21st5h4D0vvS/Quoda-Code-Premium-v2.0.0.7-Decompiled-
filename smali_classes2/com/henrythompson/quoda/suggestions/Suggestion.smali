.class public Lcom/henrythompson/quoda/suggestions/Suggestion;
.super Ljava/lang/Object;


# instance fields
.field private mAction:Ljava/lang/Runnable;

.field private mCursorPositionAfter:I

.field private mDisplayName:Ljava/lang/CharSequence;

.field private mReplaceEnd:I

.field private mReplaceStart:I

.field private mShowSuggestionsAfterSelected:Z

.field private mValueSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

.field private mValueString:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x7

    const/4 v0, -0x1

    iput v0, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mCursorPositionAfter:I

    const/4 v1, 0x3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mShowSuggestionsAfterSelected:Z

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mDisplayName:Ljava/lang/CharSequence;

    const/4 v1, 0x3

    instance-of v0, p2, Lcom/henrythompson/quoda/snippet/Snippet;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    check-cast p2, Lcom/henrythompson/quoda/snippet/Snippet;

    iput-object p2, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mValueSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    const/4 v1, 0x0

    :goto_0
    iput p3, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mReplaceStart:I

    const/4 v1, 0x6

    iput p4, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mReplaceEnd:I

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x0

    const/4 v1, 0x1

    :cond_0
    iput-object p2, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mValueString:Ljava/lang/CharSequence;

    goto :goto_0

    const/4 v0, 0x2
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x5

    const/4 v0, -0x1

    iput v0, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mCursorPositionAfter:I

    const/4 v1, 0x4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mShowSuggestionsAfterSelected:Z

    const/4 v1, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mDisplayName:Ljava/lang/CharSequence;

    const/4 v1, 0x5

    iput-object p2, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mAction:Ljava/lang/Runnable;

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x6
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/CharSequence;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mDisplayName:Ljava/lang/CharSequence;

    return-object v0

    const/4 v0, 0x2
.end method

.method public onSelected(Lcom/henrythompson/quoda/CodeView;Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v5, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    const/4 v5, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v5, 0x5

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mShowSuggestionsAfterSelected:Z

    if-eqz v0, :cond_1

    const/4 v5, 0x2

    invoke-virtual {p2}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->showSuggestions()V

    const/4 v5, 0x7

    :cond_1
    nop

    return-void

    const/4 v4, 0x1

    const/4 v5, 0x0

    :cond_2
    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mValueString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mReplaceStart:I

    iget v2, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mReplaceEnd:I

    iget-object v3, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mValueString:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v5, 0x5

    iget v0, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mCursorPositionAfter:I

    if-lez v0, :cond_0

    const/4 v5, 0x0

    iget v0, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mCursorPositionAfter:I

    invoke-virtual {p1, v0}, Lcom/henrythompson/quoda/CodeView;->setSelection(I)V

    goto :goto_0

    const/4 v3, 0x3

    const/4 v5, 0x5

    :cond_3
    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mValueSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    if-eqz v0, :cond_0

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/henrythompson/quoda/CodeView;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mValueSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/henrythompson/quoda/CodeView;->getIndentationForCurrentLine()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mReplaceStart:I

    iget v4, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mReplaceEnd:I

    const/4 v5, 0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/henrythompson/quoda/document/Document;->setCurrentlyInsertedSnippet(Lcom/henrythompson/quoda/snippet/Snippet;Ljava/lang/String;II)V

    const/4 v5, 0x7

    invoke-virtual {p1}, Lcom/henrythompson/quoda/CodeView;->refresh()V

    goto :goto_0

    const/4 v2, 0x5
.end method

.method public setCursorPositionAfter(I)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x7

    iput p1, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mCursorPositionAfter:I

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setShowSuggestionsAfterSelection(Z)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/henrythompson/quoda/suggestions/Suggestion;->mShowSuggestionsAfterSelected:Z

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x1
.end method
