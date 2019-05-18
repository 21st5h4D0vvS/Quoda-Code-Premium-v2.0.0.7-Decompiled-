.class public Lcom/jcraft/jsch/KeyPairDSA;
.super Lcom/jcraft/jsch/KeyPair;


# static fields
.field private static final begin:[B

.field private static final end:[B

.field private static final sshdss:[B


# instance fields
.field private G_array:[B

.field private P_array:[B

.field private Q_array:[B

.field private key_size:I

.field private prv_array:[B

.field private pub_array:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x6

    const-string v0, "-----BEGIN DSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairDSA;->begin:[B

    const/4 v1, 0x0

    const-string v0, "-----END DSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairDSA;->end:[B

    const/4 v1, 0x3

    const-string v0, "ssh-dss"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairDSA;->sshdss:[B

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V

    const/4 v7, 0x2

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x6

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch;)V

    const/4 v1, 0x0

    const/16 v0, 0x400

    iput v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->key_size:I

    const/4 v1, 0x1

    iput-object p2, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    const/4 v1, 0x1

    iput-object p3, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    const/4 v1, 0x4

    iput-object p4, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    const/4 v1, 0x1

    iput-object p5, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    const/4 v1, 0x6

    iput-object p6, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    const/4 v1, 0x3

    if-eqz p2, :cond_0

    const/4 v1, 0x6

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->key_size:I

    const/4 v1, 0x0

    :cond_0
    nop

    return-void

    const/4 v1, 0x1
.end method

.method static fromSSHAgent(Lcom/jcraft/jsch/JSch;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v9, 0x6

    const/4 v9, 0x6

    const/4 v1, 0x7

    const-string v8, "invalid key format"

    invoke-virtual {p1, v1, v8}, Lcom/jcraft/jsch/Buffer;->getBytes(ILjava/lang/String;)[[B

    move-result-object v7

    const/4 v9, 0x2

    const/4 v1, 0x1

    aget-object v2, v7, v1

    const/4 v9, 0x5

    const/4 v1, 0x2

    aget-object v3, v7, v1

    const/4 v9, 0x5

    const/4 v1, 0x3

    aget-object v4, v7, v1

    const/4 v9, 0x0

    const/4 v1, 0x4

    aget-object v5, v7, v1

    const/4 v9, 0x5

    const/4 v1, 0x5

    aget-object v6, v7, v1

    const/4 v9, 0x5

    new-instance v0, Lcom/jcraft/jsch/KeyPairDSA;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/KeyPairDSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B[B[B)V

    const/4 v9, 0x7

    new-instance v1, Ljava/lang/String;

    const/4 v8, 0x6

    aget-object v8, v7, v8

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/jcraft/jsch/KeyPairDSA;->publicKeyComment:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v1, 0x0

    iput v1, v0, Lcom/jcraft/jsch/KeyPairDSA;->vendor:I

    const/4 v9, 0x5

    return-object v0

    const/4 v3, 0x6
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x6

    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public forSSHAgent()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairDSA;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "key is encrypted."

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    const/4 v4, 0x5

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    const/4 v4, 0x4

    sget-object v2, Lcom/jcraft/jsch/KeyPairDSA;->sshdss:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->publicKeyComment:Ljava/lang/String;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v2

    new-array v1, v2, [B

    const/4 v4, 0x6

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    const/4 v4, 0x4

    return-object v1

    const/4 v3, 0x1
.end method

.method generate(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v6, 0x7

    const/4 v6, 0x2

    iput p1, p0, Lcom/jcraft/jsch/KeyPairDSA;->key_size:I

    const/4 v6, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->jsch:Lcom/jcraft/jsch/JSch;

    const-string v4, "keypairgen.dsa"

    invoke-static {v4}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jcraft/jsch/KeyPairGenDSA;

    move-object v0, v4

    check-cast v0, Lcom/jcraft/jsch/KeyPairGenDSA;

    move-object v3, v0

    const/4 v6, 0x4

    invoke-interface {v3, p1}, Lcom/jcraft/jsch/KeyPairGenDSA;->init(I)V

    const/4 v6, 0x4

    invoke-interface {v3}, Lcom/jcraft/jsch/KeyPairGenDSA;->getP()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    const/4 v6, 0x6

    invoke-interface {v3}, Lcom/jcraft/jsch/KeyPairGenDSA;->getQ()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    const/4 v6, 0x1

    invoke-interface {v3}, Lcom/jcraft/jsch/KeyPairGenDSA;->getG()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    const/4 v6, 0x0

    invoke-interface {v3}, Lcom/jcraft/jsch/KeyPairGenDSA;->getY()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    const/4 v6, 0x3

    invoke-interface {v3}, Lcom/jcraft/jsch/KeyPairGenDSA;->getX()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x6

    nop

    return-void

    const/4 v5, 0x7

    const/4 v6, 0x6

    :catch_0
    move-exception v2

    const/4 v6, 0x3

    instance-of v4, v2, Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    const/4 v6, 0x7

    new-instance v4, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    const/4 v6, 0x0

    :cond_0
    new-instance v4, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method getBegin()[B
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    sget-object v0, Lcom/jcraft/jsch/KeyPairDSA;->begin:[B

    return-object v0

    const/4 v1, 0x6
.end method

.method getEnd()[B
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x7

    sget-object v0, Lcom/jcraft/jsch/KeyPairDSA;->end:[B

    return-object v0

    const/4 v0, 0x4
.end method

.method public getKeySize()I
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    iget v0, p0, Lcom/jcraft/jsch/KeyPairDSA;->key_size:I

    return v0

    const/4 v0, 0x2
.end method

.method public getKeyType()I
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x3

    const/4 v0, 0x1

    return v0

    const/4 v0, 0x4
.end method

.method getKeyTypeName()[B
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x1

    sget-object v0, Lcom/jcraft/jsch/KeyPairDSA;->sshdss:[B

    return-object v0

    const/4 v0, 0x3
.end method

.method getPrivateKey()[B
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v6}, Lcom/jcraft/jsch/KeyPairDSA;->countLength(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    array-length v5, v5

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/KeyPairDSA;->countLength(I)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    array-length v5, v5

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/KeyPairDSA;->countLength(I)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    array-length v5, v5

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/KeyPairDSA;->countLength(I)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    array-length v5, v5

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/KeyPairDSA;->countLength(I)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    array-length v5, v5

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/KeyPairDSA;->countLength(I)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    array-length v5, v5

    add-int v0, v4, v5

    const/4 v7, 0x2

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPairDSA;->countLength(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v3, v4, v0

    const/4 v7, 0x2

    new-array v2, v3, [B

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v7, 0x5

    invoke-virtual {p0, v2, v1, v0}, Lcom/jcraft/jsch/KeyPairDSA;->writeSEQUENCE([BII)I

    move-result v1

    const/4 v7, 0x6

    new-array v4, v6, [B

    invoke-virtual {p0, v2, v1, v4}, Lcom/jcraft/jsch/KeyPairDSA;->writeINTEGER([BI[B)I

    move-result v1

    const/4 v7, 0x5

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    invoke-virtual {p0, v2, v1, v4}, Lcom/jcraft/jsch/KeyPairDSA;->writeINTEGER([BI[B)I

    move-result v1

    const/4 v7, 0x7

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    invoke-virtual {p0, v2, v1, v4}, Lcom/jcraft/jsch/KeyPairDSA;->writeINTEGER([BI[B)I

    move-result v1

    const/4 v7, 0x4

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    invoke-virtual {p0, v2, v1, v4}, Lcom/jcraft/jsch/KeyPairDSA;->writeINTEGER([BI[B)I

    move-result v1

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    invoke-virtual {p0, v2, v1, v4}, Lcom/jcraft/jsch/KeyPairDSA;->writeINTEGER([BI[B)I

    move-result v1

    const/4 v7, 0x6

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    invoke-virtual {p0, v2, v1, v4}, Lcom/jcraft/jsch/KeyPairDSA;->writeINTEGER([BI[B)I

    move-result v1

    const/4 v7, 0x5

    return-object v2

    const/4 v2, 0x2
.end method

.method public getPublicKeyBlob()[B
    .locals 5

    const/4 v4, 0x4

    const/4 v4, 0x5

    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object v0

    const/4 v4, 0x4

    if-eqz v0, :cond_0

    const/4 v4, 0x5

    :goto_0
    return-object v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    if-nez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x5

    const/4 v4, 0x3

    :cond_1
    const/4 v2, 0x5

    new-array v1, v2, [[B

    const/4 v4, 0x4

    const/4 v2, 0x0

    sget-object v3, Lcom/jcraft/jsch/KeyPairDSA;->sshdss:[B

    aput-object v3, v1, v2

    const/4 v4, 0x3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    aput-object v3, v1, v2

    const/4 v4, 0x1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    aput-object v3, v1, v2

    const/4 v4, 0x7

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    aput-object v3, v1, v2

    const/4 v4, 0x3

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    aput-object v3, v1, v2

    const/4 v4, 0x7

    invoke-static {v1}, Lcom/jcraft/jsch/Buffer;->fromBytes([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object v2

    iget-object v0, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    goto :goto_0

    const/4 v1, 0x7
.end method

.method public getSignature([B)[B
    .locals 10

    const/4 v9, 0x6

    const/4 v9, 0x5

    :try_start_0
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->jsch:Lcom/jcraft/jsch/JSch;

    const-string v5, "signature.dss"

    invoke-static {v5}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v9, 0x4

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jcraft/jsch/SignatureDSA;

    move-object v0, v5

    check-cast v0, Lcom/jcraft/jsch/SignatureDSA;

    move-object v2, v0

    const/4 v9, 0x0

    invoke-interface {v2}, Lcom/jcraft/jsch/SignatureDSA;->init()V

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    iget-object v6, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    iget-object v7, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    iget-object v8, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    invoke-interface {v2, v5, v6, v7, v8}, Lcom/jcraft/jsch/SignatureDSA;->setPrvKey([B[B[B[B)V

    const/4 v9, 0x5

    invoke-interface {v2, p1}, Lcom/jcraft/jsch/SignatureDSA;->update([B)V

    const/4 v9, 0x0

    invoke-interface {v2}, Lcom/jcraft/jsch/SignatureDSA;->sign()[B

    move-result-object v3

    const/4 v9, 0x7

    const/4 v5, 0x2

    new-array v4, v5, [[B

    const/4 v9, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/jcraft/jsch/KeyPairDSA;->sshdss:[B

    aput-object v6, v4, v5

    const/4 v9, 0x4

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v9, 0x4

    invoke-static {v4}, Lcom/jcraft/jsch/Buffer;->fromBytes([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object v5

    iget-object v5, v5, Lcom/jcraft/jsch/Buffer;->buffer:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x1

    :goto_0
    return-object v5

    const/4 v4, 0x2

    const/4 v9, 0x7

    :catch_0
    move-exception v5

    const/4 v9, 0x1

    const/4 v5, 0x0

    goto :goto_0

    const/4 v4, 0x5
.end method

.method public getVerifier()Lcom/jcraft/jsch/Signature;
    .locals 9

    const/4 v8, 0x5

    const/4 v8, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->jsch:Lcom/jcraft/jsch/JSch;

    const-string v4, "signature.dss"

    invoke-static {v4}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jcraft/jsch/SignatureDSA;

    move-object v0, v4

    check-cast v0, Lcom/jcraft/jsch/SignatureDSA;

    move-object v3, v0

    const/4 v8, 0x4

    invoke-interface {v3}, Lcom/jcraft/jsch/SignatureDSA;->init()V

    const/4 v8, 0x3

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairDSA;->getPublicKeyBlob()[B

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v8, 0x7

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairDSA;->getPublicKeyBlob()[B

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    const/4 v8, 0x6

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    const/4 v8, 0x7

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    const/4 v8, 0x6

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    const/4 v8, 0x6

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    const/4 v8, 0x3

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    const/4 v8, 0x3

    :cond_0
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    iget-object v6, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    iget-object v7, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/jcraft/jsch/SignatureDSA;->setPubKey([B[B[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x4

    :goto_0
    return-object v3

    const/4 v8, 0x3

    const/4 v8, 0x2

    :catch_0
    move-exception v4

    const/4 v8, 0x4

    const/4 v3, 0x0

    goto :goto_0

    const/4 v3, 0x7
.end method

.method parse([B)Z
    .locals 14

    const/4 v13, 0x6

    const/16 v11, 0x30

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v13, 0x2

    :try_start_0
    iget v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->vendor:I

    if-ne v10, v8, :cond_2

    const/4 v13, 0x4

    const/4 v10, 0x0

    aget-byte v10, p1, v10

    if-eq v10, v11, :cond_1

    const/4 v13, 0x5

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    const/4 v13, 0x0

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    const/4 v13, 0x2

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object v10

    iput-object v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    const/4 v13, 0x3

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object v10

    iput-object v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    const/4 v13, 0x4

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object v10

    iput-object v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    const/4 v13, 0x7

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object v10

    iput-object v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    const/4 v13, 0x6

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object v10

    iput-object v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    if-eqz v10, :cond_0

    const/4 v13, 0x7

    new-instance v10, Ljava/math/BigInteger;

    iget-object v11, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    invoke-direct {v10, v11}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    iput v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->key_size:I

    const/4 v13, 0x3

    :cond_0
    :goto_0
    return v8

    const/4 v13, 0x0

    :cond_1
    move v8, v9

    const/4 v13, 0x7

    goto :goto_0

    const/4 v2, 0x6

    const/4 v13, 0x6

    :cond_2
    iget v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->vendor:I

    if-ne v10, v12, :cond_3

    const/4 v13, 0x2

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    const/4 v13, 0x6

    array-length v10, p1

    invoke-virtual {v0, v10}, Lcom/jcraft/jsch/Buffer;->skip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v13, 0x6

    const/4 v10, 0x1

    :try_start_1
    const-string v11, ""

    invoke-virtual {v0, v10, v11}, Lcom/jcraft/jsch/Buffer;->getBytes(ILjava/lang/String;)[[B

    move-result-object v7

    const/4 v13, 0x6

    const/4 v10, 0x0

    aget-object v10, v7, v10

    iput-object v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    const/4 v3, 0x3

    const/4 v13, 0x1

    :catch_0
    move-exception v1

    move v8, v9

    const/4 v13, 0x1

    goto :goto_0

    const/4 v10, 0x6

    const/4 v13, 0x4

    :cond_3
    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v6, 0x0

    const/4 v13, 0x4

    :try_start_2
    aget-byte v10, p1, v4

    if-eq v10, v11, :cond_4

    move v8, v9

    goto :goto_0

    const/4 v3, 0x2

    const/4 v13, 0x4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    const/4 v13, 0x7

    add-int/lit8 v5, v4, 0x1

    aget-byte v10, p1, v4

    and-int/lit16 v6, v10, 0xff

    const/4 v13, 0x5

    and-int/lit16 v10, v6, 0x80

    if-eqz v10, :cond_5

    const/4 v13, 0x3

    and-int/lit8 v2, v6, 0x7f

    const/4 v6, 0x0

    move v3, v2

    const/4 v13, 0x6

    :goto_1
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_5

    shl-int/lit8 v10, v6, 0x8

    add-int/lit8 v4, v5, 0x1

    aget-byte v11, p1, v5

    and-int/lit16 v11, v11, 0xff

    add-int v6, v10, v11

    move v3, v2

    move v5, v4

    goto :goto_1

    const/4 v2, 0x1

    :cond_5
    move v4, v5

    const/4 v13, 0x3

    aget-byte v10, p1, v4

    if-eq v10, v12, :cond_6

    move v8, v9

    goto :goto_0

    const/4 v1, 0x7

    const/4 v13, 0x3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    const/4 v13, 0x2

    add-int/lit8 v5, v4, 0x1

    aget-byte v10, p1, v4

    and-int/lit16 v6, v10, 0xff

    const/4 v13, 0x2

    and-int/lit16 v10, v6, 0x80

    if-eqz v10, :cond_7

    const/4 v13, 0x4

    and-int/lit8 v2, v6, 0x7f

    const/4 v6, 0x0

    move v3, v2

    const/4 v13, 0x5

    :goto_2
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_7

    shl-int/lit8 v10, v6, 0x8

    add-int/lit8 v4, v5, 0x1

    aget-byte v11, p1, v5

    and-int/lit16 v11, v11, 0xff

    add-int v6, v10, v11

    move v3, v2

    move v5, v4

    goto :goto_2

    const/4 v2, 0x0

    :cond_7
    move v4, v5

    const/4 v13, 0x2

    add-int/2addr v4, v6

    const/4 v13, 0x4

    add-int/lit8 v4, v4, 0x1

    const/4 v13, 0x1

    add-int/lit8 v5, v4, 0x1

    aget-byte v10, p1, v4

    and-int/lit16 v6, v10, 0xff

    const/4 v13, 0x2

    and-int/lit16 v10, v6, 0x80

    if-eqz v10, :cond_8

    const/4 v13, 0x1

    and-int/lit8 v2, v6, 0x7f

    const/4 v6, 0x0

    move v3, v2

    const/4 v13, 0x6

    :goto_3
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_8

    shl-int/lit8 v10, v6, 0x8

    add-int/lit8 v4, v5, 0x1

    aget-byte v11, p1, v5

    and-int/lit16 v11, v11, 0xff

    add-int v6, v10, v11

    move v3, v2

    move v5, v4

    goto :goto_3

    const/4 v7, 0x5

    :cond_8
    move v4, v5

    const/4 v13, 0x2

    new-array v10, v6, [B

    iput-object v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    const/4 v11, 0x0

    invoke-static {p1, v4, v10, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x2

    add-int/2addr v4, v6

    const/4 v13, 0x3

    add-int/lit8 v4, v4, 0x1

    const/4 v13, 0x3

    add-int/lit8 v5, v4, 0x1

    aget-byte v10, p1, v4

    and-int/lit16 v6, v10, 0xff

    const/4 v13, 0x5

    and-int/lit16 v10, v6, 0x80

    if-eqz v10, :cond_9

    const/4 v13, 0x0

    and-int/lit8 v2, v6, 0x7f

    const/4 v6, 0x0

    move v3, v2

    const/4 v13, 0x7

    :goto_4
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_9

    shl-int/lit8 v10, v6, 0x8

    add-int/lit8 v4, v5, 0x1

    aget-byte v11, p1, v5

    and-int/lit16 v11, v11, 0xff

    add-int v6, v10, v11

    move v3, v2

    move v5, v4

    goto :goto_4

    const/4 v2, 0x6

    :cond_9
    move v4, v5

    const/4 v13, 0x5

    new-array v10, v6, [B

    iput-object v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->Q_array:[B

    const/4 v11, 0x0

    invoke-static {p1, v4, v10, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x0

    add-int/2addr v4, v6

    const/4 v13, 0x4

    add-int/lit8 v4, v4, 0x1

    const/4 v13, 0x5

    add-int/lit8 v5, v4, 0x1

    aget-byte v10, p1, v4

    and-int/lit16 v6, v10, 0xff

    const/4 v13, 0x2

    and-int/lit16 v10, v6, 0x80

    if-eqz v10, :cond_a

    const/4 v13, 0x5

    and-int/lit8 v2, v6, 0x7f

    const/4 v6, 0x0

    move v3, v2

    const/4 v13, 0x7

    :goto_5
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_a

    shl-int/lit8 v10, v6, 0x8

    add-int/lit8 v4, v5, 0x1

    aget-byte v11, p1, v5

    and-int/lit16 v11, v11, 0xff

    add-int v6, v10, v11

    move v3, v2

    move v5, v4

    goto :goto_5

    const/4 v12, 0x0

    :cond_a
    move v4, v5

    const/4 v13, 0x6

    new-array v10, v6, [B

    iput-object v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->G_array:[B

    const/4 v11, 0x0

    invoke-static {p1, v4, v10, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x4

    add-int/2addr v4, v6

    const/4 v13, 0x5

    add-int/lit8 v4, v4, 0x1

    const/4 v13, 0x6

    add-int/lit8 v5, v4, 0x1

    aget-byte v10, p1, v4

    and-int/lit16 v6, v10, 0xff

    const/4 v13, 0x5

    and-int/lit16 v10, v6, 0x80

    if-eqz v10, :cond_b

    const/4 v13, 0x4

    and-int/lit8 v2, v6, 0x7f

    const/4 v6, 0x0

    move v3, v2

    const/4 v13, 0x5

    :goto_6
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_b

    shl-int/lit8 v10, v6, 0x8

    add-int/lit8 v4, v5, 0x1

    aget-byte v11, p1, v5

    and-int/lit16 v11, v11, 0xff

    add-int v6, v10, v11

    move v3, v2

    move v5, v4

    goto :goto_6

    const/4 v6, 0x1

    :cond_b
    move v4, v5

    const/4 v13, 0x6

    new-array v10, v6, [B

    iput-object v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    const/4 v13, 0x1

    iget-object v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->pub_array:[B

    const/4 v11, 0x0

    invoke-static {p1, v4, v10, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x1

    add-int/2addr v4, v6

    const/4 v13, 0x0

    add-int/lit8 v4, v4, 0x1

    const/4 v13, 0x1

    add-int/lit8 v5, v4, 0x1

    aget-byte v10, p1, v4

    and-int/lit16 v6, v10, 0xff

    const/4 v13, 0x5

    and-int/lit16 v10, v6, 0x80

    if-eqz v10, :cond_c

    const/4 v13, 0x0

    and-int/lit8 v2, v6, 0x7f

    const/4 v6, 0x0

    move v3, v2

    const/4 v13, 0x4

    :goto_7
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_c

    shl-int/lit8 v10, v6, 0x8

    add-int/lit8 v4, v5, 0x1

    aget-byte v11, p1, v5

    and-int/lit16 v11, v11, 0xff

    add-int v6, v10, v11

    move v3, v2

    move v5, v4

    goto :goto_7

    const/4 v12, 0x4

    :cond_c
    move v4, v5

    const/4 v13, 0x4

    new-array v10, v6, [B

    iput-object v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    const/4 v13, 0x5

    iget-object v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->prv_array:[B

    const/4 v11, 0x0

    invoke-static {p1, v4, v10, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x3

    add-int/2addr v4, v6

    const/4 v13, 0x6

    iget-object v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    if-eqz v10, :cond_0

    const/4 v13, 0x1

    new-instance v10, Ljava/math/BigInteger;

    iget-object v11, p0, Lcom/jcraft/jsch/KeyPairDSA;->P_array:[B

    invoke-direct {v10, v11}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    iput v10, p0, Lcom/jcraft/jsch/KeyPairDSA;->key_size:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    const/4 v10, 0x7

    const/4 v13, 0x7

    :catch_1
    move-exception v1

    move v8, v9

    const/4 v13, 0x4

    goto/16 :goto_0

    const/4 v7, 0x2
.end method
