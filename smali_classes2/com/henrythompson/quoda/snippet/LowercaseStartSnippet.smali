.class public Lcom/henrythompson/quoda/snippet/LowercaseStartSnippet;
.super Lcom/henrythompson/quoda/snippet/Tabstop;


# instance fields
.field mBasis:Lcom/henrythompson/quoda/snippet/Tabstop;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/snippet/Tabstop;I)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x3

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/Tabstop;-><init>(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    const/4 v1, 0x2

    invoke-virtual {p1, p2}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabStop(I)Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/LowercaseStartSnippet;->mBasis:Lcom/henrythompson/quoda/snippet/Tabstop;

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x2
.end method


# virtual methods
.method public getLength()I
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/LowercaseStartSnippet;->mBasis:Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/snippet/Tabstop;->getLength()I

    move-result v0

    return v0

    const/4 v1, 0x7
.end method

.method public getTabIndex()I
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x5

    const/4 v0, -0x2

    return v0

    const/4 v1, 0x0
.end method

.method public getValue()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/LowercaseStartSnippet;->mBasis:Lcom/henrythompson/quoda/snippet/Tabstop;

    if-nez v2, :cond_1

    const/4 v4, 0x6

    const-string v0, ""

    const/4 v4, 0x3

    :cond_0
    :goto_0
    return-object v0

    const/4 v2, 0x6

    const/4 v4, 0x7

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/LowercaseStartSnippet;->mBasis:Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/snippet/Tabstop;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_0

    const/4 v4, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    const/4 v4, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    const/4 v0, 0x2
.end method
