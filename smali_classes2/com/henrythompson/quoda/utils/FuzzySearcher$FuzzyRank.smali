.class public Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/utils/FuzzySearcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FuzzyRank"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;",
        ">;"
    }
.end annotation


# instance fields
.field public caseMatching:I

.field public consecutive:I

.field public gapDifference:I

.field public matchPositions:[I

.field public remainingLength:I

.field public wordStartMatching:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    iput v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->gapDifference:I

    const/4 v1, 0x1

    iput v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->wordStartMatching:I

    const/4 v1, 0x7

    iput v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->caseMatching:I

    const/4 v1, 0x1

    iput v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->remainingLength:I

    const/4 v1, 0x0

    iput v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->consecutive:I

    const/4 v1, 0x7

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x7

    iput v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->gapDifference:I

    const/4 v1, 0x5

    iput v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->wordStartMatching:I

    const/4 v1, 0x2

    iput v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->caseMatching:I

    const/4 v1, 0x1

    iput v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->remainingLength:I

    const/4 v1, 0x4

    iput v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->consecutive:I

    const/4 v1, 0x6

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->matchPositions:[I

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public clone()Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x3

    new-instance v0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

    invoke-direct {v0}, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;-><init>()V

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->matchPositions:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->matchPositions:[I

    const/4 v2, 0x4

    iget v1, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->gapDifference:I

    iput v1, v0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->gapDifference:I

    const/4 v2, 0x3

    iget v1, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->wordStartMatching:I

    iput v1, v0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->wordStartMatching:I

    const/4 v2, 0x3

    iget v1, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->caseMatching:I

    iput v1, v0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->caseMatching:I

    const/4 v2, 0x2

    iget v1, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->remainingLength:I

    iput v1, v0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->remainingLength:I

    const/4 v2, 0x3

    iget v1, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->consecutive:I

    iput v1, v0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->consecutive:I

    const/4 v2, 0x2

    return-object v0

    const/4 v0, 0x6
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->clone()Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

    move-result-object v0

    return-object v0

    const/4 v0, 0x7
.end method

.method public compareTo(Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;)I
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x5

    iget v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->gapDifference:I

    iget v1, p1, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->gapDifference:I

    if-eq v0, v1, :cond_0

    const/4 v3, 0x7

    iget v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->gapDifference:I

    iget v1, p1, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->gapDifference:I

    sub-int/2addr v0, v1

    const/4 v3, 0x6

    :goto_0
    return v0

    const/4 v3, 0x5

    const/4 v3, 0x3

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->matchPositions:[I

    aget v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->matchPositions:[I

    aget v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    const/4 v0, -0x1

    goto :goto_0

    const/4 v1, 0x1

    const/4 v3, 0x4

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->matchPositions:[I

    aget v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->matchPositions:[I

    aget v0, v0, v2

    if-nez v0, :cond_2

    const/4 v3, 0x7

    const/4 v0, 0x1

    goto :goto_0

    const/4 v1, 0x3

    const/4 v3, 0x7

    :cond_2
    iget v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->wordStartMatching:I

    iget v1, p1, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->wordStartMatching:I

    if-eq v0, v1, :cond_3

    const/4 v3, 0x4

    iget v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->wordStartMatching:I

    iget v1, p1, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->wordStartMatching:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, -0x1

    goto :goto_0

    const/4 v3, 0x1

    const/4 v3, 0x0

    :cond_3
    iget-object v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->matchPositions:[I

    aget v0, v0, v2

    iget-object v1, p1, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->matchPositions:[I

    aget v1, v1, v2

    if-eq v0, v1, :cond_4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->matchPositions:[I

    aget v0, v0, v2

    iget-object v1, p1, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->matchPositions:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    goto :goto_0

    const/4 v1, 0x3

    const/4 v3, 0x7

    :cond_4
    iget v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->caseMatching:I

    iget v1, p1, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->caseMatching:I

    if-eq v0, v1, :cond_5

    const/4 v3, 0x3

    iget v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->caseMatching:I

    iget v1, p1, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->caseMatching:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, -0x1

    goto :goto_0

    const/4 v1, 0x5

    const/4 v3, 0x6

    :cond_5
    iget v0, p0, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->remainingLength:I

    iget v1, p1, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->remainingLength:I

    sub-int/2addr v0, v1

    goto :goto_0

    const/4 v1, 0x0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x7

    check-cast p1, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->compareTo(Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;)I

    move-result v0

    return v0

    const/4 v1, 0x1
.end method
