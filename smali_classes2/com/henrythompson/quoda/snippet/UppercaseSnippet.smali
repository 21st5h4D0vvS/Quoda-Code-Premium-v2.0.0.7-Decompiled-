.class public Lcom/henrythompson/quoda/snippet/UppercaseSnippet;
.super Lcom/henrythompson/quoda/snippet/Tabstop;


# instance fields
.field mBasis:Lcom/henrythompson/quoda/snippet/Tabstop;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/snippet/Tabstop;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/Tabstop;-><init>(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    const/4 v1, 0x5

    invoke-virtual {p1, p2}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabStop(I)Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/UppercaseSnippet;->mBasis:Lcom/henrythompson/quoda/snippet/Tabstop;

    const/4 v1, 0x7

    nop

    return-void

    const/4 v1, 0x0
.end method


# virtual methods
.method public getLength()I
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/UppercaseSnippet;->mBasis:Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/snippet/Tabstop;->getLength()I

    move-result v0

    return v0

    const/4 v0, 0x5
.end method

.method public getTabIndex()I
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x7

    const/4 v0, -0x2

    return v0

    const/4 v1, 0x3
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/UppercaseSnippet;->mBasis:Lcom/henrythompson/quoda/snippet/Tabstop;

    if-nez v0, :cond_0

    const/4 v1, 0x7

    const-string v0, ""

    const/4 v1, 0x5

    :goto_0
    return-object v0

    const/4 v1, 0x7

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/UppercaseSnippet;->mBasis:Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/snippet/Tabstop;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    const/4 v0, 0x5
.end method
