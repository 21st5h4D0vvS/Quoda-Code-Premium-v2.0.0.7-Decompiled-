.class public Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;
.super Ljava/lang/Object;
.source "SharedFolderChangeConfidentialityDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;
    }
.end annotation


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/Confidentiality;

.field protected final originalFolderName:Ljava/lang/String;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/Confidentiality;

.field protected final targetAssetIndex:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/dropbox/core/v2/teamlog/Confidentiality;)V
    .locals 7
    .param p1, "targetAssetIndex"    # J
    .param p3, "originalFolderName"    # Ljava/lang/String;
    .param p4, "newValue"    # Lcom/dropbox/core/v2/teamlog/Confidentiality;

    .prologue
    .line 69
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;-><init>(JLjava/lang/String;Lcom/dropbox/core/v2/teamlog/Confidentiality;Lcom/dropbox/core/v2/teamlog/Confidentiality;)V

    .line 70
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcom/dropbox/core/v2/teamlog/Confidentiality;Lcom/dropbox/core/v2/teamlog/Confidentiality;)V
    .locals 3
    .param p1, "targetAssetIndex"    # J
    .param p3, "originalFolderName"    # Ljava/lang/String;
    .param p4, "newValue"    # Lcom/dropbox/core/v2/teamlog/Confidentiality;
    .param p5, "previousValue"    # Lcom/dropbox/core/v2/teamlog/Confidentiality;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->targetAssetIndex:J

    .line 44
    if-nez p3, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'originalFolderName\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->originalFolderName:Ljava/lang/String;

    .line 48
    if-nez p4, :cond_1

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    iput-object p4, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->newValue:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    .line 52
    iput-object p5, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    if-ne p1, p0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v1

    .line 125
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 126
    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 130
    check-cast v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;

    .line 131
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;
    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->targetAssetIndex:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->targetAssetIndex:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->originalFolderName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->originalFolderName:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->originalFolderName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->originalFolderName:Ljava/lang/String;

    .line 132
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->newValue:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->newValue:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->newValue:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->newValue:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    .line 133
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/Confidentiality;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    .line 134
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/Confidentiality;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;
    :cond_6
    move v1, v2

    .line 138
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/Confidentiality;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->newValue:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    return-object v0
.end method

.method public getOriginalFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->originalFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/Confidentiality;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    return-object v0
.end method

.method public getTargetAssetIndex()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->targetAssetIndex:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 111
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->targetAssetIndex:J

    .line 112
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->originalFolderName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->newValue:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/Confidentiality;

    aput-object v3, v1, v2

    .line 111
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 117
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SharedFolderChangeConfidentialityDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
