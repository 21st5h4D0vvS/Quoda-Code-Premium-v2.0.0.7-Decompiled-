.class public final Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
.super Ljava/lang/Object;
.source "ShareFolderLaunch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Serializer;,
        Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;
    }
.end annotation


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

.field private asyncJobIdValue:Ljava/lang/String;

.field private completeValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->completeValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    return-object v0
.end method

.method public static asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 137
    if-nez p0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->withTagAndAsyncJobId(Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    move-result-object v0

    return-object v0
.end method

.method public static complete(Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    .prologue
    .line 189
    if-nez p0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->withTagAndComplete(Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    .prologue
    .line 56
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;-><init>()V

    .line 57
    .local v0, "result":Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    .line 58
    return-object v0
.end method

.method private withTagAndAsyncJobId(Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;
    .param p2, "asyncJobIdValue"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;-><init>()V

    .line 74
    .local v0, "result":Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    .line 75
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->asyncJobIdValue:Ljava/lang/String;

    .line 76
    return-object v0
.end method

.method private withTagAndComplete(Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;
    .param p2, "completeValue"    # Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    .prologue
    .line 88
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;-><init>()V

    .line 89
    .local v0, "result":Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    .line 90
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->completeValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    .line 91
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 223
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 244
    :cond_0
    :goto_0
    return v1

    .line 226
    :cond_1
    if-eqz p1, :cond_0

    .line 229
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 230
    check-cast v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;

    .line 231
    .local v0, "other":Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    if-ne v3, v4, :cond_0

    .line 234
    sget-object v3, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$1;->$SwitchMap$com$dropbox$core$v2$sharing$ShareFolderLaunch$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 236
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->asyncJobIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->asyncJobIdValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->asyncJobIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->asyncJobIdValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 238
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->completeValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->completeValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->completeValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->completeValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAsyncJobIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    if-eq v0, v1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    if-eq v0, v1, :cond_0

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->completeValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 212
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->asyncJobIdValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->completeValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 217
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 218
    return v0
.end method

.method public isAsyncJobId()Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderLaunch$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
