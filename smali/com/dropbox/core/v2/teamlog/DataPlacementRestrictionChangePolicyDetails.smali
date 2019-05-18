.class public Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;
.super Ljava/lang/Object;
.source "DataPlacementRestrictionChangePolicyDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$Serializer;
    }
.end annotation


# instance fields
.field protected final newValue:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

.field protected final previousValue:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teamlog/PlacementRestriction;Lcom/dropbox/core/v2/teamlog/PlacementRestriction;)V
    .locals 2
    .param p1, "previousValue"    # Lcom/dropbox/core/v2/teamlog/PlacementRestriction;
    .param p2, "newValue"    # Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'previousValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    .line 44
    if-nez p2, :cond_1

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'newValue\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    if-ne p1, p0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v1

    .line 82
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 83
    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 87
    check-cast v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;

    .line 88
    .local v0, "other":Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/PlacementRestriction;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    iget-object v4, v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    .line 89
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teamlog/PlacementRestriction;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;
    :cond_5
    move v1, v2

    .line 93
    goto :goto_0
.end method

.method public getNewValue()Lcom/dropbox/core/v2/teamlog/PlacementRestriction;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    return-object v0
.end method

.method public getPreviousValue()Lcom/dropbox/core/v2/teamlog/PlacementRestriction;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 70
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;->previousValue:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails;->newValue:Lcom/dropbox/core/v2/teamlog/PlacementRestriction;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 74
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teamlog/DataPlacementRestrictionChangePolicyDetails$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
