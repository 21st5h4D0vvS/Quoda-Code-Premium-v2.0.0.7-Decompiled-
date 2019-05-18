.class public final Lorg/joni/Region;
.super Ljava/lang/Object;
.source "Region.java"


# static fields
.field static final REGION_NOTPOS:I = -0x1


# instance fields
.field public final beg:[I

.field public final end:[I

.field public historyRoot:Lorg/joni/CaptureTreeNode;

.field public final numRegs:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "num"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lorg/joni/Region;->numRegs:I

    .line 32
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/joni/Region;->beg:[I

    .line 33
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/joni/Region;->end:[I

    .line 34
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v1, p0, Lorg/joni/Region;->numRegs:I

    .line 38
    new-array v0, v1, [I

    aput p1, v0, v2

    iput-object v0, p0, Lorg/joni/Region;->beg:[I

    .line 39
    new-array v0, v1, [I

    aput p2, v0, v2

    iput-object v0, p0, Lorg/joni/Region;->end:[I

    .line 40
    return-void
.end method


# virtual methods
.method clear()V
    .locals 4

    .prologue
    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/joni/Region;->beg:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lorg/joni/Region;->beg:[I

    iget-object v2, p0, Lorg/joni/Region;->end:[I

    const/4 v3, -0x1

    aput v3, v2, v0

    aput v3, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0}, Lorg/joni/Region;->clone()Lorg/joni/Region;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/joni/Region;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 43
    new-instance v0, Lorg/joni/Region;

    iget v1, p0, Lorg/joni/Region;->numRegs:I

    invoke-direct {v0, v1}, Lorg/joni/Region;-><init>(I)V

    .line 44
    .local v0, "region":Lorg/joni/Region;
    iget-object v1, p0, Lorg/joni/Region;->beg:[I

    iget-object v2, v0, Lorg/joni/Region;->beg:[I

    iget-object v3, p0, Lorg/joni/Region;->beg:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget-object v1, p0, Lorg/joni/Region;->end:[I

    iget-object v2, v0, Lorg/joni/Region;->end:[I

    iget-object v3, p0, Lorg/joni/Region;->end:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iget-object v1, p0, Lorg/joni/Region;->historyRoot:Lorg/joni/CaptureTreeNode;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/joni/Region;->historyRoot:Lorg/joni/CaptureTreeNode;

    invoke-virtual {v1}, Lorg/joni/CaptureTreeNode;->cloneTree()Lorg/joni/CaptureTreeNode;

    move-result-object v1

    iput-object v1, v0, Lorg/joni/Region;->historyRoot:Lorg/joni/CaptureTreeNode;

    .line 47
    :cond_0
    return-object v0
.end method

.method getCaptureTree()Lorg/joni/CaptureTreeNode;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/joni/Region;->historyRoot:Lorg/joni/CaptureTreeNode;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "Region: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/joni/Region;->beg:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/joni/Region;->beg:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/joni/Region;->end:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
