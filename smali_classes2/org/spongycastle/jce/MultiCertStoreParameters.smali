.class public Lorg/spongycastle/jce/MultiCertStoreParameters;
.super Ljava/lang/Object;
.source "MultiCertStoreParameters.java"

# interfaces
.implements Ljava/security/cert/CertStoreParameters;


# instance fields
.field private certStores:Ljava/util/Collection;

.field private searchAllStores:Z


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "certStores"    # Ljava/util/Collection;

    .prologue
    .line 19
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/jce/MultiCertStoreParameters;-><init>(Ljava/util/Collection;Z)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Z)V
    .locals 0
    .param p1, "certStores"    # Ljava/util/Collection;
    .param p2, "searchAllStores"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/spongycastle/jce/MultiCertStoreParameters;->certStores:Ljava/util/Collection;

    .line 34
    iput-boolean p2, p0, Lorg/spongycastle/jce/MultiCertStoreParameters;->searchAllStores:Z

    .line 35
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 49
    return-object p0
.end method

.method public getCertStores()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/spongycastle/jce/MultiCertStoreParameters;->certStores:Ljava/util/Collection;

    return-object v0
.end method

.method public getSearchAllStores()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lorg/spongycastle/jce/MultiCertStoreParameters;->searchAllStores:Z

    return v0
.end method
