.class public final Lcom/dropbox/core/v2/paper/ListUsersCursorError;
.super Ljava/lang/Object;
.source "ListUsersCursorError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;,
        Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;
    }
.end annotation


# static fields
.field public static final DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/ListUsersCursorError;

.field public static final INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/ListUsersCursorError;

.field public static final OTHER:Lcom/dropbox/core/v2/paper/ListUsersCursorError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

.field private cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->withTag(Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;)Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    .line 62
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->OTHER:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->withTag(Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;)Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->OTHER:Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    .line 66
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->withTag(Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;)Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/paper/ListUsersCursorError;)Lcom/dropbox/core/v2/paper/PaperApiCursorError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    return-object v0
.end method

.method public static cursorError(Lcom/dropbox/core/v2/paper/PaperApiCursorError;)Lcom/dropbox/core/v2/paper/ListUsersCursorError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    .prologue
    .line 176
    if-nez p0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->CURSOR_ERROR:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->withTagAndCursorError(Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;Lcom/dropbox/core/v2/paper/PaperApiCursorError;)Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;)Lcom/dropbox/core/v2/paper/ListUsersCursorError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    .prologue
    .line 83
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;-><init>()V

    .line 84
    .local v0, "result":Lcom/dropbox/core/v2/paper/ListUsersCursorError;
    iput-object p1, v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    .line 85
    return-object v0
.end method

.method private withTagAndCursorError(Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;Lcom/dropbox/core/v2/paper/PaperApiCursorError;)Lcom/dropbox/core/v2/paper/ListUsersCursorError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;
    .param p2, "cursorErrorValue"    # Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    .prologue
    .line 97
    new-instance v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListUsersCursorError;-><init>()V

    .line 98
    .local v0, "result":Lcom/dropbox/core/v2/paper/ListUsersCursorError;
    iput-object p1, v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    .line 99
    iput-object p2, v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    .line 100
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 210
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 235
    :cond_0
    :goto_0
    return v1

    .line 213
    :cond_1
    if-eqz p1, :cond_0

    .line 216
    instance-of v3, p1, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 217
    check-cast v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;

    .line 218
    .local v0, "other":Lcom/dropbox/core/v2/paper/ListUsersCursorError;
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    if-ne v3, v4, :cond_0

    .line 221
    sget-object v3, Lcom/dropbox/core/v2/paper/ListUsersCursorError$1;->$SwitchMap$com$dropbox$core$v2$paper$ListUsersCursorError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 223
    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 225
    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 227
    goto :goto_0

    .line 229
    :pswitch_3
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/paper/PaperApiCursorError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 221
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCursorErrorValue()Lcom/dropbox/core/v2/paper/PaperApiCursorError;
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->CURSOR_ERROR:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    if-eq v0, v1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.CURSOR_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 200
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 204
    .local v0, "hash":I
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 205
    return v0
.end method

.method public isCursorError()Z
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->CURSOR_ERROR:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDocNotFound()Z
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsufficientPermissions()Z
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

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
    .line 137
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;->OTHER:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListUsersCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    sget-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListUsersCursorError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
