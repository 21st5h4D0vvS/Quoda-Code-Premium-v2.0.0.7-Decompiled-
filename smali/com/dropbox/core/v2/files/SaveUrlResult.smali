.class public final Lcom/dropbox/core/v2/files/SaveUrlResult;
.super Ljava/lang/Object;
.source "SaveUrlResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;,
        Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;
    }
.end annotation


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

.field private asyncJobIdValue:Ljava/lang/String;

.field private completeValue:Lcom/dropbox/core/v2/files/FileMetadata;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/SaveUrlResult;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/SaveUrlResult;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/SaveUrlResult;)Lcom/dropbox/core/v2/files/FileMetadata;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/SaveUrlResult;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    return-object v0
.end method

.method public static asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/SaveUrlResult;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 141
    if-nez p0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveUrlResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/SaveUrlResult;->withTagAndAsyncJobId(Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/SaveUrlResult;

    move-result-object v0

    return-object v0
.end method

.method public static complete(Lcom/dropbox/core/v2/files/FileMetadata;)Lcom/dropbox/core/v2/files/SaveUrlResult;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/files/FileMetadata;

    .prologue
    .line 193
    if-nez p0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveUrlResult;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/SaveUrlResult;->withTagAndComplete(Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;Lcom/dropbox/core/v2/files/FileMetadata;)Lcom/dropbox/core/v2/files/SaveUrlResult;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;)Lcom/dropbox/core/v2/files/SaveUrlResult;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    .prologue
    .line 59
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveUrlResult;-><init>()V

    .line 60
    .local v0, "result":Lcom/dropbox/core/v2/files/SaveUrlResult;
    iput-object p1, v0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    .line 61
    return-object v0
.end method

.method private withTagAndAsyncJobId(Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/SaveUrlResult;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;
    .param p2, "asyncJobIdValue"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveUrlResult;-><init>()V

    .line 77
    .local v0, "result":Lcom/dropbox/core/v2/files/SaveUrlResult;
    iput-object p1, v0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    .line 78
    iput-object p2, v0, Lcom/dropbox/core/v2/files/SaveUrlResult;->asyncJobIdValue:Ljava/lang/String;

    .line 79
    return-object v0
.end method

.method private withTagAndComplete(Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;Lcom/dropbox/core/v2/files/FileMetadata;)Lcom/dropbox/core/v2/files/SaveUrlResult;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;
    .param p2, "completeValue"    # Lcom/dropbox/core/v2/files/FileMetadata;

    .prologue
    .line 92
    new-instance v0, Lcom/dropbox/core/v2/files/SaveUrlResult;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/SaveUrlResult;-><init>()V

    .line 93
    .local v0, "result":Lcom/dropbox/core/v2/files/SaveUrlResult;
    iput-object p1, v0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    .line 94
    iput-object p2, v0, Lcom/dropbox/core/v2/files/SaveUrlResult;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    .line 95
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 229
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 250
    :cond_0
    :goto_0
    return v1

    .line 232
    :cond_1
    if-eqz p1, :cond_0

    .line 235
    instance-of v3, p1, Lcom/dropbox/core/v2/files/SaveUrlResult;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 236
    check-cast v0, Lcom/dropbox/core/v2/files/SaveUrlResult;

    .line 237
    .local v0, "other":Lcom/dropbox/core/v2/files/SaveUrlResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    if-ne v3, v4, :cond_0

    .line 240
    sget-object v3, Lcom/dropbox/core/v2/files/SaveUrlResult$1;->$SwitchMap$com$dropbox$core$v2$files$SaveUrlResult$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 242
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->asyncJobIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveUrlResult;->asyncJobIdValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->asyncJobIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveUrlResult;->asyncJobIdValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveUrlResult;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/SaveUrlResult;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/FileMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 240
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
    .line 162
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    if-eq v0, v1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/files/FileMetadata;
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    if-eq v0, v1, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 218
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->asyncJobIdValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->completeValue:Lcom/dropbox/core/v2/files/FileMetadata;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 223
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 224
    return v0
.end method

.method public isAsyncJobId()Z
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

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
    .line 176
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/files/SaveUrlResult;->_tag:Lcom/dropbox/core/v2/files/SaveUrlResult$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 268
    sget-object v0, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/SaveUrlResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
