.class public Lorg/spongycastle/jcajce/provider/symmetric/RC2$PBEWithMD5KeyFactory;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;
.source "RC2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/RC2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithMD5KeyFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/16 v6, 0x40

    const/4 v4, 0x0

    .line 198
    const-string v1, "PBEwithMD5andRC2"

    sget-object v2, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithMD5AndRC2_CBC:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v3, 0x1

    move-object v0, p0

    move v5, v4

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBESecretKeyFactory;-><init>(Ljava/lang/String;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZIIII)V

    .line 199
    return-void
.end method
