.class public Lorg/spongycastle/jcajce/provider/digest/Skein$DigestSkein256;
.super Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;
.source "Skein.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/digest/Skein;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DigestSkein256"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "outputSize"    # I

    .prologue
    .line 23
    new-instance v0, Lorg/spongycastle/crypto/digests/SkeinDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/crypto/digests/SkeinDigest;-><init>(II)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 24
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-super {p0}, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;

    .line 30
    .local v0, "d":Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;
    new-instance v2, Lorg/spongycastle/crypto/digests/SkeinDigest;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/digest/Skein$DigestSkein256;->digest:Lorg/spongycastle/crypto/Digest;

    check-cast v1, Lorg/spongycastle/crypto/digests/SkeinDigest;

    invoke-direct {v2, v1}, Lorg/spongycastle/crypto/digests/SkeinDigest;-><init>(Lorg/spongycastle/crypto/digests/SkeinDigest;)V

    iput-object v2, v0, Lorg/spongycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lorg/spongycastle/crypto/Digest;

    .line 32
    return-object v0
.end method
