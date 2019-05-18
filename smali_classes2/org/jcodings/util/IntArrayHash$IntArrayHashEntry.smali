.class public final Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;
.super Lorg/jcodings/util/Hash$HashEntry;
.source "IntArrayHash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/util/IntArrayHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntArrayHashEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jcodings/util/Hash$HashEntry",
        "<TV;>;"
    }
.end annotation


# instance fields
.field public final key:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;, "Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry<TV;>;"
    invoke-direct {p0}, Lorg/jcodings/util/Hash$HashEntry;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->key:[I

    .line 47
    return-void
.end method

.method public constructor <init>(ILorg/jcodings/util/Hash$HashEntry;Ljava/lang/Object;[ILorg/jcodings/util/Hash$HashEntry;)V
    .locals 0
    .param p1, "hash"    # I
    .param p4, "key"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/jcodings/util/Hash$HashEntry",
            "<TV;>;TV;[I",
            "Lorg/jcodings/util/Hash$HashEntry",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;, "Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry<TV;>;"
    .local p2, "next":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p5, "head":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    invoke-direct {p0, p1, p2, p3, p5}, Lorg/jcodings/util/Hash$HashEntry;-><init>(ILorg/jcodings/util/Hash$HashEntry;Ljava/lang/Object;Lorg/jcodings/util/Hash$HashEntry;)V

    .line 41
    iput-object p4, p0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->key:[I

    .line 42
    return-void
.end method


# virtual methods
.method public equals([I)Z
    .locals 7
    .param p1, "key"    # [I

    .prologue
    .local p0, "this":Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;, "Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry<TV;>;"
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    iget-object v3, p0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->key:[I

    if-ne v3, p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 51
    :cond_1
    iget-object v3, p0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->key:[I

    array-length v3, v3

    array-length v4, p1

    if-eq v3, v4, :cond_2

    move v1, v2

    goto :goto_0

    .line 53
    :cond_2
    array-length v3, p1

    packed-switch v3, :pswitch_data_0

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->key:[I

    aget v3, v3, v0

    aget v4, p1, v0

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 54
    .end local v0    # "i":I
    :pswitch_0
    iget-object v3, p0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->key:[I

    aget v3, v3, v2

    aget v4, p1, v2

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v3, p0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->key:[I

    aget v3, v3, v2

    aget v4, p1, v2

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->key:[I

    aget v3, v3, v1

    aget v4, p1, v1

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 56
    :pswitch_2
    iget-object v3, p0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->key:[I

    aget v3, v3, v2

    aget v4, p1, v2

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->key:[I

    aget v3, v3, v1

    aget v4, p1, v1

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->key:[I

    aget v3, v3, v5

    aget v4, p1, v5

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .line 57
    :pswitch_3
    iget-object v3, p0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->key:[I

    aget v3, v3, v2

    aget v4, p1, v2

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->key:[I

    aget v3, v3, v1

    aget v4, p1, v1

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->key:[I

    aget v3, v3, v5

    aget v4, p1, v5

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lorg/jcodings/util/IntArrayHash$IntArrayHashEntry;->key:[I

    aget v3, v3, v6

    aget v4, p1, v6

    if-eq v3, v4, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .line 58
    .restart local v0    # "i":I
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
