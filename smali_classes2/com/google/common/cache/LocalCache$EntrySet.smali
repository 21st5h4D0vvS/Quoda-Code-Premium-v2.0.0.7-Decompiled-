.class final Lcom/google/common/cache/LocalCache$EntrySet;
.super Ljava/util/AbstractSet;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .locals 0

    .prologue
    .line 4558
    .local p0, "this":Lcom/google/common/cache/LocalCache$EntrySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 4608
    .local p0, "this":Lcom/google/common/cache/LocalCache$EntrySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->clear()V

    .line 4609
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$EntrySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    const/4 v3, 0x0

    .line 4569
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-nez v4, :cond_1

    .line 4579
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v0, p1

    .line 4572
    check-cast v0, Ljava/util/Map$Entry;

    .line 4573
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4574
    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 4577
    iget-object v4, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v4, v1}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 4579
    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 4602
    .local p0, "this":Lcom/google/common/cache/LocalCache$EntrySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 4563
    .local p0, "this":Lcom/google/common/cache/LocalCache$EntrySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    new-instance v0, Lcom/google/common/cache/LocalCache$EntryIterator;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lcom/google/common/cache/LocalCache$EntryIterator;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/google/common/cache/LocalCache$EntrySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    const/4 v2, 0x0

    .line 4585
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_1

    .line 4590
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 4588
    check-cast v0, Ljava/util/Map$Entry;

    .line 4589
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4590
    .local v1, "key":Ljava/lang/Object;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 4596
    .local p0, "this":Lcom/google/common/cache/LocalCache$EntrySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache;->size()I

    move-result v0

    return v0
.end method
