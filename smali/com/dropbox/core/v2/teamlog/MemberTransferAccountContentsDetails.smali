.class public Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;
.super Ljava/lang/Object;
.source "MemberTransferAccountContentsDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$Serializer;
    }
.end annotation


# instance fields
.field protected final destParticipantIndex:J

.field protected final srcParticipantIndex:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "srcParticipantIndex"    # J
    .param p3, "destParticipantIndex"    # J

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;->srcParticipantIndex:J

    .line 37
    iput-wide p3, p0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;->destParticipantIndex:J

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    if-ne p1, p0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    .line 72
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 73
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 77
    check-cast v0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;

    .line 78
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;
    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;->srcParticipantIndex:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;->srcParticipantIndex:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;->destParticipantIndex:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;->destParticipantIndex:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;
    :cond_4
    move v1, v2

    .line 83
    goto :goto_0
.end method

.method public getDestParticipantIndex()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;->destParticipantIndex:J

    return-wide v0
.end method

.method public getSrcParticipantIndex()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;->srcParticipantIndex:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 60
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;->srcParticipantIndex:J

    .line 61
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails;->destParticipantIndex:J

    .line 62
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 60
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 64
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/MemberTransferAccountContentsDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
