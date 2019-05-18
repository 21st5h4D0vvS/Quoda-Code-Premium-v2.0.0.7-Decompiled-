.class final Lorg/joni/BitStatus;
.super Ljava/lang/Object;
.source "BitStatus.java"


# static fields
.field public static final BIT_STATUS_BITS_NUM:I = 0x20


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bsAll()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, -0x1

    return v0
.end method

.method public static bsAt(II)Z
    .locals 2
    .param p0, "stats"    # I
    .param p1, "n"    # I

    .prologue
    const/4 v0, 0x1

    .line 32
    const/16 v1, 0x20

    if-ge p1, v1, :cond_0

    shl-int v1, v0, p1

    and-int/2addr v1, p0

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    return v0

    :cond_0
    and-int/lit8 v1, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static bsClear()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public static bsOnAt(II)I
    .locals 1
    .param p0, "stats"    # I
    .param p1, "n"    # I

    .prologue
    .line 35
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    .line 36
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    or-int/2addr p0, v0

    .line 40
    :goto_0
    return p0

    .line 38
    :cond_0
    or-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public static bsOnAtSimple(II)I
    .locals 1
    .param p0, "stats"    # I
    .param p1, "n"    # I

    .prologue
    .line 43
    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    shl-int/2addr v0, p1

    or-int/2addr p0, v0

    .line 44
    :cond_0
    return p0
.end method

.method public static bsOnOff(IIZ)I
    .locals 1
    .param p0, "v"    # I
    .param p1, "f"    # I
    .param p2, "negative"    # Z

    .prologue
    .line 48
    if-eqz p2, :cond_0

    .line 49
    xor-int/lit8 v0, p1, -0x1

    and-int/2addr p0, v0

    .line 53
    :goto_0
    return p0

    .line 51
    :cond_0
    or-int/2addr p0, p1

    goto :goto_0
.end method
