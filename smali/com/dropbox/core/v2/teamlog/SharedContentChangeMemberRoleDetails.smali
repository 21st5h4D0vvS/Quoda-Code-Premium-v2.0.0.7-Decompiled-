.class public Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;
.super Ljava/lang/Object;
.source "SharedContentChangeMemberRoleDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Serializer;,
        Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;
    }
.end annotation


# instance fields
.field protected final newSharingPermission:Ljava/lang/String;

.field protected final originalFolderName:Ljava/lang/String;

.field protected final previousSharingPermission:Ljava/lang/String;

.field protected final sharedFolderType:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method public constructor <init>(J)V
    .locals 9
    .param p1, "targetAssetIndex"    # J

    .prologue
    const/4 v4, 0x0

    .line 61
    move-object v1, p0

    move-wide v2, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "targetAssetIndex"    # J
    .param p3, "originalFolderName"    # Ljava/lang/String;
    .param p4, "newSharingPermission"    # Ljava/lang/String;
    .param p5, "previousSharingPermission"    # Ljava/lang/String;
    .param p6, "sharedFolderType"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->targetAssetIndex:J

    .line 47
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->originalFolderName:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->newSharingPermission:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->previousSharingPermission:Ljava/lang/String;

    .line 50
    iput-object p6, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->sharedFolderType:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static newBuilder(J)Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;
    .locals 2
    .param p0, "targetAssetIndex"    # J

    .prologue
    .line 117
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Builder;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 215
    if-ne p1, p0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return v1

    .line 218
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 219
    goto :goto_0

    .line 222
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v0, p1

    .line 223
    check-cast v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;

    .line 224
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;
    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->targetAssetIndex:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->targetAssetIndex:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->originalFolderName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->originalFolderName:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->originalFolderName:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->originalFolderName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->originalFolderName:Ljava/lang/String;

    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->newSharingPermission:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->newSharingPermission:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->newSharingPermission:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->newSharingPermission:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->newSharingPermission:Ljava/lang/String;

    .line 226
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->previousSharingPermission:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->previousSharingPermission:Ljava/lang/String;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->previousSharingPermission:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->previousSharingPermission:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->previousSharingPermission:Ljava/lang/String;

    .line 227
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->sharedFolderType:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->sharedFolderType:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->sharedFolderType:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->sharedFolderType:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->sharedFolderType:Ljava/lang/String;

    .line 228
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_6
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;
    :cond_7
    move v1, v2

    .line 232
    goto :goto_0
.end method

.method public getNewSharingPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->newSharingPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->originalFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousSharingPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->previousSharingPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedFolderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->sharedFolderType:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAssetIndex()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->targetAssetIndex:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 203
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->targetAssetIndex:J

    .line 204
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->originalFolderName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->newSharingPermission:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->previousSharingPermission:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails;->sharedFolderType:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 203
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 210
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeMemberRoleDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
