.class public Lcom/henrythompson/quoda/suggestions/WordsList;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/suggestions/WordsList$Word;
    }
.end annotation


# instance fields
.field private mLineMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/henrythompson/quoda/document/LineObject;",
            "Lcom/henrythompson/quoda/suggestions/SortedArrayList",
            "<",
            "Lcom/henrythompson/quoda/suggestions/WordsList$Word;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWords:Lcom/henrythompson/quoda/suggestions/SortedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/henrythompson/quoda/suggestions/SortedArrayList",
            "<",
            "Lcom/henrythompson/quoda/suggestions/WordsList$Word;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    new-instance v0, Lcom/henrythompson/quoda/suggestions/SortedArrayList;

    invoke-direct {v0}, Lcom/henrythompson/quoda/suggestions/SortedArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList;->mWords:Lcom/henrythompson/quoda/suggestions/SortedArrayList;

    const/4 v1, 0x7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList;->mLineMap:Ljava/util/HashMap;

    nop

    return-void

    const/4 v0, 0x0
.end method

.method private putLineMap(Lcom/henrythompson/quoda/suggestions/WordsList$Word;Lcom/henrythompson/quoda/document/LineObject;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/suggestions/WordsList;->mLineMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/suggestions/WordsList;->mLineMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/suggestions/SortedArrayList;

    invoke-virtual {v1, p1}, Lcom/henrythompson/quoda/suggestions/SortedArrayList;->add(Ljava/lang/Comparable;)Z

    const/4 v2, 0x5

    :goto_0
    nop

    return-void

    const/4 v2, 0x5

    const/4 v2, 0x1

    :cond_0
    new-instance v0, Lcom/henrythompson/quoda/suggestions/SortedArrayList;

    invoke-direct {v0}, Lcom/henrythompson/quoda/suggestions/SortedArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/suggestions/SortedArrayList;->add(Ljava/lang/Comparable;)Z

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/suggestions/WordsList;->mLineMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    const/4 v1, 0x3
.end method


# virtual methods
.method public addWord(Ljava/lang/CharSequence;Lcom/henrythompson/quoda/document/LineObject;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x7

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/suggestions/WordsList;->findWord(Ljava/lang/CharSequence;)Lcom/henrythompson/quoda/suggestions/WordsList$Word;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x4

    new-instance v0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;

    invoke-direct {v0, p1, p2}, Lcom/henrythompson/quoda/suggestions/WordsList$Word;-><init>(Ljava/lang/CharSequence;Lcom/henrythompson/quoda/document/LineObject;)V

    const/4 v2, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/suggestions/WordsList;->mWords:Lcom/henrythompson/quoda/suggestions/SortedArrayList;

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/suggestions/SortedArrayList;->add(Ljava/lang/Comparable;)Z

    const/4 v2, 0x6

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/henrythompson/quoda/suggestions/WordsList;->putLineMap(Lcom/henrythompson/quoda/suggestions/WordsList$Word;Lcom/henrythompson/quoda/document/LineObject;)V

    const/4 v2, 0x4

    nop

    return-void

    const/4 v2, 0x3

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, p2}, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->addLine(Lcom/henrythompson/quoda/document/LineObject;)V

    goto :goto_0

    const/4 v0, 0x3
.end method

.method public clearLine(Lcom/henrythompson/quoda/document/LineObject;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/suggestions/WordsList;->mLineMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/suggestions/SortedArrayList;

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    const/4 v4, 0x2

    invoke-virtual {v1}, Lcom/henrythompson/quoda/suggestions/SortedArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;

    const/4 v4, 0x1

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->removeLine(Lcom/henrythompson/quoda/document/LineObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/suggestions/WordsList;->mWords:Lcom/henrythompson/quoda/suggestions/SortedArrayList;

    invoke-virtual {v3, v0}, Lcom/henrythompson/quoda/suggestions/SortedArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v2, 0x1

    const/4 v4, 0x0

    :cond_1
    invoke-virtual {v1}, Lcom/henrythompson/quoda/suggestions/SortedArrayList;->clear()V

    const/4 v4, 0x4

    :cond_2
    nop

    return-void

    const/4 v1, 0x5
.end method

.method public deleteLine(Lcom/henrythompson/quoda/document/LineObject;)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x4

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/suggestions/WordsList;->clearLine(Lcom/henrythompson/quoda/document/LineObject;)V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList;->mLineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public findWord(Ljava/lang/CharSequence;)Lcom/henrythompson/quoda/suggestions/WordsList$Word;
    .locals 5

    const/4 v4, 0x5

    const/4 v1, 0x0

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/suggestions/WordsList;->mWords:Lcom/henrythompson/quoda/suggestions/SortedArrayList;

    new-instance v3, Lcom/henrythompson/quoda/suggestions/WordsList$Word;

    invoke-direct {v3, p1, v1}, Lcom/henrythompson/quoda/suggestions/WordsList$Word;-><init>(Ljava/lang/CharSequence;Lcom/henrythompson/quoda/document/LineObject;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    const/4 v4, 0x4

    if-ltz v0, :cond_0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/suggestions/WordsList;->mWords:Lcom/henrythompson/quoda/suggestions/SortedArrayList;

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/suggestions/SortedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/suggestions/WordsList$Word;

    const/4 v4, 0x4

    :cond_0
    return-object v1

    const/4 v2, 0x4
.end method

.method public getWords()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/suggestions/WordsList$Word;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList;->mWords:Lcom/henrythompson/quoda/suggestions/SortedArrayList;

    return-object v0

    const/4 v1, 0x6
.end method
