.class public final Lorg/jcodings/util/ObjHash;
.super Lorg/jcodings/util/Hash;
.source "ObjHash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jcodings/util/ObjHash$ObjHashEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
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
    .line 22
    .local p0, "this":Lorg/jcodings/util/ObjHash;, "Lorg/jcodings/util/ObjHash<TK;TV;>;"
    invoke-direct {p0}, Lorg/jcodings/util/Hash;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jcodings/util/ObjHash;, "Lorg/jcodings/util/ObjHash<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lorg/jcodings/util/ObjHash;->hashValue(I)I

    move-result v1

    .line 85
    .local v1, "hash":I
    iget-object v6, p0, Lorg/jcodings/util/ObjHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v6, v6

    invoke-static {v1, v6}, Lorg/jcodings/util/ObjHash;->bucketIndex(II)I

    move-result v2

    .line 87
    .local v2, "i":I
    iget-object v6, p0, Lorg/jcodings/util/ObjHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    aget-object v0, v6, v2

    check-cast v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;

    .line 89
    .local v0, "entry":Lorg/jcodings/util/ObjHash$ObjHashEntry;, "Lorg/jcodings/util/ObjHash$ObjHashEntry<TK;TV;>;"
    if-nez v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v5

    .line 92
    :cond_1
    iget v6, v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;->hash:I

    if-ne v6, v1, :cond_4

    iget-object v3, v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;->key:Ljava/lang/Object;

    .local v3, "k":Ljava/lang/Object;, "TK;"
    if-eq v3, p1, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 93
    :cond_2
    iget-object v5, p0, Lorg/jcodings/util/ObjHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    iget-object v6, v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    aput-object v6, v5, v2

    .line 94
    iget v5, p0, Lorg/jcodings/util/ObjHash;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/jcodings/util/ObjHash;->size:I

    .line 95
    invoke-virtual {v0}, Lorg/jcodings/util/ObjHash$ObjHashEntry;->remove()V

    .line 96
    iget-object v5, v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 99
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    .local v4, "tmp":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    :cond_3
    iget-object v0, v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .end local v0    # "entry":Lorg/jcodings/util/ObjHash$ObjHashEntry;, "Lorg/jcodings/util/ObjHash$ObjHashEntry<TK;TV;>;"
    check-cast v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;

    .end local v4    # "tmp":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    .restart local v0    # "entry":Lorg/jcodings/util/ObjHash$ObjHashEntry;, "Lorg/jcodings/util/ObjHash$ObjHashEntry<TK;TV;>;"
    :cond_4
    iget-object v6, v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    if-eqz v6, :cond_0

    .line 100
    iget-object v4, v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .line 101
    .restart local v4    # "tmp":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    iget v6, v4, Lorg/jcodings/util/Hash$HashEntry;->hash:I

    if-ne v6, v1, :cond_3

    iget-object v3, v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;->key:Ljava/lang/Object;

    .restart local v3    # "k":Ljava/lang/Object;, "TK;"
    if-eq v3, p1, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 102
    :cond_5
    iget-object v5, v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    iget-object v5, v5, Lorg/jcodings/util/Hash$HashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    iput-object v5, v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .line 103
    iget v5, p0, Lorg/jcodings/util/ObjHash;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lorg/jcodings/util/ObjHash;->size:I

    .line 104
    invoke-virtual {v4}, Lorg/jcodings/util/Hash$HashEntry;->remove()V

    .line 105
    iget-object v5, v4, Lorg/jcodings/util/Hash$HashEntry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/jcodings/util/ObjHash;, "Lorg/jcodings/util/ObjHash<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Lorg/jcodings/util/ObjHash;->hashValue(I)I

    move-result v1

    .line 77
    .local v1, "hash":I
    iget-object v3, p0, Lorg/jcodings/util/ObjHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    iget-object v4, p0, Lorg/jcodings/util/ObjHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v4, v4

    invoke-static {v1, v4}, Lorg/jcodings/util/ObjHash;->bucketIndex(II)I

    move-result v4

    aget-object v0, v3, v4

    check-cast v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;

    .local v0, "entry":Lorg/jcodings/util/ObjHash$ObjHashEntry;, "Lorg/jcodings/util/ObjHash$ObjHashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 78
    iget v3, v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;->hash:I

    if-ne v3, v1, :cond_1

    iget-object v2, v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;->key:Ljava/lang/Object;

    .local v2, "k":Ljava/lang/Object;, "TK;"
    if-eq v2, p1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;->value:Ljava/lang/Object;

    .line 80
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    :goto_1
    return-object v3

    .line 77
    :cond_1
    iget-object v0, v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .end local v0    # "entry":Lorg/jcodings/util/ObjHash$ObjHashEntry;, "Lorg/jcodings/util/ObjHash$ObjHashEntry<TK;TV;>;"
    check-cast v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;

    .restart local v0    # "entry":Lorg/jcodings/util/ObjHash$ObjHashEntry;, "Lorg/jcodings/util/ObjHash$ObjHashEntry<TK;TV;>;"
    goto :goto_0

    .line 80
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 25
    .local p0, "this":Lorg/jcodings/util/ObjHash;, "Lorg/jcodings/util/ObjHash<TK;TV;>;"
    new-instance v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;

    invoke-direct {v0}, Lorg/jcodings/util/ObjHash$ObjHashEntry;-><init>()V

    iput-object v0, p0, Lorg/jcodings/util/ObjHash;->head:Lorg/jcodings/util/Hash$HashEntry;

    .line 26
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lorg/jcodings/util/ObjHash;, "Lorg/jcodings/util/ObjHash<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jcodings/util/ObjHash;->checkResize()V

    .line 49
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lorg/jcodings/util/ObjHash;->hashValue(I)I

    move-result v1

    .line 50
    .local v1, "hash":I
    iget-object v0, p0, Lorg/jcodings/util/ObjHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v0, v0

    invoke-static {v1, v0}, Lorg/jcodings/util/ObjHash;->bucketIndex(II)I

    move-result v7

    .line 53
    .local v7, "i":I
    iget-object v0, p0, Lorg/jcodings/util/ObjHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    aget-object v6, v0, v7

    check-cast v6, Lorg/jcodings/util/ObjHash$ObjHashEntry;

    .local v6, "entry":Lorg/jcodings/util/ObjHash$ObjHashEntry;, "Lorg/jcodings/util/ObjHash$ObjHashEntry<TK;TV;>;"
    :goto_0
    if-eqz v6, :cond_2

    .line 54
    iget v0, v6, Lorg/jcodings/util/ObjHash$ObjHashEntry;->hash:I

    if-ne v0, v1, :cond_1

    iget-object v8, v6, Lorg/jcodings/util/ObjHash$ObjHashEntry;->key:Ljava/lang/Object;

    .local v8, "k":Ljava/lang/Object;, "TK;"
    if-eq v8, p1, :cond_0

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    iput-object p2, v6, Lorg/jcodings/util/ObjHash$ObjHashEntry;->value:Ljava/lang/Object;

    .line 62
    .end local v8    # "k":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object p2

    .line 53
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v6, v6, Lorg/jcodings/util/ObjHash$ObjHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .end local v6    # "entry":Lorg/jcodings/util/ObjHash$ObjHashEntry;, "Lorg/jcodings/util/ObjHash$ObjHashEntry<TK;TV;>;"
    check-cast v6, Lorg/jcodings/util/ObjHash$ObjHashEntry;

    .restart local v6    # "entry":Lorg/jcodings/util/ObjHash$ObjHashEntry;, "Lorg/jcodings/util/ObjHash$ObjHashEntry<TK;TV;>;"
    goto :goto_0

    .line 60
    :cond_2
    iget-object v9, p0, Lorg/jcodings/util/ObjHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    new-instance v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;

    iget-object v2, p0, Lorg/jcodings/util/ObjHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    aget-object v2, v2, v7

    iget-object v5, p0, Lorg/jcodings/util/ObjHash;->head:Lorg/jcodings/util/Hash$HashEntry;

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/jcodings/util/ObjHash$ObjHashEntry;-><init>(ILorg/jcodings/util/Hash$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Lorg/jcodings/util/Hash$HashEntry;)V

    aput-object v0, v9, v7

    .line 61
    iget v0, p0, Lorg/jcodings/util/ObjHash;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jcodings/util/ObjHash;->size:I

    .line 62
    const/4 p2, 0x0

    goto :goto_1
.end method

.method public putDirect(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/jcodings/util/ObjHash;, "Lorg/jcodings/util/ObjHash<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jcodings/util/ObjHash;->checkResize()V

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lorg/jcodings/util/ObjHash;->hashValue(I)I

    move-result v1

    .line 68
    .local v1, "hash":I
    iget-object v0, p0, Lorg/jcodings/util/ObjHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v0, v0

    invoke-static {v1, v0}, Lorg/jcodings/util/ObjHash;->bucketIndex(II)I

    move-result v6

    .line 69
    .local v6, "i":I
    iget-object v7, p0, Lorg/jcodings/util/ObjHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    new-instance v0, Lorg/jcodings/util/ObjHash$ObjHashEntry;

    iget-object v2, p0, Lorg/jcodings/util/ObjHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    aget-object v2, v2, v6

    iget-object v5, p0, Lorg/jcodings/util/ObjHash;->head:Lorg/jcodings/util/Hash$HashEntry;

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/jcodings/util/ObjHash$ObjHashEntry;-><init>(ILorg/jcodings/util/Hash$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Lorg/jcodings/util/Hash$HashEntry;)V

    aput-object v0, v7, v6

    .line 70
    iget v0, p0, Lorg/jcodings/util/ObjHash;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jcodings/util/ObjHash;->size:I

    .line 71
    return-void
.end method
