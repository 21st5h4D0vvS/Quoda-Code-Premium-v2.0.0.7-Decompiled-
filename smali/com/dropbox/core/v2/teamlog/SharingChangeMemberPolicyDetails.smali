.class public Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;
.super Ljava/lang/Object;
.source "SharingChangeMemberPolicyDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$Serializer;
    }
.end annotation


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;)V
    .locals 1
    .param p1, "newValue"    # Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;-><init>(Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;)V
    .locals 2
    .param p1, "newValue"    # Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;
    .param p2, "previousValue"    # Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    .line 44
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    if-ne p1, p0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 96
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 100
    check-cast v0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;

    .line 101
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    .line 102
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;
    :cond_5
    move v1, v2

    .line 106
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 83
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharingMemberPolicy;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 87
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharingChangeMemberPolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
