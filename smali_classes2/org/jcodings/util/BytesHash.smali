.class public final Lorg/jcodings/util/BytesHash;
.super Lorg/jcodings/util/Hash;
.source "BytesHash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jcodings/util/BytesHash$BytesHashEntry;
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
    .local p0, "this":Lorg/jcodings/util/BytesHash;, "Lorg/jcodings/util/BytesHash<TV;>;"
    invoke-direct {p0}, Lorg/jcodings/util/Hash;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 29
    .local p0, "this":Lorg/jcodings/util/BytesHash;, "Lorg/jcodings/util/BytesHash<TV;>;"
    invoke-direct {p0, p1}, Lorg/jcodings/util/Hash;-><init>(I)V

    .line 30
    return-void
.end method

.method public static hashCode([BII)I
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "p"    # I
    .param p2, "end"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    .local v0, "key":I
    move v1, p1

    .line 65
    .end local p1    # "p":I
    .local v1, "p":I
    :goto_0
    if-ge v1, p2, :cond_0

    shl-int/lit8 v2, v0, 0x10

    shl-int/lit8 v3, v0, 0x6

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    add-int/lit8 p1, v1, 0x1

    .end local v1    # "p":I
    .restart local p1    # "p":I
    aget-byte v3, p0, v1

    add-int v0, v2, v3

    move v1, p1

    .end local p1    # "p":I
    .restart local v1    # "p":I
    goto :goto_0

    .line 66
    :cond_0
    shr-int/lit8 v2, v0, 0x5

    add-int/2addr v0, v2

    .line 67
    return v0
.end method


# virtual methods
.method public delete([B)Ljava/lang/Object;
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lorg/jcodings/util/BytesHash;, "Lorg/jcodings/util/BytesHash<TV;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jcodings/util/BytesHash;->delete([BII)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public delete([BII)Ljava/lang/Object;
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/jcodings/util/BytesHash;, "Lorg/jcodings/util/BytesHash<TV;>;"
    const/4 v4, 0x0

    .line 120
    invoke-static {p1, p2, p3}, Lorg/jcodings/util/BytesHash;->hashCode([BII)I

    move-result v5

    invoke-static {v5}, Lorg/jcodings/util/BytesHash;->hashValue(I)I

    move-result v1

    .line 121
    .local v1, "hash":I
    iget-object v5, p0, Lorg/jcodings/util/BytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v5, v5

    invoke-static {v1, v5}, Lorg/jcodings/util/BytesHash;->bucketIndex(II)I

    move-result v2

    .line 123
    .local v2, "i":I
    iget-object v5, p0, Lorg/jcodings/util/BytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    aget-object v0, v5, v2

    check-cast v0, Lorg/jcodings/util/BytesHash$BytesHashEntry;

    .line 125
    .local v0, "entry":Lorg/jcodings/util/BytesHash$BytesHashEntry;, "Lorg/jcodings/util/BytesHash$BytesHashEntry<TV;>;"
    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-object v4

    .line 127
    :cond_1
    iget v5, v0, Lorg/jcodings/util/BytesHash$BytesHashEntry;->hash:I

    if-ne v5, v1, :cond_3

    invoke-virtual {v0, p1, p2, p3}, Lorg/jcodings/util/BytesHash$BytesHashEntry;->equals([BII)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 128
    iget-object v4, p0, Lorg/jcodings/util/BytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    iget-object v5, v0, Lorg/jcodings/util/BytesHash$BytesHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    aput-object v5, v4, v2

    .line 129
    iget v4, p0, Lorg/jcodings/util/BytesHash;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jcodings/util/BytesHash;->size:I

    .line 130
    invoke-virtual {v0}, Lorg/jcodings/util/BytesHash$BytesHashEntry;->remove()V

    .line 131
    iget-object v4, v0, Lorg/jcodings/util/BytesHash$BytesHashEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 134
    .local v3, "tmp":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    :cond_2
    iget-object v0, v0, Lorg/jcodings/util/BytesHash$BytesHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .end local v0    # "entry":Lorg/jcodings/util/BytesHash$BytesHashEntry;, "Lorg/jcodings/util/BytesHash$BytesHashEntry<TV;>;"
    check-cast v0, Lorg/jcodings/util/BytesHash$BytesHashEntry;

    .end local v3    # "tmp":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    .restart local v0    # "entry":Lorg/jcodings/util/BytesHash$BytesHashEntry;, "Lorg/jcodings/util/BytesHash$BytesHashEntry<TV;>;"
    :cond_3
    iget-object v5, v0, Lorg/jcodings/util/BytesHash$BytesHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    if-eqz v5, :cond_0

    .line 135
    iget-object v3, v0, Lorg/jcodings/util/BytesHash$BytesHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .line 136
    .restart local v3    # "tmp":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    iget v5, v3, Lorg/jcodings/util/Hash$HashEntry;->hash:I

    if-ne v5, v1, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Lorg/jcodings/util/BytesHash$BytesHashEntry;->equals([BII)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 137
    iget-object v4, v0, Lorg/jcodings/util/BytesHash$BytesHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    iget-object v4, v4, Lorg/jcodings/util/Hash$HashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    iput-object v4, v0, Lorg/jcodings/util/BytesHash$BytesHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .line 138
    iget v4, p0, Lorg/jcodings/util/BytesHash;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jcodings/util/BytesHash;->size:I

    .line 139
    invoke-virtual {v3}, Lorg/jcodings/util/Hash$HashEntry;->remove()V

    .line 140
    iget-object v4, v3, Lorg/jcodings/util/Hash$HashEntry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public get([B)Ljava/lang/Object;
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lorg/jcodings/util/BytesHash;, "Lorg/jcodings/util/BytesHash<TV;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jcodings/util/BytesHash;->get([BII)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get([BII)Ljava/lang/Object;
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TV;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lorg/jcodings/util/BytesHash;, "Lorg/jcodings/util/BytesHash<TV;>;"
    invoke-static {p1, p2, p3}, Lorg/jcodings/util/BytesHash;->hashCode([BII)I

    move-result v2

    invoke-static {v2}, Lorg/jcodings/util/BytesHash;->hashValue(I)I

    move-result v1

    .line 109
    .local v1, "hash":I
    iget-object v2, p0, Lorg/jcodings/util/BytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    iget-object v3, p0, Lorg/jcodings/util/BytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v3, v3

    invoke-static {v1, v3}, Lorg/jcodings/util/BytesHash;->bucketIndex(II)I

    move-result v3

    aget-object v0, v2, v3

    check-cast v0, Lorg/jcodings/util/BytesHash$BytesHashEntry;

    .local v0, "entry":Lorg/jcodings/util/BytesHash$BytesHashEntry;, "Lorg/jcodings/util/BytesHash$BytesHashEntry<TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 110
    iget v2, v0, Lorg/jcodings/util/BytesHash$BytesHashEntry;->hash:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/jcodings/util/BytesHash$BytesHashEntry;->equals([BII)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/jcodings/util/BytesHash$BytesHashEntry;->value:Ljava/lang/Object;

    .line 112
    :goto_1
    return-object v2

    .line 109
    :cond_0
    iget-object v0, v0, Lorg/jcodings/util/BytesHash$BytesHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .end local v0    # "entry":Lorg/jcodings/util/BytesHash$BytesHashEntry;, "Lorg/jcodings/util/BytesHash$BytesHashEntry<TV;>;"
    check-cast v0, Lorg/jcodings/util/BytesHash$BytesHashEntry;

    .restart local v0    # "entry":Lorg/jcodings/util/BytesHash$BytesHashEntry;, "Lorg/jcodings/util/BytesHash$BytesHashEntry<TV;>;"
    goto :goto_0

    .line 112
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lorg/jcodings/util/BytesHash;, "Lorg/jcodings/util/BytesHash<TV;>;"
    new-instance v0, Lorg/jcodings/util/BytesHash$BytesHashEntry;

    invoke-direct {v0}, Lorg/jcodings/util/BytesHash$BytesHashEntry;-><init>()V

    iput-object v0, p0, Lorg/jcodings/util/BytesHash;->head:Lorg/jcodings/util/Hash$HashEntry;

    .line 34
    return-void
.end method

.method public put([BIILjava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIITV;)TV;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lorg/jcodings/util/BytesHash;, "Lorg/jcodings/util/BytesHash<TV;>;"
    .local p4, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jcodings/util/BytesHash;->checkResize()V

    .line 76
    invoke-static {p1, p2, p3}, Lorg/jcodings/util/BytesHash;->hashCode([BII)I

    move-result v0

    invoke-static {v0}, Lorg/jcodings/util/BytesHash;->hashValue(I)I

    move-result v1

    .line 77
    .local v1, "hash":I
    iget-object v0, p0, Lorg/jcodings/util/BytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v0, v0

    invoke-static {v1, v0}, Lorg/jcodings/util/BytesHash;->bucketIndex(II)I

    move-result v9

    .line 79
    .local v9, "i":I
    iget-object v0, p0, Lorg/jcodings/util/BytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    aget-object v8, v0, v9

    check-cast v8, Lorg/jcodings/util/BytesHash$BytesHashEntry;

    .local v8, "entry":Lorg/jcodings/util/BytesHash$BytesHashEntry;, "Lorg/jcodings/util/BytesHash$BytesHashEntry<TV;>;"
    :goto_0
    if-eqz v8, :cond_1

    .line 80
    iget v0, v8, Lorg/jcodings/util/BytesHash$BytesHashEntry;->hash:I

    if-ne v0, v1, :cond_0

    invoke-virtual {v8, p1, p2, p3}, Lorg/jcodings/util/BytesHash$BytesHashEntry;->equals([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iput-object p4, v8, Lorg/jcodings/util/BytesHash$BytesHashEntry;->value:Ljava/lang/Object;

    .line 88
    .end local p4    # "value":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object p4

    .line 79
    .restart local p4    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object v8, v8, Lorg/jcodings/util/BytesHash$BytesHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .end local v8    # "entry":Lorg/jcodings/util/BytesHash$BytesHashEntry;, "Lorg/jcodings/util/BytesHash$BytesHashEntry<TV;>;"
    check-cast v8, Lorg/jcodings/util/BytesHash$BytesHashEntry;

    .restart local v8    # "entry":Lorg/jcodings/util/BytesHash$BytesHashEntry;, "Lorg/jcodings/util/BytesHash$BytesHashEntry<TV;>;"
    goto :goto_0

    .line 86
    :cond_1
    iget-object v10, p0, Lorg/jcodings/util/BytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    new-instance v0, Lorg/jcodings/util/BytesHash$BytesHashEntry;

    iget-object v2, p0, Lorg/jcodings/util/BytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    aget-object v2, v2, v9

    iget-object v7, p0, Lorg/jcodings/util/BytesHash;->head:Lorg/jcodings/util/Hash$HashEntry;

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lorg/jcodings/util/BytesHash$BytesHashEntry;-><init>(ILorg/jcodings/util/Hash$HashEntry;Ljava/lang/Object;[BIILorg/jcodings/util/Hash$HashEntry;)V

    aput-object v0, v10, v9

    .line 87
    iget v0, p0, Lorg/jcodings/util/BytesHash;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jcodings/util/BytesHash;->size:I

    .line 88
    const/4 p4, 0x0

    goto :goto_1
.end method

.method public put([BLjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BTV;)TV;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/jcodings/util/BytesHash;, "Lorg/jcodings/util/BytesHash<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/jcodings/util/BytesHash;->put([BIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putDirect([BIILjava/lang/Object;)V
    .locals 10
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIITV;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lorg/jcodings/util/BytesHash;, "Lorg/jcodings/util/BytesHash<TV;>;"
    .local p4, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jcodings/util/BytesHash;->checkResize()V

    .line 97
    invoke-static {p1, p2, p3}, Lorg/jcodings/util/BytesHash;->hashCode([BII)I

    move-result v0

    invoke-static {v0}, Lorg/jcodings/util/BytesHash;->hashValue(I)I

    move-result v1

    .line 98
    .local v1, "hash":I
    iget-object v0, p0, Lorg/jcodings/util/BytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v0, v0

    invoke-static {v1, v0}, Lorg/jcodings/util/BytesHash;->bucketIndex(II)I

    move-result v8

    .line 99
    .local v8, "i":I
    iget-object v9, p0, Lorg/jcodings/util/BytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    new-instance v0, Lorg/jcodings/util/BytesHash$BytesHashEntry;

    iget-object v2, p0, Lorg/jcodings/util/BytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    aget-object v2, v2, v8

    iget-object v7, p0, Lorg/jcodings/util/BytesHash;->head:Lorg/jcodings/util/Hash$HashEntry;

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lorg/jcodings/util/BytesHash$BytesHashEntry;-><init>(ILorg/jcodings/util/Hash$HashEntry;Ljava/lang/Object;[BIILorg/jcodings/util/Hash$HashEntry;)V

    aput-object v0, v9, v8

    .line 100
    iget v0, p0, Lorg/jcodings/util/BytesHash;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jcodings/util/BytesHash;->size:I

    .line 101
    return-void
.end method

.method public putDirect([BLjava/lang/Object;)V
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BTV;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lorg/jcodings/util/BytesHash;, "Lorg/jcodings/util/BytesHash<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/jcodings/util/BytesHash;->putDirect([BIILjava/lang/Object;)V

    .line 93
    return-void
.end method
