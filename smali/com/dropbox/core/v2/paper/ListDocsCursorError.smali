.class public final Lcom/dropbox/core/v2/paper/ListDocsCursorError;
.super Ljava/lang/Object;
.source "ListDocsCursorError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/ListDocsCursorError$Serializer;,
        Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/paper/ListDocsCursorError;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

.field private cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListDocsCursorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;->OTHER:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->withTag(Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;)Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->OTHER:Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/paper/ListDocsCursorError;)Lcom/dropbox/core/v2/paper/PaperApiCursorError;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    return-object v0
.end method

.method public static cursorError(Lcom/dropbox/core/v2/paper/PaperApiCursorError;)Lcom/dropbox/core/v2/paper/ListDocsCursorError;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    .prologue
    .line 134
    if-nez p0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListDocsCursorError;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;->CURSOR_ERROR:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->withTagAndCursorError(Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;Lcom/dropbox/core/v2/paper/PaperApiCursorError;)Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;)Lcom/dropbox/core/v2/paper/ListDocsCursorError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    .prologue
    .line 71
    new-instance v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListDocsCursorError;-><init>()V

    .line 72
    .local v0, "result":Lcom/dropbox/core/v2/paper/ListDocsCursorError;
    iput-object p1, v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    .line 73
    return-object v0
.end method

.method private withTagAndCursorError(Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;Lcom/dropbox/core/v2/paper/PaperApiCursorError;)Lcom/dropbox/core/v2/paper/ListDocsCursorError;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;
    .param p2, "cursorErrorValue"    # Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    .prologue
    .line 85
    new-instance v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListDocsCursorError;-><init>()V

    .line 86
    .local v0, "result":Lcom/dropbox/core/v2/paper/ListDocsCursorError;
    iput-object p1, v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    .line 87
    iput-object p2, v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    .line 88
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 178
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 199
    :cond_0
    :goto_0
    return v1

    .line 181
    :cond_1
    if-eqz p1, :cond_0

    .line 184
    instance-of v3, p1, Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 185
    check-cast v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;

    .line 186
    .local v0, "other":Lcom/dropbox/core/v2/paper/ListDocsCursorError;
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    if-ne v3, v4, :cond_0

    .line 189
    sget-object v3, Lcom/dropbox/core/v2/paper/ListDocsCursorError$1;->$SwitchMap$com$dropbox$core$v2$paper$ListDocsCursorError$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 191
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/paper/PaperApiCursorError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 193
    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCursorErrorValue()Lcom/dropbox/core/v2/paper/PaperApiCursorError;
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;->CURSOR_ERROR:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    if-eq v0, v1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.CURSOR_ERROR, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 169
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->cursorErrorValue:Lcom/dropbox/core/v2/paper/PaperApiCursorError;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 173
    .local v0, "hash":I
    return v0
.end method

.method public isCursorError()Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;->CURSOR_ERROR:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

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
    .line 164
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    sget-object v1, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;->OTHER:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/ListDocsCursorError;->_tag:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    sget-object v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    sget-object v0, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListDocsCursorError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/ListDocsCursorError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
