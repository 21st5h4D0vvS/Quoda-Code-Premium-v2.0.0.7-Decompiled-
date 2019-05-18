.class public Lcom/jcraft/jsch/jce/SignatureRSA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/SignatureRSA;


# instance fields
.field keyFactory:Ljava/security/KeyFactory;

.field signature:Ljava/security/Signature;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x6

    const/4 v1, 0x3

    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/SignatureRSA;->signature:Ljava/security/Signature;

    const/4 v1, 0x2

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/SignatureRSA;->keyFactory:Ljava/security/KeyFactory;

    const/4 v1, 0x0

    nop

    return-void

    const/4 v1, 0x6
.end method

.method public setPrvKey([B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v4, 0x5

    new-instance v1, Ljava/security/spec/RSAPrivateKeySpec;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, p2}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/jcraft/jsch/jce/SignatureRSA;->keyFactory:Ljava/security/KeyFactory;

    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/jcraft/jsch/jce/SignatureRSA;->signature:Ljava/security/Signature;

    invoke-virtual {v2, v0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    const/4 v4, 0x0

    nop

    return-void

    const/4 v4, 0x7
.end method

.method public setPubKey([B[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v4, 0x3

    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, p2}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v4, 0x7

    iget-object v2, p0, Lcom/jcraft/jsch/jce/SignatureRSA;->keyFactory:Ljava/security/KeyFactory;

    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/jce/SignatureRSA;->signature:Ljava/security/Signature;

    invoke-virtual {v2, v0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    const/4 v4, 0x7

    nop

    return-void

    const/4 v2, 0x7
.end method

.method public sign()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v2, 0x3

    iget-object v1, p0, Lcom/jcraft/jsch/jce/SignatureRSA;->signature:Ljava/security/Signature;

    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    const/4 v2, 0x0

    return-object v0

    const/4 v2, 0x6
.end method

.method public update([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/jce/SignatureRSA;->signature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x7
.end method

.method public verify([B)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v10, 0x2

    const/high16 v9, 0xff0000

    const v8, 0xff00

    const/4 v7, 0x0

    const/high16 v6, -0x1000000

    const/4 v10, 0x3

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x2

    aget-byte v4, p1, v7

    if-nez v4, :cond_0

    const/4 v4, 0x1

    aget-byte v4, p1, v4

    if-nez v4, :cond_0

    const/4 v4, 0x2

    aget-byte v4, p1, v4

    if-nez v4, :cond_0

    const/4 v10, 0x0

    add-int/lit8 v1, v0, 0x1

    aget-byte v4, p1, v0

    shl-int/lit8 v4, v4, 0x18

    and-int/2addr v4, v6

    add-int/lit8 v0, v1, 0x1

    aget-byte v5, p1, v1

    shl-int/lit8 v5, v5, 0x10

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    add-int/lit8 v1, v0, 0x1

    aget-byte v5, p1, v0

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    add-int/lit8 v0, v1, 0x1

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    or-int v2, v4, v5

    const/4 v10, 0x3

    add-int/lit8 v0, v2, 0x4

    const/4 v10, 0x2

    add-int/lit8 v1, v0, 0x1

    aget-byte v4, p1, v0

    shl-int/lit8 v4, v4, 0x18

    and-int/2addr v4, v6

    add-int/lit8 v0, v1, 0x1

    aget-byte v5, p1, v1

    shl-int/lit8 v5, v5, 0x10

    and-int/2addr v5, v9

    or-int/2addr v4, v5

    add-int/lit8 v1, v0, 0x1

    aget-byte v5, p1, v0

    shl-int/lit8 v5, v5, 0x8

    and-int/2addr v5, v8

    or-int/2addr v4, v5

    add-int/lit8 v0, v1, 0x1

    aget-byte v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    or-int v2, v4, v5

    const/4 v10, 0x1

    new-array v3, v2, [B

    const/4 v10, 0x6

    invoke-static {p1, v0, v3, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v3

    const/4 v10, 0x2

    :cond_0
    iget-object v4, p0, Lcom/jcraft/jsch/jce/SignatureRSA;->signature:Ljava/security/Signature;

    invoke-virtual {v4, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v4

    return v4

    const/4 v9, 0x1
.end method
