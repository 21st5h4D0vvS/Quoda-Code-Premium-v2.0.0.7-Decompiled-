.class public Lorg/jcodings/util/IntHash;
.super Lorg/jcodings/util/Hash;
.source "IntHash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jcodings/util/IntHash$IntHashEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jcodings/util/Hash",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, "this":Lorg/jcodings/util/IntHash;, "Lorg/jcodings/util/IntHash<TV;>;"
    invoke-direct {p0}, Lorg/jcodings/util/Hash;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 29
    .local p0, "this":Lorg/jcodings/util/IntHash;, "Lorg/jcodings/util/IntHash<TV;>;"
    invoke-direct {p0, p1}, Lorg/jcodings/util/Hash;-><init>(I)V

    .line 30
    return-void
.end method


# virtual methods
.method public delete(I)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jcodings/util/IntHash;, "Lorg/jcodings/util/IntHash<TV;>;"
    const/4 v4, 0x0

    .line 80
    invoke-static {p1}, Lorg/jcodings/util/IntHash;->hashValue(I)I

    move-result v1

    .line 81
    .local v1, "hash":I
    iget-object v5, p0, Lorg/jcodings/util/IntHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v5, v5

    invoke-static {v1, v5}, Lorg/jcodings/util/IntHash;->bucketIndex(II)I

    move-result v2

    .line 83
    .local v2, "i":I
    iget-object v5, p0, Lorg/jcodings/util/IntHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    aget-object v0, v5, v2

    check-cast v0, Lorg/jcodings/util/IntHash$IntHashEntry;

    .line 85
    .local v0, "entry":Lorg/jcodings/util/IntHash$IntHashEntry;, "Lorg/jcodings/util/IntHash$IntHashEntry<TV;>;"
    if-nez v0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v4

    .line 87
    :cond_1
    iget v5, v0, Lorg/jcodings/util/IntHash$IntHashEntry;->hash:I

    if-ne v5, v1, :cond_3

    .line 88
    iget-object v4, p0, Lorg/jcodings/util/IntHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    iget-object v5, v0, Lorg/jcodings/util/IntHash$IntHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    aput-object v5, v4, v2

    .line 89
    iget v4, p0, Lorg/jcodings/util/IntHash;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jcodings/util/IntHash;->size:I

    .line 90
    invoke-virtual {v0}, Lorg/jcodings/util/IntHash$IntHashEntry;->remove()V

    .line 91
    iget-object v4, v0, Lorg/jcodings/util/IntHash$IntHashEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 94
    .local v3, "tmp":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    :cond_2
    iget-object v0, v0, Lorg/jcodings/util/IntHash$IntHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .end local v0    # "entry":Lorg/jcodings/util/IntHash$IntHashEntry;, "Lorg/jcodings/util/IntHash$IntHashEntry<TV;>;"
    check-cast v0, Lorg/jcodings/util/IntHash$IntHashEntry;

    .end local v3    # "tmp":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    .restart local v0    # "entry":Lorg/jcodings/util/IntHash$IntHashEntry;, "Lorg/jcodings/util/IntHash$IntHashEntry<TV;>;"
    :cond_3
    iget-object v5, v0, Lorg/jcodings/util/IntHash$IntHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    if-eqz v5, :cond_0

    .line 95
    iget-object v3, v0, Lorg/jcodings/util/IntHash$IntHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .line 96
    .restart local v3    # "tmp":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    iget v5, v3, Lorg/jcodings/util/Hash$HashEntry;->hash:I

    if-ne v5, v1, :cond_2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 97
    iget-object v4, v0, Lorg/jcodings/util/IntHash$IntHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    iget-object v4, v4, Lorg/jcodings/util/Hash$HashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    iput-object v4, v0, Lorg/jcodings/util/IntHash$IntHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .line 98
    iget v4, p0, Lorg/jcodings/util/IntHash;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jcodings/util/IntHash;->size:I

    .line 99
    invoke-virtual {v3}, Lorg/jcodings/util/Hash$HashEntry;->remove()V

    .line 100
    iget-object v4, v3, Lorg/jcodings/util/Hash$HashEntry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lorg/jcodings/util/IntHash;, "Lorg/jcodings/util/IntHash<TV;>;"
    invoke-static {p1}, Lorg/jcodings/util/IntHash;->hashValue(I)I

    move-result v1

    .line 73
    .local v1, "hash":I
    iget-object v2, p0, Lorg/jcodings/util/IntHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    iget-object v3, p0, Lorg/jcodings/util/IntHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v3, v3

    invoke-static {v1, v3}, Lorg/jcodings/util/IntHash;->bucketIndex(II)I

    move-result v3

    aget-object v0, v2, v3

    check-cast v0, Lorg/jcodings/util/IntHash$IntHashEntry;

    .local v0, "entry":Lorg/jcodings/util/IntHash$IntHashEntry;, "Lorg/jcodings/util/IntHash$IntHashEntry<TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 74
    iget v2, v0, Lorg/jcodings/util/IntHash$IntHashEntry;->hash:I

    if-ne v2, v1, :cond_0

    iget-object v2, v0, Lorg/jcodings/util/IntHash$IntHashEntry;->value:Ljava/lang/Object;

    .line 76
    :goto_1
    return-object v2

    .line 73
    :cond_0
    iget-object v0, v0, Lorg/jcodings/util/IntHash$IntHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .end local v0    # "entry":Lorg/jcodings/util/IntHash$IntHashEntry;, "Lorg/jcodings/util/IntHash$IntHashEntry<TV;>;"
    check-cast v0, Lorg/jcodings/util/IntHash$IntHashEntry;

    .restart local v0    # "entry":Lorg/jcodings/util/IntHash$IntHashEntry;, "Lorg/jcodings/util/IntHash$IntHashEntry<TV;>;"
    goto :goto_0

    .line 76
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lorg/jcodings/util/IntHash;, "Lorg/jcodings/util/IntHash<TV;>;"
    new-instance v0, Lorg/jcodings/util/IntHash$IntHashEntry;

    invoke-direct {v0}, Lorg/jcodings/util/IntHash$IntHashEntry;-><init>()V

    iput-object v0, p0, Lorg/jcodings/util/IntHash;->head:Lorg/jcodings/util/Hash$HashEntry;

    .line 34
    return-void
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lorg/jcodings/util/IntHash;, "Lorg/jcodings/util/IntHash<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jcodings/util/IntHash;->checkResize()V

    .line 48
    invoke-static {p1}, Lorg/jcodings/util/IntHash;->hashValue(I)I

    move-result v1

    .line 49
    .local v1, "hash":I
    iget-object v3, p0, Lorg/jcodings/util/IntHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v3, v3

    invoke-static {v1, v3}, Lorg/jcodings/util/IntHash;->bucketIndex(II)I

    move-result v2

    .line 51
    .local v2, "i":I
    iget-object v3, p0, Lorg/jcodings/util/IntHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    aget-object v0, v3, v2

    check-cast v0, Lorg/jcodings/util/IntHash$IntHashEntry;

    .local v0, "entry":Lorg/jcodings/util/IntHash$IntHashEntry;, "Lorg/jcodings/util/IntHash$IntHashEntry<TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 52
    iget v3, v0, Lorg/jcodings/util/IntHash$IntHashEntry;->hash:I

    if-ne v3, v1, :cond_0

    .line 53
    iput-object p2, v0, Lorg/jcodings/util/IntHash$IntHashEntry;->value:Ljava/lang/Object;

    .line 60
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object p2

    .line 51
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object v0, v0, Lorg/jcodings/util/IntHash$IntHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .end local v0    # "entry":Lorg/jcodings/util/IntHash$IntHashEntry;, "Lorg/jcodings/util/IntHash$IntHashEntry<TV;>;"
    check-cast v0, Lorg/jcodings/util/IntHash$IntHashEntry;

    .restart local v0    # "entry":Lorg/jcodings/util/IntHash$IntHashEntry;, "Lorg/jcodings/util/IntHash$IntHashEntry<TV;>;"
    goto :goto_0

    .line 58
    :cond_1
    iget-object v3, p0, Lorg/jcodings/util/IntHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    new-instance v4, Lorg/jcodings/util/IntHash$IntHashEntry;

    iget-object v5, p0, Lorg/jcodings/util/IntHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    aget-object v5, v5, v2

    iget-object v6, p0, Lorg/jcodings/util/IntHash;->head:Lorg/jcodings/util/Hash$HashEntry;

    invoke-direct {v4, v1, v5, p2, v6}, Lorg/jcodings/util/IntHash$IntHashEntry;-><init>(ILorg/jcodings/util/Hash$HashEntry;Ljava/lang/Object;Lorg/jcodings/util/Hash$HashEntry;)V

    aput-object v4, v3, v2

    .line 59
    iget v3, p0, Lorg/jcodings/util/IntHash;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/jcodings/util/IntHash;->size:I

    .line 60
    const/4 p2, 0x0

    goto :goto_1
.end method

.method public putDirect(ILjava/lang/Object;)V
    .locals 6
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/jcodings/util/IntHash;, "Lorg/jcodings/util/IntHash<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jcodings/util/IntHash;->checkResize()V

    .line 65
    invoke-static {p1}, Lorg/jcodings/util/IntHash;->hashValue(I)I

    move-result v0

    .line 66
    .local v0, "hash":I
    iget-object v2, p0, Lorg/jcodings/util/IntHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v2, v2

    invoke-static {v0, v2}, Lorg/jcodings/util/IntHash;->bucketIndex(II)I

    move-result v1

    .line 67
    .local v1, "i":I
    iget-object v2, p0, Lorg/jcodings/util/IntHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    new-instance v3, Lorg/jcodings/util/IntHash$IntHashEntry;

    iget-object v4, p0, Lorg/jcodings/util/IntHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    aget-object v4, v4, v1

    iget-object v5, p0, Lorg/jcodings/util/IntHash;->head:Lorg/jcodings/util/Hash$HashEntry;

    invoke-direct {v3, v0, v4, p2, v5}, Lorg/jcodings/util/IntHash$IntHashEntry;-><init>(ILorg/jcodings/util/Hash$HashEntry;Ljava/lang/Object;Lorg/jcodings/util/Hash$HashEntry;)V

    aput-object v3, v2, v1

    .line 68
    iget v2, p0, Lorg/jcodings/util/IntHash;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/jcodings/util/IntHash;->size:I

    .line 69
    return-void
.end method
