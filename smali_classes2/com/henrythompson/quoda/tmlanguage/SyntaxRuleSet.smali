.class public Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;
.super Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;",
        ">;"
    }
.end annotation


# instance fields
.field private mRepositoryReference:Ljava/lang/String;

.field private mRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;-><init>()V

    const/4 v1, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->mRules:Ljava/util/ArrayList;

    nop

    return-void

    const/4 v1, 0x6
.end method


# virtual methods
.method public addRule(ILcom/henrythompson/quoda/tmlanguage/SyntaxRule;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public addRule(Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public addRules(ILcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->mRules:Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    const/4 v2, 0x0

    nop

    return-void

    const/4 v2, 0x3
.end method

.method public addRules(Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->mRules:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x2

    nop

    return-void

    const/4 v2, 0x0
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x5
.end method

.method public getRepositoryReference()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->mRepositoryReference:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x5
.end method

.method public getRule(I)Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;

    return-object v0

    const/4 v1, 0x5
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x6

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    const/4 v1, 0x7
.end method

.method public removeRule(I)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x2
.end method

.method public removeRule(Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x0
.end method

.method public setRepositoryReference(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->mRepositoryReference:Ljava/lang/String;

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public size()I
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    const/4 v1, 0x3
.end method

.method public toArrayList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    const/4 v0, 0x7
.end method
