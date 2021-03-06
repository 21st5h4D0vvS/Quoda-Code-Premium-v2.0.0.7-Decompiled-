.class public Lcom/jcraft/jsch/jce/DH;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/DH;


# instance fields
.field K:Ljava/math/BigInteger;

.field K_array:[B

.field e:Ljava/math/BigInteger;

.field e_array:[B

.field f:Ljava/math/BigInteger;

.field g:Ljava/math/BigInteger;

.field private myKeyAgree:Ljavax/crypto/KeyAgreement;

.field private myKpairGen:Ljava/security/KeyPairGenerator;

.field p:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public getE()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/jcraft/jsch/jce/DH;->e:Ljava/math/BigInteger;

    if-nez v3, :cond_0

    const/4 v5, 0x7

    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v3, p0, Lcom/jcraft/jsch/jce/DH;->p:Ljava/math/BigInteger;

    iget-object v4, p0, Lcom/jcraft/jsch/jce/DH;->g:Ljava/math/BigInteger;

    invoke-direct {v0, v3, v4}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v5, 0x5

    iget-object v3, p0, Lcom/jcraft/jsch/jce/DH;->myKpairGen:Ljava/security/KeyPairGenerator;

    invoke-virtual {v3, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/jcraft/jsch/jce/DH;->myKpairGen:Ljava/security/KeyPairGenerator;

    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    const/4 v5, 0x6

    iget-object v3, p0, Lcom/jcraft/jsch/jce/DH;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljavax/crypto/interfaces/DHPublicKey;

    check-cast v3, Ljavax/crypto/interfaces/DHPublicKey;

    invoke-interface {v3}, Ljavax/crypto/interfaces/DHPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/jce/DH;->e:Ljava/math/BigInteger;

    const/4 v5, 0x6

    iget-object v3, p0, Lcom/jcraft/jsch/jce/DH;->e:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/jcraft/jsch/jce/DH;->e_array:[B

    const/4 v5, 0x7

    :cond_0
    iget-object v3, p0, Lcom/jcraft/jsch/jce/DH;->e_array:[B

    return-object v3

    const/4 v0, 0x0
.end method

.method public getK()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v7, 0x3

    iget-object v4, p0, Lcom/jcraft/jsch/jce/DH;->K:Ljava/math/BigInteger;

    if-nez v4, :cond_0

    const/4 v7, 0x6

    const-string v4, "DH"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    const/4 v7, 0x4

    new-instance v0, Ljavax/crypto/spec/DHPublicKeySpec;

    iget-object v4, p0, Lcom/jcraft/jsch/jce/DH;->f:Ljava/math/BigInteger;

    iget-object v5, p0, Lcom/jcraft/jsch/jce/DH;->p:Ljava/math/BigInteger;

    iget-object v6, p0, Lcom/jcraft/jsch/jce/DH;->g:Ljava/math/BigInteger;

    invoke-direct {v0, v4, v5, v6}, Ljavax/crypto/spec/DHPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v7, 0x0

    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    const/4 v7, 0x2

    iget-object v4, p0, Lcom/jcraft/jsch/jce/DH;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    const/4 v7, 0x3

    iget-object v4, p0, Lcom/jcraft/jsch/jce/DH;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    invoke-virtual {v4}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object v2

    const/4 v7, 0x6

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v2}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v4, p0, Lcom/jcraft/jsch/jce/DH;->K:Ljava/math/BigInteger;

    const/4 v7, 0x6

    iget-object v4, p0, Lcom/jcraft/jsch/jce/DH;->K:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/jcraft/jsch/jce/DH;->K_array:[B

    const/4 v7, 0x6

    iput-object v2, p0, Lcom/jcraft/jsch/jce/DH;->K_array:[B

    const/4 v7, 0x7

    :cond_0
    iget-object v4, p0, Lcom/jcraft/jsch/jce/DH;->K_array:[B

    return-object v4

    const/4 v1, 0x5
.end method

.method public init()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v1, 0x3

    const-string v0, "DH"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->myKpairGen:Ljava/security/KeyPairGenerator;

    const/4 v1, 0x7

    const-string v0, "DH"

    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/DH;->myKeyAgree:Ljavax/crypto/KeyAgreement;

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x1
.end method

.method setF(Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/jcraft/jsch/jce/DH;->f:Ljava/math/BigInteger;

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public setF([B)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x7

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jce/DH;->setF(Ljava/math/BigInteger;)V

    nop

    return-void

    const/4 v0, 0x6
.end method

.method setG(Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/jcraft/jsch/jce/DH;->g:Ljava/math/BigInteger;

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setG([B)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x3

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jce/DH;->setG(Ljava/math/BigInteger;)V

    nop

    return-void

    const/4 v1, 0x2
.end method

.method setP(Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/jcraft/jsch/jce/DH;->p:Ljava/math/BigInteger;

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setP([B)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/jce/DH;->setP(Ljava/math/BigInteger;)V

    nop

    return-void

    const/4 v0, 0x6
.end method
