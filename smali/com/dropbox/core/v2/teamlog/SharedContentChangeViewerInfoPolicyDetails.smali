.class public Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;
.super Ljava/lang/Object;
.source "SharedContentChangeViewerInfoPolicyDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Serializer;,
        Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;
    }
.end annotation


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

.field protected final originalFolderName:Ljava/lang/String;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

.field protected final sharedFolderType:Ljava/lang/String;

.field protected final targetAssetIndex:J


# direct methods
.method public constructor <init>(JLcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;)V
    .locals 9
    .param p1, "targetAssetIndex"    # J
    .param p3, "newValue"    # Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    .prologue
    const/4 v5, 0x0

    .line 70
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;-><init>(JLcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;)V

    .line 71
    return-void
.end method

.method public constructor <init>(JLcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;)V
    .locals 3
    .param p1, "targetAssetIndex"    # J
    .param p3, "newValue"    # Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;
    .param p4, "originalFolderName"    # Ljava/lang/String;
    .param p5, "sharedFolderType"    # Ljava/lang/String;
    .param p6, "previousValue"    # Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->targetAssetIndex:J

    .line 49
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->originalFolderName:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->sharedFolderType:Ljava/lang/String;

    .line 51
    if-nez p3, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    .line 55
    iput-object p6, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    .line 56
    return-void
.end method

.method public static newBuilder(JLcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;)Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;
    .locals 2
    .param p0, "targetAssetIndex"    # J
    .param p2, "newValue"    # Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    .prologue
    .line 130
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Builder;-><init>(JLcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 220
    if-ne p1, p0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v1

    .line 223
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 224
    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v0, p1

    .line 228
    check-cast v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;

    .line 229
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;
    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->targetAssetIndex:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->targetAssetIndex:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    .line 230
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->originalFolderName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->originalFolderName:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->originalFolderName:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->originalFolderName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->originalFolderName:Ljava/lang/String;

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->sharedFolderType:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->sharedFolderType:Ljava/lang/String;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->sharedFolderType:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->sharedFolderType:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->sharedFolderType:Ljava/lang/String;

    .line 232
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    .line 233
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_6
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;
    :cond_7
    move v1, v2

    .line 237
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    return-object v0
.end method

.method public getOriginalFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->originalFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    return-object v0
.end method

.method public getSharedFolderType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->sharedFolderType:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetAssetIndex()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->targetAssetIndex:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 208
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->targetAssetIndex:J

    .line 209
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->originalFolderName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->sharedFolderType:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/SharedContentViewerInfoPolicy;

    aput-object v3, v1, v2

    .line 208
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 215
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 255
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedContentChangeViewerInfoPolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
