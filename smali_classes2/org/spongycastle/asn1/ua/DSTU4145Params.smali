.class public Lorg/spongycastle/asn1/ua/DSTU4145Params;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "DSTU4145Params.java"


# static fields
.field private static final DEFAULT_DKE:[B


# instance fields
.field private dke:[B

.field private ecbinary:Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;

.field private namedCurve:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    return-void

    :array_0
    .array-data 1
        -0x57t
        -0x2at
        -0x15t
        0x45t
        -0xft
        0x3ct
        0x70t
        -0x7et
        -0x80t
        -0x3ct
        -0x6at
        0x7bt
        0x23t
        0x1ft
        0x5et
        -0x53t
        -0xat
        0x58t
        -0x15t
        -0x5ct
        -0x40t
        0x37t
        0x29t
        0x1dt
        0x38t
        -0x27t
        0x6bt
        -0x10t
        0x25t
        -0x36t
        0x4et
        0x17t
        -0x8t
        -0x17t
        0x72t
        0xdt
        -0x3at
        0x15t
        -0x4ct
        0x3at
        0x28t
        -0x69t
        0x5ft
        0xbt
        -0x3ft
        -0x22t
        -0x5dt
        0x64t
        0x38t
        -0x4bt
        0x64t
        -0x16t
        0x2ct
        0x17t
        -0x61t
        -0x30t
        0x12t
        0x3et
        0x6dt
        -0x48t
        -0x6t
        -0x3bt
        0x79t
        0x4t
    .end array-data
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "namedCurve"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 28
    sget-object v0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    iput-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->dke:[B

    .line 32
    iput-object p1, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;)V
    .locals 1
    .param p1, "ecbinary"    # Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 28
    sget-object v0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    iput-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->dke:[B

    .line 37
    iput-object p1, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->ecbinary:Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;

    .line 38
    return-void
.end method

.method public static getDefaultDKE()[B
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ua/DSTU4145Params;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 67
    instance-of v2, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;

    if-eqz v2, :cond_0

    .line 69
    check-cast p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;

    .line 95
    .end local p0    # "obj":Ljava/lang/Object;
    .local v0, "params":Lorg/spongycastle/asn1/ua/DSTU4145Params;
    .local v1, "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    :goto_0
    return-object p0

    .line 72
    .end local v0    # "params":Lorg/spongycastle/asn1/ua/DSTU4145Params;
    .end local v1    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_3

    .line 74
    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    .line 77
    .restart local v1    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v2, :cond_1

    .line 79
    new-instance v0, Lorg/spongycastle/asn1/ua/DSTU4145Params;

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/ua/DSTU4145Params;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V

    .line 86
    .restart local v0    # "params":Lorg/spongycastle/asn1/ua/DSTU4145Params;
    :goto_1
    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 88
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    iput-object v2, v0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->dke:[B

    .line 89
    iget-object v2, v0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->dke:[B

    array-length v2, v2

    sget-object v3, Lorg/spongycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    array-length v3, v3

    if-eq v2, v3, :cond_2

    .line 91
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "object parse error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    .end local v0    # "params":Lorg/spongycastle/asn1/ua/DSTU4145Params;
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/ua/DSTU4145Params;

    invoke-virtual {v1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/ua/DSTU4145Params;-><init>(Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;)V

    .restart local v0    # "params":Lorg/spongycastle/asn1/ua/DSTU4145Params;
    goto :goto_1

    :cond_2
    move-object p0, v0

    .line 95
    goto :goto_0

    .line 98
    .end local v0    # "params":Lorg/spongycastle/asn1/ua/DSTU4145Params;
    .end local v1    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "object parse error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getDKE()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->dke:[B

    return-object v0
.end method

.method public getECBinary()Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->ecbinary:Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;

    return-object v0
.end method

.method public getNamedCurve()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public isNamedCurve()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 105
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->namedCurve:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 114
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->dke:[B

    sget-object v2, Lorg/spongycastle/asn1/ua/DSTU4145Params;->DEFAULT_DKE:[B

    invoke-static {v1, v2}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->dke:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 119
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1

    .line 111
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/ua/DSTU4145Params;->ecbinary:Lorg/spongycastle/asn1/ua/DSTU4145ECBinary;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0
.end method
