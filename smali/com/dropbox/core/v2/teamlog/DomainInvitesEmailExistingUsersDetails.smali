.class public Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;
.super Ljava/lang/Object;
.source "DomainInvitesEmailExistingUsersDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;
    }
.end annotation


# instance fields
.field protected final domainName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final numRecipients:J


# direct methods
.method public constructor <init>(Ljava/util/List;J)V
    .locals 4
    .param p2, "numRecipients"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "domainName":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'domainName\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    .local v0, "x":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'domainName\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    .end local v0    # "x":Ljava/lang/String;
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->domainName:Ljava/util/List;

    .line 48
    iput-wide p2, p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->numRecipients:J

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    if-ne p1, p0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    .line 83
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 84
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 88
    check-cast v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;

    .line 89
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->domainName:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->domainName:Ljava/util/List;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->domainName:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->domainName:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->numRecipients:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->numRecipients:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;
    :cond_5
    move v1, v2

    .line 94
    goto :goto_0
.end method

.method public getDomainName()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->domainName:Ljava/util/List;

    return-object v0
.end method

.method public getNumRecipients()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->numRecipients:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 71
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->domainName:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails;->numRecipients:J

    .line 73
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 71
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 75
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DomainInvitesEmailExistingUsersDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
