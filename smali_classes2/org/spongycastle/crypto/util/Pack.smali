.class public abstract Lorg/spongycastle/crypto/util/Pack;
.super Ljava/lang/Object;
.source "Pack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bigEndianToInt([BI)I
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .prologue
    .line 7
    aget-byte v1, p0, p1

    shl-int/lit8 v0, v1, 0x18

    .line 8
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 9
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 10
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 11
    return v0
.end method

.method public static bigEndianToInt([BI[I)V
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [I

    .prologue
    .line 16
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 18
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    aput v1, p2, v0

    .line 19
    add-int/lit8 p1, p1, 0x4

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method public static bigEndianToLong([BI)J
    .locals 8
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .prologue
    const-wide v6, 0xffffffffL

    .line 56
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    .line 57
    .local v0, "hi":I
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lorg/spongycastle/crypto/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    .line 58
    .local v1, "lo":I
    int-to-long v2, v0

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v4, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static bigEndianToLong([BI[J)V
    .locals 4
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [J

    .prologue
    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 65
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, p2, v0

    .line 66
    add-int/lit8 p1, p1, 0x8

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method

.method public static intToBigEndian(I[BI)V
    .locals 1
    .param p0, "n"    # I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .prologue
    .line 32
    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 33
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 34
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 35
    add-int/lit8 p2, p2, 0x1

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 36
    return-void
.end method

.method public static intToBigEndian([I[BI)V
    .locals 2
    .param p0, "ns"    # [I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 49
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/spongycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 50
    add-int/lit8 p2, p2, 0x4

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public static intToBigEndian(I)[B
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 25
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 26
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 27
    return-object v0
.end method

.method public static intToBigEndian([I)[B
    .locals 2
    .param p0, "ns"    # [I

    .prologue
    .line 40
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x4

    new-array v0, v1, [B

    .line 41
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/crypto/util/Pack;->intToBigEndian([I[BI)V

    .line 42
    return-object v0
.end method

.method public static intToLittleEndian(I[BI)V
    .locals 1
    .param p0, "n"    # I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .prologue
    .line 126
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 127
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 128
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 129
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 130
    return-void
.end method

.method public static intToLittleEndian([I[BI)V
    .locals 2
    .param p0, "ns"    # [I
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .prologue
    .line 141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 143
    aget v1, p0, v0

    invoke-static {v1, p1, p2}, Lorg/spongycastle/crypto/util/Pack;->intToLittleEndian(I[BI)V

    .line 144
    add-int/lit8 p2, p2, 0x4

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_0
    return-void
.end method

.method public static intToLittleEndian(I)[B
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 119
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 120
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/crypto/util/Pack;->intToLittleEndian(I[BI)V

    .line 121
    return-object v0
.end method

.method public static intToLittleEndian([I)[B
    .locals 2
    .param p0, "ns"    # [I

    .prologue
    .line 134
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x4

    new-array v0, v1, [B

    .line 135
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/crypto/util/Pack;->intToLittleEndian([I[BI)V

    .line 136
    return-object v0
.end method

.method public static littleEndianToInt([BI)I
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .prologue
    .line 101
    aget-byte v1, p0, p1

    and-int/lit16 v0, v1, 0xff

    .line 102
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 103
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 104
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 105
    return v0
.end method

.method public static littleEndianToInt([BI[I)V
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [I

    .prologue
    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 112
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    aput v1, p2, v0

    .line 113
    add-int/lit8 p1, p1, 0x4

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method public static littleEndianToLong([BI)J
    .locals 8
    .param p0, "bs"    # [B
    .param p1, "off"    # I

    .prologue
    const-wide v6, 0xffffffffL

    .line 150
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    .line 151
    .local v1, "lo":I
    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    .line 152
    .local v0, "hi":I
    int-to-long v2, v0

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v4, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    return-wide v2
.end method

.method public static littleEndianToLong([BI[J)V
    .locals 4
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "ns"    # [J

    .prologue
    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 159
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v2

    aput-wide v2, p2, v0

    .line 160
    add-int/lit8 p1, p1, 0x8

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method

.method public static longToBigEndian(J[BI)V
    .locals 2
    .param p0, "n"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I

    .prologue
    .line 79
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lorg/spongycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 80
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lorg/spongycastle/crypto/util/Pack;->intToBigEndian(I[BI)V

    .line 81
    return-void
.end method

.method public static longToBigEndian([J[BI)V
    .locals 4
    .param p0, "ns"    # [J
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 94
    aget-wide v2, p0, v0

    invoke-static {v2, v3, p1, p2}, Lorg/spongycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 95
    add-int/lit8 p2, p2, 0x8

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method public static longToBigEndian(J)[B
    .locals 2
    .param p0, "n"    # J

    .prologue
    .line 72
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 73
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/spongycastle/crypto/util/Pack;->longToBigEndian(J[BI)V

    .line 74
    return-object v0
.end method

.method public static longToBigEndian([J)[B
    .locals 2
    .param p0, "ns"    # [J

    .prologue
    .line 85
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x8

    new-array v0, v1, [B

    .line 86
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/crypto/util/Pack;->longToBigEndian([J[BI)V

    .line 87
    return-object v0
.end method

.method public static longToLittleEndian(J[BI)V
    .locals 2
    .param p0, "n"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I

    .prologue
    .line 173
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Lorg/spongycastle/crypto/util/Pack;->intToLittleEndian(I[BI)V

    .line 174
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lorg/spongycastle/crypto/util/Pack;->intToLittleEndian(I[BI)V

    .line 175
    return-void
.end method

.method public static longToLittleEndian([J[BI)V
    .locals 4
    .param p0, "ns"    # [J
    .param p1, "bs"    # [B
    .param p2, "off"    # I

    .prologue
    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 188
    aget-wide v2, p0, v0

    invoke-static {v2, v3, p1, p2}, Lorg/spongycastle/crypto/util/Pack;->longToLittleEndian(J[BI)V

    .line 189
    add-int/lit8 p2, p2, 0x8

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method public static longToLittleEndian(J)[B
    .locals 2
    .param p0, "n"    # J

    .prologue
    .line 166
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 167
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/spongycastle/crypto/util/Pack;->longToLittleEndian(J[BI)V

    .line 168
    return-object v0
.end method

.method public static longToLittleEndian([J)[B
    .locals 2
    .param p0, "ns"    # [J

    .prologue
    .line 179
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x8

    new-array v0, v1, [B

    .line 180
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/spongycastle/crypto/util/Pack;->longToLittleEndian([J[BI)V

    .line 181
    return-object v0
.end method
