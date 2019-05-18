.class public final Lcom/dropbox/core/v2/files/RestoreError;
.super Ljava/lang/Object;
.source "RestoreError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/RestoreError$Serializer;,
        Lcom/dropbox/core/v2/files/RestoreError$Tag;
    }
.end annotation


# static fields
.field public static final INVALID_REVISION:Lcom/dropbox/core/v2/files/RestoreError;

.field public static final OTHER:Lcom/dropbox/core/v2/files/RestoreError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/files/RestoreError$Tag;

.field private pathLookupValue:Lcom/dropbox/core/v2/files/LookupError;

.field private pathWriteValue:Lcom/dropbox/core/v2/files/WriteError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/dropbox/core/v2/files/RestoreError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RestoreError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RestoreError$Tag;->INVALID_REVISION:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RestoreError;->withTag(Lcom/dropbox/core/v2/files/RestoreError$Tag;)Lcom/dropbox/core/v2/files/RestoreError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RestoreError;->INVALID_REVISION:Lcom/dropbox/core/v2/files/RestoreError;

    .line 69
    new-instance v0, Lcom/dropbox/core/v2/files/RestoreError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RestoreError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RestoreError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/files/RestoreError;->withTag(Lcom/dropbox/core/v2/files/RestoreError$Tag;)Lcom/dropbox/core/v2/files/RestoreError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/files/RestoreError;->OTHER:Lcom/dropbox/core/v2/files/RestoreError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/files/RestoreError;)Lcom/dropbox/core/v2/files/LookupError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/RestoreError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RestoreError;->pathLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/files/RestoreError;)Lcom/dropbox/core/v2/files/WriteError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/files/RestoreError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RestoreError;->pathWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public static pathLookup(Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RestoreError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/files/LookupError;

    .prologue
    .line 167
    if-nez p0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/RestoreError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RestoreError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RestoreError$Tag;->PATH_LOOKUP:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/RestoreError;->withTagAndPathLookup(Lcom/dropbox/core/v2/files/RestoreError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RestoreError;

    move-result-object v0

    return-object v0
.end method

.method public static pathWrite(Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RestoreError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/files/WriteError;

    .prologue
    .line 215
    if-nez p0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/files/RestoreError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RestoreError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/files/RestoreError$Tag;->PATH_WRITE:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/files/RestoreError;->withTagAndPathWrite(Lcom/dropbox/core/v2/files/RestoreError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RestoreError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/files/RestoreError$Tag;)Lcom/dropbox/core/v2/files/RestoreError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/RestoreError$Tag;

    .prologue
    .line 87
    new-instance v0, Lcom/dropbox/core/v2/files/RestoreError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RestoreError;-><init>()V

    .line 88
    .local v0, "result":Lcom/dropbox/core/v2/files/RestoreError;
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RestoreError;->_tag:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    .line 89
    return-object v0
.end method

.method private withTagAndPathLookup(Lcom/dropbox/core/v2/files/RestoreError$Tag;Lcom/dropbox/core/v2/files/LookupError;)Lcom/dropbox/core/v2/files/RestoreError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/RestoreError$Tag;
    .param p2, "pathLookupValue"    # Lcom/dropbox/core/v2/files/LookupError;

    .prologue
    .line 102
    new-instance v0, Lcom/dropbox/core/v2/files/RestoreError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RestoreError;-><init>()V

    .line 103
    .local v0, "result":Lcom/dropbox/core/v2/files/RestoreError;
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RestoreError;->_tag:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    .line 104
    iput-object p2, v0, Lcom/dropbox/core/v2/files/RestoreError;->pathLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    .line 105
    return-object v0
.end method

.method private withTagAndPathWrite(Lcom/dropbox/core/v2/files/RestoreError$Tag;Lcom/dropbox/core/v2/files/WriteError;)Lcom/dropbox/core/v2/files/RestoreError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/files/RestoreError$Tag;
    .param p2, "pathWriteValue"    # Lcom/dropbox/core/v2/files/WriteError;

    .prologue
    .line 118
    new-instance v0, Lcom/dropbox/core/v2/files/RestoreError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/files/RestoreError;-><init>()V

    .line 119
    .local v0, "result":Lcom/dropbox/core/v2/files/RestoreError;
    iput-object p1, v0, Lcom/dropbox/core/v2/files/RestoreError;->_tag:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    .line 120
    iput-object p2, v0, Lcom/dropbox/core/v2/files/RestoreError;->pathWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    .line 121
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 272
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 297
    :cond_0
    :goto_0
    return v1

    .line 275
    :cond_1
    if-eqz p1, :cond_0

    .line 278
    instance-of v3, p1, Lcom/dropbox/core/v2/files/RestoreError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 279
    check-cast v0, Lcom/dropbox/core/v2/files/RestoreError;

    .line 280
    .local v0, "other":Lcom/dropbox/core/v2/files/RestoreError;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RestoreError;->_tag:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RestoreError;->_tag:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    if-ne v3, v4, :cond_0

    .line 283
    sget-object v3, Lcom/dropbox/core/v2/files/RestoreError$1;->$SwitchMap$com$dropbox$core$v2$files$RestoreError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/files/RestoreError;->_tag:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/RestoreError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 285
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RestoreError;->pathLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RestoreError;->pathLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RestoreError;->pathLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RestoreError;->pathLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/LookupError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 287
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/files/RestoreError;->pathWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RestoreError;->pathWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RestoreError;->pathWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/RestoreError;->pathWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/WriteError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 289
    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 291
    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPathLookupValue()Lcom/dropbox/core/v2/files/LookupError;
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RestoreError;->_tag:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RestoreError$Tag;->PATH_LOOKUP:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    if-eq v0, v1, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH_LOOKUP, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RestoreError;->_tag:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RestoreError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RestoreError;->pathLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    return-object v0
.end method

.method public getPathWriteValue()Lcom/dropbox/core/v2/files/WriteError;
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RestoreError;->_tag:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RestoreError$Tag;->PATH_WRITE:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    if-eq v0, v1, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.PATH_WRITE, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/files/RestoreError;->_tag:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/files/RestoreError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RestoreError;->pathWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 262
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RestoreError;->_tag:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RestoreError;->pathLookupValue:Lcom/dropbox/core/v2/files/LookupError;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/RestoreError;->pathWriteValue:Lcom/dropbox/core/v2/files/WriteError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 267
    .local v0, "hash":I
    return v0
.end method

.method public isInvalidRevision()Z
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RestoreError;->_tag:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RestoreError$Tag;->INVALID_REVISION:Lcom/dropbox/core/v2/files/RestoreError$Tag;

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
    .line 257
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RestoreError;->_tag:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RestoreError$Tag;->OTHER:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPathLookup()Z
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RestoreError;->_tag:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RestoreError$Tag;->PATH_LOOKUP:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPathWrite()Z
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RestoreError;->_tag:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/files/RestoreError$Tag;->PATH_WRITE:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/files/RestoreError$Tag;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/dropbox/core/v2/files/RestoreError;->_tag:Lcom/dropbox/core/v2/files/RestoreError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    sget-object v0, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RestoreError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    sget-object v0, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/RestoreError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/RestoreError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
