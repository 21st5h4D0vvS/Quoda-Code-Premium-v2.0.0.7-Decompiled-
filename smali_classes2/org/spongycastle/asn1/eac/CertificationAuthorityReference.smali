.class public Lorg/spongycastle/asn1/eac/CertificationAuthorityReference;
.super Lorg/spongycastle/asn1/eac/CertificateHolderReference;
.source "CertificationAuthorityReference.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "holderMnemonic"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/asn1/eac/CertificateHolderReference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "contents"    # [B

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lorg/spongycastle/asn1/eac/CertificateHolderReference;-><init>([B)V

    .line 14
    return-void
.end method
