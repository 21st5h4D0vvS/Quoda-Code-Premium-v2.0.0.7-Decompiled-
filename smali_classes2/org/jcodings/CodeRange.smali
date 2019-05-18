.class public Lorg/jcodings/CodeRange;
.super Ljava/lang/Object;
.source "CodeRange.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInCodeRange([II)Z
    .locals 6
    .param p0, "p"    # [I
    .param p1, "code"    # I

    .prologue
    const/4 v4, 0x0

    .line 24
    const/4 v1, 0x0

    .line 25
    .local v1, "low":I
    aget v2, p0, v4

    .line 26
    .local v2, "n":I
    move v0, v2

    .line 28
    .local v0, "high":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 29
    add-int v5, v1, v0

    shr-int/lit8 v3, v5, 0x1

    .line 30
    .local v3, "x":I
    shl-int/lit8 v5, v3, 0x1

    add-int/lit8 v5, v5, 0x2

    aget v5, p0, v5

    if-le p1, v5, :cond_0

    .line 31
    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    .line 33
    :cond_0
    move v0, v3

    goto :goto_0

    .line 36
    .end local v3    # "x":I
    :cond_1
    if-ge v1, v2, :cond_2

    shl-int/lit8 v5, v1, 0x1

    add-int/lit8 v5, v5, 0x1

    aget v5, p0, v5

    if-lt p1, v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    return v4
.end method

.method public static isInCodeRange([III)Z
    .locals 5
    .param p0, "p"    # [I
    .param p1, "offset"    # I
    .param p2, "code"    # I

    .prologue
    .line 40
    const/4 v1, 0x0

    .line 41
    .local v1, "low":I
    aget v2, p0, p1

    .line 42
    .local v2, "n":I
    move v0, v2

    .line 44
    .local v0, "high":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 45
    add-int v4, v1, v0

    shr-int/lit8 v3, v4, 0x1

    .line 46
    .local v3, "x":I
    shl-int/lit8 v4, v3, 0x1

    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    aget v4, p0, v4

    if-le p2, v4, :cond_0

    .line 47
    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    .line 49
    :cond_0
    move v0, v3

    goto :goto_0

    .line 52
    .end local v3    # "x":I
    :cond_1
    if-ge v1, v2, :cond_2

    shl-int/lit8 v4, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, p1

    aget v4, p0, v4

    if-lt p2, v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method
