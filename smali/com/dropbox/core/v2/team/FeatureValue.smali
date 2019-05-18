.class public final Lcom/dropbox/core/v2/team/FeatureValue;
.super Ljava/lang/Object;
.source "FeatureValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/FeatureValue$Serializer;,
        Lcom/dropbox/core/v2/team/FeatureValue$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/team/FeatureValue;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

.field private hasTeamSharedDropboxValue:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

.field private uploadApiRateLimitValue:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->OTHER:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/FeatureValue;->withTag(Lcom/dropbox/core/v2/team/FeatureValue$Tag;)Lcom/dropbox/core/v2/team/FeatureValue;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/FeatureValue;->OTHER:Lcom/dropbox/core/v2/team/FeatureValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/FeatureValue;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/FeatureValue;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->uploadApiRateLimitValue:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/FeatureValue;)Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/FeatureValue;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->hasTeamSharedDropboxValue:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    return-object v0
.end method

.method public static hasTeamSharedDropbox(Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    .prologue
    .line 207
    if-nez p0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_SHARED_DROPBOX:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/FeatureValue;->withTagAndHasTeamSharedDropbox(Lcom/dropbox/core/v2/team/FeatureValue$Tag;Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;)Lcom/dropbox/core/v2/team/FeatureValue;

    move-result-object v0

    return-object v0
.end method

.method public static uploadApiRateLimit(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    .prologue
    .line 160
    if-nez p0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->UPLOAD_API_RATE_LIMIT:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/FeatureValue;->withTagAndUploadApiRateLimit(Lcom/dropbox/core/v2/team/FeatureValue$Tag;Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;)Lcom/dropbox/core/v2/team/FeatureValue;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/team/FeatureValue$Tag;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    .prologue
    .line 78
    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    .line 79
    .local v0, "result":Lcom/dropbox/core/v2/team/FeatureValue;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/FeatureValue;->_tag:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    .line 80
    return-object v0
.end method

.method private withTagAndHasTeamSharedDropbox(Lcom/dropbox/core/v2/team/FeatureValue$Tag;Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/FeatureValue$Tag;
    .param p2, "hasTeamSharedDropboxValue"    # Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    .prologue
    .line 111
    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    .line 112
    .local v0, "result":Lcom/dropbox/core/v2/team/FeatureValue;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/FeatureValue;->_tag:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    .line 113
    iput-object p2, v0, Lcom/dropbox/core/v2/team/FeatureValue;->hasTeamSharedDropboxValue:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    .line 114
    return-object v0
.end method

.method private withTagAndUploadApiRateLimit(Lcom/dropbox/core/v2/team/FeatureValue$Tag;Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;)Lcom/dropbox/core/v2/team/FeatureValue;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/FeatureValue$Tag;
    .param p2, "uploadApiRateLimitValue"    # Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    .prologue
    .line 94
    new-instance v0, Lcom/dropbox/core/v2/team/FeatureValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/FeatureValue;-><init>()V

    .line 95
    .local v0, "result":Lcom/dropbox/core/v2/team/FeatureValue;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/FeatureValue;->_tag:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    .line 96
    iput-object p2, v0, Lcom/dropbox/core/v2/team/FeatureValue;->uploadApiRateLimitValue:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    .line 97
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 252
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 275
    :cond_0
    :goto_0
    return v1

    .line 255
    :cond_1
    if-eqz p1, :cond_0

    .line 258
    instance-of v3, p1, Lcom/dropbox/core/v2/team/FeatureValue;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 259
    check-cast v0, Lcom/dropbox/core/v2/team/FeatureValue;

    .line 260
    .local v0, "other":Lcom/dropbox/core/v2/team/FeatureValue;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/FeatureValue;->_tag:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/FeatureValue;->_tag:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne v3, v4, :cond_0

    .line 263
    sget-object v3, Lcom/dropbox/core/v2/team/FeatureValue$1;->$SwitchMap$com$dropbox$core$v2$team$FeatureValue$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/team/FeatureValue;->_tag:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 265
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/team/FeatureValue;->uploadApiRateLimitValue:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/FeatureValue;->uploadApiRateLimitValue:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/FeatureValue;->uploadApiRateLimitValue:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/FeatureValue;->uploadApiRateLimitValue:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/team/FeatureValue;->hasTeamSharedDropboxValue:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/FeatureValue;->hasTeamSharedDropboxValue:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/FeatureValue;->hasTeamSharedDropboxValue:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/FeatureValue;->hasTeamSharedDropboxValue:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 269
    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getHasTeamSharedDropboxValue()Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->_tag:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_SHARED_DROPBOX:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-eq v0, v1, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.HAS_TEAM_SHARED_DROPBOX, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->_tag:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->hasTeamSharedDropboxValue:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    return-object v0
.end method

.method public getUploadApiRateLimitValue()Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->_tag:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->UPLOAD_API_RATE_LIMIT:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-eq v0, v1, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.UPLOAD_API_RATE_LIMIT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/FeatureValue;->_tag:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->uploadApiRateLimitValue:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 242
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/FeatureValue;->_tag:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/FeatureValue;->uploadApiRateLimitValue:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/FeatureValue;->hasTeamSharedDropboxValue:Lcom/dropbox/core/v2/team/HasTeamSharedDropboxValue;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 247
    .local v0, "hash":I
    return v0
.end method

.method public isHasTeamSharedDropbox()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->_tag:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->HAS_TEAM_SHARED_DROPBOX:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOther()Z
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->_tag:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->OTHER:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUploadApiRateLimit()Z
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->_tag:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/FeatureValue$Tag;->UPLOAD_API_RATE_LIMIT:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/FeatureValue$Tag;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dropbox/core/v2/team/FeatureValue;->_tag:Lcom/dropbox/core/v2/team/FeatureValue$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    sget-object v0, Lcom/dropbox/core/v2/team/FeatureValue$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/FeatureValue$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/FeatureValue$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    sget-object v0, Lcom/dropbox/core/v2/team/FeatureValue$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/FeatureValue$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/FeatureValue$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
