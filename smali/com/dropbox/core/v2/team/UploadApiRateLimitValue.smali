.class public final Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
.super Ljava/lang/Object;
.source "UploadApiRateLimitValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;,
        Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;
    }
.end annotation


# static fields
.field public static final OTHER:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

.field public static final UNLIMITED:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

.field private limitValue:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->UNLIMITED:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->withTag(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->UNLIMITED:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    .line 70
    new-instance v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->OTHER:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->withTag(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->OTHER:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

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

.method static synthetic access$000(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->limitValue:Ljava/lang/Long;

    return-object v0
.end method

.method public static limit(J)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    .locals 4
    .param p0, "value"    # J

    .prologue
    .line 158
    new-instance v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->LIMIT:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->withTagAndLimit(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;Ljava/lang/Long;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    .prologue
    .line 88
    new-instance v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;-><init>()V

    .line 89
    .local v0, "result":Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->_tag:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    .line 90
    return-object v0
.end method

.method private withTagAndLimit(Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;Ljava/lang/Long;)Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;
    .param p2, "limitValue"    # Ljava/lang/Long;

    .prologue
    .line 100
    new-instance v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;-><init>()V

    .line 101
    .local v0, "result":Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->_tag:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    .line 102
    iput-object p2, v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->limitValue:Ljava/lang/Long;

    .line 103
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    if-ne p1, p0, :cond_1

    .line 223
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 203
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 204
    goto :goto_0

    .line 206
    :cond_2
    instance-of v3, p1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 207
    check-cast v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;

    .line 208
    .local v0, "other":Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->_tag:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->_tag:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 209
    goto :goto_0

    .line 211
    :cond_3
    sget-object v3, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$1;->$SwitchMap$com$dropbox$core$v2$team$UploadApiRateLimitValue$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->_tag:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 219
    goto :goto_0

    .line 215
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->limitValue:Ljava/lang/Long;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->limitValue:Ljava/lang/Long;

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;
    :cond_4
    move v1, v2

    .line 223
    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLimitValue()J
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->_tag:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->LIMIT:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    if-eq v0, v1, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.LIMIT, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->_tag:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->limitValue:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 191
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->_tag:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->limitValue:Ljava/lang/Long;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 195
    .local v0, "hash":I
    return v0
.end method

.method public isLimit()Z
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->_tag:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->LIMIT:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

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
    .line 186
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->_tag:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->OTHER:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnlimited()Z
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->_tag:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;->UNLIMITED:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue;->_tag:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    sget-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    sget-object v0, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/UploadApiRateLimitValue$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
