.class public Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;
.super Ljava/lang/Object;
.source "DeviceLinkFailDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$Serializer;
    }
.end annotation


# instance fields
.field protected final deviceInfo:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;

.field protected final deviceType:Lcom/dropbox/core/v2/teamlog/DeviceType;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/DeviceType;)V
    .locals 1
    .param p1, "deviceType"    # Lcom/dropbox/core/v2/teamlog/DeviceType;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;-><init>(Lcom/dropbox/core/v2/teamlog/DeviceType;Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/DeviceType;Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;)V
    .locals 2
    .param p1, "deviceType"    # Lcom/dropbox/core/v2/teamlog/DeviceType;
    .param p2, "deviceInfo"    # Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceInfo:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'deviceType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceType:Lcom/dropbox/core/v2/teamlog/DeviceType;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 90
    if-ne p1, p0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 94
    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 98
    check-cast v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;

    .line 99
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceType:Lcom/dropbox/core/v2/teamlog/DeviceType;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceType:Lcom/dropbox/core/v2/teamlog/DeviceType;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceType:Lcom/dropbox/core/v2/teamlog/DeviceType;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceType:Lcom/dropbox/core/v2/teamlog/DeviceType;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/DeviceType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceInfo:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceInfo:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceInfo:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceInfo:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceInfo:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;

    .line 100
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;
    :cond_5
    move v1, v2

    .line 104
    goto :goto_0
.end method

.method public getDeviceInfo()Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceInfo:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;

    return-object v0
.end method

.method public getDeviceType()Lcom/dropbox/core/v2/teamlog/DeviceType;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceType:Lcom/dropbox/core/v2/teamlog/DeviceType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 81
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceInfo:Lcom/dropbox/core/v2/teamlog/DeviceLogInfo;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails;->deviceType:Lcom/dropbox/core/v2/teamlog/DeviceType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 85
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DeviceLinkFailDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
