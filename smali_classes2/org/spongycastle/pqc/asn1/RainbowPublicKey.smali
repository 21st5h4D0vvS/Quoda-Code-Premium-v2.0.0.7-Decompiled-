.class public Lorg/spongycastle/pqc/asn1/RainbowPublicKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "RainbowPublicKey.java"


# instance fields
.field private coeffQuadratic:[[B

.field private coeffScalar:[B

.field private coeffSingular:[[B

.field private docLength:Lorg/spongycastle/asn1/ASN1Integer;

.field private oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 4
    .param p1, "docLength"    # I
    .param p2, "coeffQuadratic"    # [[S
    .param p3, "coeffSingular"    # [[S
    .param p4, "coeffScalar"    # [S

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 76
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 77
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    int-to-long v2, p1

    invoke-direct {v0, v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->docLength:Lorg/spongycastle/asn1/ASN1Integer;

    .line 78
    invoke-static {p2}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[S)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->coeffQuadratic:[[B

    .line 79
    invoke-static {p3}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[S)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->coeffSingular:[[B

    .line 80
    invoke-static {p4}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([S)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->coeffScalar:[B

    .line 81
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 8
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v7, 0x0

    .line 43
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 45
    invoke-virtual {p1, v7}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    instance-of v5, v5, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v5, :cond_0

    .line 47
    invoke-virtual {p1, v7}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 54
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->docLength:Lorg/spongycastle/asn1/ASN1Integer;

    .line 56
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 57
    .local v0, "asnCoeffQuad":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    new-array v5, v5, [[B

    iput-object v5, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->coeffQuadratic:[[B

    .line 58
    const/4 v3, 0x0

    .local v3, "quadSize":I
    :goto_1
    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 60
    iget-object v5, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->coeffQuadratic:[[B

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    aput-object v6, v5, v3

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 51
    .end local v0    # "asnCoeffQuad":Lorg/spongycastle/asn1/ASN1Sequence;
    .end local v3    # "quadSize":I
    :cond_0
    invoke-virtual {p1, v7}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 63
    .restart local v0    # "asnCoeffQuad":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local v3    # "quadSize":I
    :cond_1
    const/4 v5, 0x3

    invoke-virtual {p1, v5}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 64
    .local v2, "asnCoeffSing":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    new-array v5, v5, [[B

    iput-object v5, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->coeffSingular:[[B

    .line 65
    const/4 v4, 0x0

    .local v4, "singSize":I
    :goto_2
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 67
    iget-object v5, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->coeffSingular:[[B

    invoke-virtual {v2, v4}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    aput-object v6, v5, v4

    .line 65
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 70
    :cond_2
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 71
    .local v1, "asnCoeffScalar":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v1, v7}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-virtual {v5}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->coeffScalar:[B

    .line 72
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/pqc/asn1/RainbowPublicKey;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 85
    instance-of v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;

    if-eqz v0, :cond_0

    .line 87
    check-cast p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;

    .line 94
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 89
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 91
    new-instance v0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 94
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCoeffQuadratic()[[S
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->coeffQuadratic:[[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public getCoeffScalar()[S
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->coeffScalar:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([B)[S

    move-result-object v0

    return-object v0
.end method

.method public getCoeffSingular()[[S
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->coeffSingular:[[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->convertArray([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public getDocLength()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->docLength:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 7

    .prologue
    .line 136
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 139
    .local v4, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v5, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->version:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v5, :cond_0

    .line 141
    iget-object v5, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 149
    :goto_0
    iget-object v5, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->docLength:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 152
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 153
    .local v0, "asnCoeffQuad":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v5, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->coeffQuadratic:[[B

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 155
    new-instance v5, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v6, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->coeffQuadratic:[[B

    aget-object v6, v6, v3

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 145
    .end local v0    # "asnCoeffQuad":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v3    # "i":I
    :cond_0
    iget-object v5, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->oid:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 157
    .restart local v0    # "asnCoeffQuad":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .restart local v3    # "i":I
    :cond_1
    new-instance v5, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 160
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 161
    .local v2, "asnCoeffSing":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->coeffSingular:[[B

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 163
    new-instance v5, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v6, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->coeffSingular:[[B

    aget-object v6, v6, v3

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 165
    :cond_2
    new-instance v5, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v5, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 168
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 169
    .local v1, "asnCoeffScalar":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v5, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v6, p0, Lorg/spongycastle/pqc/asn1/RainbowPublicKey;->coeffScalar:[B

    invoke-direct {v5, v6}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 170
    new-instance v5, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 173
    new-instance v5, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v5, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v5
.end method
