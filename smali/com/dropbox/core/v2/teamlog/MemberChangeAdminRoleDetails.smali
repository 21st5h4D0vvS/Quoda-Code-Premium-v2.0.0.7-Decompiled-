.class public Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;
.super Ljava/lang/Object;
.source "MemberChangeAdminRoleDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Serializer;,
        Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Builder;
    }
.end annotation


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/AdminRole;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;-><init>(Lcom/dropbox/core/v2/teamlog/AdminRole;Lcom/dropbox/core/v2/teamlog/AdminRole;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/AdminRole;Lcom/dropbox/core/v2/teamlog/AdminRole;)V
    .locals 0
    .param p1, "newValue"    # Lcom/dropbox/core/v2/teamlog/AdminRole;
    .param p2, "previousValue"    # Lcom/dropbox/core/v2/teamlog/AdminRole;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->newValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    .line 41
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    .line 42
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Builder;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    if-ne p1, p0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v1

    .line 147
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 148
    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 152
    check-cast v0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;

    .line 153
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->newValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->newValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->newValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->newValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->newValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/AdminRole;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    .line 154
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/AdminRole;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;
    :cond_5
    move v1, v2

    .line 158
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/AdminRole;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->newValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/AdminRole;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 135
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->newValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/AdminRole;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 139
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/MemberChangeAdminRoleDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
