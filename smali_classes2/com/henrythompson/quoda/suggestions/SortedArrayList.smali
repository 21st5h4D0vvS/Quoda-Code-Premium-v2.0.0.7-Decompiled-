.class public Lcom/henrythompson/quoda/suggestions/SortedArrayList;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Ljava/lang/Comparable",
        "<TE;>;>",
        "Ljava/util/ArrayList",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public add(Ljava/lang/Comparable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    return v1

    const/4 v2, 0x6

    const/4 v2, 0x1

    :cond_0
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x3

    if-gez v0, :cond_1

    const/4 v2, 0x1

    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v0, v1, -0x1

    const/4 v2, 0x1

    :cond_1
    invoke-super {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v1, 0x1

    goto :goto_0

    const/4 v1, 0x0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x1

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/suggestions/SortedArrayList;->add(Ljava/lang/Comparable;)Z

    move-result v0

    return v0

    const/4 v0, 0x4
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x5

    check-cast p1, Ljava/lang/Comparable;

    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x3

    if-ltz v0, :cond_0

    const/4 v2, 0x5

    invoke-super {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x4

    :goto_0
    return v1

    const/4 v0, 0x2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    const/4 v1, 0x1
.end method
