.class public Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;
.super Ljava/lang/Object;
.source "AppUnlinkUserDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$Serializer;
    }
.end annotation


# instance fields
.field protected final appInfo:Lcom/dropbox/core/v2/teamlog/AppLogInfo;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/AppLogInfo;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'appInfo\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;->appInfo:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 60
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 68
    check-cast v0, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;

    .line 69
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;->appInfo:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;->appInfo:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;->appInfo:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;->appInfo:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/AppLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getAppInfo()Lcom/dropbox/core/v2/teamlog/AppLogInfo;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;->appInfo:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 52
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails;->appInfo:Lcom/dropbox/core/v2/teamlog/AppLogInfo;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 55
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/AppUnlinkUserDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
