.class final Lcom/henrythompson/quoda/utils/FuzzySearcher$1;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/utils/FuzzySearcher;->getFuzzyMatches(Ljava/util/ArrayList;Ljava/lang/CharSequence;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/henrythompson/quoda/utils/FuzzySearchResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public add(Lcom/henrythompson/quoda/utils/FuzzySearchResult;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x5

    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x4

    if-gez v0, :cond_0

    const/4 v2, 0x2

    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v0, v1, -0x1

    const/4 v2, 0x1

    :cond_0
    invoke-super {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v2, 0x4

    const/4 v1, 0x1

    return v1

    const/4 v0, 0x3
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x7

    check-cast p1, Lcom/henrythompson/quoda/utils/FuzzySearchResult;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/utils/FuzzySearcher$1;->add(Lcom/henrythompson/quoda/utils/FuzzySearchResult;)Z

    move-result v0

    return v0

    const/4 v1, 0x5
.end method
