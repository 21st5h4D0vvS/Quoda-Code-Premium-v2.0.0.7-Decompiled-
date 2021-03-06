.class public Lcom/jcraft/jsch/jce/BlowfishCBC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Cipher;


# static fields
.field private static final bsize:I = 0x10

.field private static final ivsize:I = 0x8


# instance fields
.field private cipher:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public getBlockSize()I
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x6

    const/16 v0, 0x10

    return v0

    const/4 v1, 0x5
.end method

.method public getIVSize()I
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x2

    const/16 v0, 0x8

    return v0

    const/4 v1, 0x0
.end method

.method public init(I[B[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v8, 0x4

    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v8, 0x6

    const-string v1, "NoPadding"

    const/4 v8, 0x5

    array-length v4, p3

    if-le v4, v6, :cond_0

    const/4 v8, 0x6

    new-array v3, v6, [B

    const/4 v8, 0x1

    array-length v4, v3

    invoke-static {p3, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v8, 0x1

    move-object p3, v3

    const/4 v8, 0x2

    :cond_0
    array-length v4, p2

    if-le v4, v7, :cond_1

    const/4 v8, 0x5

    new-array v3, v7, [B

    const/4 v8, 0x4

    array-length v4, v3

    invoke-static {p2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v8, 0x1

    move-object p2, v3

    const/4 v8, 0x2

    :cond_1
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "Blowfish"

    invoke-direct {v2, p2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v8, 0x6

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Blowfish/CBC/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/jce/BlowfishCBC;->cipher:Ljavax/crypto/Cipher;

    const/4 v8, 0x3

    iget-object v5, p0, Lcom/jcraft/jsch/jce/BlowfishCBC;->cipher:Ljavax/crypto/Cipher;

    if-nez p1, :cond_2

    const/4 v4, 0x1

    :goto_0
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, p3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v5, v4, v2, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x2

    nop

    return-void

    const/4 v4, 0x5

    const/4 v8, 0x6

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    const/4 v2, 0x6

    const/4 v8, 0x3

    :catch_0
    move-exception v0

    const/4 v8, 0x7

    throw v0
.end method

.method public isCBC()Z
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    const/4 v0, 0x1

    return v0

    const/4 v1, 0x3
.end method

.method public update([BII[BI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x6

    const/4 v6, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/jce/BlowfishCBC;->cipher:Ljavax/crypto/Cipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    const/4 v6, 0x6

    nop

    return-void

    const/4 v4, 0x0
.end method
