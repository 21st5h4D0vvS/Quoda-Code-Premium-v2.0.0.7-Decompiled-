.class Lcom/jcraft/jsch/jcraft/HMAC;
.super Ljava/lang/Object;


# static fields
.field private static final B:I = 0x40


# instance fields
.field private bsize:I

.field private k_ipad:[B

.field private k_opad:[B

.field private md:Ljava/security/MessageDigest;

.field private final tmp:[B


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x3

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->k_ipad:[B

    const/4 v1, 0x4

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->k_opad:[B

    const/4 v1, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->md:Ljava/security/MessageDigest;

    const/4 v1, 0x5

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->bsize:I

    const/4 v1, 0x2

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->tmp:[B

    nop

    return-void

    const/4 v1, 0x6
.end method


# virtual methods
.method public doFinal([BI)V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x40

    const/4 v3, 0x0

    const/4 v5, 0x5

    iget-object v1, p0, Lcom/jcraft/jsch/jcraft/HMAC;->md:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const/4 v5, 0x4

    iget-object v1, p0, Lcom/jcraft/jsch/jcraft/HMAC;->md:Ljava/security/MessageDigest;

    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->k_opad:[B

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/jcraft/jsch/jcraft/HMAC;->md:Ljava/security/MessageDigest;

    iget v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->bsize:I

    invoke-virtual {v1, v0, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    const/4 v5, 0x7

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/jcraft/HMAC;->md:Ljava/security/MessageDigest;

    iget v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->bsize:I

    invoke-virtual {v1, p1, p2, v2}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x4

    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/jcraft/HMAC;->md:Ljava/security/MessageDigest;

    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->k_ipad:[B

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    const/4 v5, 0x1

    nop

    return-void

    const/4 v0, 0x5

    const/4 v5, 0x7

    :catch_0
    move-exception v1

    goto :goto_0

    const/4 v4, 0x5
.end method

.method public getBlockSize()I
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x7

    iget v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->bsize:I

    return v0

    const/4 v1, 0x1
.end method

.method public init([B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x7

    const/16 v5, 0x40

    const/4 v4, 0x0

    const/4 v6, 0x0

    array-length v2, p1

    iget v3, p0, Lcom/jcraft/jsch/jcraft/HMAC;->bsize:I

    if-le v2, v3, :cond_0

    const/4 v6, 0x6

    iget v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->bsize:I

    new-array v1, v2, [B

    const/4 v6, 0x4

    iget v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->bsize:I

    invoke-static {p1, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    move-object p1, v1

    const/4 v6, 0x3

    :cond_0
    array-length v2, p1

    if-le v2, v5, :cond_1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->md:Ljava/security/MessageDigest;

    array-length v3, p1

    invoke-virtual {v2, p1, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    const/4 v6, 0x6

    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->md:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const/4 v6, 0x5

    :cond_1
    new-array v2, v5, [B

    iput-object v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->k_ipad:[B

    const/4 v6, 0x7

    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->k_ipad:[B

    array-length v3, p1

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x4

    new-array v2, v5, [B

    iput-object v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->k_opad:[B

    const/4 v6, 0x6

    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->k_opad:[B

    array-length v3, p1

    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_2

    const/4 v6, 0x3

    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->k_ipad:[B

    aget-byte v3, v2, v0

    xor-int/lit8 v3, v3, 0x36

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->k_opad:[B

    aget-byte v3, v2, v0

    xor-int/lit8 v3, v3, 0x5c

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    const/4 v6, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v3, 0x4

    const/4 v6, 0x4

    :cond_2
    iget-object v2, p0, Lcom/jcraft/jsch/jcraft/HMAC;->md:Ljava/security/MessageDigest;

    iget-object v3, p0, Lcom/jcraft/jsch/jcraft/HMAC;->k_ipad:[B

    invoke-virtual {v2, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    const/4 v6, 0x4

    nop

    return-void

    const/4 v3, 0x3
.end method

.method protected setH(Ljava/security/MessageDigest;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/jcraft/jsch/jcraft/HMAC;->md:Ljava/security/MessageDigest;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->bsize:I

    const/4 v1, 0x0

    nop

    return-void

    const/4 v1, 0x0
.end method

.method public update(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->tmp:[B

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->tmp:[B

    const/4 v1, 0x1

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->tmp:[B

    const/4 v1, 0x2

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->tmp:[B

    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->tmp:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v3, v1}, Lcom/jcraft/jsch/jcraft/HMAC;->update([BII)V

    const/4 v4, 0x2

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public update([BII)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMAC;->md:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x1
.end method
