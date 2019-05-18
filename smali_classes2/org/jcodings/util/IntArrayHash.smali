.class public final Lorg/jcodings/util/IntArrayHash;
.super Lorg/jcodings/util/Hash;
.source "IntArrayHash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;
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
    .local p0, "this":Lorg/jcodings/util/IntArrayHash;, "Lorg/jcodings/util/IntArrayHash<TV;>;"
    invoke-direct {p0}, Lorg/jcodings/util/Hash;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 29
    .local p0, "this":Lorg/jcodings/util/IntArrayHash;, "Lorg/jcodings/util/IntArrayHash<TV;>;"
    invoke-direct {p0, p1}, Lorg/jcodings/util/Hash;-><init>(I)V

    .line 30
    return-void
.end method

.method private hashCode([I)I
    .locals 6
    .param p1, "key"    # [I

    .prologue
    .local p0, "this":Lorg/jcodings/util/IntArrayHash;, "Lorg/jcodings/util/IntArrayHash<TV;>;"
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    array-length v2, p1

    packed-switch v2, :pswitch_data_0

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "h":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "h":I
    .end local v1    # "i":I
    :pswitch_0
    aget v0, p1, v3

    .line 73
    :cond_0
    :goto_1
    return v0

    .line 67
    :pswitch_1
    aget v2, p1, v3

    aget v3, p1, v4

    add-int v0, v2, v3

    goto :goto_1

    .line 68
    :pswitch_2
    aget v2, p1, v3

    aget v3, p1, v4

    add-int/2addr v2, v3

    aget v3, p1, v5

    add-int v0, v2, v3

    goto :goto_1

    .line 69
    :pswitch_3
    aget v2, p1, v3

    aget v3, p1, v4

    add-int/2addr v2, v3

    aget v3, p1, v5

    add-int/2addr v2, v3

    const/4 v3, 0x3

    aget v3, p1, v3

    add-int v0, v2, v3

    goto :goto_1

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public varargs delete([I)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jcodings/util/IntArrayHash;, "Lorg/jcodings/util/IntArrayHash<TV;>;"
    const/4 v4, 0x0

    .line 112
    invoke-direct {p0, p1}, Lorg/jcodings/util/IntArrayHash;->hashCode([I)I

    move-result v5

    invoke-static {v5}, Lorg/jcodings/util/IntArrayHash;->hashValue(I)I

    move-result v1

    .line 113
    .local v1, "hash":I
    iget-object v5, p0, Lorg/jcodings/util/IntArrayHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v5, v5

    invoke-static {v1, v5}, Lorg/jcodings/util/IntArrayHash;->bucketIndex(II)I

    move-result v2

    .line 115
    .local v2, "i":I
    iget-object v5, p0, Lorg/jcodings/util/IntArrayHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    aget-object v0, v5, v2

    check-cast v0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;

    .line 117
    .local v0, "entry":Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;, "Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry<TV;>;"
    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-object v4

    .line 119
    :cond_1
    iget v5, v0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->hash:I

    if-ne v5, v1, :cond_3

    invoke-virtual {v0, p1}, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->equals([I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 120
    iget-object v4, p0, Lorg/jcodings/util/IntArrayHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    iget-object v5, v0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    aput-object v5, v4, v2

    .line 121
    iget v4, p0, Lorg/jcodings/util/IntArrayHash;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jcodings/util/IntArrayHash;->size:I

    .line 122
    invoke-virtual {v0}, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->remove()V

    .line 123
    iget-object v4, v0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 126
    .local v3, "tmp":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    :cond_2
    iget-object v0, v0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .end local v0    # "entry":Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;, "Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry<TV;>;"
    check-cast v0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;

    .end local v3    # "tmp":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    .restart local v0    # "entry":Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;, "Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry<TV;>;"
    :cond_3
    iget-object v5, v0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    if-eqz v5, :cond_0

    .line 127
    iget-object v3, v0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .line 128
    .restart local v3    # "tmp":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    iget v5, v3, Lorg/jcodings/util/Hash$HashEntry;->hash:I

    if-ne v5, v1, :cond_2

    invoke-virtual {v0, p1}, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->equals([I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 129
    iget-object v4, v0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    iget-object v4, v4, Lorg/jcodings/util/Hash$HashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    iput-object v4, v0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .line 130
    iget v4, p0, Lorg/jcodings/util/IntArrayHash;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jcodings/util/IntArrayHash;->size:I

    .line 131
    invoke-virtual {v3}, Lorg/jcodings/util/Hash$HashEntry;->remove()V

    .line 132
    iget-object v4, v3, Lorg/jcodings/util/Hash$HashEntry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public varargs get([I)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)TV;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lorg/jcodings/util/IntArrayHash;, "Lorg/jcodings/util/IntArrayHash<TV;>;"
    invoke-direct {p0, p1}, Lorg/jcodings/util/IntArrayHash;->hashCode([I)I

    move-result v2

    invoke-static {v2}, Lorg/jcodings/util/IntArrayHash;->hashValue(I)I

    move-result v1

    .line 105
    .local v1, "hash":I
    iget-object v2, p0, Lorg/jcodings/util/IntArrayHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    iget-object v3, p0, Lorg/jcodings/util/IntArrayHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v3, v3

    invoke-static {v1, v3}, Lorg/jcodings/util/IntArrayHash;->bucketIndex(II)I

    move-result v3

    aget-object v0, v2, v3

    check-cast v0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;

    .local v0, "entry":Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;, "Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry<TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 106
    iget v2, v0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->hash:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0, p1}, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->equals([I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->value:Ljava/lang/Object;

    .line 108
    :goto_1
    return-object v2

    .line 105
    :cond_0
    iget-object v0, v0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .end local v0    # "entry":Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;, "Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry<TV;>;"
    check-cast v0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;

    .restart local v0    # "entry":Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;, "Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry<TV;>;"
    goto :goto_0

    .line 108
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lorg/jcodings/util/IntArrayHash;, "Lorg/jcodings/util/IntArrayHash<TV;>;"
    new-instance v0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;

    invoke-direct {v0}, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;-><init>()V

    iput-object v0, p0, Lorg/jcodings/util/IntArrayHash;->head:Lorg/jcodings/util/Hash$HashEntry;

    .line 34
    return-void
.end method

.method public put([ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lorg/jcodings/util/IntArrayHash;, "Lorg/jcodings/util/IntArrayHash<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jcodings/util/IntArrayHash;->checkResize()V

    .line 79
    invoke-direct {p0, p1}, Lorg/jcodings/util/IntArrayHash;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Lorg/jcodings/util/IntArrayHash;->hashValue(I)I

    move-result v1

    .line 80
    .local v1, "hash":I
    iget-object v0, p0, Lorg/jcodings/util/IntArrayHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v0, v0

    invoke-static {v1, v0}, Lorg/jcodings/util/IntArrayHash;->bucketIndex(II)I

    move-result v7

    .line 82
    .local v7, "i":I
    iget-object v0, p0, Lorg/jcodings/util/IntArrayHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    aget-object v6, v0, v7

    check-cast v6, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;

    .local v6, "entry":Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;, "Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry<TV;>;"
    :goto_0
    if-eqz v6, :cond_1

    .line 83
    iget v0, v6, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->hash:I

    if-ne v0, v1, :cond_0

    invoke-virtual {v6, p1}, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->equals([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iput-object p2, v6, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->value:Ljava/lang/Object;

    .line 91
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object p2

    .line 82
    .restart local p2    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object v6, v6, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .end local v6    # "entry":Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;, "Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry<TV;>;"
    check-cast v6, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;

    .restart local v6    # "entry":Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;, "Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry<TV;>;"
    goto :goto_0

    .line 89
    :cond_1
    iget-object v8, p0, Lorg/jcodings/util/IntArrayHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    new-instance v0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;

    iget-object v2, p0, Lorg/jcodings/util/IntArrayHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    aget-object v2, v2, v7

    iget-object v5, p0, Lorg/jcodings/util/IntArrayHash;->head:Lorg/jcodings/util/Hash$HashEntry;

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;-><init>(ILorg/jcodings/util/Hash$HashEntry;Ljava/lang/Object;[ILorg/jcodings/util/Hash$HashEntry;)V

    aput-object v0, v8, v7

    .line 90
    iget v0, p0, Lorg/jcodings/util/IntArrayHash;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jcodings/util/IntArrayHash;->size:I

    .line 91
    const/4 p2, 0x0

    goto :goto_1
.end method

.method public putDirect([ILjava/lang/Object;)V
    .locals 8
    .param p1, "key"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([ITV;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lorg/jcodings/util/IntArrayHash;, "Lorg/jcodings/util/IntArrayHash<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jcodings/util/IntArrayHash;->checkResize()V

    .line 96
    invoke-direct {p0, p1}, Lorg/jcodings/util/IntArrayHash;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Lorg/jcodings/util/IntArrayHash;->hashValue(I)I

    move-result v1

    .line 97
    .local v1, "hash":I
    iget-object v0, p0, Lorg/jcodings/util/IntArrayHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v0, v0

    invoke-static {v1, v0}, Lorg/jcodings/util/IntArrayHash;->bucketIndex(II)I

    move-result v6

    .line 98
    .local v6, "i":I
    iget-object v7, p0, Lorg/jcodings/util/IntArrayHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    new-instance v0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;

    iget-object v2, p0, Lorg/jcodings/util/IntArrayHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    aget-object v2, v2, v6

    iget-object v5, p0, Lorg/jcodings/util/IntArrayHash;->head:Lorg/jcodings/util/Hash$HashEntry;

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;-><init>(ILorg/jcodings/util/Hash$HashEntry;Ljava/lang/Object;[ILorg/jcodings/util/Hash$HashEntry;)V

    aput-object v0, v7, v6

    .line 99
    iget v0, p0, Lorg/jcodings/util/IntArrayHash;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jcodings/util/IntArrayHash;->size:I

    .line 100
    return-void
.end method
