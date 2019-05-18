.class public Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeyFactorySpi;
.super Ljava/security/KeyFactorySpi;
.source "McElieceKeyFactorySpi.java"


# static fields
.field public static final OID:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.1"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 1
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 329
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 1
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "tClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 335
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 341
    const/4 v0, 0x0

    return-object v0
.end method

.method public generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 25
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 125
    move-object/from16 v0, p1

    instance-of v2, v0, Lorg/spongycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;

    if-eqz v2, :cond_0

    .line 127
    new-instance v2, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;

    check-cast p1, Lorg/spongycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;-><init>(Lorg/spongycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;)V

    .line 190
    :goto_0
    return-object v2

    .line 129
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_0
    move-object/from16 v0, p1

    instance-of v2, v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v2, :cond_2

    .line 132
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual/range {p1 .. p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v17

    .line 139
    .local v17, "encKey":[B
    :try_start_0
    invoke-static/range {v17 .. v17}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 148
    .local v21, "pki":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    :try_start_1
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v19

    .line 151
    .local v19, "innerType":Lorg/spongycastle/asn1/ASN1Primitive;
    move-object/from16 v0, v19

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v22, v0

    .line 154
    .local v22, "privKey":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v20

    .line 158
    .local v20, "oidString":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v14

    .line 159
    .local v14, "bigN":Ljava/math/BigInteger;
    invoke-virtual {v14}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 162
    .local v4, "n":I
    const/4 v2, 0x2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v13

    .line 163
    .local v13, "bigK":Ljava/math/BigInteger;
    invoke-virtual {v13}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 166
    .local v5, "k":I
    const/4 v2, 0x3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    .line 169
    .local v6, "encFieldPoly":[B
    const/4 v2, 0x4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    .line 173
    .local v7, "encGoppaPoly":[B
    const/4 v2, 0x5

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    .line 175
    .local v8, "encSInv":[B
    const/4 v2, 0x6

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v9

    .line 177
    .local v9, "encP1":[B
    const/4 v2, 0x7

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v10

    .line 180
    .local v10, "encP2":[B
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v11

    .line 183
    .local v11, "encH":[B
    const/16 v2, 0x9

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v23

    check-cast v23, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 184
    .local v23, "qSeq":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v12, v2, [[B

    .line 185
    .local v12, "encQInv":[[B
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_1

    .line 187
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    aput-object v2, v12, v18
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 185
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 141
    .end local v4    # "n":I
    .end local v5    # "k":I
    .end local v6    # "encFieldPoly":[B
    .end local v7    # "encGoppaPoly":[B
    .end local v8    # "encSInv":[B
    .end local v9    # "encP1":[B
    .end local v10    # "encP2":[B
    .end local v11    # "encH":[B
    .end local v12    # "encQInv":[[B
    .end local v13    # "bigK":Ljava/math/BigInteger;
    .end local v14    # "bigN":Ljava/math/BigInteger;
    .end local v18    # "i":I
    .end local v19    # "innerType":Lorg/spongycastle/asn1/ASN1Primitive;
    .end local v20    # "oidString":Ljava/lang/String;
    .end local v21    # "pki":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v22    # "privKey":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v23    # "qSeq":Lorg/spongycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v16

    .line 143
    .local v16, "e":Ljava/io/IOException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to decode PKCS8EncodedKeySpec: "

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    .end local v16    # "e":Ljava/io/IOException;
    .restart local v4    # "n":I
    .restart local v5    # "k":I
    .restart local v6    # "encFieldPoly":[B
    .restart local v7    # "encGoppaPoly":[B
    .restart local v8    # "encSInv":[B
    .restart local v9    # "encP1":[B
    .restart local v10    # "encP2":[B
    .restart local v11    # "encH":[B
    .restart local v12    # "encQInv":[[B
    .restart local v13    # "bigK":Ljava/math/BigInteger;
    .restart local v14    # "bigN":Ljava/math/BigInteger;
    .restart local v18    # "i":I
    .restart local v19    # "innerType":Lorg/spongycastle/asn1/ASN1Primitive;
    .restart local v20    # "oidString":Ljava/lang/String;
    .restart local v21    # "pki":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .restart local v22    # "privKey":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v23    # "qSeq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_1
    :try_start_2
    new-instance v24, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;

    new-instance v2, Lorg/spongycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;

    const-string v3, "1.3.6.1.4.1.8301.3.1.3.4.1"

    invoke-direct/range {v2 .. v12}, Lorg/spongycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;-><init>(Ljava/lang/String;II[B[B[B[B[B[B[[B)V

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;-><init>(Lorg/spongycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v2, v24

    goto/16 :goto_0

    .line 195
    .end local v4    # "n":I
    .end local v5    # "k":I
    .end local v6    # "encFieldPoly":[B
    .end local v7    # "encGoppaPoly":[B
    .end local v8    # "encSInv":[B
    .end local v9    # "encP1":[B
    .end local v10    # "encP2":[B
    .end local v11    # "encH":[B
    .end local v12    # "encQInv":[[B
    .end local v13    # "bigK":Ljava/math/BigInteger;
    .end local v14    # "bigN":Ljava/math/BigInteger;
    .end local v18    # "i":I
    .end local v19    # "innerType":Lorg/spongycastle/asn1/ASN1Primitive;
    .end local v20    # "oidString":Ljava/lang/String;
    .end local v22    # "privKey":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v23    # "qSeq":Lorg/spongycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v15

    .line 197
    .local v15, "cce":Ljava/io/IOException;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "Unable to decode PKCS8EncodedKeySpec."

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    .end local v15    # "cce":Ljava/io/IOException;
    .end local v17    # "encKey":[B
    .end local v21    # "pki":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_2
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unsupported key specification: "

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v24, "."

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public generatePrivate(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;
    .locals 14
    .param p1, "pki"    # Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 310
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->parsePrivateKey()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v12

    .line 311
    .local v12, "innerType":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-static {v12}, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;

    move-result-object v13

    .line 312
    .local v13, "key":Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;
    new-instance v0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;

    invoke-virtual {v13}, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->getOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13}, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->getN()I

    move-result v2

    invoke-virtual {v13}, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->getK()I

    move-result v3

    invoke-virtual {v13}, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->getField()Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    move-result-object v4

    invoke-virtual {v13}, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->getGoppaPoly()Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v5

    invoke-virtual {v13}, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->getSInv()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v6

    invoke-virtual {v13}, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->getP1()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v7

    invoke-virtual {v13}, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->getP2()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v8

    invoke-virtual {v13}, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->getH()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v9

    invoke-virtual {v13}, Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;->getQInv()[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;-><init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 314
    .end local v12    # "innerType":Lorg/spongycastle/asn1/ASN1Primitive;
    .end local v13    # "key":Lorg/spongycastle/pqc/asn1/McEliecePrivateKey;
    :catch_0
    move-exception v11

    .line 316
    .local v11, "cce":Ljava/io/IOException;
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "Unable to decode PKCS8EncodedKeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 16
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 55
    move-object/from16 v0, p1

    instance-of v13, v0, Lorg/spongycastle/pqc/jcajce/spec/McEliecePublicKeySpec;

    if-eqz v13, :cond_0

    .line 57
    new-instance v13, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;

    check-cast p1, Lorg/spongycastle/pqc/jcajce/spec/McEliecePublicKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;-><init>(Lorg/spongycastle/pqc/jcajce/spec/McEliecePublicKeySpec;)V

    .line 97
    :goto_0
    return-object v13

    .line 59
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_0
    move-object/from16 v0, p1

    instance-of v13, v0, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v13, :cond_1

    .line 62
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual/range {p1 .. p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v5

    .line 68
    .local v5, "encKey":[B
    :try_start_0
    invoke-static {v5}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v13

    invoke-static {v13}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 78
    .local v10, "pki":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :try_start_1
    invoke-virtual {v10}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v6

    .line 79
    .local v6, "innerType":Lorg/spongycastle/asn1/ASN1Primitive;
    move-object v0, v6

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v11, v0

    .line 82
    .local v11, "publicKey":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v13}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v9

    .line 86
    .local v9, "oidString":Ljava/lang/String;
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v13}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    .line 87
    .local v1, "bigN":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    .line 90
    .local v8, "n":I
    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v13}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    .line 91
    .local v2, "bigT":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v12

    .line 94
    .local v12, "t":I
    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v13}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v7

    .line 97
    .local v7, "matrixG":[B
    new-instance v13, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;

    new-instance v14, Lorg/spongycastle/pqc/jcajce/spec/McEliecePublicKeySpec;

    const-string v15, "1.3.6.1.4.1.8301.3.1.3.4.1"

    invoke-direct {v14, v15, v12, v8, v7}, Lorg/spongycastle/pqc/jcajce/spec/McEliecePublicKeySpec;-><init>(Ljava/lang/String;II[B)V

    invoke-direct {v13, v14}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;-><init>(Lorg/spongycastle/pqc/jcajce/spec/McEliecePublicKeySpec;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 100
    .end local v1    # "bigN":Ljava/math/BigInteger;
    .end local v2    # "bigT":Ljava/math/BigInteger;
    .end local v6    # "innerType":Lorg/spongycastle/asn1/ASN1Primitive;
    .end local v7    # "matrixG":[B
    .end local v8    # "n":I
    .end local v9    # "oidString":Ljava/lang/String;
    .end local v11    # "publicKey":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v12    # "t":I
    :catch_0
    move-exception v3

    .line 102
    .local v3, "cce":Ljava/io/IOException;
    new-instance v13, Ljava/security/spec/InvalidKeySpecException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to decode X509EncodedKeySpec: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 70
    .end local v3    # "cce":Ljava/io/IOException;
    .end local v10    # "pki":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_1
    move-exception v4

    .line 72
    .local v4, "e":Ljava/io/IOException;
    new-instance v13, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 108
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "encKey":[B
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1
    new-instance v13, Ljava/security/spec/InvalidKeySpecException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unsupported key specification: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method public generatePublic(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;
    .locals 8
    .param p1, "pki"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 294
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->parsePublicKey()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 295
    .local v1, "innerType":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-static {v1}, Lorg/spongycastle/pqc/asn1/McEliecePublicKey;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/pqc/asn1/McEliecePublicKey;

    move-result-object v2

    .line 296
    .local v2, "key":Lorg/spongycastle/pqc/asn1/McEliecePublicKey;
    new-instance v3, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/asn1/McEliecePublicKey;->getOID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/spongycastle/pqc/asn1/McEliecePublicKey;->getN()I

    move-result v5

    invoke-virtual {v2}, Lorg/spongycastle/pqc/asn1/McEliecePublicKey;->getT()I

    move-result v6

    invoke-virtual {v2}, Lorg/spongycastle/pqc/asn1/McEliecePublicKey;->getG()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;-><init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 298
    .end local v1    # "innerType":Lorg/spongycastle/asn1/ASN1Primitive;
    .end local v2    # "key":Lorg/spongycastle/pqc/asn1/McEliecePublicKey;
    :catch_0
    move-exception v0

    .line 300
    .local v0, "cce":Ljava/io/IOException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Unable to decode X509EncodedKeySpec"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 13
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "keySpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 229
    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;

    if-eqz v0, :cond_1

    .line 231
    const-class v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 253
    :goto_0
    return-object v0

    .line 235
    :cond_0
    const-class v0, Lorg/spongycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v11, p1

    .line 237
    check-cast v11, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;

    .line 238
    .local v11, "privKey":Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;
    new-instance v0, Lorg/spongycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.1"

    invoke-virtual {v11}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getN()I

    move-result v2

    invoke-virtual {v11}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getK()I

    move-result v3

    invoke-virtual {v11}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getField()Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    move-result-object v4

    invoke-virtual {v11}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getGoppaPoly()Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v5

    invoke-virtual {v11}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getSInv()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v6

    invoke-virtual {v11}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getP1()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v7

    invoke-virtual {v11}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getP2()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v8

    invoke-virtual {v11}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getH()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v9

    invoke-virtual {v11}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;->getQInv()[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lorg/spongycastle/pqc/jcajce/spec/McEliecePrivateKeySpec;-><init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)V

    goto :goto_0

    .line 244
    .end local v11    # "privKey":Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;
    :cond_1
    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;

    if-eqz v0, :cond_3

    .line 246
    const-class v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    goto :goto_0

    .line 250
    :cond_2
    const-class v0, Lorg/spongycastle/pqc/jcajce/spec/McEliecePublicKeySpec;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v12, p1

    .line 252
    check-cast v12, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;

    .line 253
    .local v12, "pubKey":Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;
    new-instance v0, Lorg/spongycastle/pqc/jcajce/spec/McEliecePublicKeySpec;

    const-string v1, "1.3.6.1.4.1.8301.3.1.3.4.1"

    invoke-virtual {v12}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->getN()I

    move-result v2

    invoke-virtual {v12}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->getT()I

    move-result v3

    invoke-virtual {v12}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;->getG()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/pqc/jcajce/spec/McEliecePublicKeySpec;-><init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;)V

    goto :goto_0

    .line 259
    .end local v12    # "pubKey":Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;
    :cond_3
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_4
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key specification: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public translateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 279
    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePrivateKey;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/spongycastle/pqc/jcajce/provider/mceliece/BCMcEliecePublicKey;

    if-eqz v0, :cond_1

    .line 282
    :cond_0
    return-object p1

    .line 284
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Unsupported key type."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
