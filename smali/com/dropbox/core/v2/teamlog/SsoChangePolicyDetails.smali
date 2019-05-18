.class public Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;
.super Ljava/lang/Object;
.source "SsoChangePolicyDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$Serializer;
    }
.end annotation


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teampolicies/SsoPolicy;

.field protected final previousValue:Lcom/dropbox/core/v2/teampolicies/SsoPolicy;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teampolicies/SsoPolicy;)V
    .locals 1
    .param p1, "newValue"    # Lcom/dropbox/core/v2/teampolicies/SsoPolicy;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;-><init>(Lcom/dropbox/core/v2/teampolicies/SsoPolicy;Lcom/dropbox/core/v2/teampolicies/SsoPolicy;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teampolicies/SsoPolicy;Lcom/dropbox/core/v2/teampolicies/SsoPolicy;)V
    .locals 2
    .param p1, "newValue"    # Lcom/dropbox/core/v2/teampolicies/SsoPolicy;
    .param p2, "previousValue"    # Lcom/dropbox/core/v2/teampolicies/SsoPolicy;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teampolicies/SsoPolicy;

    .line 43
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teampolicies/SsoPolicy;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    if-ne p1, p0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 94
    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 98
    check-cast v0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;

    .line 99
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teampolicies/SsoPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teampolicies/SsoPolicy;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teampolicies/SsoPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teampolicies/SsoPolicy;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teampolicies/SsoPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teampolicies/SsoPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teampolicies/SsoPolicy;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teampolicies/SsoPolicy;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teampolicies/SsoPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teampolicies/SsoPolicy;

    .line 100
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teampolicies/SsoPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;
    :cond_5
    move v1, v2

    .line 104
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teampolicies/SsoPolicy;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teampolicies/SsoPolicy;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teampolicies/SsoPolicy;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teampolicies/SsoPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 81
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teampolicies/SsoPolicy;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teampolicies/SsoPolicy;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 85
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangePolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
