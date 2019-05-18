.class public final Lorg/joni/ast/BackRefNode;
.super Lorg/joni/ast/StateNode;
.source "BackRefNode.java"


# instance fields
.field public back:[I

.field public backNum:I

.field public nestLevel:I


# direct methods
.method public constructor <init>(I[IZLorg/joni/ScanEnvironment;)V
    .locals 4
    .param p1, "backNum"    # I
    .param p2, "backRefs"    # [I
    .param p3, "byName"    # Z
    .param p4, "env"    # Lorg/joni/ScanEnvironment;

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0}, Lorg/joni/ast/StateNode;-><init>()V

    .line 36
    iput p1, p0, Lorg/joni/ast/BackRefNode;->backNum:I

    .line 37
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lorg/joni/ast/BackRefNode;->setNameRef()V

    .line 39
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 40
    aget v1, p2, v0

    iget v2, p4, Lorg/joni/ScanEnvironment;->numMem:I

    if-gt v1, v2, :cond_2

    iget-object v1, p4, Lorg/joni/ScanEnvironment;->memNodes:[Lorg/joni/ast/Node;

    aget v2, p2, v0

    aget-object v1, v1, v2

    if-nez v1, :cond_2

    .line 41
    invoke-virtual {p0}, Lorg/joni/ast/BackRefNode;->setRecursion()V

    .line 46
    :cond_1
    new-array v1, p1, [I

    iput-object v1, p0, Lorg/joni/ast/BackRefNode;->back:[I

    .line 47
    iget-object v1, p0, Lorg/joni/ast/BackRefNode;->back:[I

    invoke-static {p2, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    return-void

    .line 39
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(I[IZZILorg/joni/ScanEnvironment;)V
    .locals 0
    .param p1, "backNum"    # I
    .param p2, "backRefs"    # [I
    .param p3, "byName"    # Z
    .param p4, "existLevel"    # Z
    .param p5, "nestLevel"    # I
    .param p6, "env"    # Lorg/joni/ScanEnvironment;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p6}, Lorg/joni/ast/BackRefNode;-><init>(I[IZLorg/joni/ScanEnvironment;)V

    .line 54
    if-eqz p4, :cond_0

    .line 56
    invoke-virtual {p0}, Lorg/joni/ast/BackRefNode;->setNestLevel()V

    .line 57
    iput p5, p0, Lorg/joni/ast/BackRefNode;->nestLevel:I

    .line 59
    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "Back Ref"

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x4

    return v0
.end method

.method public renumber([I)V
    .locals 6
    .param p1, "map"    # [I

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/joni/ast/BackRefNode;->isNameRef()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/joni/exception/ValueException;

    const-string v5, "numbered backref/call is not allowed. (use name)"

    invoke-direct {v4, v5}, Lorg/joni/exception/ValueException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 85
    :cond_0
    iget v2, p0, Lorg/joni/ast/BackRefNode;->backNum:I

    .line 87
    .local v2, "oldNum":I
    const/4 v3, 0x0

    .line 88
    .local v3, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 89
    iget-object v4, p0, Lorg/joni/ast/BackRefNode;->back:[I

    aget v4, v4, v0

    aget v1, p1, v4

    .line 90
    .local v1, "n":I
    if-lez v1, :cond_1

    .line 91
    iget-object v4, p0, Lorg/joni/ast/BackRefNode;->back:[I

    aput v1, v4, v3

    .line 92
    add-int/lit8 v3, v3, 0x1

    .line 88
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "n":I
    :cond_2
    iput v3, p0, Lorg/joni/ast/BackRefNode;->backNum:I

    .line 96
    return-void
.end method

.method public toString(I)Ljava/lang/String;
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/joni/ast/StateNode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .local v2, "value":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n  backNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/joni/ast/BackRefNode;->backNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v0, ""

    .line 76
    .local v0, "backs":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/joni/ast/BackRefNode;->back:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/joni/ast/BackRefNode;->back:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n  back: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n  nextLevel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/joni/ast/BackRefNode;->nestLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
