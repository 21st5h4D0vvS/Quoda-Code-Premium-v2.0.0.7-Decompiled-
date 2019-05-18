.class public Lcom/henrythompson/quoda/document/LineObject;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/henrythompson/quoda/document/LineObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1d0515f7996d5820L


# instance fields
.field private mIsBookmarked:Z

.field private mToken:Lcom/henrythompson/quoda/parser2/Token;

.field private mUpdated:Z

.field private start:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x3

    iput-boolean v0, p0, Lcom/henrythompson/quoda/document/LineObject;->mIsBookmarked:Z

    const/4 v1, 0x1

    iput v0, p0, Lcom/henrythompson/quoda/document/LineObject;->start:I

    const/4 v1, 0x7

    iput p1, p0, Lcom/henrythompson/quoda/document/LineObject;->start:I

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public compareTo(Lcom/henrythompson/quoda/document/LineObject;)I
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x0

    iget v0, p0, Lcom/henrythompson/quoda/document/LineObject;->start:I

    iget v1, p1, Lcom/henrythompson/quoda/document/LineObject;->start:I

    sub-int/2addr v0, v1

    return v0

    const/4 v2, 0x4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x7

    check-cast p1, Lcom/henrythompson/quoda/document/LineObject;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/document/LineObject;->compareTo(Lcom/henrythompson/quoda/document/LineObject;)I

    move-result v0

    return v0

    const/4 v0, 0x6
.end method

.method public getIsBookmarked()Z
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x5

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/LineObject;->mIsBookmarked:Z

    return v0

    const/4 v1, 0x7
.end method

.method public getIsUpdated()Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x5

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/LineObject;->mUpdated:Z

    return v0

    const/4 v1, 0x4
.end method

.method public getStart()I
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x2

    iget v0, p0, Lcom/henrythompson/quoda/document/LineObject;->start:I

    return v0

    const/4 v1, 0x4
.end method

.method public getTokens()Lcom/henrythompson/quoda/parser2/Token;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/document/LineObject;->mToken:Lcom/henrythompson/quoda/parser2/Token;

    return-object v0

    const/4 v0, 0x4
.end method

.method public setIsBookmarked(Z)V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x7

    iput-boolean p1, p0, Lcom/henrythompson/quoda/document/LineObject;->mIsBookmarked:Z

    const/4 v2, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v2, 0x0

    nop

    return-void

    const/4 v1, 0x4
.end method

.method public setIsUpdated(Z)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x4

    iput-boolean p1, p0, Lcom/henrythompson/quoda/document/LineObject;->mUpdated:Z

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setStart(I)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x1

    iput p1, p0, Lcom/henrythompson/quoda/document/LineObject;->start:I

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setTokens(Lcom/henrythompson/quoda/parser2/Token;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/document/LineObject;->mToken:Lcom/henrythompson/quoda/parser2/Token;

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x2
.end method
