.class public Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "SigPolicyQualifierInfo.java"


# instance fields
.field private sigPolicyQualifierId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private sigQualifier:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "sigPolicyQualifierId"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "sigQualifier"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;->sigPolicyQualifierId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    iput-object p2, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;->sigQualifier:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 23
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;->sigPolicyQualifierId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;->sigQualifier:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 30
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 35
    instance-of v0, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;

    if-eqz v0, :cond_0

    .line 37
    check-cast p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;

    .line 44
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 39
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 41
    new-instance v0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 44
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getSigPolicyQualifierId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;->sigPolicyQualifierId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSigQualifier()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;->sigQualifier:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 70
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;->sigPolicyQualifierId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 71
    iget-object v1, p0, Lorg/spongycastle/asn1/esf/SigPolicyQualifierInfo;->sigQualifier:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 73
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
