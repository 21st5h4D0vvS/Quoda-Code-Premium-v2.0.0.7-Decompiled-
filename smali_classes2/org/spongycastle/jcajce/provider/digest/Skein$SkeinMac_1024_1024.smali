.class public Lorg/spongycastle/jcajce/provider/digest/Skein$SkeinMac_1024_1024;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;
.source "Skein.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/Skein;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SkeinMac_1024_1024"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 544
    new-instance v0, Lorg/spongycastle/crypto/macs/SkeinMac;

    invoke-direct {v0, v1, v1}, Lorg/spongycastle/crypto/macs/SkeinMac;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/spongycastle/crypto/Mac;)V

    .line 545
    return-void
.end method
