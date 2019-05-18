.class public Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;
.super Ljava/lang/Object;
.source "FileChangeCommentSubscriptionDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;
    }
.end annotation


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

.field protected final targetAssetIndex:J


# direct methods
.method public constructor <init>(JLcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;)V
    .locals 1
    .param p1, "targetAssetIndex"    # J
    .param p3, "newValue"    # Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;-><init>(JLcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;)V

    .line 61
    return-void
.end method

.method public constructor <init>(JLcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;)V
    .locals 3
    .param p1, "targetAssetIndex"    # J
    .param p3, "newValue"    # Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;
    .param p4, "previousValue"    # Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->targetAssetIndex:J

    .line 41
    if-nez p3, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->newValue:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    .line 45
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    if-ne p1, p0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 106
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 107
    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 111
    check-cast v0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;

    .line 112
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;
    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->targetAssetIndex:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->targetAssetIndex:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->newValue:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->newValue:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->newValue:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->newValue:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    .line 113
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    .line 114
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;
    :cond_5
    move v1, v2

    .line 118
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->newValue:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    return-object v0
.end method

.method public getTargetAssetIndex()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->targetAssetIndex:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 93
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->targetAssetIndex:J

    .line 94
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->newValue:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/FileCommentNotificationPolicy;

    aput-object v3, v1, v2

    .line 93
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 98
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/FileChangeCommentSubscriptionDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
