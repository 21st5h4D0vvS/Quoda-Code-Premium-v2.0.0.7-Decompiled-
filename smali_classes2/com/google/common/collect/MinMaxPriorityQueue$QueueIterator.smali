.class Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;
.super Ljava/lang/Object;
.source "MinMaxPriorityQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MinMaxPriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private canRemove:Z

.field private cursor:I

.field private expectedModCount:I

.field private forgetMeNot:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation
.end field

.field private lastFromForgetMeNot:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private skipMe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/collect/MinMaxPriorityQueue;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue;)V
    .locals 1

    .prologue
    .line 753
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.QueueIterator;"
    iput-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    .line 755
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$700(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->expectedModCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/MinMaxPriorityQueue;
    .param p2, "x1"    # Lcom/google/common/collect/MinMaxPriorityQueue$1;

    .prologue
    .line 753
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.QueueIterator;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;)V

    return-void
.end method

.method private containsExact(Ljava/lang/Iterable;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TE;>;TE;)Z"
        }
    .end annotation

    .prologue
    .line 811
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.QueueIterator;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    .local p2, "target":Ljava/lang/Object;, "TE;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 812
    .local v0, "element":Ljava/lang/Object;, "TE;"
    if-ne v0, p2, :cond_0

    .line 813
    const/4 v2, 0x1

    .line 816
    .end local v0    # "element":Ljava/lang/Object;, "TE;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private nextNotInSkipMe(I)I
    .locals 2
    .param p1, "c"    # I

    .prologue
    .line 841
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.QueueIterator;"
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->skipMe:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 842
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->skipMe:Ljava/util/List;

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->containsExact(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 846
    :cond_0
    return p1
.end method


# virtual methods
.method checkModCount()V
    .locals 2

    .prologue
    .line 831
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.QueueIterator;"
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$700(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 832
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 834
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 762
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.QueueIterator;"
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->checkModCount()V

    .line 763
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->nextNotInSkipMe(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.QueueIterator;"
    const/4 v2, 0x1

    .line 768
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->checkModCount()V

    .line 769
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->nextNotInSkipMe(I)I

    move-result v0

    .line 770
    .local v0, "tempCursor":I
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 771
    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    .line 772
    iput-boolean v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->canRemove:Z

    .line 773
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->elementData(I)Ljava/lang/Object;

    move-result-object v1

    .line 779
    :goto_0
    return-object v1

    .line 774
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    if-eqz v1, :cond_1

    .line 775
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    .line 776
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->lastFromForgetMeNot:Ljava/lang/Object;

    .line 777
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->lastFromForgetMeNot:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 778
    iput-boolean v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->canRemove:Z

    .line 779
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->lastFromForgetMeNot:Ljava/lang/Object;

    goto :goto_0

    .line 782
    :cond_1
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "iterator moved past last element in queue."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 787
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.QueueIterator;"
    iget-boolean v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->canRemove:Z

    const-string v2, "no calls to remove() since the last call to next()"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 789
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->checkModCount()V

    .line 790
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->canRemove:Z

    .line 791
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->expectedModCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->expectedModCount:I

    .line 792
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 793
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    iget v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->removeAt(I)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    move-result-object v0

    .line 794
    .local v0, "moved":Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;, "Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc<TE;>;"
    if-eqz v0, :cond_1

    .line 795
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    if-nez v1, :cond_0

    .line 796
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    .line 797
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->skipMe:Ljava/util/List;

    .line 799
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->forgetMeNot:Ljava/util/Queue;

    iget-object v2, v0, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;->toTrickle:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 800
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->skipMe:Ljava/util/List;

    iget-object v2, v0, Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;->replaced:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    :cond_1
    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->cursor:I

    .line 807
    .end local v0    # "moved":Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;, "Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc<TE;>;"
    :goto_0
    return-void

    .line 804
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->lastFromForgetMeNot:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->removeExact(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 805
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->lastFromForgetMeNot:Ljava/lang/Object;

    goto :goto_0
.end method

.method removeExact(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 821
    .local p0, "this":Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;, "Lcom/google/common/collect/MinMaxPriorityQueue<TE;>.QueueIterator;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$600(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 822
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->access$500(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 823
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$QueueIterator;->this$0:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->removeAt(I)Lcom/google/common/collect/MinMaxPriorityQueue$MoveDesc;

    .line 824
    const/4 v1, 0x1

    .line 827
    :goto_1
    return v1

    .line 821
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 827
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
