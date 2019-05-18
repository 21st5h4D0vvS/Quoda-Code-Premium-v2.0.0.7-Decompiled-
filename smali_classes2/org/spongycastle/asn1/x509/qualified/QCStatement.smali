.class public Lorg/spongycastle/asn1/x509/qualified/QCStatement;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "QCStatement.java"

# interfaces
.implements Lorg/spongycastle/asn1/x509/qualified/ETSIQCObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/qualified/RFC3739QCObjectIdentifiers;


# instance fields
.field qcStatementId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field qcStatementInfo:Lorg/spongycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "qcStatementId"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->qcStatementId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->qcStatementInfo:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 0
    .param p1, "qcStatementId"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "qcStatementInfo"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->qcStatementId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 70
    iput-object p2, p0, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->qcStatementInfo:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 71
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 50
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->qcStatementId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Encodable;

    iput-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->qcStatementInfo:Lorg/spongycastle/asn1/ASN1Encodable;

    .line 56
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/qualified/QCStatement;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 32
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/qualified/QCStatement;

    if-eqz v0, :cond_0

    .line 34
    check-cast p0, Lorg/spongycastle/asn1/x509/qualified/QCStatement;

    .line 41
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 36
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 38
    new-instance v0, Lorg/spongycastle/asn1/x509/qualified/QCStatement;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/qualified/QCStatement;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 41
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getStatementId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->qcStatementId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getStatementInfo()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->qcStatementInfo:Lorg/spongycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 86
    .local v0, "seq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->qcStatementId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 88
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->qcStatementInfo:Lorg/spongycastle/asn1/ASN1Encodable;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/qualified/QCStatement;->qcStatementInfo:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 93
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
