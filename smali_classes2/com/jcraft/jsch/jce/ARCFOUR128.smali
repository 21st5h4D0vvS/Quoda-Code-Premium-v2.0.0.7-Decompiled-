.class public Lcom/jcraft/jsch/jce/ARCFOUR128;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Cipher;


# static fields
.field private static final bsize:I = 0x10

.field private static final ivsize:I = 0x8

.field private static final skip:I = 0x600


# instance fields
.field private cipher:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public getBlockSize()I
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x2

    const/16 v0, 0x10

    return v0

    const/4 v1, 0x0
.end method

.method public getIVSize()I
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x7

    const/16 v0, 0x8

    return v0

    const/4 v0, 0x1
.end method

.method public init(I[B[B)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v10, 0x7

    const/16 v4, 0x10

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x3

    array-length v2, p2

    if-le v2, v4, :cond_0

    const/4 v10, 0x3

    new-array v9, v4, [B

    const/4 v10, 0x4

    array-length v2, v9

    invoke-static {p2, v3, v9, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v10, 0x0

    move-object p2, v9

    const/4 v10, 0x3

    :cond_0
    :try_start_0
    const-string v2, "RC4"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/jce/ARCFOUR128;->cipher:Ljavax/crypto/Cipher;

    const/4 v10, 0x1

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "RC4"

    invoke-direct {v6, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v10, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/jce/ARCFOUR128;->cipher:Ljavax/crypto/Cipher;

    if-nez p1, :cond_1

    :goto_0
    invoke-virtual {v2, v0, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v10, 0x1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v10, 0x2

    const/4 v8, 0x0

    :goto_1
    const/16 v0, 0x600

    if-ge v8, v0, :cond_2

    const/4 v10, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/jce/ARCFOUR128;->cipher:Ljavax/crypto/Cipher;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v4, v1

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x5

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    const/4 v7, 0x6

    const/4 v10, 0x2

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    const/4 v4, 0x2

    const/4 v10, 0x1

    :catch_0
    move-exception v7

    const/4 v10, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/ARCFOUR128;->cipher:Ljavax/crypto/Cipher;

    const/4 v10, 0x3

    throw v7

    const/4 v10, 0x3

    :cond_2
    nop

    return-void

    const/4 v9, 0x2
.end method

.method public isCBC()Z
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x2

    const/4 v0, 0x0

    return v0

    const/4 v1, 0x4
.end method

.method public update([BII[BI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v6, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/jce/ARCFOUR128;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    const/4 v6, 0x0

    nop

    return-void

    const/4 v3, 0x4
.end method
