.class public abstract Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;
.super Ljava/lang/Object;


# instance fields
.field private mCancelled:Z

.field private mDocument:Lcom/henrythompson/quoda/document/Document;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;->mDocument:Lcom/henrythompson/quoda/document/Document;

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;->mCancelled:Z

    const/4 v1, 0x5

    nop

    return-void

    const/4 v1, 0x6
.end method

.method public getDocument()Lcom/henrythompson/quoda/document/Document;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;->mDocument:Lcom/henrythompson/quoda/document/Document;

    return-object v0

    const/4 v0, 0x2
.end method

.method public abstract getSuggestions()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/suggestions/Suggestion;",
            ">;"
        }
    .end annotation
.end method

.method public isCancelled()Z
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;->mCancelled:Z

    return v0

    const/4 v1, 0x2
.end method
