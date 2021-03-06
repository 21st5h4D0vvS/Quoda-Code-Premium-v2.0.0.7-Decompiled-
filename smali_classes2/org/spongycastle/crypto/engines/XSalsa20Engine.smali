.class public Lorg/spongycastle/crypto/engines/XSalsa20Engine;
.super Lorg/spongycastle/crypto/engines/Salsa20Engine;
.source "XSalsa20Engine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    const-string v0, "XSalsa20"

    return-object v0
.end method

.method protected getNonceSize()I
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x18

    return v0
.end method

.method protected setKey([B[B)V
    .locals 10
    .param p1, "keyBytes"    # [B
    .param p2, "ivBytes"    # [B

    .prologue
    const/4 v5, 0x0

    const/16 v9, 0x9

    const/4 v8, 0x7

    const/4 v7, 0x6

    const/16 v6, 0x8

    .line 30
    array-length v1, p1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 32
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requires a 256 bit key"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 36
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    .line 39
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    invoke-static {p2, v6}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, v1, v6

    .line 40
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v2, 0xc

    invoke-static {p2, v2}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, v1, v9

    .line 43
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    array-length v1, v1

    new-array v0, v1, [I

    .line 44
    .local v0, "hsalsa20Out":[I
    const/16 v1, 0x14

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    invoke-static {v1, v2, v0}, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->salsaCore(I[I[I)V

    .line 47
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/4 v2, 0x1

    aget v3, v0, v5

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 48
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/4 v2, 0x2

    const/4 v3, 0x5

    aget v3, v0, v3

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 49
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/4 v2, 0x3

    const/16 v3, 0xa

    aget v3, v0, v3

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 50
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/4 v2, 0x4

    const/16 v3, 0xf

    aget v3, v0, v3

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 52
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v2, 0xb

    aget v3, v0, v7

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v4, v4, v7

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 53
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v2, 0xc

    aget v3, v0, v8

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v4, v4, v8

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 54
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v2, 0xd

    aget v3, v0, v6

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v4, v4, v6

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 55
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v2, 0xe

    aget v3, v0, v9

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    aget v4, v4, v9

    sub-int/2addr v3, v4

    aput v3, v1, v2

    .line 58
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v2, 0x10

    invoke-static {p2, v2}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, v1, v7

    .line 59
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->engineState:[I

    const/16 v2, 0x14

    invoke-static {p2, v2}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, v1, v8

    .line 62
    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/XSalsa20Engine;->resetCounter()V

    .line 63
    return-void
.end method
