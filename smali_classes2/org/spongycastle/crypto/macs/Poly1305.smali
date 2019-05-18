.class public Lorg/spongycastle/crypto/macs/Poly1305;
.super Ljava/lang/Object;
.source "Poly1305.java"

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# static fields
.field private static final BLOCK_SIZE:I = 0x10


# instance fields
.field private final cipher:Lorg/spongycastle/crypto/BlockCipher;

.field private final currentBlock:[B

.field private currentBlockOffset:I

.field private h0:I

.field private h1:I

.field private h2:I

.field private h3:I

.field private h4:I

.field private k0:I

.field private k1:I

.field private k2:I

.field private k3:I

.field private r0:I

.field private r1:I

.field private r2:I

.field private r3:I

.field private r4:I

.field private s1:I

.field private s2:I

.field private s3:I

.field private s4:I

.field private final singleByte:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    const/16 v1, 0x10

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->singleByte:[B

    .line 47
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    .line 60
    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poly1305 requires a 128 bit block cipher."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 65
    return-void
.end method

.method private static final mul32x32_64(II)J
    .locals 4
    .param p0, "i1"    # I
    .param p1, "i2"    # I

    .prologue
    .line 277
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private processBlock()V
    .locals 30

    .prologue
    .line 171
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    const/16 v24, 0x10

    move/from16 v0, v24

    if-ge v5, v0, :cond_0

    .line 173
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    move/from16 v24, v0

    const/16 v25, 0x1

    aput-byte v25, v5, v24

    .line 174
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    add-int/lit8 v4, v5, 0x1

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x10

    if-ge v4, v5, :cond_0

    .line 176
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/16 v24, 0x0

    aput-byte v24, v5, v4

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 180
    .end local v4    # "i":I
    :cond_0
    const-wide v24, 0xffffffffL

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    and-long v6, v24, v26

    .line 181
    .local v6, "t0":J
    const-wide v24, 0xffffffffL

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/16 v26, 0x4

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    and-long v8, v24, v26

    .line 182
    .local v8, "t1":J
    const-wide v24, 0xffffffffL

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    and-long v10, v24, v26

    .line 183
    .local v10, "t2":J
    const-wide v24, 0xffffffffL

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v26, v0

    and-long v12, v24, v26

    .line 185
    .local v12, "t3":J
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x3ffffff

    and-long v26, v26, v6

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v5, v0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    .line 186
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const/16 v5, 0x20

    shl-long v26, v8, v5

    or-long v26, v26, v6

    const/16 v5, 0x1a

    ushr-long v26, v26, v5

    const-wide/32 v28, 0x3ffffff

    and-long v26, v26, v28

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v5, v0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    .line 187
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const/16 v5, 0x20

    shl-long v26, v10, v5

    or-long v26, v26, v8

    const/16 v5, 0x14

    ushr-long v26, v26, v5

    const-wide/32 v28, 0x3ffffff

    and-long v26, v26, v28

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v5, v0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    .line 188
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const/16 v5, 0x20

    shl-long v26, v12, v5

    or-long v26, v26, v10

    const/16 v5, 0xe

    ushr-long v26, v26, v5

    const-wide/32 v28, 0x3ffffff

    and-long v26, v26, v28

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v5, v0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    .line 189
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const/16 v5, 0x8

    ushr-long v26, v12, v5

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v5, v0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    .line 191
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    const/16 v24, 0x10

    move/from16 v0, v24

    if-ne v5, v0, :cond_1

    .line 193
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    const/high16 v24, 0x1000000

    add-int v5, v5, v24

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    .line 196
    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r0:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s4:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s3:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s2:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s1:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v14, v24, v26

    .line 197
    .local v14, "tp0":J
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r1:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r0:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s4:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s3:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s2:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v16, v24, v26

    .line 198
    .local v16, "tp1":J
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r2:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r1:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r0:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s4:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s3:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v18, v24, v26

    .line 199
    .local v18, "tp2":J
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r3:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r2:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r1:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r0:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->s4:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v20, v24, v26

    .line 200
    .local v20, "tp3":J
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r4:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v24

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r3:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r2:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r1:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->r0:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-static {v5, v0}, Lorg/spongycastle/crypto/macs/Poly1305;->mul32x32_64(II)J

    move-result-wide v26

    add-long v22, v24, v26

    .line 203
    .local v22, "tp4":J
    long-to-int v5, v14

    const v24, 0x3ffffff

    and-int v5, v5, v24

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    const/16 v5, 0x1a

    ushr-long v2, v14, v5

    .line 204
    .local v2, "b":J
    add-long v16, v16, v2

    move-wide/from16 v0, v16

    long-to-int v5, v0

    const v24, 0x3ffffff

    and-int v5, v5, v24

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    const/16 v5, 0x1a

    ushr-long v24, v16, v5

    const-wide/16 v26, -0x1

    and-long v2, v24, v26

    .line 205
    add-long v18, v18, v2

    move-wide/from16 v0, v18

    long-to-int v5, v0

    const v24, 0x3ffffff

    and-int v5, v5, v24

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    const/16 v5, 0x1a

    ushr-long v24, v18, v5

    const-wide/16 v26, -0x1

    and-long v2, v24, v26

    .line 206
    add-long v20, v20, v2

    move-wide/from16 v0, v20

    long-to-int v5, v0

    const v24, 0x3ffffff

    and-int v5, v5, v24

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    const/16 v5, 0x1a

    ushr-long v2, v20, v5

    .line 207
    add-long v22, v22, v2

    move-wide/from16 v0, v22

    long-to-int v5, v0

    const v24, 0x3ffffff

    and-int v5, v5, v24

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    const/16 v5, 0x1a

    ushr-long v2, v22, v5

    .line 208
    move-object/from16 v0, p0

    iget v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    int-to-long v0, v5

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x5

    mul-long v26, v26, v2

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v5, v0

    move-object/from16 v0, p0

    iput v5, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    .line 209
    return-void
.end method

.method private setKey([B[B)V
    .locals 9
    .param p1, "key"    # [B
    .param p2, "nonce"    # [B

    .prologue
    const/16 v6, 0x10

    const/4 v8, 0x0

    .line 94
    array-length v5, p2

    if-eq v5, v6, :cond_0

    .line 96
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Poly1305 requires a 128 bit IV."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 98
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/crypto/generators/Poly1305KeyGenerator;->checkKey([B)V

    .line 101
    invoke-static {p1, v6}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    .line 102
    .local v1, "t0":I
    const/16 v5, 0x14

    invoke-static {p1, v5}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    .line 103
    .local v2, "t1":I
    const/16 v5, 0x18

    invoke-static {p1, v5}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    .line 104
    .local v3, "t2":I
    const/16 v5, 0x1c

    invoke-static {p1, v5}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    .line 106
    .local v4, "t3":I
    const v5, 0x3ffffff

    and-int/2addr v5, v1

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r0:I

    ushr-int/lit8 v1, v1, 0x1a

    shl-int/lit8 v5, v2, 0x6

    or-int/2addr v1, v5

    .line 107
    const v5, 0x3ffff03

    and-int/2addr v5, v1

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r1:I

    ushr-int/lit8 v2, v2, 0x14

    shl-int/lit8 v5, v3, 0xc

    or-int/2addr v2, v5

    .line 108
    const v5, 0x3ffc0ff

    and-int/2addr v5, v2

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r2:I

    ushr-int/lit8 v3, v3, 0xe

    shl-int/lit8 v5, v4, 0x12

    or-int/2addr v3, v5

    .line 109
    const v5, 0x3f03fff

    and-int/2addr v5, v3

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r3:I

    ushr-int/lit8 v4, v4, 0x8

    .line 110
    const v5, 0xfffff

    and-int/2addr v5, v4

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r4:I

    .line 113
    iget v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r1:I

    mul-int/lit8 v5, v5, 0x5

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->s1:I

    .line 114
    iget v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r2:I

    mul-int/lit8 v5, v5, 0x5

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->s2:I

    .line 115
    iget v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r3:I

    mul-int/lit8 v5, v5, 0x5

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->s3:I

    .line 116
    iget v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->r4:I

    mul-int/lit8 v5, v5, 0x5

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->s4:I

    .line 119
    new-array v0, v6, [B

    .line 120
    .local v0, "cipherKey":[B
    array-length v5, v0

    invoke-static {p1, v8, v0, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget-object v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    const/4 v6, 0x1

    new-instance v7, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v7, v0}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v5, v6, v7}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 123
    iget-object v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v5, p2, v8, v0, v8}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 125
    invoke-static {v0, v8}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->k0:I

    .line 126
    const/4 v5, 0x4

    invoke-static {v0, v5}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->k1:I

    .line 127
    const/16 v5, 0x8

    invoke-static {v0, v5}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->k2:I

    .line 128
    const/16 v5, 0xc

    invoke-static {v0, v5}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iput v5, p0, Lorg/spongycastle/crypto/macs/Poly1305;->k3:I

    .line 129
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 26
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 215
    add-int/lit8 v19, p2, 0x10

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 217
    new-instance v19, Lorg/spongycastle/crypto/DataLengthException;

    const-string v20, "Output buffer is too short."

    invoke-direct/range {v19 .. v20}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 220
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    move/from16 v19, v0

    if-lez v19, :cond_1

    .line 223
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/crypto/macs/Poly1305;->processBlock()V

    .line 228
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v19, v0

    ushr-int/lit8 v4, v19, 0x1a

    .line 229
    .local v4, "b":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v19, v0

    const v20, 0x3ffffff

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    .line 230
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v19, v0

    add-int v19, v19, v4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v19, v0

    ushr-int/lit8 v4, v19, 0x1a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v19, v0

    const v20, 0x3ffffff

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    .line 231
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v19, v0

    add-int v19, v19, v4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v19, v0

    ushr-int/lit8 v4, v19, 0x1a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v19, v0

    const v20, 0x3ffffff

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    .line 232
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v19, v0

    add-int v19, v19, v4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v19, v0

    ushr-int/lit8 v4, v19, 0x1a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v19, v0

    const v20, 0x3ffffff

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    .line 233
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move/from16 v19, v0

    add-int v19, v19, v4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move/from16 v19, v0

    ushr-int/lit8 v4, v19, 0x1a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move/from16 v19, v0

    const v20, 0x3ffffff

    and-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    .line 234
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v19, v0

    mul-int/lit8 v20, v4, 0x5

    add-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    .line 237
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v19, v0

    add-int/lit8 v5, v19, 0x5

    .local v5, "g0":I
    ushr-int/lit8 v4, v5, 0x1a

    const v19, 0x3ffffff

    and-int v5, v5, v19

    .line 238
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v19, v0

    add-int v14, v19, v4

    .local v14, "g1":I
    ushr-int/lit8 v4, v14, 0x1a

    const v19, 0x3ffffff

    and-int v14, v14, v19

    .line 239
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v19, v0

    add-int v15, v19, v4

    .local v15, "g2":I
    ushr-int/lit8 v4, v15, 0x1a

    const v19, 0x3ffffff

    and-int v15, v15, v19

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v19, v0

    add-int v16, v19, v4

    .local v16, "g3":I
    ushr-int/lit8 v4, v16, 0x1a

    const v19, 0x3ffffff

    and-int v16, v16, v19

    .line 241
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move/from16 v19, v0

    add-int v19, v19, v4

    const/high16 v20, 0x4000000

    sub-int v17, v19, v20

    .line 243
    .local v17, "g4":I
    ushr-int/lit8 v19, v17, 0x1f

    add-int/lit8 v4, v19, -0x1

    .line 244
    xor-int/lit8 v18, v4, -0x1

    .line 245
    .local v18, "nb":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v19, v0

    and-int v19, v19, v18

    and-int v20, v5, v4

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    .line 246
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v19, v0

    and-int v19, v19, v18

    and-int v20, v14, v4

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    .line 247
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v19, v0

    and-int v19, v19, v18

    and-int v20, v15, v4

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    .line 248
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v19, v0

    and-int v19, v19, v18

    and-int v20, v16, v4

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    .line 249
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move/from16 v19, v0

    and-int v19, v19, v18

    and-int v20, v17, v4

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    .line 251
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x1a

    or-int v19, v19, v20

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    const-wide v22, 0xffffffffL

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->k0:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    and-long v22, v22, v24

    add-long v6, v20, v22

    .line 252
    .local v6, "f0":J
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    move/from16 v19, v0

    ushr-int/lit8 v19, v19, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x14

    or-int v19, v19, v20

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    const-wide v22, 0xffffffffL

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->k1:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    and-long v22, v22, v24

    add-long v8, v20, v22

    .line 253
    .local v8, "f1":J
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    move/from16 v19, v0

    ushr-int/lit8 v19, v19, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0xe

    or-int v19, v19, v20

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    const-wide v22, 0xffffffffL

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->k2:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    and-long v22, v22, v24

    add-long v10, v20, v22

    .line 254
    .local v10, "f2":J
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    move/from16 v19, v0

    ushr-int/lit8 v19, v19, 0x12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    move/from16 v20, v0

    shl-int/lit8 v20, v20, 0x8

    or-int v19, v19, v20

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    const-wide v22, 0xffffffffL

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/macs/Poly1305;->k3:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v24, v0

    and-long v22, v22, v24

    add-long v12, v20, v22

    .line 256
    .local v12, "f3":J
    long-to-int v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/util/Pack;->intToLittleEndian(I[BI)V

    .line 257
    const/16 v19, 0x20

    ushr-long v20, v6, v19

    add-long v8, v8, v20

    .line 258
    long-to-int v0, v8

    move/from16 v19, v0

    add-int/lit8 v20, p2, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/util/Pack;->intToLittleEndian(I[BI)V

    .line 259
    const/16 v19, 0x20

    ushr-long v20, v8, v19

    add-long v10, v10, v20

    .line 260
    long-to-int v0, v10

    move/from16 v19, v0

    add-int/lit8 v20, p2, 0x8

    move/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/util/Pack;->intToLittleEndian(I[BI)V

    .line 261
    const/16 v19, 0x20

    ushr-long v20, v10, v19

    add-long v12, v12, v20

    .line 262
    long-to-int v0, v12

    move/from16 v19, v0

    add-int/lit8 v20, p2, 0xc

    move/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/util/Pack;->intToLittleEndian(I[BI)V

    .line 264
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/crypto/macs/Poly1305;->reset()V

    .line 265
    const/16 v19, 0x10

    return v19
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Poly1305-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/Poly1305;->cipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .prologue
    .line 138
    const/16 v0, 0x10

    return v0
.end method

.method public init(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "params"    # Lorg/spongycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 78
    instance-of v2, p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 80
    check-cast v2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 81
    .local v1, "nonce":[B
    check-cast p1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .end local p1    # "params":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {p1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 88
    .local v0, "key":[B
    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/macs/Poly1305;->setKey([B[B)V

    .line 89
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/Poly1305;->reset()V

    .line 90
    return-void

    .line 85
    .end local v0    # "key":[B
    .end local v1    # "nonce":[B
    .restart local p1    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Poly1305 requires a key and and IV."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 270
    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    .line 272
    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->h4:I

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->h3:I

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->h2:I

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->h1:I

    iput v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->h0:I

    .line 273
    return-void
.end method

.method public update(B)V
    .locals 3
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->singleByte:[B

    aput-byte p1, v0, v2

    .line 145
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/Poly1305;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/spongycastle/crypto/macs/Poly1305;->update([BII)V

    .line 146
    return-void
.end method

.method public update([BII)V
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "copied":I
    :goto_0
    if-le p3, v0, :cond_1

    .line 155
    iget v2, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 157
    invoke-direct {p0}, Lorg/spongycastle/crypto/macs/Poly1305;->processBlock()V

    .line 158
    const/4 v2, 0x0

    iput v2, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    .line 161
    :cond_0
    sub-int v2, p3, v0

    iget v3, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    rsub-int/lit8 v3, v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 162
    .local v1, "toCopy":I
    add-int v2, v0, p2

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlock:[B

    iget v4, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    invoke-static {p1, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    add-int/2addr v0, v1

    .line 164
    iget v2, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/spongycastle/crypto/macs/Poly1305;->currentBlockOffset:I

    goto :goto_0

    .line 167
    .end local v1    # "toCopy":I
    :cond_1
    return-void
.end method
