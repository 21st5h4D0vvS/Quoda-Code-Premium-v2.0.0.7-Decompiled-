.class public Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;
.super Ljava/lang/Object;
.source "SfTeamInviteChangeRoleDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$Serializer;,
        Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$Builder;
    }
.end annotation


# instance fields
.field protected final newSharingPermission:Ljava/lang/String;

.field protected final originalFolderName:Ljava/lang/String;

.field protected final previousSharingPermission:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 7
    .param p1, "targetAssetIndex"    # J
    .param p3, "originalFolderName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 69
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "targetAssetIndex"    # J
    .param p3, "originalFolderName"    # Ljava/lang/String;
    .param p4, "newSharingPermission"    # Ljava/lang/String;
    .param p5, "previousSharingPermission"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->targetAssetIndex:J

    .line 48
    if-nez p3, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'originalFolderName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->originalFolderName:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->newSharingPermission:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->previousSharingPermission:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static newBuilder(JLjava/lang/String;)Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$Builder;
    .locals 2
    .param p0, "targetAssetIndex"    # J
    .param p2, "originalFolderName"    # Ljava/lang/String;

    .prologue
    .line 121
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$Builder;-><init>(JLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    if-ne p1, p0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v1

    .line 197
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 198
    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 202
    check-cast v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;

    .line 203
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;
    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->targetAssetIndex:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->targetAssetIndex:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->originalFolderName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->originalFolderName:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->originalFolderName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->originalFolderName:Ljava/lang/String;

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->newSharingPermission:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->newSharingPermission:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->newSharingPermission:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->newSharingPermission:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->newSharingPermission:Ljava/lang/String;

    .line 205
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->previousSharingPermission:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->previousSharingPermission:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->previousSharingPermission:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->previousSharingPermission:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->previousSharingPermission:Ljava/lang/String;

    .line 206
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;
    :cond_6
    move v1, v2

    .line 210
    goto :goto_0
.end method

.method public getNewSharingPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->newSharingPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->originalFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousSharingPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->previousSharingPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAssetIndex()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->targetAssetIndex:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 183
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->targetAssetIndex:J

    .line 184
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->originalFolderName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->newSharingPermission:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails;->previousSharingPermission:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 183
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 189
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SfTeamInviteChangeRoleDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
