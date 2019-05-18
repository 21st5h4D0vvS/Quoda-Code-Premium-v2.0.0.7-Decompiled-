.class public Lcom/henrythompson/quoda/tmlanguage/Include;
.super Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;


# instance fields
.field private mAssociatedRules:Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

.field private mBaseReference:Z

.field private mParent:Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;

.field private mPatterns:Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

.field private mReference:Ljava/lang/String;

.field private mRepositoryReference:Ljava/lang/String;

.field private mRootScope:Ljava/lang/String;

.field private mSelfReference:Z

.field private mSourceLanguage:Lcom/henrythompson/quoda/tmlanguage/TmLanguage;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/henrythompson/quoda/tmlanguage/TmLanguage;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;-><init>()V

    const/4 v1, 0x6

    iput-boolean v0, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mBaseReference:Z

    const/4 v1, 0x6

    iput-boolean v0, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mSelfReference:Z

    const/4 v1, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mReference:Ljava/lang/String;

    const/4 v1, 0x5

    iput-object p2, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mSourceLanguage:Lcom/henrythompson/quoda/tmlanguage/TmLanguage;

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/tmlanguage/Include;->parseReference()V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x1
.end method

.method private parseReference()V
    .locals 6

    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v5, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mReference:Ljava/lang/String;

    const-string v2, "^\\s*"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mReference:Ljava/lang/String;

    const/4 v5, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mReference:Ljava/lang/String;

    const-string v2, "\\s*$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mReference:Ljava/lang/String;

    const/4 v5, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mReference:Ljava/lang/String;

    const-string v2, "$self"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x7

    iput-boolean v4, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mSelfReference:Z

    const/4 v5, 0x5

    :goto_0
    nop

    return-void

    const/4 v2, 0x5

    const/4 v5, 0x4

    :cond_0
    iget-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mReference:Ljava/lang/String;

    const-string v2, "$base"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v5, 0x1

    iput-boolean v4, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mBaseReference:Z

    goto :goto_0

    const/4 v4, 0x3

    const/4 v5, 0x5

    :cond_1
    iget-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mReference:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mReference:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mRepositoryReference:Ljava/lang/String;

    goto :goto_0

    const/4 v3, 0x1

    const/4 v5, 0x0

    :cond_2
    iget-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mReference:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v5, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mReference:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mReference:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mRootScope:Ljava/lang/String;

    const/4 v5, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mReference:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mReference:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mRepositoryReference:Ljava/lang/String;

    goto :goto_0

    const/4 v2, 0x6

    const/4 v5, 0x1

    :cond_3
    iget-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mReference:Ljava/lang/String;

    iput-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mRootScope:Ljava/lang/String;

    goto :goto_0

    const/4 v5, 0x5
.end method


# virtual methods
.method public addRule(Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mPatterns:Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->addRule(Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;)V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public addRules(Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mPatterns:Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->addRules(Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x4

    if-ne p1, p0, :cond_1

    const/4 v5, 0x6

    :cond_0
    :goto_0
    return v1

    const/4 v0, 0x2

    const/4 v5, 0x0

    :cond_1
    instance-of v3, p1, Lcom/henrythompson/quoda/tmlanguage/Include;

    if-nez v3, :cond_2

    move v1, v2

    const/4 v5, 0x6

    goto :goto_0

    const/4 v3, 0x6

    :cond_2
    move-object v0, p1

    const/4 v5, 0x3

    check-cast v0, Lcom/henrythompson/quoda/tmlanguage/Include;

    const/4 v5, 0x0

    iget-object v3, v0, Lcom/henrythompson/quoda/tmlanguage/Include;->mReference:Ljava/lang/String;

    iget-object v4, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mReference:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    const/4 v5, 0x2

    goto :goto_0

    const/4 v1, 0x4
.end method

.method public getAssociatedRules()Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mAssociatedRules:Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    if-nez v0, :cond_0

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mSourceLanguage:Lcom/henrythompson/quoda/tmlanguage/TmLanguage;

    invoke-virtual {v0, p0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->getIncludeReferenceElement(Lcom/henrythompson/quoda/tmlanguage/Include;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mAssociatedRules:Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    const/4 v1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mAssociatedRules:Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    return-object v0

    const/4 v1, 0x2
.end method

.method public getCapture(I)Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    const/4 v0, 0x0

    return-object v0

    const/4 v1, 0x6
.end method

.method public getCaptureSet()Lcom/henrythompson/quoda/tmlanguage/CaptureSet;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x3

    const/4 v0, 0x0

    return-object v0

    const/4 v0, 0x1
.end method

.method public getMatcher()Lorg/joni/Matcher;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x2

    const/4 v0, 0x0

    return-object v0

    const/4 v0, 0x5
.end method

.method public getParent()Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mParent:Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;

    return-object v0

    const/4 v1, 0x5
.end method

.method public getReference()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mReference:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x0
.end method

.method public getRepositoryReference()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mRepositoryReference:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x6
.end method

.method public getRootScope()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mRootScope:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getSourceLangauge()Lcom/henrythompson/quoda/tmlanguage/TmLanguage;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mSourceLanguage:Lcom/henrythompson/quoda/tmlanguage/TmLanguage;

    return-object v0

    const/4 v1, 0x3
.end method

.method public isBase()Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x5

    iget-boolean v0, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mBaseReference:Z

    return v0

    const/4 v0, 0x3
.end method

.method public isSelf()Z
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mSelfReference:Z

    return v0

    const/4 v1, 0x2
.end method

.method public resetMatchers()V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setParent(Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/tmlanguage/Include;->mParent:Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setSource([B)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x1
.end method
