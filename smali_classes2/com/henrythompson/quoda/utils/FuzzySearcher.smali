.class public Lcom/henrythompson/quoda/utils/FuzzySearcher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method

.method private static emptyQueryResult(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/utils/FuzzySearchResult;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v7, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v7, 0x2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    new-array v2, v5, [I

    const/4 v7, 0x3

    const/4 v0, 0x0

    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_0

    const/4 v7, 0x6

    aput v0, v2, v0

    const/4 v7, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    const/4 v5, 0x6

    const/4 v7, 0x5

    :cond_0
    new-instance v5, Lcom/henrythompson/quoda/utils/FuzzySearchResult;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v2, v6}, Lcom/henrythompson/quoda/utils/FuzzySearchResult;-><init>(Ljava/lang/CharSequence;[ILcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v3, 0x6

    const/4 v7, 0x0

    :cond_1
    return-object v3

    const/4 v5, 0x7
.end method

.method private static findRank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;
    .locals 8

    const/4 v7, 0x7

    const/4 v2, 0x0

    const/4 v7, 0x6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Lcom/henrythompson/quoda/utils/FuzzySearcher;->findRank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;ZZ)Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

    move-result-object v0

    return-object v0

    const/4 v6, 0x2
.end method

.method private static findRank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;ZZ)Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;
    .locals 19

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int v3, v3, p3

    sub-int v14, v2, v3

    move/from16 v0, p2

    if-le v0, v14, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    const/4 v12, 0x6

    :cond_0
    new-instance v18, Lcom/henrythompson/quoda/suggestions/SortedArrayList;

    invoke-direct/range {v18 .. v18}, Lcom/henrythompson/quoda/suggestions/SortedArrayList;-><init>()V

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    invoke-static {v15}, Lcom/henrythompson/quoda/utils/FuzzySearcher;->lower(C)C

    move-result v17

    invoke-static {v15}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v16

    move/from16 v12, p2

    const/4 v10, 0x0

    if-eqz p4, :cond_5

    move-object/from16 v9, p4

    :goto_1
    if-gt v12, v14, :cond_4

    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lcom/henrythompson/quoda/utils/FuzzySearcher;->lower(C)C

    move-result v2

    move/from16 v0, v17

    if-ne v2, v0, :cond_8

    iget-object v2, v9, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->matchPositions:[I

    aput v12, v2, p3

    invoke-static {v11}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v13

    if-eqz v12, :cond_1

    if-nez p5, :cond_1

    if-nez p6, :cond_2

    if-eqz v13, :cond_2

    :cond_1
    div-int/lit8 v10, v10, 0xa

    iget v2, v9, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->wordStartMatching:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->wordStartMatching:I

    :cond_2
    move/from16 v0, v16

    if-ne v13, v0, :cond_3

    iget v2, v9, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->caseMatching:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v9, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->caseMatching:I

    :cond_3
    iget v2, v9, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->gapDifference:I

    add-int/2addr v2, v10

    iput v2, v9, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->gapDifference:I

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v12

    iput v2, v9, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->remainingLength:I

    invoke-virtual {v9}, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->clone()Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/suggestions/SortedArrayList;->add(Ljava/lang/Comparable;)Z

    :cond_4
    invoke-virtual/range {v18 .. v18}, Lcom/henrythompson/quoda/suggestions/SortedArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/suggestions/SortedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

    goto :goto_0

    const/4 v14, 0x3

    :cond_5
    new-instance v9, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v9, v2}, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;-><init>(I)V

    goto :goto_1

    const/4 v7, 0x7

    :cond_6
    add-int/lit8 v4, v12, 0x1

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {v9}, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->clone()Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

    move-result-object v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Lcom/henrythompson/quoda/utils/FuzzySearcher;->findRank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;ZZ)Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/suggestions/SortedArrayList;->add(Ljava/lang/Comparable;)Z

    const/4 v10, 0x0

    :goto_2
    const/16 v2, 0x2d

    if-eq v11, v2, :cond_7

    const/16 v2, 0x5f

    if-ne v11, v2, :cond_a

    :cond_7
    const/16 p5, 0x1

    :goto_3
    invoke-static {v11}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p6

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    const/4 v10, 0x2

    :cond_8
    if-nez p3, :cond_9

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    const/4 v12, 0x0

    :cond_9
    add-int/lit8 v10, v10, 0xa

    goto :goto_2

    const/4 v12, 0x0

    :cond_a
    const/16 p5, 0x0

    goto :goto_3

    const/4 v14, 0x0

    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_0

    const/4 v1, 0x2
.end method

.method public static getFuzzyMatches(Ljava/util/ArrayList;Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/utils/FuzzySearchResult;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x7

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v6, 0x7

    :cond_0
    invoke-static {p0}, Lcom/henrythompson/quoda/utils/FuzzySearcher;->emptyQueryResult(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v6, 0x0

    :cond_1
    return-object v3

    const/4 v0, 0x1

    const/4 v6, 0x1

    :cond_2
    new-instance v3, Lcom/henrythompson/quoda/utils/FuzzySearcher$1;

    invoke-direct {v3}, Lcom/henrythompson/quoda/utils/FuzzySearcher$1;-><init>()V

    const/4 v6, 0x4

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v6, 0x4

    invoke-static {v0, p1}, Lcom/henrythompson/quoda/utils/FuzzySearcher;->findRank(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;

    move-result-object v1

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    const/4 v6, 0x4

    new-instance v2, Lcom/henrythompson/quoda/utils/FuzzySearchResult;

    iget-object v5, v1, Lcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;->matchPositions:[I

    invoke-direct {v2, v0, v5, v1}, Lcom/henrythompson/quoda/utils/FuzzySearchResult;-><init>(Ljava/lang/CharSequence;[ILcom/henrythompson/quoda/utils/FuzzySearcher$FuzzyRank;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v5, 0x4
.end method

.method private static lower(C)C
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    return v0

    const/4 v0, 0x2
.end method

.method public static styleResult(Lcom/henrythompson/quoda/utils/FuzzySearchResult;)Landroid/text/Spanned;
    .locals 8

    const/4 v7, 0x0

    const/4 v7, 0x0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/utils/FuzzySearchResult;->getSearchItem()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/utils/FuzzySearchResult;->getMatches()[I

    move-result-object v3

    const/4 v7, 0x7

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    const/4 v7, 0x0

    aget v2, v3, v1

    const/4 v7, 0x6

    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v5, v2, 0x1

    const/16 v6, 0x11

    invoke-virtual {v0, v4, v2, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const/4 v7, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v5, 0x1

    const/4 v7, 0x7

    :cond_0
    return-object v0

    const/4 v7, 0x5
.end method

.method public static styleResults(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/utils/FuzzySearchResult;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v4, 0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x7

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/utils/FuzzySearchResult;

    const/4 v4, 0x1

    invoke-static {v0}, Lcom/henrythompson/quoda/utils/FuzzySearcher;->styleResult(Lcom/henrythompson/quoda/utils/FuzzySearchResult;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v2, 0x2

    const/4 v4, 0x5

    :cond_0
    return-object v1

    const/4 v3, 0x5
.end method
