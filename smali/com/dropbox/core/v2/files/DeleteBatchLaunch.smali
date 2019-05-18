.class public final Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
.super Ljava/lang/Object;
.source "DeleteBatchLaunch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;,
        Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/files/DeleteBatchLaunch;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

.field private asyncJobIdValue:Ljava/lang/String;

.field private completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->OTHER:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->withTag(Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->OTHER:Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/DeleteBatchLaunch;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/DeleteBatchLaunch;)Lcom/dropbox/core/v2/files/DeleteBatchResult;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    return-object v0
.end method

.method public static asyncJobId(Ljava/lang/String;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 174
    if-nez p0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 178
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->withTagAndAsyncJobId(Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    move-result-object v0

    return-object v0
.end method

.method public static complete(Lcom/dropbox/core/v2/files/DeleteBatchResult;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/files/DeleteBatchResult;

    .prologue
    .line 226
    if-nez p0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->withTagAndComplete(Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;Lcom/dropbox/core/v2/files/DeleteBatchResult;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    .prologue
    .line 84
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;-><init>()V

    .line 85
    .local v0, "result":Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    iput-object p1, v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    .line 86
    return-object v0
.end method

.method private withTagAndAsyncJobId(Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;
    .param p2, "asyncJobIdValue"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;-><init>()V

    .line 105
    .local v0, "result":Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    iput-object p1, v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    .line 106
    iput-object p2, v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    .line 107
    return-object v0
.end method

.method private withTagAndComplete(Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;Lcom/dropbox/core/v2/files/DeleteBatchResult;)Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;
    .param p2, "completeValue"    # Lcom/dropbox/core/v2/files/DeleteBatchResult;

    .prologue
    .line 122
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;-><init>()V

    .line 123
    .local v0, "result":Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    iput-object p1, v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    .line 124
    iput-object p2, v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    .line 125
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 271
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 294
    :cond_0
    :goto_0
    return v1

    .line 274
    :cond_1
    if-eqz p1, :cond_0

    .line 277
    instance-of v3, p1, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 278
    check-cast v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;

    .line 279
    .local v0, "other":Lcom/dropbox/core/v2/files/DeleteBatchLaunch;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    if-ne v3, v4, :cond_0

    .line 282
    sget-object v3, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$1;->$SwitchMap$com$dropbox$core$v2$files$DeleteBatchLaunch$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 284
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 286
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/DeleteBatchResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 288
    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAsyncJobIdValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    if-eq v0, v1, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ASYNC_JOB_ID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    return-object v0
.end method

.method public getCompleteValue()Lcom/dropbox/core/v2/files/DeleteBatchResult;
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    if-eq v0, v1, :cond_0

    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.COMPLETE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 260
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->asyncJobIdValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->completeValue:Lcom/dropbox/core/v2/files/DeleteBatchResult;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 265
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 266
    return v0
.end method

.method public isAsyncJobId()Z
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->ASYNC_JOB_ID:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

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
    .line 209
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->COMPLETE:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

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
    .line 255
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;->OTHER:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/DeleteBatchLaunch$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
