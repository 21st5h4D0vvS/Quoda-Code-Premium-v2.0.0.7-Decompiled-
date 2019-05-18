.class public Lcom/henrythompson/quoda/utils/FuzzySearchResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/henrythompson/quoda/utils/FuzzySearchResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mMatches:[I

.field private mRank:Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

.field private mSearchQuery:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;[ILcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/utils/FuzzySearchResult;->mSearchQuery:Ljava/lang/CharSequence;

    const/4 v0, 0x3

    iput-object p2, p0, Lcom/henrythompson/quoda/utils/FuzzySearchResult;->mMatches:[I

    const/4 v0, 0x4

    iput-object p3, p0, Lcom/henrythompson/quoda/utils/FuzzySearchResult;->mRank:Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public compareTo(Lcom/henrythompson/quoda/utils/FuzzySearchResult;)I
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearchResult;->mRank:Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/henrythompson/quoda/utils/FuzzySearchResult;->mRank:Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x2

    :goto_0
    return v0

    const/4 v2, 0x5

    const/4 v2, 0x4

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearchResult;->mRank:Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/henrythompson/quoda/utils/FuzzySearchResult;->mRank:Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

    if-nez v0, :cond_1

    const/4 v2, 0x2

    const/4 v0, 0x1

    goto :goto_0

    const/4 v1, 0x4

    const/4 v2, 0x0

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearchResult;->mRank:Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/henrythompson/quoda/utils/FuzzySearchResult;->mRank:Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

    if-nez v0, :cond_2

    const/4 v2, 0x5

    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x7

    const/4 v2, 0x0

    :cond_2
    iget-object v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearchResult;->mRank:Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

    iget-object v1, p1, Lcom/henrythompson/quoda/utils/FuzzySearchResult;->mRank:Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->compareTo(Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;)I

    move-result v0

    goto :goto_0

    const/4 v0, 0x6
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x2

    check-cast p1, Lcom/henrythompson/quoda/utils/FuzzySearchResult;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/utils/FuzzySearchResult;->compareTo(Lcom/henrythompson/quoda/utils/FuzzySearchResult;)I

    move-result v0

    return v0

    const/4 v0, 0x5
.end method

.method public getMatches()[I
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearchResult;->mMatches:[I

    return-object v0

    const/4 v0, 0x3
.end method

.method public getRank()Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearchResult;->mRank:Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

    return-object v0

    const/4 v1, 0x0
.end method

.method public getSearchItem()Ljava/lang/CharSequence;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearchResult;->mSearchQuery:Ljava/lang/CharSequence;

    return-object v0

    const/4 v1, 0x4
.end method
