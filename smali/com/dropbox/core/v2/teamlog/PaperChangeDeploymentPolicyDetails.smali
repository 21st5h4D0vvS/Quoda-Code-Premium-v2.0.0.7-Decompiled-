.class public Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;
.super Ljava/lang/Object;
.source "PaperChangeDeploymentPolicyDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$Serializer;
    }
.end annotation


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

.field protected final previousValue:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;)V
    .locals 1
    .param p1, "newValue"    # Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;-><init>(Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;)V
    .locals 2
    .param p1, "newValue"    # Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;
    .param p2, "previousValue"    # Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;->newValue:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    .line 46
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    if-ne p1, p0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 98
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 99
    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 103
    check-cast v0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;

    .line 104
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;->newValue:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;->newValue:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;->newValue:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;->newValue:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    .line 105
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;
    :cond_5
    move v1, v2

    .line 109
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;->newValue:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 86
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;->newValue:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teampolicies/PaperDeploymentPolicy;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 90
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/PaperChangeDeploymentPolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
