.class public Lcom/dropbox/core/v2/files/CreateFolderResult;
.super Lcom/dropbox/core/v2/files/FileOpsResult;
.source "CreateFolderResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/CreateFolderResult$Serializer;
    }
.end annotation


# instance fields
.field protected final metadata:Lcom/dropbox/core/v2/files/FolderMetadata;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/files/FolderMetadata;)V
    .locals 2
    .param p1, "metadata"    # Lcom/dropbox/core/v2/files/FolderMetadata;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/dropbox/core/v2/files/FileOpsResult;-><init>()V

    .line 32
    if-nez p1, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'metadata\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/files/CreateFolderResult;->metadata:Lcom/dropbox/core/v2/files/FolderMetadata;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 61
    :cond_1
    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 66
    check-cast v0, Lcom/dropbox/core/v2/files/CreateFolderResult;

    .line 67
    .local v0, "other":Lcom/dropbox/core/v2/files/CreateFolderResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/CreateFolderResult;->metadata:Lcom/dropbox/core/v2/files/FolderMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/CreateFolderResult;->metadata:Lcom/dropbox/core/v2/files/FolderMetadata;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/CreateFolderResult;->metadata:Lcom/dropbox/core/v2/files/FolderMetadata;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/CreateFolderResult;->metadata:Lcom/dropbox/core/v2/files/FolderMetadata;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/files/FolderMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getMetadata()Lcom/dropbox/core/v2/files/FolderMetadata;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/dropbox/core/v2/files/CreateFolderResult;->metadata:Lcom/dropbox/core/v2/files/FolderMetadata;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 49
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/CreateFolderResult;->metadata:Lcom/dropbox/core/v2/files/FolderMetadata;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 52
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/files/FileOpsResult;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 53
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/dropbox/core/v2/files/CreateFolderResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/CreateFolderResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/CreateFolderResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/dropbox/core/v2/files/CreateFolderResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/CreateFolderResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/CreateFolderResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
