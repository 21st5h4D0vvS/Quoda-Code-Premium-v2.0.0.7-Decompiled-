.class public final Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
.super Ljava/lang/Object;
.source "ShareFolderJobStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Serializer;,
        Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;
    }
.end annotation


# static fields
.field public static final IN_PROGRESS:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

.field private completeValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

.field private failedValue:Lcom/dropbox/core/v2/sharing/ShareFolderError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->withTag(Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;)Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;)Lcom/dropbox/core/v2/sharing/ShareFolderError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    return-object v0
.end method

.method public static complete(Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    .prologue
    .line 151
    if-nez p0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->withTagAndComplete(Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    move-result-object v0

    return-object v0
.end method

.method public static failed(Lcom/dropbox/core/v2/sharing/ShareFolderError;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/ShareFolderError;

    .prologue
    .line 199
    if-nez p0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->withTagAndFailed(Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;Lcom/dropbox/core/v2/sharing/ShareFolderError;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    .prologue
    .line 63
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;-><init>()V

    .line 64
    .local v0, "result":Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    .line 65
    return-object v0
.end method

.method private withTagAndComplete(Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;
    .param p2, "completeValue"    # Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    .prologue
    .line 78
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;-><init>()V

    .line 79
    .local v0, "result":Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    .line 80
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    .line 81
    return-object v0
.end method

.method private withTagAndFailed(Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;Lcom/dropbox/core/v2/sharing/ShareFolderError;)Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;
    .param p2, "failedValue"    # Lcom/dropbox/core/v2/sharing/ShareFolderError;

    .prologue
    .line 93
    new-instance v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;-><init>()V

    .line 94
    .local v0, "result":Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    .line 95
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    .line 96
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 233
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 256
    :cond_0
    :goto_0
    return v1

    .line 236
    :cond_1
    if-eqz p1, :cond_0

    .line 239
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 240
    check-cast v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;

    .line 241
    .local v0, "other":Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    if-ne v3, v4, :cond_0

    .line 244
    sget-object v3, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$1;->$SwitchMap$com$dropbox$core$v2$sharing$ShareFolderJobStatus$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 246
    goto :goto_0

    .line 248
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 250
    :pswitch_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/ShareFolderError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    return-object v0
.end method

.method public getFailedValue()Lcom/dropbox/core/v2/sharing/ShareFolderError;
    .locals 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FAILED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 222
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->completeValue:Lcom/dropbox/core/v2/sharing/SharedFolderMetadata;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->failedValue:Lcom/dropbox/core/v2/sharing/ShareFolderError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 227
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 228
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->COMPLETE:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailed()Z
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->FAILED:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInProgress()Z
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;->IN_PROGRESS:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus;->_tag:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    sget-object v0, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ShareFolderJobStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
