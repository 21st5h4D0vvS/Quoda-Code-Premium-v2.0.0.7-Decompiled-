.class public final Lcom/dropbox/core/v2/sharing/UnmountFolderError;
.super Ljava/lang/Object;
.source "UnmountFolderError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/UnmountFolderError$Serializer;,
        Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;
    }
.end annotation


# static fields
.field public static final NOT_UNMOUNTABLE:Lcom/dropbox/core/v2/sharing/UnmountFolderError;

.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UnmountFolderError;

.field public static final OTHER:Lcom/dropbox/core/v2/sharing/UnmountFolderError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

.field private accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnmountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->withTag(Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;)Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnmountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->NOT_UNMOUNTABLE:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->withTag(Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;)Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->NOT_UNMOUNTABLE:Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    .line 74
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnmountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->withTag(Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;)Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->OTHER:Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/sharing/UnmountFolderError;)Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public static accessError(Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UnmountFolderError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

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
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnmountFolderError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->withTagAndAccessError(Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;)Lcom/dropbox/core/v2/sharing/UnmountFolderError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    .prologue
    .line 91
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnmountFolderError;-><init>()V

    .line 92
    .local v0, "result":Lcom/dropbox/core/v2/sharing/UnmountFolderError;
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    .line 93
    return-object v0
.end method

.method private withTagAndAccessError(Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;)Lcom/dropbox/core/v2/sharing/UnmountFolderError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;
    .param p2, "accessErrorValue"    # Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .prologue
    .line 105
    new-instance v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UnmountFolderError;-><init>()V

    .line 106
    .local v0, "result":Lcom/dropbox/core/v2/sharing/UnmountFolderError;
    iput-object p1, v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    .line 107
    iput-object p2, v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    .line 108
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 220
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 245
    :cond_0
    :goto_0
    return v1

    .line 223
    :cond_1
    if-eqz p1, :cond_0

    .line 226
    instance-of v3, p1, Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 227
    check-cast v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;

    .line 228
    .local v0, "other":Lcom/dropbox/core/v2/sharing/UnmountFolderError;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    if-ne v3, v4, :cond_0

    .line 231
    sget-object v3, Lcom/dropbox/core/v2/sharing/UnmountFolderError$1;->$SwitchMap$com$dropbox$core$v2$sharing$UnmountFolderError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 233
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 235
    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 237
    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 239
    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAccessErrorValue()Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    if-eq v0, v1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ACCESS_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 211
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->accessErrorValue:Lcom/dropbox/core/v2/sharing/SharedFolderAccessError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 215
    .local v0, "hash":I
    return v0
.end method

.method public isAccessError()Z
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->ACCESS_ERROR:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoPermission()Z
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotUnmountable()Z
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->NOT_UNMOUNTABLE:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

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
    .line 206
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;->OTHER:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnmountFolderError;->_tag:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 251
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 263
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnmountFolderError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UnmountFolderError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
