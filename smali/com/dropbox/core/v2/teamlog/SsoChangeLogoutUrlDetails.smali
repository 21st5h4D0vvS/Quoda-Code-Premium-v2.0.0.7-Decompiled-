.class public Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;
.super Ljava/lang/Object;
.source "SsoChangeLogoutUrlDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Serializer;,
        Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Builder;
    }
.end annotation


# instance fields
.field protected final newValue:Ljava/lang/String;

.field protected final previousValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "previousValue"    # Ljava/lang/String;
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;->previousValue:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;->newValue:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Builder;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    if-ne p1, p0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v1

    .line 145
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 146
    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 150
    check-cast v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;

    .line 151
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;->previousValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;->previousValue:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;->previousValue:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;->previousValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;->previousValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;->newValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;->newValue:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;->newValue:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;->newValue:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;->newValue:Ljava/lang/String;

    .line 152
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;
    :cond_5
    move v1, v2

    .line 156
    goto :goto_0
.end method

.method public getNewValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;->newValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;->previousValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 133
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;->previousValue:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails;->newValue:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 137
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/SsoChangeLogoutUrlDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
