.class public Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;
.super Ljava/lang/Object;
.source "PaperContentAddToFolderDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;
    }
.end annotation


# instance fields
.field protected final eventUuid:Ljava/lang/String;

.field protected final parentAssetIndex:J

.field protected final targetAssetIndex:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "eventUuid"    # Ljava/lang/String;
    .param p2, "targetAssetIndex"    # J
    .param p4, "parentAssetIndex"    # J

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'eventUuid\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;->eventUuid:Ljava/lang/String;

    .line 43
    iput-wide p2, p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;->targetAssetIndex:J

    .line 44
    iput-wide p4, p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;->parentAssetIndex:J

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    if-ne p1, p0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 90
    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 94
    check-cast v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;

    .line 95
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;->eventUuid:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;->eventUuid:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;->eventUuid:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;->eventUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;->targetAssetIndex:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;->targetAssetIndex:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;->parentAssetIndex:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;->parentAssetIndex:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;
    :cond_5
    move v1, v2

    .line 101
    goto :goto_0
.end method

.method public getEventUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;->eventUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getParentAssetIndex()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;->parentAssetIndex:J

    return-wide v0
.end method

.method public getTargetAssetIndex()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;->targetAssetIndex:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 76
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;->eventUuid:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;->targetAssetIndex:J

    .line 78
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails;->parentAssetIndex:J

    .line 79
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 76
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 81
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/PaperContentAddToFolderDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
