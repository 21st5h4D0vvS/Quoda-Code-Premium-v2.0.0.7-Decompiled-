.class public final Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
.super Ljava/lang/Object;
.source "GroupsGetInfoItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;,
        Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;
    }
.end annotation


# instance fields
.field private _tag:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

.field private groupInfoValue:Lcom/dropbox/core/v2/team/GroupFullInfo;

.field private idNotFoundValue:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/GroupsGetInfoItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/dropbox/core/v2/team/GroupsGetInfoItem;)Lcom/dropbox/core/v2/team/GroupFullInfo;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->groupInfoValue:Lcom/dropbox/core/v2/team/GroupFullInfo;

    return-object v0
.end method

.method public static groupInfo(Lcom/dropbox/core/v2/team/GroupFullInfo;)Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/team/GroupFullInfo;

    .prologue
    .line 192
    if-nez p0, :cond_0

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->GROUP_INFO:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->withTagAndGroupInfo(Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;Lcom/dropbox/core/v2/team/GroupFullInfo;)Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    move-result-object v0

    return-object v0
.end method

.method public static idNotFound(Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
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
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->ID_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->withTagAndIdNotFound(Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;)Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    .prologue
    .line 60
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;-><init>()V

    .line 61
    .local v0, "result":Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    .line 62
    return-object v0
.end method

.method private withTagAndGroupInfo(Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;Lcom/dropbox/core/v2/team/GroupFullInfo;)Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;
    .param p2, "groupInfoValue"    # Lcom/dropbox/core/v2/team/GroupFullInfo;

    .prologue
    .line 92
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;-><init>()V

    .line 93
    .local v0, "result":Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    .line 94
    iput-object p2, v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->groupInfoValue:Lcom/dropbox/core/v2/team/GroupFullInfo;

    .line 95
    return-object v0
.end method

.method private withTagAndIdNotFound(Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;Ljava/lang/String;)Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;
    .param p2, "idNotFoundValue"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;-><init>()V

    .line 78
    .local v0, "result":Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    .line 79
    iput-object p2, v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    .line 80
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 227
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 248
    :cond_0
    :goto_0
    return v1

    .line 230
    :cond_1
    if-eqz p1, :cond_0

    .line 233
    instance-of v3, p1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 234
    check-cast v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;

    .line 235
    .local v0, "other":Lcom/dropbox/core/v2/team/GroupsGetInfoItem;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    if-ne v3, v4, :cond_0

    .line 238
    sget-object v3, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$1;->$SwitchMap$com$dropbox$core$v2$team$GroupsGetInfoItem$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 240
    :pswitch_0
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 242
    :pswitch_1
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->groupInfoValue:Lcom/dropbox/core/v2/team/GroupFullInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->groupInfoValue:Lcom/dropbox/core/v2/team/GroupFullInfo;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->groupInfoValue:Lcom/dropbox/core/v2/team/GroupFullInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->groupInfoValue:Lcom/dropbox/core/v2/team/GroupFullInfo;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/GroupFullInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getGroupInfoValue()Lcom/dropbox/core/v2/team/GroupFullInfo;
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->GROUP_INFO:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    if-eq v0, v1, :cond_0

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.GROUP_INFO, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->groupInfoValue:Lcom/dropbox/core/v2/team/GroupFullInfo;

    return-object v0
.end method

.method public getIdNotFoundValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 161
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->ID_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    if-eq v0, v1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.ID_NOT_FOUND, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 217
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->idNotFoundValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->groupInfoValue:Lcom/dropbox/core/v2/team/GroupFullInfo;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 222
    .local v0, "hash":I
    return v0
.end method

.method public isGroupInfo()Z
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->GROUP_INFO:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdNotFound()Z
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;->ID_NOT_FOUND:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem;->_tag:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    sget-object v0, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupsGetInfoItem$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
