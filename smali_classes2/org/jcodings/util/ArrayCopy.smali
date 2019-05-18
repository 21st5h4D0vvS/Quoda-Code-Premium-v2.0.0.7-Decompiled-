.class public Lorg/jcodings/util/ArrayCopy;
.super Ljava/lang/Object;
.source "ArrayCopy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2int([B)[I
    .locals 7
    .param p0, "src"    # [B

    .prologue
    .line 39
    array-length v6, p0

    ushr-int/lit8 v1, v6, 0x2

    .line 40
    .local v1, "dstLength":I
    new-array v0, v1, [I

    .line 42
    .local v0, "dst":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 43
    shl-int/lit8 v3, v2, 0x2

    .line 44
    .local v3, "j":I
    const/4 v5, 0x0

    .line 45
    .local v5, "x":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x0

    add-int/2addr v5, v6

    .line 46
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aget-byte v6, p0, v4

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    .line 47
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    .line 48
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aget-byte v6, p0, v4

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    add-int/2addr v5, v6

    .line 49
    aput v5, v0, v2

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v3    # "j":I
    .end local v5    # "x":I
    :cond_0
    return-object v0
.end method

.method public static int2byte([I)[B
    .locals 7
    .param p0, "src"    # [I

    .prologue
    .line 24
    array-length v4, p0

    .line 25
    .local v4, "srcLength":I
    shl-int/lit8 v6, v4, 0x2

    new-array v0, v6, [B

    .line 27
    .local v0, "dst":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 28
    aget v5, p0, v1

    .line 29
    .local v5, "x":I
    shl-int/lit8 v2, v1, 0x2

    .line 30
    .local v2, "j":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .local v3, "j":I
    ushr-int/lit8 v6, v5, 0x0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 31
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    ushr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    .line 32
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .restart local v3    # "j":I
    ushr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 33
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    ushr-int/lit8 v6, v5, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 35
    .end local v2    # "j":I
    .end local v5    # "x":I
    :cond_0
    return-object v0
.end method
