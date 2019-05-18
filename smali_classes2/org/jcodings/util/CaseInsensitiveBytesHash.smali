.class public final Lorg/jcodings/util/CaseInsensitiveBytesHash;
.super Lorg/jcodings/util/Hash;
.source "CaseInsensitiveBytesHash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntryIterator;,
        Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;
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
    .line 27
    .local p0, "this":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<TV;>;"
    invoke-direct {p0}, Lorg/jcodings/util/Hash;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 31
    .local p0, "this":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<TV;>;"
    invoke-direct {p0, p1}, Lorg/jcodings/util/Hash;-><init>(I)V

    .line 32
    return-void
.end method

.method public static caseInsensitiveEquals([BII[BII)Z
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "p"    # I
    .param p2, "end"    # I
    .param p3, "oBytes"    # [B
    .param p4, "oP"    # I
    .param p5, "oEnd"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    sub-int v5, p5, p4

    sub-int v6, p2, p1

    if-eq v5, v6, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v3

    .line 174
    :cond_1
    if-ne p3, p0, :cond_2

    move v3, v4

    goto :goto_0

    .line 175
    :cond_2
    move v1, p4

    .local v1, "q":I
    move v2, v1

    .end local v1    # "q":I
    .local v2, "q":I
    move v0, p1

    .line 176
    .end local p1    # "p":I
    .local v0, "p":I
    :goto_1
    if-ge v2, p5, :cond_3

    sget-object v5, Lorg/jcodings/ascii/AsciiTables;->ToLowerCaseTable:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "q":I
    .restart local v1    # "q":I
    aget-byte v6, p3, v2

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    sget-object v6, Lorg/jcodings/ascii/AsciiTables;->ToLowerCaseTable:[B

    add-int/lit8 p1, v0, 0x1

    .end local v0    # "p":I
    .restart local p1    # "p":I
    aget-byte v7, p0, v0

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    if-ne v5, v6, :cond_0

    move v2, v1

    .end local v1    # "q":I
    .restart local v2    # "q":I
    move v0, p1

    .end local p1    # "p":I
    .restart local v0    # "p":I
    goto :goto_1

    :cond_3
    move p1, v0

    .end local v0    # "p":I
    .restart local p1    # "p":I
    move v3, v4

    .line 177
    goto :goto_0
.end method

.method public static caseInsensitiveEquals([B[B)Z
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "oBytes"    # [B

    .prologue
    const/4 v1, 0x0

    .line 181
    array-length v2, p0

    array-length v5, p1

    move-object v0, p0

    move-object v3, p1

    move v4, v1

    invoke-static/range {v0 .. v5}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->caseInsensitiveEquals([BII[BII)Z

    move-result v0

    return v0
.end method

.method public static hashCode([BII)I
    .locals 5
    .param p0, "bytes"    # [B
    .param p1, "p"    # I
    .param p2, "end"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    .local v0, "key":I
    move v1, p1

    .line 67
    .end local p1    # "p":I
    .local v1, "p":I
    :goto_0
    if-ge v1, p2, :cond_0

    shl-int/lit8 v2, v0, 0x10

    shl-int/lit8 v3, v0, 0x6

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    sget-object v3, Lorg/jcodings/ascii/AsciiTables;->ToLowerCaseTable:[B

    add-int/lit8 p1, v1, 0x1

    .end local v1    # "p":I
    .restart local p1    # "p":I
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    add-int v0, v2, v3

    move v1, p1

    .end local p1    # "p":I
    .restart local v1    # "p":I
    goto :goto_0

    .line 68
    :cond_0
    shr-int/lit8 v2, v0, 0x5

    add-int/2addr v0, v2

    .line 69
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
    .line 118
    .local p0, "this":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<TV;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->delete([BII)Ljava/lang/Object;

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
    .local p0, "this":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<TV;>;"
    const/4 v4, 0x0

    .line 122
    invoke-static {p1, p2, p3}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->hashCode([BII)I

    move-result v5

    invoke-static {v5}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->hashValue(I)I

    move-result v1

    .line 123
    .local v1, "hash":I
    iget-object v5, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v5, v5

    invoke-static {v1, v5}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->bucketIndex(II)I

    move-result v2

    .line 125
    .local v2, "i":I
    iget-object v5, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    aget-object v0, v5, v2

    check-cast v0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;

    .line 127
    .local v0, "entry":Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;, "Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry<TV;>;"
    if-nez v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-object v4

    .line 129
    :cond_1
    iget v5, v0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->hash:I

    if-ne v5, v1, :cond_3

    invoke-virtual {v0, p1, p2, p3}, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->equals([BII)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 130
    iget-object v4, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    iget-object v5, v0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    aput-object v5, v4, v2

    .line 131
    iget v4, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->size:I

    .line 132
    invoke-virtual {v0}, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->remove()V

    .line 133
    iget-object v4, v0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->value:Ljava/lang/Object;

    goto :goto_0

    .line 136
    .local v3, "tmp":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    :cond_2
    iget-object v0, v0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .end local v0    # "entry":Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;, "Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry<TV;>;"
    check-cast v0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;

    .end local v3    # "tmp":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    .restart local v0    # "entry":Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;, "Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry<TV;>;"
    :cond_3
    iget-object v5, v0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    if-eqz v5, :cond_0

    .line 137
    iget-object v3, v0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .line 138
    .restart local v3    # "tmp":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    iget v5, v3, Lorg/jcodings/util/Hash$HashEntry;->hash:I

    if-ne v5, v1, :cond_2

    invoke-virtual {v0, p1, p2, p3}, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->equals([BII)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 139
    iget-object v4, v0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    iget-object v4, v4, Lorg/jcodings/util/Hash$HashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    iput-object v4, v0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .line 140
    iget v4, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->size:I

    .line 141
    invoke-virtual {v3}, Lorg/jcodings/util/Hash$HashEntry;->remove()V

    .line 142
    iget-object v4, v3, Lorg/jcodings/util/Hash$HashEntry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public entryIterator()Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntryIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jcodings/util/CaseInsensitiveBytesHash",
            "<TV;>.CaseInsensitiveBytesHashEntryIterator;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "this":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<TV;>;"
    new-instance v0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntryIterator;

    invoke-direct {v0, p0}, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntryIterator;-><init>(Lorg/jcodings/util/CaseInsensitiveBytesHash;)V

    return-object v0
.end method

.method public bridge synthetic entryIterator()Lorg/jcodings/util/Hash$HashEntryIterator;
    .locals 1

    .prologue
    .line 24
    .local p0, "this":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<TV;>;"
    invoke-virtual {p0}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->entryIterator()Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntryIterator;

    move-result-object v0

    return-object v0
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
    .line 106
    .local p0, "this":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<TV;>;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([BII)Ljava/lang/Object;

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
    .line 110
    .local p0, "this":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<TV;>;"
    invoke-static {p1, p2, p3}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->hashCode([BII)I

    move-result v2

    invoke-static {v2}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->hashValue(I)I

    move-result v1

    .line 111
    .local v1, "hash":I
    iget-object v2, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    iget-object v3, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v3, v3

    invoke-static {v1, v3}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->bucketIndex(II)I

    move-result v3

    aget-object v0, v2, v3

    check-cast v0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;

    .local v0, "entry":Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;, "Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry<TV;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 112
    iget v2, v0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->hash:I

    if-ne v2, v1, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->equals([BII)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->value:Ljava/lang/Object;

    .line 114
    :goto_1
    return-object v2

    .line 111
    :cond_0
    iget-object v0, v0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .end local v0    # "entry":Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;, "Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry<TV;>;"
    check-cast v0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;

    .restart local v0    # "entry":Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;, "Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry<TV;>;"
    goto :goto_0

    .line 114
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<TV;>;"
    new-instance v0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;

    invoke-direct {v0}, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;-><init>()V

    iput-object v0, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->head:Lorg/jcodings/util/Hash$HashEntry;

    .line 36
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
    .line 77
    .local p0, "this":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<TV;>;"
    .local p4, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->checkResize()V

    .line 78
    invoke-static {p1, p2, p3}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->hashCode([BII)I

    move-result v0

    invoke-static {v0}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->hashValue(I)I

    move-result v1

    .line 79
    .local v1, "hash":I
    iget-object v0, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v0, v0

    invoke-static {v1, v0}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->bucketIndex(II)I

    move-result v9

    .line 81
    .local v9, "i":I
    iget-object v0, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    aget-object v8, v0, v9

    check-cast v8, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;

    .local v8, "entry":Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;, "Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry<TV;>;"
    :goto_0
    if-eqz v8, :cond_1

    .line 82
    iget v0, v8, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->hash:I

    if-ne v0, v1, :cond_0

    invoke-virtual {v8, p1, p2, p3}, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->equals([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iput-object p4, v8, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->value:Ljava/lang/Object;

    .line 90
    .end local p4    # "value":Ljava/lang/Object;, "TV;"
    :goto_1
    return-object p4

    .line 81
    .restart local p4    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-object v8, v8, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .end local v8    # "entry":Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;, "Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry<TV;>;"
    check-cast v8, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;

    .restart local v8    # "entry":Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;, "Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry<TV;>;"
    goto :goto_0

    .line 88
    :cond_1
    iget-object v10, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    new-instance v0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;

    iget-object v2, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    aget-object v2, v2, v9

    iget-object v7, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->head:Lorg/jcodings/util/Hash$HashEntry;

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;-><init>(ILorg/jcodings/util/Hash$HashEntry;Ljava/lang/Object;[BIILorg/jcodings/util/Hash$HashEntry;)V

    aput-object v0, v10, v9

    .line 89
    iget v0, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->size:I

    .line 90
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
    .line 73
    .local p0, "this":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->put([BIILjava/lang/Object;)Ljava/lang/Object;

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
    .line 98
    .local p0, "this":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<TV;>;"
    .local p4, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->checkResize()V

    .line 99
    invoke-static {p1, p2, p3}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->hashCode([BII)I

    move-result v0

    invoke-static {v0}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->hashValue(I)I

    move-result v1

    .line 100
    .local v1, "hash":I
    iget-object v0, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v0, v0

    invoke-static {v1, v0}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->bucketIndex(II)I

    move-result v8

    .line 101
    .local v8, "i":I
    iget-object v9, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    new-instance v0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;

    iget-object v2, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    aget-object v2, v2, v8

    iget-object v7, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->head:Lorg/jcodings/util/Hash$HashEntry;

    move-object v3, p4

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;-><init>(ILorg/jcodings/util/Hash$HashEntry;Ljava/lang/Object;[BIILorg/jcodings/util/Hash$HashEntry;)V

    aput-object v0, v9, v8

    .line 102
    iget v0, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash;->size:I

    .line 103
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
    .line 94
    .local p0, "this":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->putDirect([BIILjava/lang/Object;)V

    .line 95
    return-void
.end method
