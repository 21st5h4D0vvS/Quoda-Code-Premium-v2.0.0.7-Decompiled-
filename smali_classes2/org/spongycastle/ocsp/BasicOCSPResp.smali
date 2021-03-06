.class public Lorg/spongycastle/ocsp/BasicOCSPResp;
.super Ljava/lang/Object;
.source "BasicOCSPResp.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# instance fields
.field chain:[Ljava/security/cert/X509Certificate;

.field data:Lorg/spongycastle/asn1/ocsp/ResponseData;

.field resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;)V
    .locals 1
    .param p1, "resp"    # Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/ocsp/BasicOCSPResp;->chain:[Ljava/security/cert/X509Certificate;

    .line 57
    iput-object p1, p0, Lorg/spongycastle/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    .line 58
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/spongycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/ocsp/BasicOCSPResp;->data:Lorg/spongycastle/asn1/ocsp/ResponseData;

    .line 59
    return-void
.end method

.method private getCertList(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v2, "certs":Ljava/util/List;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 225
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 230
    .local v0, "aOut":Lorg/spongycastle/asn1/ASN1OutputStream;
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/ocsp/OCSPUtil;->createX509CertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 240
    .local v3, "cf":Ljava/security/cert/CertificateFactory;
    iget-object v7, p0, Lorg/spongycastle/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getCerts()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v6

    .line 242
    .local v6, "s":Lorg/spongycastle/asn1/ASN1Sequence;
    if-eqz v6, :cond_0

    .line 244
    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .line 246
    .local v4, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 250
    :try_start_1
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 252
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 266
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    .line 232
    .end local v3    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v4    # "e":Ljava/util/Enumeration;
    .end local v6    # "s":Lorg/spongycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v5

    .line 234
    .local v5, "ex":Ljava/security/cert/CertificateException;
    new-instance v7, Lorg/spongycastle/ocsp/OCSPException;

    const-string v8, "can\'t get certificate factory."

    invoke-direct {v7, v8, v5}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 255
    .end local v5    # "ex":Ljava/security/cert/CertificateException;
    .restart local v3    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v4    # "e":Ljava/util/Enumeration;
    .restart local v6    # "s":Lorg/spongycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v5

    .line 257
    .local v5, "ex":Ljava/io/IOException;
    new-instance v7, Lorg/spongycastle/ocsp/OCSPException;

    const-string v8, "can\'t re-encode certificate!"

    invoke-direct {v7, v8, v5}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 260
    .end local v5    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 262
    .local v5, "ex":Ljava/security/cert/CertificateException;
    new-instance v7, Lorg/spongycastle/ocsp/OCSPException;

    const-string v8, "can\'t re-encode certificate!"

    invoke-direct {v7, v8, v5}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 270
    .end local v4    # "e":Ljava/util/Enumeration;
    .end local v5    # "ex":Ljava/security/cert/CertificateException;
    :cond_0
    return-object v2
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .locals 6
    .param p1, "critical"    # Z

    .prologue
    .line 138
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 139
    .local v4, "set":Ljava/util/Set;
    invoke-virtual {p0}, Lorg/spongycastle/ocsp/BasicOCSPResp;->getResponseExtensions()Lorg/spongycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 141
    .local v2, "extensions":Lorg/spongycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_1

    .line 143
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 145
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 147
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 148
    .local v3, "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/x509/X509Extensions;->getExtension(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 150
    .local v1, "ext":Lorg/spongycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-ne p1, v5, :cond_0

    .line 152
    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 157
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "ext":Lorg/spongycastle/asn1/x509/X509Extension;
    .end local v3    # "oid":Lorg/spongycastle/asn1/DERObjectIdentifier;
    :cond_1
    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 347
    if-ne p1, p0, :cond_0

    .line 349
    const/4 v1, 0x1

    .line 359
    :goto_0
    return v1

    .line 352
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/ocsp/BasicOCSPResp;

    if-nez v1, :cond_1

    .line 354
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 357
    check-cast v0, Lorg/spongycastle/ocsp/BasicOCSPResp;

    .line 359
    .local v0, "r":Lorg/spongycastle/ocsp/BasicOCSPResp;
    iget-object v1, p0, Lorg/spongycastle/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    iget-object v2, v0, Lorg/spongycastle/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getCertificates(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertStore;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lorg/spongycastle/ocsp/OCSPException;
        }
    .end annotation

    .prologue
    .line 298
    :try_start_0
    new-instance v1, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {p0, p2}, Lorg/spongycastle/ocsp/BasicOCSPResp;->getCertList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    .line 299
    .local v1, "params":Ljava/security/cert/CertStoreParameters;
    invoke-static {p1, v1, p2}, Lorg/spongycastle/ocsp/OCSPUtil;->createCertStoreInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/lang/String;)Ljava/security/cert/CertStore;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 301
    .end local v1    # "params":Ljava/security/cert/CertStoreParameters;
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Lorg/spongycastle/ocsp/OCSPException;

    const-string v3, "can\'t setup the CertStore"

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public getCerts(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lorg/spongycastle/ocsp/BasicOCSPResp;->getCertList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 279
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    check-cast v1, [Ljava/security/cert/X509Certificate;

    return-object v1
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/ocsp/BasicOCSPResp;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lorg/spongycastle/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 6
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/spongycastle/ocsp/BasicOCSPResp;->getResponseExtensions()Lorg/spongycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 174
    .local v2, "exts":Lorg/spongycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_0

    .line 176
    new-instance v3, Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-direct {v3, p1}, Lorg/spongycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/x509/X509Extensions;->getExtension(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 178
    .local v1, "ext":Lorg/spongycastle/asn1/x509/X509Extension;
    if-eqz v1, :cond_0

    .line 182
    :try_start_0
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/X509Extension;->getValue()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v3

    const-string v4, "DER"

    invoke-virtual {v3, v4}, Lorg/spongycastle/asn1/ASN1OctetString;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 191
    .end local v1    # "ext":Lorg/spongycastle/asn1/x509/X509Extension;
    :goto_0
    return-object v3

    .line 184
    .restart local v1    # "ext":Lorg/spongycastle/asn1/x509/X509Extension;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error encoding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ext":Lorg/spongycastle/asn1/x509/X509Extension;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/ocsp/BasicOCSPResp;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getProducedAt()Ljava/util/Date;
    .locals 4

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/ocsp/BasicOCSPResp;->data:Lorg/spongycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getProducedAt()Lorg/spongycastle/asn1/ASN1GeneralizedTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ParseException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getResponderId()Lorg/spongycastle/ocsp/RespID;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lorg/spongycastle/ocsp/RespID;

    iget-object v1, p0, Lorg/spongycastle/ocsp/BasicOCSPResp;->data:Lorg/spongycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getResponderID()Lorg/spongycastle/asn1/ocsp/ResponderID;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/ocsp/RespID;-><init>(Lorg/spongycastle/asn1/ocsp/ResponderID;)V

    return-object v0
.end method

.method public getResponseData()Lorg/spongycastle/ocsp/RespData;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Lorg/spongycastle/ocsp/RespData;

    iget-object v1, p0, Lorg/spongycastle/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/spongycastle/asn1/ocsp/ResponseData;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/ocsp/RespData;-><init>(Lorg/spongycastle/asn1/ocsp/ResponseData;)V

    return-object v0
.end method

.method public getResponseExtensions()Lorg/spongycastle/asn1/x509/X509Extensions;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/spongycastle/ocsp/BasicOCSPResp;->data:Lorg/spongycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getResponseExtensions()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/X509Extensions;

    move-result-object v0

    return-object v0
.end method

.method public getResponses()[Lorg/spongycastle/ocsp/SingleResp;
    .locals 5

    .prologue
    .line 103
    iget-object v3, p0, Lorg/spongycastle/ocsp/BasicOCSPResp;->data:Lorg/spongycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getResponses()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 104
    .local v2, "s":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v1, v3, [Lorg/spongycastle/ocsp/SingleResp;

    .line 106
    .local v1, "rs":[Lorg/spongycastle/ocsp/SingleResp;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-eq v0, v3, :cond_0

    .line 108
    new-instance v3, Lorg/spongycastle/ocsp/SingleResp;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/ocsp/SingleResponse;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/SingleResponse;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/ocsp/SingleResp;-><init>(Lorg/spongycastle/asn1/ocsp/SingleResponse;)V

    aput-object v3, v1, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return-object v1
.end method

.method public getSignature()[B
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/spongycastle/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getSignature()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignatureAlgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/spongycastle/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/ocsp/OCSPUtil;->getAlgorithmName(Lorg/spongycastle/asn1/DERObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignatureAlgOID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lorg/spongycastle/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getSignatureAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTBSResponseData()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/spongycastle/asn1/ocsp/ResponseData;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getEncoded()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/spongycastle/ocsp/OCSPException;

    const-string v2, "problem encoding tbsResponseData"

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/spongycastle/ocsp/BasicOCSPResp;->data:Lorg/spongycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getVersion()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lorg/spongycastle/ocsp/BasicOCSPResp;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 128
    .local v0, "extns":Ljava/util/Set;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    const/4 v1, 0x1

    .line 133
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lorg/spongycastle/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->hashCode()I

    move-result v0

    return v0
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 317
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/ocsp/BasicOCSPResp;->getSignatureAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/spongycastle/ocsp/OCSPUtil;->createSignatureInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 319
    .local v1, "signature":Ljava/security/Signature;
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 321
    iget-object v2, p0, Lorg/spongycastle/ocsp/BasicOCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getTbsResponseData()Lorg/spongycastle/asn1/ocsp/ResponseData;

    move-result-object v2

    const-string v3, "DER"

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ocsp/ResponseData;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 323
    invoke-virtual {p0}, Lorg/spongycastle/ocsp/BasicOCSPResp;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 325
    .end local v1    # "signature":Ljava/security/Signature;
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/security/NoSuchProviderException;
    throw v0

    .line 330
    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    :catch_1
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/spongycastle/ocsp/OCSPException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception processing sig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method
