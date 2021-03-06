.class public Lorg/spongycastle/crypto/tls/CertificateRequest;
.super Ljava/lang/Object;
.source "CertificateRequest.java"


# instance fields
.field protected certificateAuthorities:Ljava/util/Vector;

.field protected certificateTypes:[S

.field protected supportedSignatureAlgorithms:Ljava/util/Vector;


# direct methods
.method public constructor <init>([SLjava/util/Vector;Ljava/util/Vector;)V
    .locals 0
    .param p1, "certificateTypes"    # [S
    .param p2, "supportedSignatureAlgorithms"    # Ljava/util/Vector;
    .param p3, "certificateAuthorities"    # Ljava/util/Vector;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->certificateTypes:[S

    .line 44
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/Vector;

    .line 45
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    .line 46
    return-void
.end method

.method public static parse(Lorg/spongycastle/crypto/tls/TlsContext;Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/CertificateRequest;
    .locals 10
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsContext;
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v7

    .line 139
    .local v7, "numTypes":I
    new-array v4, v7, [S

    .line 140
    .local v4, "certificateTypes":[S
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_0

    .line 142
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v9

    aput-short v9, v4, v6

    .line 140
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 145
    :cond_0
    const/4 v8, 0x0

    .line 146
    .local v8, "supportedSignatureAlgorithms":Ljava/util/Vector;
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->isTLSv12(Lorg/spongycastle/crypto/tls/TlsContext;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 149
    const/4 v9, 0x0

    invoke-static {v9, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->parseSupportedSignatureAlgorithms(ZLjava/io/InputStream;)Ljava/util/Vector;

    move-result-object v8

    .line 152
    :cond_1
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 153
    .local v3, "certificateAuthorities":Ljava/util/Vector;
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 154
    .local v2, "certAuthData":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 155
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    if-lez v9, :cond_2

    .line 157
    invoke-static {v1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 158
    .local v5, "derEncoding":[B
    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->readDERObject([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 159
    .local v0, "asn1":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 162
    .end local v0    # "asn1":Lorg/spongycastle/asn1/ASN1Primitive;
    .end local v5    # "derEncoding":[B
    :cond_2
    new-instance v9, Lorg/spongycastle/crypto/tls/CertificateRequest;

    invoke-direct {v9, v4, v8, v3}, Lorg/spongycastle/crypto/tls/CertificateRequest;-><init>([SLjava/util/Vector;Ljava/util/Vector;)V

    return-object v9
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 82
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->certificateTypes:[S

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->certificateTypes:[S

    array-length v6, v6

    if-nez v6, :cond_4

    .line 84
    :cond_0
    invoke-static {v7, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(ILjava/io/OutputStream;)V

    .line 91
    :goto_0
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/Vector;

    if-eqz v6, :cond_1

    .line 94
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/Vector;

    invoke-static {v6, v7, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->encodeSupportedSignatureAlgorithms(Ljava/util/Vector;ZLjava/io/OutputStream;)V

    .line 97
    :cond_1
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 99
    :cond_2
    invoke-static {v7, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 123
    :cond_3
    return-void

    .line 88
    :cond_4
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->certificateTypes:[S

    invoke-static {v6, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8ArrayWithUint8Length([SLjava/io/OutputStream;)V

    goto :goto_0

    .line 103
    :cond_5
    new-instance v2, Ljava/util/Vector;

    iget-object v6, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/Vector;-><init>(I)V

    .line 105
    .local v2, "derEncodings":Ljava/util/Vector;
    const/4 v5, 0x0

    .line 106
    .local v5, "totalLength":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 108
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/x500/X500Name;

    .line 109
    .local v0, "certificateAuthority":Lorg/spongycastle/asn1/x500/X500Name;
    const-string v6, "DER"

    invoke-virtual {v0, v6}, Lorg/spongycastle/asn1/x500/X500Name;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    .line 110
    .local v1, "derEncoding":[B
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 111
    array-length v6, v1

    add-int/2addr v5, v6

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 114
    .end local v0    # "certificateAuthority":Lorg/spongycastle/asn1/x500/X500Name;
    .end local v1    # "derEncoding":[B
    :cond_6
    invoke-static {v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->checkUint16(I)V

    .line 115
    invoke-static {v5, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 117
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 119
    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v3, v6

    check-cast v3, [B

    .line 120
    .local v3, "encDN":[B
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public getCertificateAuthorities()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->certificateAuthorities:Ljava/util/Vector;

    return-object v0
.end method

.method public getCertificateTypes()[S
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->certificateTypes:[S

    return-object v0
.end method

.method public getSupportedSignatureAlgorithms()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CertificateRequest;->supportedSignatureAlgorithms:Ljava/util/Vector;

    return-object v0
.end method
