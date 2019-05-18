.class public Lcom/dropbox/core/v2/teamlog/DurationLogInfo;
.super Ljava/lang/Object;
.source "DurationLogInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;
    }
.end annotation


# instance fields
.field protected final amount:J

.field protected final unit:Lcom/dropbox/core/v2/teamlog/TimeUnit;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/TimeUnit;J)V
    .locals 2
    .param p1, "unit"    # Lcom/dropbox/core/v2/teamlog/TimeUnit;
    .param p2, "amount"    # J

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'unit\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->unit:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    .line 41
    iput-wide p2, p0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->amount:J

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    if-ne p1, p0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v1

    .line 76
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 77
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 81
    check-cast v0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;

    .line 82
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/DurationLogInfo;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->unit:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->unit:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->unit:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->unit:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/TimeUnit;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->amount:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->amount:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/DurationLogInfo;
    :cond_5
    move v1, v2

    .line 87
    goto :goto_0
.end method

.method public getAmount()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->amount:J

    return-wide v0
.end method

.method public getUnit()Lcom/dropbox/core/v2/teamlog/TimeUnit;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->unit:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 64
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->unit:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo;->amount:J

    .line 66
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 64
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 68
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DurationLogInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
