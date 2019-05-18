.class public Lcom/jcraft/jsch/jce/TripleDESCBC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Cipher;


# static fields
.field private static final bsize:I = 0x18

.field private static final ivsize:I = 0x8


# instance fields
.field private cipher:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public getBlockSize()I
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    const/16 v0, 0x18

    return v0

    const/4 v0, 0x0
.end method

.method public getIVSize()I
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x7

    const/16 v0, 0x8

    return v0

    const/4 v0, 0x4
.end method

.method public init(I[B[B)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v10, 0x2

    const/16 v9, 0x18

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v10, 0x5

    const-string v4, "NoPadding"

    const/4 v10, 0x3

    array-length v6, p3

    if-le v6, v8, :cond_0

    const/4 v10, 0x1

    new-array v5, v8, [B

    const/4 v10, 0x6

    array-length v6, v5

    invoke-static {p3, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v10, 0x2

    move-object p3, v5

    const/4 v10, 0x6

    :cond_0
    array-length v6, p2

    if-le v6, v9, :cond_1

    const/4 v10, 0x3

    new-array v5, v9, [B

    const/4 v10, 0x6

    array-length v6, v5

    invoke-static {p2, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v10, 0x0

    move-object p2, v5

    const/4 v10, 0x1

    :cond_1
    :try_start_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "DESede/CBC/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    iput-object v6, p0, Lcom/jcraft/jsch/jce/TripleDESCBC;->cipher:Ljavax/crypto/Cipher;

    const/4 v10, 0x2

    new-instance v3, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-direct {v3, p2}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V

    const/4 v10, 0x3

    const-string v6, "DESede"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    const/4 v10, 0x4

    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    const/4 v10, 0x6

    iget-object v7, p0, Lcom/jcraft/jsch/jce/TripleDESCBC;->cipher:Ljavax/crypto/Cipher;

    if-nez p1, :cond_2

    const/4 v6, 0x1

    :goto_0
    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v7, v6, v0, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x3

    nop

    return-void

    const/4 v7, 0x7

    const/4 v10, 0x3

    :cond_2
    const/4 v6, 0x2

    goto :goto_0

    const/4 v7, 0x3

    const/4 v10, 0x1

    :catch_0
    move-exception v1

    const/4 v10, 0x1

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/jcraft/jsch/jce/TripleDESCBC;->cipher:Ljavax/crypto/Cipher;

    const/4 v10, 0x4

    throw v1
.end method

.method public isCBC()Z
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x4

    const/4 v0, 0x1

    return v0

    const/4 v0, 0x4
.end method

.method public update([BII[BI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x7

    const/4 v6, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/jce/TripleDESCBC;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    const/4 v6, 0x3

    nop

    return-void

    const/4 v0, 0x1
.end method
