.class public Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult;
.super Ljava/lang/Object;
.source "ListFileRequestsResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult$Serializer;
    }
.end annotation


# instance fields
.field protected final fileRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/filerequests/FileRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/filerequests/FileRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "fileRequests":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/filerequests/FileRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'fileRequests\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/filerequests/FileRequest;

    .line 42
    .local v0, "x":Lcom/dropbox/core/v2/filerequests/FileRequest;
    if-nez v0, :cond_1

    .line 43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'fileRequests\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    .end local v0    # "x":Lcom/dropbox/core/v2/filerequests/FileRequest;
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult;->fileRequests:Ljava/util/List;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 69
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 72
    :cond_1
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 77
    check-cast v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult;

    .line 78
    .local v0, "other":Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult;->fileRequests:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult;->fileRequests:Ljava/util/List;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult;->fileRequests:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult;->fileRequests:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getFileRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/filerequests/FileRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult;->fileRequests:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 61
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult;->fileRequests:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 64
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/filerequests/ListFileRequestsResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
