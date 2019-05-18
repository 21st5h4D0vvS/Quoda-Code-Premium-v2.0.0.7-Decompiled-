.class public final Lcom/dropbox/core/v2/team/TeamMemberStatus;
.super Ljava/lang/Object;
.source "TeamMemberStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;,
        Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;
    }
.end annotation


# static fields
.field public static final ACTIVE:Lcom/dropbox/core/v2/team/TeamMemberStatus;

.field public static final INVITED:Lcom/dropbox/core/v2/team/TeamMemberStatus;

.field public static final SUSPENDED:Lcom/dropbox/core/v2/team/TeamMemberStatus;


# instance fields
.field private _tag:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

.field private removedValue:Lcom/dropbox/core/v2/team/RemovedStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamMemberStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->ACTIVE:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->withTag(Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;)Lcom/dropbox/core/v2/team/TeamMemberStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->ACTIVE:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    .line 60
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamMemberStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->INVITED:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->withTag(Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;)Lcom/dropbox/core/v2/team/TeamMemberStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->INVITED:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    .line 65
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamMemberStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->SUSPENDED:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    invoke-direct {v0, v1}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->withTag(Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;)Lcom/dropbox/core/v2/team/TeamMemberStatus;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->SUSPENDED:Lcom/dropbox/core/v2/team/TeamMemberStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/dropbox/core/v2/team/TeamMemberStatus;)Lcom/dropbox/core/v2/team/RemovedStatus;
    .locals 1
    .param p0, "x0"    # Lcom/dropbox/core/v2/team/TeamMemberStatus;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->removedValue:Lcom/dropbox/core/v2/team/RemovedStatus;

    return-object v0
.end method

.method public static removed(Lcom/dropbox/core/v2/team/RemovedStatus;)Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .locals 2
    .param p0, "value"    # Lcom/dropbox/core/v2/team/RemovedStatus;

    .prologue
    .line 180
    if-nez p0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamMemberStatus;-><init>()V

    sget-object v1, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->REMOVED:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/v2/team/TeamMemberStatus;->withTagAndRemoved(Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;Lcom/dropbox/core/v2/team/RemovedStatus;)Lcom/dropbox/core/v2/team/TeamMemberStatus;

    move-result-object v0

    return-object v0
.end method

.method private withTag(Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;)Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    .prologue
    .line 83
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamMemberStatus;-><init>()V

    .line 84
    .local v0, "result":Lcom/dropbox/core/v2/team/TeamMemberStatus;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->_tag:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    .line 85
    return-object v0
.end method

.method private withTagAndRemoved(Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;Lcom/dropbox/core/v2/team/RemovedStatus;)Lcom/dropbox/core/v2/team/TeamMemberStatus;
    .locals 1
    .param p1, "_tag"    # Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;
    .param p2, "removedValue"    # Lcom/dropbox/core/v2/team/RemovedStatus;

    .prologue
    .line 100
    new-instance v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/TeamMemberStatus;-><init>()V

    .line 101
    .local v0, "result":Lcom/dropbox/core/v2/team/TeamMemberStatus;
    iput-object p1, v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->_tag:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    .line 102
    iput-object p2, v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->removedValue:Lcom/dropbox/core/v2/team/RemovedStatus;

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

    .line 215
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 240
    :cond_0
    :goto_0
    return v1

    .line 218
    :cond_1
    if-eqz p1, :cond_0

    .line 221
    instance-of v3, p1, Lcom/dropbox/core/v2/team/TeamMemberStatus;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 222
    check-cast v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;

    .line 223
    .local v0, "other":Lcom/dropbox/core/v2/team/TeamMemberStatus;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->_tag:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->_tag:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    if-ne v3, v4, :cond_0

    .line 226
    sget-object v3, Lcom/dropbox/core/v2/team/TeamMemberStatus$1;->$SwitchMap$com$dropbox$core$v2$team$TeamMemberStatus$Tag:[I

    iget-object v4, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->_tag:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    invoke-virtual {v4}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 228
    goto :goto_0

    :pswitch_1
    move v1, v2

    .line 230
    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 232
    goto :goto_0

    .line 234
    :pswitch_3
    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->removedValue:Lcom/dropbox/core/v2/team/RemovedStatus;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->removedValue:Lcom/dropbox/core/v2/team/RemovedStatus;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->removedValue:Lcom/dropbox/core/v2/team/RemovedStatus;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->removedValue:Lcom/dropbox/core/v2/team/RemovedStatus;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/RemovedStatus;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRemovedValue()Lcom/dropbox/core/v2/team/RemovedStatus;
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->_tag:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->REMOVED:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    if-eq v0, v1, :cond_0

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid tag: required Tag.REMOVED, but was Tag."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->_tag:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    invoke-virtual {v2}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->removedValue:Lcom/dropbox/core/v2/team/RemovedStatus;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 206
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->_tag:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->removedValue:Lcom/dropbox/core/v2/team/RemovedStatus;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 210
    .local v0, "hash":I
    return v0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->_tag:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->ACTIVE:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvited()Z
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->_tag:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->INVITED:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemoved()Z
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->_tag:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->REMOVED:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuspended()Z
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->_tag:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    sget-object v1, Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;->SUSPENDED:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tag()Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/dropbox/core/v2/team/TeamMemberStatus;->_tag:Lcom/dropbox/core/v2/team/TeamMemberStatus$Tag;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    sget-object v0, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/TeamMemberStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
