.class public Lorg/joni/CaptureTreeNode;
.super Ljava/lang/Object;
.source "CaptureTreeNode.java"


# static fields
.field static final HISTORY_TREE_INIT_ALLOC_SIZE:I = 0x8


# instance fields
.field beg:I

.field children:[Lorg/joni/CaptureTreeNode;

.field end:I

.field group:I

.field numChildren:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lorg/joni/CaptureTreeNode;->beg:I

    .line 34
    iput v0, p0, Lorg/joni/CaptureTreeNode;->end:I

    .line 35
    iput v0, p0, Lorg/joni/CaptureTreeNode;->group:I

    .line 36
    return-void
.end method


# virtual methods
.method addChild(Lorg/joni/CaptureTreeNode;)V
    .locals 4
    .param p1, "child"    # Lorg/joni/CaptureTreeNode;

    .prologue
    const/4 v3, 0x0

    .line 40
    iget-object v1, p0, Lorg/joni/CaptureTreeNode;->children:[Lorg/joni/CaptureTreeNode;

    if-nez v1, :cond_1

    .line 41
    const/16 v1, 0x8

    new-array v1, v1, [Lorg/joni/CaptureTreeNode;

    iput-object v1, p0, Lorg/joni/CaptureTreeNode;->children:[Lorg/joni/CaptureTreeNode;

    .line 48
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/joni/CaptureTreeNode;->children:[Lorg/joni/CaptureTreeNode;

    iget v2, p0, Lorg/joni/CaptureTreeNode;->numChildren:I

    aput-object p1, v1, v2

    .line 49
    iget v1, p0, Lorg/joni/CaptureTreeNode;->numChildren:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/joni/CaptureTreeNode;->numChildren:I

    .line 50
    return-void

    .line 42
    :cond_1
    iget v1, p0, Lorg/joni/CaptureTreeNode;->numChildren:I

    iget-object v2, p0, Lorg/joni/CaptureTreeNode;->children:[Lorg/joni/CaptureTreeNode;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 43
    iget-object v1, p0, Lorg/joni/CaptureTreeNode;->children:[Lorg/joni/CaptureTreeNode;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Lorg/joni/CaptureTreeNode;

    .line 44
    .local v0, "tmp":[Lorg/joni/CaptureTreeNode;
    iget-object v1, p0, Lorg/joni/CaptureTreeNode;->children:[Lorg/joni/CaptureTreeNode;

    iget-object v2, p0, Lorg/joni/CaptureTreeNode;->children:[Lorg/joni/CaptureTreeNode;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iput-object v0, p0, Lorg/joni/CaptureTreeNode;->children:[Lorg/joni/CaptureTreeNode;

    goto :goto_0
.end method

.method clear()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/joni/CaptureTreeNode;->numChildren:I

    if-ge v0, v1, :cond_0

    .line 54
    iget-object v1, p0, Lorg/joni/CaptureTreeNode;->children:[Lorg/joni/CaptureTreeNode;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/joni/CaptureTreeNode;->numChildren:I

    .line 57
    iput v3, p0, Lorg/joni/CaptureTreeNode;->end:I

    iput v3, p0, Lorg/joni/CaptureTreeNode;->beg:I

    .line 58
    iput v3, p0, Lorg/joni/CaptureTreeNode;->group:I

    .line 59
    return-void
.end method

.method cloneTree()Lorg/joni/CaptureTreeNode;
    .locals 4

    .prologue
    .line 62
    new-instance v1, Lorg/joni/CaptureTreeNode;

    invoke-direct {v1}, Lorg/joni/CaptureTreeNode;-><init>()V

    .line 63
    .local v1, "clone":Lorg/joni/CaptureTreeNode;
    iget v3, p0, Lorg/joni/CaptureTreeNode;->beg:I

    iput v3, v1, Lorg/joni/CaptureTreeNode;->beg:I

    .line 64
    iget v3, p0, Lorg/joni/CaptureTreeNode;->end:I

    iput v3, v1, Lorg/joni/CaptureTreeNode;->end:I

    .line 66
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/joni/CaptureTreeNode;->numChildren:I

    if-ge v2, v3, :cond_0

    .line 67
    iget-object v3, p0, Lorg/joni/CaptureTreeNode;->children:[Lorg/joni/CaptureTreeNode;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/joni/CaptureTreeNode;->cloneTree()Lorg/joni/CaptureTreeNode;

    move-result-object v0

    .line 68
    .local v0, "child":Lorg/joni/CaptureTreeNode;
    invoke-virtual {v1, v0}, Lorg/joni/CaptureTreeNode;->addChild(Lorg/joni/CaptureTreeNode;)V

    .line 66
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "child":Lorg/joni/CaptureTreeNode;
    :cond_0
    return-object v1
.end method
