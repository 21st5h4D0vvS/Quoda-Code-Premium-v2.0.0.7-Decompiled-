.class public Lcom/henrythompson/quoda/tmlanguage/RootRule;
.super Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;


# instance fields
.field private mPatterns:Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

.field private mScope:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;-><init>()V

    const/4 v1, 0x3

    new-instance v0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    invoke-direct {v0}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/RootRule;->mPatterns:Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    const/4 v1, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/tmlanguage/RootRule;->mScope:Ljava/lang/String;

    const/4 v1, 0x4

    nop

    return-void

    const/4 v1, 0x3
.end method


# virtual methods
.method public addChildRules(Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/RootRule;->mPatterns:Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->addRules(Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x0
.end method

.method public getCapture(I)Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    const/4 v0, 0x0

    return-object v0

    const/4 v0, 0x6
.end method

.method public getCaptureSet()Lcom/henrythompson/quoda/tmlanguage/CaptureSet;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x4

    const/4 v0, 0x0

    return-object v0

    const/4 v0, 0x5
.end method

.method public getMatcher()Lorg/joni/Matcher;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x3

    const/4 v0, 0x0

    return-object v0

    const/4 v1, 0x6
.end method

.method public getPatterns()Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/RootRule;->mPatterns:Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    return-object v0

    const/4 v0, 0x5
.end method

.method public getScope()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/RootRule;->mScope:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x4
.end method

.method public resetMatchers()V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/RootRule;->mPatterns:Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/RootRule;->mPatterns:Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->getRule(I)Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->reset()V

    const/4 v2, 0x6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v0, 0x4

    const/4 v2, 0x3

    :cond_0
    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setChildRules(Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/tmlanguage/RootRule;->mPatterns:Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setSource([B)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x5
.end method
