.class public Lcom/henrythompson/quoda/parser2/TokensHolder;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/henrythompson/quoda/parser2/Token;",
        ">;"
    }
.end annotation


# instance fields
.field private mTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/parser2/Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/parser2/TokensHolder;->mTokens:Ljava/util/ArrayList;

    const/4 v1, 0x4

    nop

    return-void

    const/4 v1, 0x5
.end method


# virtual methods
.method public add(ILcom/henrythompson/quoda/parser2/Token;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/TokensHolder;->mTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public getIndexForLine(I)I
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/TokensHolder;->mTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v1, 0x3

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    return v0

    const/4 v1, 0x5

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/TokensHolder;->mTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/parser2/Token;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/parser2/Token;->getStart()I

    move-result v0

    goto :goto_0

    const/4 v0, 0x3
.end method

.method public getLineCount()I
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/TokensHolder;->mTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    const/4 v0, 0x4
.end method

.method public getTokens(I)Lcom/henrythompson/quoda/parser2/Token;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/TokensHolder;->mTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/TokensHolder;->mTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/parser2/Token;

    const/4 v1, 0x7

    :goto_0
    return-object v0

    const/4 v0, 0x5

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x2
.end method

.method public getTokensForLineAtIndex(I)I
    .locals 5

    const/4 v4, 0x4

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/parser2/TokensHolder;->mTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    const/4 v4, 0x6

    :goto_0
    if-ge v0, v2, :cond_1

    const/4 v4, 0x0

    add-int v3, v0, v2

    div-int/lit8 v1, v3, 0x2

    const/4 v4, 0x7

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/parser2/TokensHolder;->getIndexForLine(I)I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v4, 0x4

    move v2, v1

    goto :goto_0

    const/4 v4, 0x3

    const/4 v4, 0x6

    :cond_0
    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/parser2/TokensHolder;->getIndexForLine(I)I

    move-result v3

    if-le p1, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/parser2/TokensHolder;->getIndexForLine(I)I

    move-result v3

    if-lt p1, v3, :cond_2

    const/4 v4, 0x3

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    const/4 v1, 0x1

    const/4 v4, 0x3

    :cond_1
    iget-object v3, p0, Lcom/henrythompson/quoda/parser2/TokensHolder;->mTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :cond_2
    return v1

    const/4 v3, 0x3
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/henrythompson/quoda/parser2/Token;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x6

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/TokensHolder;->mTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    const/4 v1, 0x0
.end method

.method public remove(I)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    nop

    return-void

    const/4 v1, 0x0

    const/4 v1, 0x7

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/parser2/TokensHolder;->mTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    const/4 v0, 0x4
.end method

.method public shiftIndexes(II)V
    .locals 6

    const/4 v5, 0x4

    const/4 v5, 0x2

    if-lez p1, :cond_0

    iget-object v3, p0, Lcom/henrythompson/quoda/parser2/TokensHolder;->mTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    const/4 v5, 0x1

    :cond_0
    nop

    return-void

    const/4 v3, 0x4

    const/4 v5, 0x7

    :cond_1
    move v0, p1

    :goto_0
    iget-object v3, p0, Lcom/henrythompson/quoda/parser2/TokensHolder;->mTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    const/4 v5, 0x4

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/parser2/TokensHolder;->getIndexForLine(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    if-lez v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_2

    const/4 v5, 0x3

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/parser2/TokensHolder;->remove(I)V

    const/4 v5, 0x1

    add-int/lit8 v0, v0, -0x1

    const/4 v5, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v1, 0x7

    const/4 v5, 0x2

    :cond_2
    iget-object v3, p0, Lcom/henrythompson/quoda/parser2/TokensHolder;->mTokens:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/henrythompson/quoda/parser2/Token;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/parser2/Token;->setStart(I)V

    goto :goto_1

    const/4 v0, 0x1
.end method
