.class public abstract Lorg/spongycastle/crypto/digests/GeneralDigest;
.super Ljava/lang/Object;
.source "GeneralDigest.java"

# interfaces
.implements Lorg/spongycastle/crypto/ExtendedDigest;
.implements Lorg/spongycastle/util/Memoable;


# static fields
.field private static final BYTE_LENGTH:I = 0x40


# instance fields
.field private byteCount:J

.field private xBuf:[B

.field private xBufOff:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBuf:[B

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 26
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/crypto/digests/GeneralDigest;)V
    .locals 1
    .param p1, "t"    # Lorg/spongycastle/crypto/digests/GeneralDigest;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBuf:[B

    .line 37
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/spongycastle/crypto/digests/GeneralDigest;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected copyIn(Lorg/spongycastle/crypto/digests/GeneralDigest;)V
    .locals 4
    .param p1, "t"    # Lorg/spongycastle/crypto/digests/GeneralDigest;

    .prologue
    const/4 v3, 0x0

    .line 42
    iget-object v0, p1, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget-object v2, p1, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iget v0, p1, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBufOff:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 45
    iget-wide v0, p1, Lorg/spongycastle/crypto/digests/GeneralDigest;->byteCount:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 46
    return-void
.end method

.method public finish()V
    .locals 5

    .prologue
    .line 104
    iget-wide v2, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->byteCount:J

    const/4 v4, 0x3

    shl-long v0, v2, v4

    .line 109
    .local v0, "bitLength":J
    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/digests/GeneralDigest;->update(B)V

    .line 111
    :goto_0
    iget v2, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBufOff:I

    if-eqz v2, :cond_0

    .line 113
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/spongycastle/crypto/digests/GeneralDigest;->update(B)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/crypto/digests/GeneralDigest;->processLength(J)V

    .line 118
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->processBlock()V

    .line 119
    return-void
.end method

.method public getByteLength()I
    .locals 1

    .prologue
    .line 134
    const/16 v0, 0x40

    return v0
.end method

.method protected abstract processBlock()V
.end method

.method protected abstract processLength(J)V
.end method

.method protected abstract processWord([BI)V
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 123
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 125
    iput v4, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 128
    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBuf:[B

    aput-byte v4, v1, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public update(B)V
    .locals 4
    .param p1, "in"    # B

    .prologue
    const/4 v3, 0x0

    .line 51
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBuf:[B

    iget v1, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBufOff:I

    aput-byte p1, v0, v1

    .line 53
    iget v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBufOff:I

    iget-object v1, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBuf:[B

    invoke-virtual {p0, v0, v3}, Lorg/spongycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    .line 56
    iput v3, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBufOff:I

    .line 59
    :cond_0
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->byteCount:J

    .line 60
    return-void
.end method

.method public update([BII)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 70
    :goto_0
    iget v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBufOff:I

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    .line 72
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->update(B)V

    .line 74
    add-int/lit8 p2, p2, 0x1

    .line 75
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 81
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v0, v0

    if-le p3, v0, :cond_1

    .line 83
    invoke-virtual {p0, p1, p2}, Lorg/spongycastle/crypto/digests/GeneralDigest;->processWord([BI)V

    .line 85
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 86
    iget-object v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    .line 87
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->byteCount:J

    iget-object v2, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->xBuf:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/GeneralDigest;->byteCount:J

    goto :goto_1

    .line 93
    :cond_1
    :goto_2
    if-lez p3, :cond_2

    .line 95
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/GeneralDigest;->update(B)V

    .line 97
    add-int/lit8 p2, p2, 0x1

    .line 98
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    .line 100
    :cond_2
    return-void
.end method
