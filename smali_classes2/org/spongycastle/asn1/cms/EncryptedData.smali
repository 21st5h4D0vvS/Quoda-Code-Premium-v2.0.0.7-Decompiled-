.class public Lorg/spongycastle/asn1/cms/EncryptedData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "EncryptedData.java"


# instance fields
.field private encryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

.field private unprotectedAttrs:Lorg/spongycastle/asn1/ASN1Set;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedData;->encryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    .line 74
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 76
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedData;->unprotectedAttrs:Lorg/spongycastle/asn1/ASN1Set;

    .line 78
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/EncryptedContentInfo;)V
    .locals 1
    .param p1, "encInfo"    # Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/asn1/cms/EncryptedData;-><init>(Lorg/spongycastle/asn1/cms/EncryptedContentInfo;Lorg/spongycastle/asn1/ASN1Set;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/EncryptedContentInfo;Lorg/spongycastle/asn1/ASN1Set;)V
    .locals 3
    .param p1, "encInfo"    # Lorg/spongycastle/asn1/cms/EncryptedContentInfo;
    .param p2, "unprotectedAttrs"    # Lorg/spongycastle/asn1/ASN1Set;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 64
    new-instance v2, Lorg/spongycastle/asn1/ASN1Integer;

    if-nez p2, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-direct {v2, v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v2, p0, Lorg/spongycastle/asn1/cms/EncryptedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 65
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/EncryptedData;->encryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    .line 66
    iput-object p2, p0, Lorg/spongycastle/asn1/cms/EncryptedData;->unprotectedAttrs:Lorg/spongycastle/asn1/ASN1Set;

    .line 67
    return-void

    .line 64
    :cond_0
    const-wide/16 v0, 0x2

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/EncryptedData;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 44
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/EncryptedData;

    if-eqz v0, :cond_0

    .line 46
    check-cast p0, Lorg/spongycastle/asn1/cms/EncryptedData;

    .line 54
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 49
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 51
    new-instance v0, Lorg/spongycastle/asn1/cms/EncryptedData;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cms/EncryptedData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 54
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEncryptedContentInfo()Lorg/spongycastle/asn1/cms/EncryptedContentInfo;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedData;->encryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    return-object v0
.end method

.method public getUnprotectedAttrs()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedData;->unprotectedAttrs:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    .line 100
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 102
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/EncryptedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 103
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/EncryptedData;->encryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 104
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/EncryptedData;->unprotectedAttrs:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_0

    .line 106
    new-instance v1, Lorg/spongycastle/asn1/BERTaggedObject;

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/spongycastle/asn1/cms/EncryptedData;->unprotectedAttrs:Lorg/spongycastle/asn1/ASN1Set;

    invoke-direct {v1, v2, v3, v4}, Lorg/spongycastle/asn1/BERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 109
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
