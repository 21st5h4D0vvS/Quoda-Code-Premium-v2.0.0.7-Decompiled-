.class public final Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
.super Ljava/lang/Object;
.source "DeleteBatchResultEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;,
        Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;
    }
.end annotation


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

.field private failureValue:Lcom/dropbox/core/v2/files/DeleteError;

.field private successValue:Lcom/dropbox/core/v2/files/DeleteBatchResultData;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;)Lcom/dropbox/core/v2/files/DeleteBatchResultData;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;)Lcom/dropbox/core/v2/files/DeleteError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/DeleteError;

    return-object v0
.end method

.method public static failure(Lcom/dropbox/core/v2/files/DeleteError;)Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/files/DeleteError;

    .prologue
    .line 172
    if-nez p0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->FAILURE:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->withTagAndFailure(Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;Lcom/dropbox/core/v2/files/DeleteError;)Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    move-result-object v0

    return-object v0
.end method

.method public static success(Lcom/dropbox/core/v2/files/DeleteBatchResultData;)Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    .prologue
    .line 126
    if-nez p0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->SUCCESS:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->withTagAndSuccess(Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;Lcom/dropbox/core/v2/files/DeleteBatchResultData;)Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;)Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    .prologue
    .line 51
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;-><init>()V

    .line 52
    .local v0, "result":Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
    iput-object p1, v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    .line 53
    return-object v0
.end method

.method private withTagAndFailure(Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;Lcom/dropbox/core/v2/files/DeleteError;)Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;
    .param p2, "failureValue"    # Lcom/dropbox/core/v2/files/DeleteError;

    .prologue
    .line 80
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;-><init>()V

    .line 81
    .local v0, "result":Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
    iput-object p1, v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    .line 82
    iput-object p2, v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/DeleteError;

    .line 83
    return-object v0
.end method

.method private withTagAndSuccess(Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;Lcom/dropbox/core/v2/files/DeleteBatchResultData;)Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;
    .param p2, "successValue"    # Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    .prologue
    .line 65
    new-instance v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;-><init>()V

    .line 66
    .local v0, "result":Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
    iput-object p1, v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    .line 67
    iput-object p2, v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    .line 68
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 205
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 226
    :cond_0
    :goto_0
    return v1

    .line 208
    :cond_1
    if-eqz p1, :cond_0

    .line 211
    instance-of v3, p1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 212
    check-cast v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;

    .line 213
    .local v0, "other":Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    if-ne v3, v4, :cond_0

    .line 216
    sget-object v3, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$1;->$SwitchMap$com$dropbox$core$v2$files$DeleteBatchResultEntry$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 218
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/DeleteBatchResultData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/DeleteError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/DeleteError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/DeleteError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/DeleteError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/DeleteError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFailureValue()Lcom/dropbox/core/v2/files/DeleteError;
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->FAILURE:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    if-eq v0, v1, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.FAILURE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/DeleteError;

    return-object v0
.end method

.method public getSuccessValue()Lcom/dropbox/core/v2/files/DeleteBatchResultData;
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->SUCCESS:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    if-eq v0, v1, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.SUCCESS, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 195
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->successValue:Lcom/dropbox/core/v2/files/DeleteBatchResultData;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->failureValue:Lcom/dropbox/core/v2/files/DeleteError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 200
    .local v0, "hash":I
    return v0
.end method

.method public isFailure()Z
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->FAILURE:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;->SUCCESS:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry;->_tag:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    sget-object v0, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/DeleteBatchResultEntry$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
