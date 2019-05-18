.class public Lcom/henrythompson/quoda/tmlanguage/TmLanguage;
.super Ljava/lang/Object;


# instance fields
.field private mFiletypes:[Ljava/lang/String;

.field private mFoldingStartMarker:Ljava/lang/String;

.field private mFoldingStopMarker:Ljava/lang/String;

.field private mKeyEquivalent:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mRepository:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;",
            ">;"
        }
    .end annotation
.end field

.field private mRootRule:Lcom/henrythompson/quoda/tmlanguage/RootRule;

.field private mScopeName:Ljava/lang/String;

.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/henrythompson/quoda/tmlanguage/RootRule;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mUuid:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p3}, Lcom/henrythompson/quoda/tmlanguage/RootRule;->getScope()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mScopeName:Ljava/lang/String;

    const/4 v1, 0x2

    iput-object p3, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mRootRule:Lcom/henrythompson/quoda/tmlanguage/RootRule;

    const/4 v1, 0x0

    nop

    return-void

    const/4 v1, 0x2

    const/4 v1, 0x0

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    const/4 v0, 0x3
.end method


# virtual methods
.method public getFileTypes()[Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mFiletypes:[Ljava/lang/String;

    return-object v0

    const/4 v0, 0x1
.end method

.method public getFoldingStartMarker()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mFoldingStartMarker:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x1
.end method

.method public getFoldingStopMarker()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mFoldingStopMarker:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x5
.end method

.method public getIncludeReferenceElement(Lcom/henrythompson/quoda/tmlanguage/Include;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;
    .locals 5

    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/henrythompson/quoda/tmlanguage/Include;->isSelf()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/henrythompson/quoda/tmlanguage/Include;->getSourceLangauge()Lcom/henrythompson/quoda/tmlanguage/TmLanguage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->getRootRule()Lcom/henrythompson/quoda/tmlanguage/RootRule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/tmlanguage/RootRule;->getPatterns()Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    move-result-object v2

    const/4 v4, 0x1

    :cond_0
    :goto_0
    return-object v2

    const/4 v1, 0x7

    const/4 v4, 0x3

    :cond_1
    invoke-virtual {p1}, Lcom/henrythompson/quoda/tmlanguage/Include;->isBase()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mRootRule:Lcom/henrythompson/quoda/tmlanguage/RootRule;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/tmlanguage/RootRule;->getPatterns()Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    move-result-object v2

    goto :goto_0

    const/4 v4, 0x1

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {p1}, Lcom/henrythompson/quoda/tmlanguage/Include;->getRootScope()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/henrythompson/quoda/tmlanguage/Include;->getRepositoryReference()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v4, 0x5

    invoke-virtual {p1}, Lcom/henrythompson/quoda/tmlanguage/Include;->getRootScope()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    invoke-virtual {p1}, Lcom/henrythompson/quoda/tmlanguage/Include;->getRepositoryReference()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/tmlanguage/BundlesManager;->getInstance()Lcom/henrythompson/quoda/tmlanguage/BundlesManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/henrythompson/quoda/tmlanguage/BundlesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/tmlanguage/TmLanguage;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->getRepositoryItemByReference(Ljava/lang/String;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    move-result-object v2

    goto :goto_0

    const/4 v2, 0x1

    const/4 v4, 0x7

    :cond_3
    invoke-virtual {p1}, Lcom/henrythompson/quoda/tmlanguage/Include;->getRootScope()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x7

    goto :goto_0

    const/4 v0, 0x4

    const/4 v4, 0x6

    :cond_4
    invoke-virtual {p1}, Lcom/henrythompson/quoda/tmlanguage/Include;->getRepositoryReference()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/henrythompson/quoda/tmlanguage/Include;->getRepositoryReference()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x6

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->getRepositoryItemByReference(Ljava/lang/String;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    move-result-object v2

    goto :goto_0

    const/4 v4, 0x3
.end method

.method public getKeyEquivalent()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mKeyEquivalent:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x4
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mName:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x0
.end method

.method public getRepository()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mRepository:Ljava/util/ArrayList;

    return-object v0

    const/4 v1, 0x6
.end method

.method public getRepositoryItemByReference(Ljava/lang/String;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;
    .locals 5

    const/4 v4, 0x6

    const/4 v1, 0x0

    const/4 v4, 0x6

    if-nez p1, :cond_0

    move-object v0, v1

    const/4 v4, 0x2

    :goto_0
    return-object v0

    const/4 v1, 0x3

    const/4 v4, 0x5

    :cond_0
    iget-object v2, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mRepository:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->getRepositoryReference()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    const/4 v3, 0x5

    :cond_2
    move-object v0, v1

    const/4 v4, 0x2

    goto :goto_0

    const/4 v1, 0x0
.end method

.method public getRootRule()Lcom/henrythompson/quoda/tmlanguage/RootRule;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mRootRule:Lcom/henrythompson/quoda/tmlanguage/RootRule;

    return-object v0

    const/4 v1, 0x4
.end method

.method public getScope()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mScopeName:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mUuid:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x6
.end method

.method public resetRepository()V
    .locals 6

    const/4 v5, 0x6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mRepository:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    const/4 v5, 0x7

    invoke-virtual {v1}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;

    const/4 v5, 0x3

    invoke-virtual {v0}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->reset()V

    goto :goto_0

    const/4 v0, 0x7

    const/4 v5, 0x6

    :cond_1
    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setFileTypes([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mFiletypes:[Ljava/lang/String;

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public setFoldingStartMarker(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mFoldingStartMarker:Ljava/lang/String;

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setFoldingStopMarker(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mFoldingStopMarker:Ljava/lang/String;

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public setKeyEquivalent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mKeyEquivalent:Ljava/lang/String;

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setRepository(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x6

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mRepository:Ljava/util/ArrayList;

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public setRootRule(Lcom/henrythompson/quoda/tmlanguage/RootRule;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->mRootRule:Lcom/henrythompson/quoda/tmlanguage/RootRule;

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x6
.end method
