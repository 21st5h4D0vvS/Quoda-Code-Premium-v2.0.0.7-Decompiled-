.class public Lcom/jcraft/jsch/KeyPairRSA;
.super Lcom/jcraft/jsch/KeyPair;


# static fields
.field private static final begin:[B

.field private static final end:[B

.field private static final sshrsa:[B


# instance fields
.field private c_array:[B

.field private ep_array:[B

.field private eq_array:[B

.field private key_size:I

.field private n_array:[B

.field private p_array:[B

.field private prv_array:[B

.field private pub_array:[B

.field private q_array:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x2

    const-string v0, "-----BEGIN RSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->begin:[B

    const/4 v1, 0x5

    const-string v0, "-----END RSA PRIVATE KEY-----"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->end:[B

    const/4 v1, 0x4

    const-string v0, "ssh-rsa"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KeyPairRSA;->sshrsa:[B

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v0, v0}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B)V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x2
.end method

.method public constructor <init>(Lcom/jcraft/jsch/JSch;[B[B[B)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/KeyPair;-><init>(Lcom/jcraft/jsch/JSch;)V

    const/4 v1, 0x0

    const/16 v0, 0x400

    iput v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I

    const/4 v1, 0x7

    iput-object p2, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    const/4 v1, 0x5

    iput-object p3, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    const/4 v1, 0x2

    iput-object p4, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    const/4 v1, 0x4

    if-eqz p2, :cond_0

    const/4 v1, 0x5

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I

    const/4 v1, 0x6

    :cond_0
    nop

    return-void

    const/4 v1, 0x6
.end method

.method static fromSSHAgent(Lcom/jcraft/jsch/JSch;Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyPair;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v7, 0x7

    const/4 v7, 0x2

    const/16 v5, 0x8

    const-string v6, "invalid key format"

    invoke-virtual {p1, v5, v6}, Lcom/jcraft/jsch/Buffer;->getBytes(ILjava/lang/String;)[[B

    move-result-object v4

    const/4 v7, 0x7

    const/4 v5, 0x1

    aget-object v1, v4, v5

    const/4 v7, 0x3

    const/4 v5, 0x2

    aget-object v3, v4, v5

    const/4 v7, 0x2

    const/4 v5, 0x3

    aget-object v2, v4, v5

    const/4 v7, 0x0

    new-instance v0, Lcom/jcraft/jsch/KeyPairRSA;

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/jcraft/jsch/KeyPairRSA;-><init>(Lcom/jcraft/jsch/JSch;[B[B[B)V

    const/4 v7, 0x2

    const/4 v5, 0x4

    aget-object v5, v4, v5

    iput-object v5, v0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    const/4 v7, 0x1

    const/4 v5, 0x5

    aget-object v5, v4, v5

    iput-object v5, v0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    const/4 v7, 0x0

    const/4 v5, 0x6

    aget-object v5, v4, v5

    iput-object v5, v0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    const/4 v7, 0x0

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v6, v4, v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v0, Lcom/jcraft/jsch/KeyPairRSA;->publicKeyComment:Ljava/lang/String;

    const/4 v7, 0x5

    const/4 v5, 0x0

    iput v5, v0, Lcom/jcraft/jsch/KeyPairRSA;->vendor:I

    const/4 v7, 0x7

    return-object v0

    const/4 v7, 0x7
.end method

.method private getCArray()[B
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    if-nez v0, :cond_0

    const/4 v3, 0x4

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    const/4 v3, 0x3

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    return-object v0

    const/4 v1, 0x4
.end method

.method private getEPArray()[B
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    if-nez v0, :cond_0

    const/4 v3, 0x7

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    const/4 v3, 0x2

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    return-object v0

    const/4 v3, 0x7
.end method

.method private getEQArray()[B
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    if-nez v0, :cond_0

    const/4 v3, 0x2

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>([B)V

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    const/4 v3, 0x1

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    return-object v0

    const/4 v0, 0x3
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x5

    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->dispose()V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v1, 0x2
.end method

.method public forSSHAgent()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v4, 0x6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairRSA;->isEncrypted()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x7

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "key is encrypted."

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    const/4 v4, 0x1

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    const/4 v4, 0x7

    sget-object v2, Lcom/jcraft/jsch/KeyPairRSA;->sshrsa:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getCArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->publicKeyComment:Ljava/lang/String;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v2

    new-array v1, v2, [B

    const/4 v4, 0x0

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    const/4 v4, 0x2

    return-object v1

    const/4 v0, 0x7
.end method

.method generate(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v6, 0x6

    iput p1, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I

    const/4 v6, 0x5

    :try_start_0
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->jsch:Lcom/jcraft/jsch/JSch;

    const-string v4, "keypairgen.rsa"

    invoke-static {v4}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jcraft/jsch/KeyPairGenRSA;

    move-object v0, v4

    check-cast v0, Lcom/jcraft/jsch/KeyPairGenRSA;

    move-object v3, v0

    const/4 v6, 0x5

    invoke-interface {v3, p1}, Lcom/jcraft/jsch/KeyPairGenRSA;->init(I)V

    const/4 v6, 0x3

    invoke-interface {v3}, Lcom/jcraft/jsch/KeyPairGenRSA;->getE()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    const/4 v6, 0x2

    invoke-interface {v3}, Lcom/jcraft/jsch/KeyPairGenRSA;->getD()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    const/4 v6, 0x1

    invoke-interface {v3}, Lcom/jcraft/jsch/KeyPairGenRSA;->getN()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    const/4 v6, 0x5

    invoke-interface {v3}, Lcom/jcraft/jsch/KeyPairGenRSA;->getP()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    const/4 v6, 0x4

    invoke-interface {v3}, Lcom/jcraft/jsch/KeyPairGenRSA;->getQ()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    const/4 v6, 0x2

    invoke-interface {v3}, Lcom/jcraft/jsch/KeyPairGenRSA;->getEP()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    const/4 v6, 0x3

    invoke-interface {v3}, Lcom/jcraft/jsch/KeyPairGenRSA;->getEQ()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    const/4 v6, 0x4

    invoke-interface {v3}, Lcom/jcraft/jsch/KeyPairGenRSA;->getC()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x5

    nop

    return-void

    const/4 v0, 0x3

    const/4 v6, 0x6

    :catch_0
    move-exception v2

    const/4 v6, 0x4

    instance-of v4, v2, Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    const/4 v6, 0x4

    new-instance v4, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    const/4 v6, 0x6

    :cond_0
    new-instance v4, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method getBegin()[B
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    sget-object v0, Lcom/jcraft/jsch/KeyPairRSA;->begin:[B

    return-object v0

    const/4 v0, 0x6
.end method

.method getEnd()[B
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x4

    sget-object v0, Lcom/jcraft/jsch/KeyPairRSA;->end:[B

    return-object v0

    const/4 v0, 0x6
.end method

.method public getKeySize()I
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x2

    iget v0, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I

    return v0

    const/4 v0, 0x2
.end method

.method public getKeyType()I
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x4

    const/4 v0, 0x2

    return v0

    const/4 v0, 0x4
.end method

.method getKeyTypeName()[B
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x2

    sget-object v0, Lcom/jcraft/jsch/KeyPairRSA;->sshrsa:[B

    return-object v0

    const/4 v0, 0x6
.end method

.method getPrivateKey()[B
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x1

    const/4 v7, 0x4

    invoke-virtual {p0, v6}, Lcom/jcraft/jsch/KeyPairRSA;->countLength(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    array-length v5, v5

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/KeyPairRSA;->countLength(I)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    array-length v5, v5

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/KeyPairRSA;->countLength(I)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    array-length v5, v5

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/KeyPairRSA;->countLength(I)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    array-length v5, v5

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/KeyPairRSA;->countLength(I)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    array-length v5, v5

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/KeyPairRSA;->countLength(I)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    array-length v5, v5

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/KeyPairRSA;->countLength(I)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    array-length v5, v5

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/KeyPairRSA;->countLength(I)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    array-length v5, v5

    invoke-virtual {p0, v5}, Lcom/jcraft/jsch/KeyPairRSA;->countLength(I)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    array-length v5, v5

    add-int v0, v4, v5

    const/4 v7, 0x4

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KeyPairRSA;->countLength(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int v3, v4, v0

    const/4 v7, 0x1

    new-array v2, v3, [B

    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/jcraft/jsch/KeyPairRSA;->writeSEQUENCE([BII)I

    move-result v1

    const/4 v7, 0x6

    new-array v4, v6, [B

    invoke-virtual {p0, v2, v1, v4}, Lcom/jcraft/jsch/KeyPairRSA;->writeINTEGER([BI[B)I

    move-result v1

    const/4 v7, 0x6

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-virtual {p0, v2, v1, v4}, Lcom/jcraft/jsch/KeyPairRSA;->writeINTEGER([BI[B)I

    move-result v1

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    invoke-virtual {p0, v2, v1, v4}, Lcom/jcraft/jsch/KeyPairRSA;->writeINTEGER([BI[B)I

    move-result v1

    const/4 v7, 0x5

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-virtual {p0, v2, v1, v4}, Lcom/jcraft/jsch/KeyPairRSA;->writeINTEGER([BI[B)I

    move-result v1

    const/4 v7, 0x7

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    invoke-virtual {p0, v2, v1, v4}, Lcom/jcraft/jsch/KeyPairRSA;->writeINTEGER([BI[B)I

    move-result v1

    const/4 v7, 0x2

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    invoke-virtual {p0, v2, v1, v4}, Lcom/jcraft/jsch/KeyPairRSA;->writeINTEGER([BI[B)I

    move-result v1

    const/4 v7, 0x3

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    invoke-virtual {p0, v2, v1, v4}, Lcom/jcraft/jsch/KeyPairRSA;->writeINTEGER([BI[B)I

    move-result v1

    const/4 v7, 0x2

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    invoke-virtual {p0, v2, v1, v4}, Lcom/jcraft/jsch/KeyPairRSA;->writeINTEGER([BI[B)I

    move-result v1

    const/4 v7, 0x6

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    invoke-virtual {p0, v2, v1, v4}, Lcom/jcraft/jsch/KeyPairRSA;->writeINTEGER([BI[B)I

    move-result v1

    const/4 v7, 0x1

    return-object v2

    const/4 v5, 0x6
.end method

.method public getPublicKeyBlob()[B
    .locals 5

    const/4 v4, 0x2

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/jcraft/jsch/KeyPair;->getPublicKeyBlob()[B

    move-result-object v0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    const/4 v4, 0x6

    :goto_0
    return-object v0

    const/4 v4, 0x4

    const/4 v4, 0x4

    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    if-nez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x4

    const/4 v4, 0x2

    :cond_1
    const/4 v2, 0x3

    new-array v1, v2, [[B

    const/4 v4, 0x5

    const/4 v2, 0x0

    sget-object v3, Lcom/jcraft/jsch/KeyPairRSA;->sshrsa:[B

    aput-object v3, v1, v2

    const/4 v4, 0x4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    aput-object v3, v1, v2

    const/4 v4, 0x2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    aput-object v3, v1, v2

    const/4 v4, 0x7

    invoke-static {v1}, Lcom/jcraft/jsch/Buffer;->fromBytes([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object v2

    iget-object v0, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    goto :goto_0

    const/4 v3, 0x5
.end method

.method public getSignature([B)[B
    .locals 8

    const/4 v7, 0x1

    const/4 v7, 0x4

    :try_start_0
    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->jsch:Lcom/jcraft/jsch/JSch;

    const-string v5, "signature.rsa"

    invoke-static {v5}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v7, 0x4

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jcraft/jsch/SignatureRSA;

    move-object v0, v5

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;

    move-object v2, v0

    const/4 v7, 0x1

    invoke-interface {v2}, Lcom/jcraft/jsch/SignatureRSA;->init()V

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    iget-object v6, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-interface {v2, v5, v6}, Lcom/jcraft/jsch/SignatureRSA;->setPrvKey([B[B)V

    const/4 v7, 0x7

    invoke-interface {v2, p1}, Lcom/jcraft/jsch/SignatureRSA;->update([B)V

    const/4 v7, 0x3

    invoke-interface {v2}, Lcom/jcraft/jsch/SignatureRSA;->sign()[B

    move-result-object v3

    const/4 v7, 0x0

    const/4 v5, 0x2

    new-array v4, v5, [[B

    const/4 v7, 0x2

    const/4 v5, 0x0

    sget-object v6, Lcom/jcraft/jsch/KeyPairRSA;->sshrsa:[B

    aput-object v6, v4, v5

    const/4 v7, 0x0

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v7, 0x5

    invoke-static {v4}, Lcom/jcraft/jsch/Buffer;->fromBytes([[B)Lcom/jcraft/jsch/Buffer;

    move-result-object v5

    iget-object v5, v5, Lcom/jcraft/jsch/Buffer;->buffer:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x2

    :goto_0
    return-object v5

    const/4 v6, 0x3

    const/4 v7, 0x3

    :catch_0
    move-exception v5

    const/4 v7, 0x3

    const/4 v5, 0x0

    goto :goto_0

    const/4 v3, 0x4
.end method

.method public getVerifier()Lcom/jcraft/jsch/Signature;
    .locals 7

    const/4 v6, 0x6

    const/4 v6, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->jsch:Lcom/jcraft/jsch/JSch;

    const-string v4, "signature.rsa"

    invoke-static {v4}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x6

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jcraft/jsch/SignatureRSA;

    move-object v0, v4

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;

    move-object v3, v0

    const/4 v6, 0x1

    invoke-interface {v3}, Lcom/jcraft/jsch/SignatureRSA;->init()V

    const/4 v6, 0x7

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getPublicKeyBlob()[B

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v6, 0x5

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getPublicKeyBlob()[B

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    const/4 v6, 0x7

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    const/4 v6, 0x7

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    const/4 v6, 0x0

    :cond_0
    iget-object v4, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    iget-object v5, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-interface {v3, v4, v5}, Lcom/jcraft/jsch/SignatureRSA;->setPubKey([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x5

    :goto_0
    return-object v3

    const/4 v6, 0x0

    const/4 v6, 0x7

    :catch_0
    move-exception v4

    const/4 v6, 0x7

    const/4 v3, 0x0

    goto :goto_0

    const/4 v2, 0x6
.end method

.method parse([B)Z
    .locals 14

    const/4 v13, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->vendor:I

    if-ne v11, v13, :cond_1

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    array-length v11, p1

    invoke-virtual {v0, v11}, Lcom/jcraft/jsch/Buffer;->skip(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v11, 0x4

    :try_start_1
    const-string v12, ""

    invoke-virtual {v0, v11, v12}, Lcom/jcraft/jsch/Buffer;->getBytes(ILjava/lang/String;)[[B

    move-result-object v7

    const/4 v11, 0x0

    aget-object v11, v7, v11

    iput-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    const/4 v11, 0x1

    aget-object v11, v7, v11

    iput-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    const/4 v11, 0x2

    aget-object v11, v7, v11

    iput-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    const/4 v11, 0x3

    aget-object v11, v7, v11

    iput-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getEPArray()[B

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getEQArray()[B

    :cond_0
    :goto_0
    return v9

    const/4 v7, 0x6

    :catch_0
    move-exception v1

    move v9, v10

    goto :goto_0

    const/4 v9, 0x4

    :cond_1
    iget v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->vendor:I

    if-ne v11, v9, :cond_4

    aget-byte v11, p1, v4

    const/16 v12, 0x30

    if-eq v11, v12, :cond_3

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, p1}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object v11

    iput-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object v11

    iput-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object v11

    iput-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object v8

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object v11

    iput-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getMPIntBits()[B

    move-result-object v11

    iput-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    iget-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    if-eqz v11, :cond_2

    new-instance v11, Ljava/math/BigInteger;

    iget-object v12, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-direct {v11, v12}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    iput v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I

    :cond_2
    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getEPArray()[B

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getEQArray()[B

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyPairRSA;->getCArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    const/4 v0, 0x7

    :catch_1
    move-exception v1

    :goto_1
    move v9, v10

    goto :goto_0

    const/4 v5, 0x4

    :cond_3
    move v9, v10

    goto :goto_0

    const/4 v7, 0x5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v4, 0x1

    :try_start_3
    aget-byte v11, p1, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    and-int/lit16 v6, v11, 0xff

    and-int/lit16 v11, v6, 0x80

    if-eqz v11, :cond_5

    and-int/lit8 v2, v6, 0x7f

    const/4 v6, 0x0

    move v3, v2

    :goto_2
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_5

    shl-int/lit8 v11, v6, 0x8

    add-int/lit8 v4, v5, 0x1

    :try_start_4
    aget-byte v12, p1, v5

    and-int/lit16 v12, v12, 0xff

    add-int v6, v11, v12

    move v3, v2

    move v5, v4

    goto :goto_2

    const/4 v10, 0x1

    :cond_5
    move v4, v5

    aget-byte v11, p1, v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eq v11, v13, :cond_6

    move v9, v10

    goto/16 :goto_0

    const/4 v6, 0x4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v4, 0x1

    :try_start_5
    aget-byte v11, p1, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    and-int/lit16 v6, v11, 0xff

    and-int/lit16 v11, v6, 0x80

    if-eqz v11, :cond_7

    and-int/lit8 v2, v6, 0x7f

    const/4 v6, 0x0

    move v3, v2

    :goto_3
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_7

    shl-int/lit8 v11, v6, 0x8

    add-int/lit8 v4, v5, 0x1

    :try_start_6
    aget-byte v12, p1, v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    and-int/lit16 v12, v12, 0xff

    add-int v6, v11, v12

    move v3, v2

    move v5, v4

    goto :goto_3

    const/4 v9, 0x7

    :cond_7
    move v4, v5

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v4, 0x1

    :try_start_7
    aget-byte v11, p1, v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    and-int/lit16 v6, v11, 0xff

    and-int/lit16 v11, v6, 0x80

    if-eqz v11, :cond_8

    and-int/lit8 v2, v6, 0x7f

    const/4 v6, 0x0

    move v3, v2

    :goto_4
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_8

    shl-int/lit8 v11, v6, 0x8

    add-int/lit8 v4, v5, 0x1

    :try_start_8
    aget-byte v12, p1, v5

    and-int/lit16 v12, v12, 0xff

    add-int v6, v11, v12

    move v3, v2

    move v5, v4

    goto :goto_4

    const/4 v4, 0x2

    :cond_8
    move v4, v5

    new-array v11, v6, [B

    iput-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    iget-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    const/4 v12, 0x0

    invoke-static {p1, v4, v11, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v4, 0x1

    :try_start_9
    aget-byte v11, p1, v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    and-int/lit16 v6, v11, 0xff

    and-int/lit16 v11, v6, 0x80

    if-eqz v11, :cond_9

    and-int/lit8 v2, v6, 0x7f

    const/4 v6, 0x0

    move v3, v2

    :goto_5
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_9

    shl-int/lit8 v11, v6, 0x8

    add-int/lit8 v4, v5, 0x1

    :try_start_a
    aget-byte v12, p1, v5

    and-int/lit16 v12, v12, 0xff

    add-int v6, v11, v12

    move v3, v2

    move v5, v4

    goto :goto_5

    const/4 v11, 0x2

    :cond_9
    move v4, v5

    new-array v11, v6, [B

    iput-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    iget-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->pub_array:[B

    const/4 v12, 0x0

    invoke-static {p1, v4, v11, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v4, 0x1

    :try_start_b
    aget-byte v11, p1, v4
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    and-int/lit16 v6, v11, 0xff

    and-int/lit16 v11, v6, 0x80

    if-eqz v11, :cond_a

    and-int/lit8 v2, v6, 0x7f

    const/4 v6, 0x0

    move v3, v2

    :goto_6
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_a

    shl-int/lit8 v11, v6, 0x8

    add-int/lit8 v4, v5, 0x1

    :try_start_c
    aget-byte v12, p1, v5

    and-int/lit16 v12, v12, 0xff

    add-int v6, v11, v12

    move v3, v2

    move v5, v4

    goto :goto_6

    const/4 v8, 0x1

    :cond_a
    move v4, v5

    new-array v11, v6, [B

    iput-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    iget-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->prv_array:[B

    const/4 v12, 0x0

    invoke-static {p1, v4, v11, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v4, 0x1

    :try_start_d
    aget-byte v11, p1, v4
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    and-int/lit16 v6, v11, 0xff

    and-int/lit16 v11, v6, 0x80

    if-eqz v11, :cond_b

    and-int/lit8 v2, v6, 0x7f

    const/4 v6, 0x0

    move v3, v2

    :goto_7
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_b

    shl-int/lit8 v11, v6, 0x8

    add-int/lit8 v4, v5, 0x1

    :try_start_e
    aget-byte v12, p1, v5

    and-int/lit16 v12, v12, 0xff

    add-int v6, v11, v12

    move v3, v2

    move v5, v4

    goto :goto_7

    const/4 v7, 0x0

    :cond_b
    move v4, v5

    new-array v11, v6, [B

    iput-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    iget-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->p_array:[B

    const/4 v12, 0x0

    invoke-static {p1, v4, v11, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v4, 0x1

    :try_start_f
    aget-byte v11, p1, v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    and-int/lit16 v6, v11, 0xff

    and-int/lit16 v11, v6, 0x80

    if-eqz v11, :cond_c

    and-int/lit8 v2, v6, 0x7f

    const/4 v6, 0x0

    move v3, v2

    :goto_8
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_c

    shl-int/lit8 v11, v6, 0x8

    add-int/lit8 v4, v5, 0x1

    :try_start_10
    aget-byte v12, p1, v5

    and-int/lit16 v12, v12, 0xff

    add-int v6, v11, v12

    move v3, v2

    move v5, v4

    goto :goto_8

    const/4 v3, 0x4

    :cond_c
    move v4, v5

    new-array v11, v6, [B

    iput-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    iget-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->q_array:[B

    const/4 v12, 0x0

    invoke-static {p1, v4, v11, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v4, 0x1

    :try_start_11
    aget-byte v11, p1, v4
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    and-int/lit16 v6, v11, 0xff

    and-int/lit16 v11, v6, 0x80

    if-eqz v11, :cond_d

    and-int/lit8 v2, v6, 0x7f

    const/4 v6, 0x0

    move v3, v2

    :goto_9
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_d

    shl-int/lit8 v11, v6, 0x8

    add-int/lit8 v4, v5, 0x1

    :try_start_12
    aget-byte v12, p1, v5

    and-int/lit16 v12, v12, 0xff

    add-int v6, v11, v12

    move v3, v2

    move v5, v4

    goto :goto_9

    const/4 v3, 0x6

    :cond_d
    move v4, v5

    new-array v11, v6, [B

    iput-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    iget-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->ep_array:[B

    const/4 v12, 0x0

    invoke-static {p1, v4, v11, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v4, 0x1

    :try_start_13
    aget-byte v11, p1, v4
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    and-int/lit16 v6, v11, 0xff

    and-int/lit16 v11, v6, 0x80

    if-eqz v11, :cond_e

    and-int/lit8 v2, v6, 0x7f

    const/4 v6, 0x0

    move v3, v2

    :goto_a
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_e

    shl-int/lit8 v11, v6, 0x8

    add-int/lit8 v4, v5, 0x1

    :try_start_14
    aget-byte v12, p1, v5

    and-int/lit16 v12, v12, 0xff

    add-int v6, v11, v12

    move v3, v2

    move v5, v4

    goto :goto_a

    const/4 v13, 0x6

    :cond_e
    move v4, v5

    new-array v11, v6, [B

    iput-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    iget-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->eq_array:[B

    const/4 v12, 0x0

    invoke-static {p1, v4, v11, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v4, 0x1

    :try_start_15
    aget-byte v11, p1, v4
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2

    and-int/lit16 v6, v11, 0xff

    and-int/lit16 v11, v6, 0x80

    if-eqz v11, :cond_f

    and-int/lit8 v2, v6, 0x7f

    const/4 v6, 0x0

    move v3, v2

    :goto_b
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_f

    shl-int/lit8 v11, v6, 0x8

    add-int/lit8 v4, v5, 0x1

    :try_start_16
    aget-byte v12, p1, v5

    and-int/lit16 v12, v12, 0xff

    add-int v6, v11, v12

    move v3, v2

    move v5, v4

    goto :goto_b

    const/4 v1, 0x0

    :cond_f
    move v4, v5

    new-array v11, v6, [B

    iput-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    iget-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->c_array:[B

    const/4 v12, 0x0

    invoke-static {p1, v4, v11, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    iget-object v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    if-eqz v11, :cond_0

    new-instance v11, Ljava/math/BigInteger;

    iget-object v12, p0, Lcom/jcraft/jsch/KeyPairRSA;->n_array:[B

    invoke-direct {v11, v12}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    iput v11, p0, Lcom/jcraft/jsch/KeyPairRSA;->key_size:I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1

    goto/16 :goto_0

    const/4 v9, 0x6

    :catch_2
    move-exception v1

    move v4, v5

    goto/16 :goto_1

    const/4 v4, 0x0
.end method
