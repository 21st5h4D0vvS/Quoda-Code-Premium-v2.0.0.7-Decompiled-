.class public final Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
.super Ljava/lang/Object;
.source "RevokeDeviceSessionArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;,
        Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;
    }
.end annotation


# instance fields
.field private _tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

.field private desktopClientValue:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

.field private mobileClientValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

.field private webSessionValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/DeviceSessionArg;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->webSessionValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->desktopClientValue:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    return-object v0
.end method

.method static synthetic access$200(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;)Lcom/dropbox/core/v2/team/DeviceSessionArg;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->mobileClientValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    return-object v0
.end method

.method public static desktopClient(Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    .prologue
    .line 202
    if-nez p0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->DESKTOP_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->withTagAndDesktopClient(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    move-result-object v0

    return-object v0
.end method

.method public static mobileClient(Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/team/DeviceSessionArg;

    .prologue
    .line 251
    if-nez p0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->MOBILE_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->withTagAndMobileClient(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    move-result-object v0

    return-object v0
.end method

.method public static webSession(Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/team/DeviceSessionArg;

    .prologue
    .line 154
    if-nez p0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->WEB_SESSION:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->withTagAndWebSession(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    .prologue
    .line 62
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>()V

    .line 63
    .local v0, "result":Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    .line 64
    return-object v0
.end method

.method private withTagAndDesktopClient(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;
    .param p2, "desktopClientValue"    # Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    .prologue
    .line 92
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>()V

    .line 93
    .local v0, "result":Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    .line 94
    iput-object p2, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->desktopClientValue:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    .line 95
    return-object v0
.end method

.method private withTagAndMobileClient(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;
    .param p2, "mobileClientValue"    # Lcom/dropbox/core/v2/team/DeviceSessionArg;

    .prologue
    .line 108
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>()V

    .line 109
    .local v0, "result":Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    .line 110
    iput-object p2, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->mobileClientValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    .line 111
    return-object v0
.end method

.method private withTagAndWebSession(Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;Lcom/dropbox/core/v2/team/DeviceSessionArg;)Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;
    .param p2, "webSessionValue"    # Lcom/dropbox/core/v2/team/DeviceSessionArg;

    .prologue
    .line 76
    new-instance v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;-><init>()V

    .line 77
    .local v0, "result":Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    .line 78
    iput-object p2, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->webSessionValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    .line 79
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 288
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 311
    :cond_0
    :goto_0
    return v1

    .line 291
    :cond_1
    if-eqz p1, :cond_0

    .line 294
    instance-of v3, p1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 295
    check-cast v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;

    .line 296
    .local v0, "other":Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-ne v3, v4, :cond_0

    .line 299
    sget-object v3, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$1;->$SwitchMap$com$dropbox$core$v2$team$RevokeDeviceSessionArg$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 301
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->webSessionValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->webSessionValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->webSessionValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->webSessionValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/DeviceSessionArg;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 303
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->desktopClientValue:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->desktopClientValue:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->desktopClientValue:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->desktopClientValue:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 305
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->mobileClientValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->mobileClientValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->mobileClientValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->mobileClientValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/DeviceSessionArg;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDesktopClientValue()Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->DESKTOP_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-eq v0, v1, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.DESKTOP_CLIENT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->desktopClientValue:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    return-object v0
.end method

.method public getMobileClientValue()Lcom/dropbox/core/v2/team/DeviceSessionArg;
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->MOBILE_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-eq v0, v1, :cond_0

    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.MOBILE_CLIENT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->mobileClientValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    return-object v0
.end method

.method public getWebSessionValue()Lcom/dropbox/core/v2/team/DeviceSessionArg;
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->WEB_SESSION:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-eq v0, v1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.WEB_SESSION, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->webSessionValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 277
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->webSessionValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->desktopClientValue:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->mobileClientValue:Lcom/dropbox/core/v2/team/DeviceSessionArg;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 283
    .local v0, "hash":I
    return v0
.end method

.method public isDesktopClient()Z
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->DESKTOP_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMobileClient()Z
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->MOBILE_CLIENT:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWebSession()Z
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;->WEB_SESSION:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg;->_tag:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 329
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RevokeDeviceSessionArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
