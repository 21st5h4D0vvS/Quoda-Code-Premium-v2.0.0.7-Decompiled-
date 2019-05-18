.class public Lcom/jcraft/jsch/jce/KeyPairGenRSA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/KeyPairGenRSA;


# instance fields
.field c:[B

.field d:[B

.field e:[B

.field ep:[B

.field eq:[B

.field n:[B

.field p:[B

.field q:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public getC()[B
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->c:[B

    return-object v0

    const/4 v1, 0x6
.end method

.method public getD()[B
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->d:[B

    return-object v0

    const/4 v1, 0x0
.end method

.method public getE()[B
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->e:[B

    return-object v0

    const/4 v1, 0x2
.end method

.method public getEP()[B
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->ep:[B

    return-object v0

    const/4 v1, 0x1
.end method

.method public getEQ()[B
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->eq:[B

    return-object v0

    const/4 v1, 0x7
.end method

.method public getN()[B
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->n:[B

    return-object v0

    const/4 v1, 0x5
.end method

.method public getP()[B
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->p:[B

    return-object v0

    const/4 v0, 0x2
.end method

.method public getQ()[B
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->q:[B

    return-object v0

    const/4 v1, 0x1
.end method

.method public init(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v5, 0x6

    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    const/4 v5, 0x6

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p1, v4}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    const/4 v5, 0x6

    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    const/4 v5, 0x3

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    move-object v4, v2

    const/4 v5, 0x0

    check-cast v4, Ljava/security/interfaces/RSAPrivateKey;

    invoke-interface {v4}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->d:[B

    const/4 v5, 0x0

    check-cast v3, Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v3}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->e:[B

    move-object v4, v2

    const/4 v5, 0x6

    check-cast v4, Ljava/security/interfaces/RSAPrivateKey;

    invoke-interface {v4}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->n:[B

    move-object v4, v2

    const/4 v5, 0x0

    check-cast v4, Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-interface {v4}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->c:[B

    move-object v4, v2

    const/4 v5, 0x4

    check-cast v4, Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-interface {v4}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->ep:[B

    move-object v4, v2

    const/4 v5, 0x7

    check-cast v4, Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-interface {v4}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->eq:[B

    move-object v4, v2

    const/4 v5, 0x5

    check-cast v4, Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-interface {v4}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->p:[B

    const/4 v5, 0x6

    check-cast v2, Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-interface {v2}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/jce/KeyPairGenRSA;->q:[B

    const/4 v5, 0x6

    nop

    return-void

    const/4 v3, 0x1
.end method
