.class public Lcom/henrythompson/quoda/suggestions/WordsList$Word;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/suggestions/WordsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Word"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/henrythompson/quoda/suggestions/WordsList$Word;",
        ">;",
        "Ljava/lang/CharSequence;"
    }
.end annotation


# instance fields
.field private mLines:Lcom/henrythompson/quoda/suggestions/SortedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/henrythompson/quoda/suggestions/SortedArrayList",
            "<",
            "Lcom/henrythompson/quoda/document/LineObject;",
            ">;"
        }
    .end annotation
.end field

.field private mOccuranceInLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/henrythompson/quoda/document/LineObject;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOccurances:I

.field private mValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lcom/henrythompson/quoda/document/LineObject;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x5

    new-instance v0, Lcom/henrythompson/quoda/suggestions/SortedArrayList;

    invoke-direct {v0}, Lcom/henrythompson/quoda/suggestions/SortedArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mLines:Lcom/henrythompson/quoda/suggestions/SortedArrayList;

    const/4 v1, 0x5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mOccuranceInLines:Ljava/util/HashMap;

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mOccurances:I

    const/4 v1, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mValue:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p0, p2}, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->addLine(Lcom/henrythompson/quoda/document/LineObject;)V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x5
.end method

.method private compareCharSequenceTo(Ljava/lang/CharSequence;)I
    .locals 8

    const/4 v7, 0x1

    const/4 v7, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mValue:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v7, 0x7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v7, 0x0

    if-ge v4, v2, :cond_0

    move v0, v4

    const/4 v7, 0x4

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    const/4 v7, 0x2

    iget-object v5, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mValue:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    sub-int v3, v5, v6

    if-eqz v3, :cond_1

    const/4 v7, 0x3

    :goto_2
    return v3

    const/4 v5, 0x3

    :cond_0
    move v0, v2

    const/4 v7, 0x6

    goto :goto_0

    const/4 v6, 0x7

    const/4 v7, 0x2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    const/4 v6, 0x2

    const/4 v7, 0x4

    :cond_2
    sub-int v3, v4, v2

    goto :goto_2

    const/4 v1, 0x4
.end method

.method private compareToIgnoreCase(Ljava/lang/CharSequence;)I
    .locals 9

    const/4 v8, 0x1

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mValue:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v8, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v8, 0x6

    if-ge v6, v4, :cond_1

    move v2, v6

    const/4 v8, 0x6

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    const/4 v8, 0x6

    iget-object v7, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mValue:Ljava/lang/CharSequence;

    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v8, 0x4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    const/4 v7, 0x3

    :cond_1
    move v2, v4

    const/4 v8, 0x7

    goto :goto_0

    const/4 v8, 0x4

    const/4 v8, 0x6

    :cond_2
    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->foldCase(C)C

    move-result v0

    const/4 v8, 0x6

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->foldCase(C)C

    move-result v1

    const/4 v8, 0x4

    sub-int v5, v0, v1

    if-eqz v5, :cond_0

    const/4 v8, 0x1

    :goto_2
    return v5

    const/4 v2, 0x5

    :cond_3
    sub-int v5, v6, v4

    goto :goto_2

    const/4 v2, 0x5
.end method

.method private foldCase(C)C
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    const/4 v1, 0x4

    const/16 v0, 0x41

    if-gt v0, p1, :cond_0

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_0

    const/4 v1, 0x7

    add-int/lit8 v0, p1, 0x20

    int-to-char p1, v0

    const/4 v1, 0x5

    :cond_0
    :goto_0
    return p1

    const/4 v0, 0x7

    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    goto :goto_0

    const/4 v1, 0x4
.end method


# virtual methods
.method public addLine(Lcom/henrythompson/quoda/document/LineObject;)V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mLines:Lcom/henrythompson/quoda/suggestions/SortedArrayList;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/suggestions/SortedArrayList;->add(Ljava/lang/Comparable;)Z

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mOccuranceInLines:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mOccuranceInLines:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mOccuranceInLines:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    :goto_0
    iget v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mOccurances:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mOccurances:I

    const/4 v2, 0x5

    nop

    return-void

    const/4 v2, 0x3

    const/4 v2, 0x1

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mOccuranceInLines:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    const/4 v2, 0x2
.end method

.method public charAt(I)C
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mValue:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0

    const/4 v1, 0x3
.end method

.method public compareTo(Lcom/henrythompson/quoda/suggestions/WordsList$Word;)I
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x4

    iget-object v1, p1, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mValue:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->compareToIgnoreCase(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_0

    const/4 v2, 0x2

    iget-object v1, p1, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mValue:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->compareCharSequenceTo(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v2, 0x0

    :cond_0
    return v0

    const/4 v0, 0x2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x6

    check-cast p1, Lcom/henrythompson/quoda/suggestions/WordsList$Word;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->compareTo(Lcom/henrythompson/quoda/suggestions/WordsList$Word;)I

    move-result v0

    return v0

    const/4 v0, 0x1
.end method

.method public exists()Z
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mLines:Lcom/henrythompson/quoda/suggestions/SortedArrayList;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/suggestions/SortedArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v1, 0x5

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x6
.end method

.method public getOccurences()I
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x5

    iget v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mOccurances:I

    return v0

    const/4 v0, 0x6
.end method

.method public getValue()Ljava/lang/CharSequence;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mValue:Ljava/lang/CharSequence;

    return-object v0

    const/4 v0, 0x3
.end method

.method public length()I
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mValue:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0

    const/4 v0, 0x5
.end method

.method public removeLine(Lcom/henrythompson/quoda/document/LineObject;)Z
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mLines:Lcom/henrythompson/quoda/suggestions/SortedArrayList;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/suggestions/SortedArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mOccuranceInLines:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iget v1, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mOccurances:I

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mOccuranceInLines:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mOccurances:I

    const/4 v2, 0x6

    :cond_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v1, 0x6

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    const/4 v2, 0x5
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->mValue:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    const/4 v0, 0x2
.end method
