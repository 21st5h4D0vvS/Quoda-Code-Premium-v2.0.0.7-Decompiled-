.class public Lcom/jcraft/jsch/jce/SignatureDSA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/SignatureDSA;


# instance fields
.field keyFactory:Ljava/security/KeyFactory;

.field signature:Ljava/security/Signature;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v1, 0x7

    const-string v0, "SHA1withDSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->signature:Ljava/security/Signature;

    const/4 v1, 0x6

    const-string v0, "DSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->keyFactory:Ljava/security/KeyFactory;

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x1
.end method

.method public setPrvKey([B[B[B[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x5

    const/4 v6, 0x6

    new-instance v0, Ljava/security/spec/DSAPrivateKeySpec;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, p1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, p2}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, p3}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, p4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->keyFactory:Ljava/security/KeyFactory;

    invoke-virtual {v2, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    const/4 v6, 0x7

    iget-object v2, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->signature:Ljava/security/Signature;

    invoke-virtual {v2, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    const/4 v6, 0x7

    nop

    return-void

    const/4 v1, 0x5
.end method

.method public setPubKey([B[B[B[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x5

    const/4 v6, 0x1

    new-instance v0, Ljava/security/spec/DSAPublicKeySpec;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, p1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, p2}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, p3}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, p4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v6, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->keyFactory:Ljava/security/KeyFactory;

    invoke-virtual {v2, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    const/4 v6, 0x3

    iget-object v2, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->signature:Ljava/security/Signature;

    invoke-virtual {v2, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    const/4 v6, 0x6

    nop

    return-void

    const/4 v3, 0x1
.end method

.method public sign()[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v13, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v12, 0x14

    const/4 v13, 0x5

    iget-object v7, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->signature:Ljava/security/Signature;

    invoke-virtual {v7}, Ljava/security/Signature;->sign()[B

    move-result-object v6

    const/4 v13, 0x2

    const/4 v2, 0x0

    const/4 v13, 0x7

    const/4 v0, 0x3

    const/4 v13, 0x6

    add-int/lit8 v1, v0, 0x1

    aget-byte v7, v6, v0

    and-int/lit16 v2, v7, 0xff

    const/4 v13, 0x7

    new-array v3, v2, [B

    const/4 v13, 0x1

    array-length v7, v3

    invoke-static {v6, v1, v3, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x5

    add-int/lit8 v7, v2, 0x4

    add-int/lit8 v0, v7, 0x1

    const/4 v13, 0x6

    add-int/lit8 v1, v0, 0x1

    aget-byte v7, v6, v0

    and-int/lit16 v2, v7, 0xff

    const/4 v13, 0x3

    new-array v5, v2, [B

    const/4 v13, 0x1

    array-length v7, v5

    invoke-static {v6, v1, v5, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x6

    const/16 v7, 0x28

    new-array v4, v7, [B

    const/4 v13, 0x7

    array-length v7, v3

    if-le v7, v12, :cond_0

    move v7, v8

    :goto_0
    array-length v10, v3

    if-le v10, v12, :cond_1

    move v10, v9

    :goto_1
    array-length v11, v3

    if-le v11, v12, :cond_2

    move v11, v12

    :goto_2
    invoke-static {v3, v7, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x0

    array-length v7, v5

    if-le v7, v12, :cond_3

    :goto_3
    array-length v7, v5

    if-le v7, v12, :cond_4

    move v7, v12

    :goto_4
    array-length v9, v5

    if-le v9, v12, :cond_5

    :goto_5
    invoke-static {v5, v8, v4, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x4

    return-object v4

    const/4 v12, 0x2

    :cond_0
    move v7, v9

    const/4 v13, 0x5

    goto :goto_0

    const/4 v12, 0x7

    :cond_1
    array-length v10, v3

    rsub-int/lit8 v10, v10, 0x14

    goto :goto_1

    const/4 v1, 0x0

    :cond_2
    array-length v11, v3

    goto :goto_2

    const/4 v13, 0x4

    :cond_3
    move v8, v9

    const/4 v13, 0x5

    goto :goto_3

    const/4 v10, 0x0

    :cond_4
    array-length v7, v5

    rsub-int/lit8 v7, v7, 0x28

    goto :goto_4

    const/4 v7, 0x0

    :cond_5
    array-length v12, v5

    goto :goto_5

    const/4 v8, 0x7
.end method

.method public update([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x6

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->signature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v1, 0x2
.end method

.method public verify([B)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v10, 0x3

    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x6

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    aget-byte v7, p1, v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    aget-byte v7, p1, v7

    if-nez v7, :cond_0

    const/4 v7, 0x2

    aget-byte v7, p1, v7

    if-nez v7, :cond_0

    const/4 v10, 0x2

    add-int/lit8 v2, v1, 0x1

    aget-byte v7, p1, v1

    shl-int/lit8 v7, v7, 0x18

    const/high16 v8, -0x1000000

    and-int/2addr v7, v8

    add-int/lit8 v1, v2, 0x1

    aget-byte v8, p1, v2

    shl-int/lit8 v8, v8, 0x10

    const/high16 v9, 0xff0000

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    add-int/lit8 v2, v1, 0x1

    aget-byte v8, p1, v1

    shl-int/lit8 v8, v8, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    add-int/lit8 v1, v2, 0x1

    aget-byte v8, p1, v2

    and-int/lit16 v8, v8, 0xff

    or-int v3, v7, v8

    const/4 v10, 0x7

    add-int/lit8 v1, v3, 0x4

    const/4 v10, 0x7

    add-int/lit8 v2, v1, 0x1

    aget-byte v7, p1, v1

    shl-int/lit8 v7, v7, 0x18

    const/high16 v8, -0x1000000

    and-int/2addr v7, v8

    add-int/lit8 v1, v2, 0x1

    aget-byte v8, p1, v2

    shl-int/lit8 v8, v8, 0x10

    const/high16 v9, 0xff0000

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    add-int/lit8 v2, v1, 0x1

    aget-byte v8, p1, v1

    shl-int/lit8 v8, v8, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    add-int/lit8 v1, v2, 0x1

    aget-byte v8, p1, v2

    and-int/lit16 v8, v8, 0xff

    or-int v3, v7, v8

    const/4 v10, 0x4

    new-array v6, v3, [B

    const/4 v10, 0x4

    const/4 v7, 0x0

    invoke-static {p1, v1, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v6

    const/4 v10, 0x3

    :cond_0
    const/4 v7, 0x0

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_1

    const/4 v0, 0x1

    const/4 v10, 0x3

    :goto_0
    const/16 v7, 0x14

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_2

    const/4 v5, 0x1

    const/4 v10, 0x5

    :goto_1
    array-length v7, p1

    add-int/lit8 v7, v7, 0x6

    add-int/2addr v7, v0

    add-int v4, v7, v5

    const/4 v10, 0x3

    new-array v6, v4, [B

    const/4 v10, 0x3

    const/4 v7, 0x0

    const/16 v8, 0x30

    aput-byte v8, v6, v7

    const/4 v7, 0x1

    const/16 v8, 0x2c

    aput-byte v8, v6, v7

    const/4 v10, 0x5

    const/4 v7, 0x1

    aget-byte v8, v6, v7

    add-int/2addr v8, v0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    const/4 v7, 0x1

    aget-byte v8, v6, v7

    add-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    const/4 v10, 0x6

    const/4 v7, 0x2

    const/4 v8, 0x2

    aput-byte v8, v6, v7

    const/4 v7, 0x3

    const/16 v8, 0x14

    aput-byte v8, v6, v7

    const/4 v10, 0x7

    const/4 v7, 0x3

    aget-byte v8, v6, v7

    add-int/2addr v8, v0

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    const/4 v10, 0x6

    const/4 v7, 0x0

    add-int/lit8 v8, v0, 0x4

    const/16 v9, 0x14

    invoke-static {p1, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v10, 0x0

    const/4 v7, 0x3

    aget-byte v7, v6, v7

    add-int/lit8 v7, v7, 0x4

    const/4 v8, 0x2

    aput-byte v8, v6, v7

    const/4 v7, 0x3

    aget-byte v7, v6, v7

    add-int/lit8 v7, v7, 0x5

    const/16 v8, 0x14

    aput-byte v8, v6, v7

    const/4 v10, 0x0

    const/4 v7, 0x3

    aget-byte v7, v6, v7

    add-int/lit8 v7, v7, 0x5

    aget-byte v8, v6, v7

    add-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    const/4 v10, 0x1

    const/16 v7, 0x14

    const/4 v8, 0x3

    aget-byte v8, v6, v8

    add-int/lit8 v8, v8, 0x6

    add-int/2addr v8, v5

    const/16 v9, 0x14

    invoke-static {p1, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v10, 0x4

    move-object p1, v6

    const/4 v10, 0x4

    iget-object v7, p0, Lcom/jcraft/jsch/jce/SignatureDSA;->signature:Ljava/security/Signature;

    invoke-virtual {v7, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v7

    return v7

    const/4 v2, 0x2

    const/4 v10, 0x0

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    const/4 v7, 0x6

    const/4 v10, 0x0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    const/4 v0, 0x7
.end method
