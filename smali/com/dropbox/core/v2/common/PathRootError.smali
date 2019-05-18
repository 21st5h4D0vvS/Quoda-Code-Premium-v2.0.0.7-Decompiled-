.class public final Lcom/dropbox/core/v2/common/PathRootError;
.super Ljava/lang/Object;
.source "PathRootError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/common/PathRootError$Serializer;,
        Lcom/dropbox/core/v2/common/PathRootError$Tag;
    }
.end annotation


# static fields
.field public static final NO_PERMISSION:Lcom/dropbox/core/v2/common/PathRootError;

.field public static final OTHER:Lcom/dropbox/core/v2/common/PathRootError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/common/PathRootError$Tag;

.field private invalidValue:Lcom/dropbox/core/v2/common/InvalidPathRootError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/dropbox/core/v2/common/PathRootError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/common/PathRootError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/common/PathRootError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/common/PathRootError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/common/PathRootError;->withTag(Lcom/dropbox/core/v2/common/PathRootError$Tag;)Lcom/dropbox/core/v2/common/PathRootError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/common/PathRootError;->NO_PERMISSION:Lcom/dropbox/core/v2/common/PathRootError;

    .line 68
    new-instance v0, Lcom/dropbox/core/v2/common/PathRootError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/common/PathRootError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/common/PathRootError$Tag;->OTHER:Lcom/dropbox/core/v2/common/PathRootError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/common/PathRootError;->withTag(Lcom/dropbox/core/v2/common/PathRootError$Tag;)Lcom/dropbox/core/v2/common/PathRootError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/common/PathRootError;->OTHER:Lcom/dropbox/core/v2/common/PathRootError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/common/PathRootError;)Lcom/dropbox/core/v2/common/InvalidPathRootError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/common/PathRootError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/common/PathRootError;->invalidValue:Lcom/dropbox/core/v2/common/InvalidPathRootError;

    return-object v0
.end method

.method public static invalid(Lcom/dropbox/core/v2/common/InvalidPathRootError;)Lcom/dropbox/core/v2/common/PathRootError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/common/InvalidPathRootError;

    .prologue
    .line 150
    if-nez p0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/common/PathRootError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/common/PathRootError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/common/PathRootError$Tag;->INVALID:Lcom/dropbox/core/v2/common/PathRootError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/common/PathRootError;->withTagAndInvalid(Lcom/dropbox/core/v2/common/PathRootError$Tag;Lcom/dropbox/core/v2/common/InvalidPathRootError;)Lcom/dropbox/core/v2/common/PathRootError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/common/PathRootError$Tag;)Lcom/dropbox/core/v2/common/PathRootError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/common/PathRootError$Tag;

    .prologue
    .line 85
    new-instance v0, Lcom/dropbox/core/v2/common/PathRootError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/common/PathRootError;-><init>()V

    .line 86
    .local v0, "result":Lcom/dropbox/core/v2/common/PathRootError;
    iput-object p1, v0, Lcom/dropbox/core/v2/common/PathRootError;->_tag:Lcom/dropbox/core/v2/common/PathRootError$Tag;

    .line 87
    return-object v0
.end method

.method private withTagAndInvalid(Lcom/dropbox/core/v2/common/PathRootError$Tag;Lcom/dropbox/core/v2/common/InvalidPathRootError;)Lcom/dropbox/core/v2/common/PathRootError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/common/PathRootError$Tag;
    .param p2, "invalidValue"    # Lcom/dropbox/core/v2/common/InvalidPathRootError;

    .prologue
    .line 100
    new-instance v0, Lcom/dropbox/core/v2/common/PathRootError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/common/PathRootError;-><init>()V

    .line 101
    .local v0, "result":Lcom/dropbox/core/v2/common/PathRootError;
    iput-object p1, v0, Lcom/dropbox/core/v2/common/PathRootError;->_tag:Lcom/dropbox/core/v2/common/PathRootError$Tag;

    .line 102
    iput-object p2, v0, Lcom/dropbox/core/v2/common/PathRootError;->invalidValue:Lcom/dropbox/core/v2/common/InvalidPathRootError;

    .line 103
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 207
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 230
    :cond_0
    :goto_0
    return v1

    .line 210
    :cond_1
    if-eqz p1, :cond_0

    .line 213
    instance-of v3, p1, Lcom/dropbox/core/v2/common/PathRootError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 214
    check-cast v0, Lcom/dropbox/core/v2/common/PathRootError;

    .line 215
    .local v0, "other":Lcom/dropbox/core/v2/common/PathRootError;
    iget-object v3, p0, Lcom/dropbox/core/v2/common/PathRootError;->_tag:Lcom/dropbox/core/v2/common/PathRootError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/common/PathRootError;->_tag:Lcom/dropbox/core/v2/common/PathRootError$Tag;

    if-ne v3, v4, :cond_0

    .line 218
    sget-object v3, Lcom/dropbox/core/v2/common/PathRootError$1;->$SwitchMap$com$dropbox$core$v2$common$PathRootError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/common/PathRootError;->_tag:Lcom/dropbox/core/v2/common/PathRootError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/common/PathRootError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 220
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/common/PathRootError;->invalidValue:Lcom/dropbox/core/v2/common/InvalidPathRootError;

    iget-object v4, v0, Lcom/dropbox/core/v2/common/PathRootError;->invalidValue:Lcom/dropbox/core/v2/common/InvalidPathRootError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/common/PathRootError;->invalidValue:Lcom/dropbox/core/v2/common/InvalidPathRootError;

    iget-object v4, v0, Lcom/dropbox/core/v2/common/PathRootError;->invalidValue:Lcom/dropbox/core/v2/common/InvalidPathRootError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/common/InvalidPathRootError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 222
    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 224
    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getInvalidValue()Lcom/dropbox/core/v2/common/InvalidPathRootError;
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/dropbox/core/v2/common/PathRootError;->_tag:Lcom/dropbox/core/v2/common/PathRootError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/common/PathRootError$Tag;->INVALID:Lcom/dropbox/core/v2/common/PathRootError$Tag;

    if-eq v0, v1, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.INVALID, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/common/PathRootError;->_tag:Lcom/dropbox/core/v2/common/PathRootError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/common/PathRootError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/common/PathRootError;->invalidValue:Lcom/dropbox/core/v2/common/InvalidPathRootError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 198
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/common/PathRootError;->_tag:Lcom/dropbox/core/v2/common/PathRootError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/common/PathRootError;->invalidValue:Lcom/dropbox/core/v2/common/InvalidPathRootError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 202
    .local v0, "hash":I
    return v0
.end method

.method public isInvalid()Z
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dropbox/core/v2/common/PathRootError;->_tag:Lcom/dropbox/core/v2/common/PathRootError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/common/PathRootError$Tag;->INVALID:Lcom/dropbox/core/v2/common/PathRootError$Tag;

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
    .line 182
    iget-object v0, p0, Lcom/dropbox/core/v2/common/PathRootError;->_tag:Lcom/dropbox/core/v2/common/PathRootError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/common/PathRootError$Tag;->NO_PERMISSION:Lcom/dropbox/core/v2/common/PathRootError$Tag;

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
    .line 193
    iget-object v0, p0, Lcom/dropbox/core/v2/common/PathRootError;->_tag:Lcom/dropbox/core/v2/common/PathRootError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/common/PathRootError$Tag;->OTHER:Lcom/dropbox/core/v2/common/PathRootError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/common/PathRootError$Tag;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dropbox/core/v2/common/PathRootError;->_tag:Lcom/dropbox/core/v2/common/PathRootError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    sget-object v0, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/common/PathRootError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    sget-object v0, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/common/PathRootError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/common/PathRootError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
