.class final Lorg/joni/SearchAlgorithm$6;
.super Lorg/joni/SearchAlgorithm;
.source "SearchAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joni/SearchAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 416
    invoke-direct {p0}, Lorg/joni/SearchAlgorithm;-><init>()V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    const-string v0, "EXACT_BM_NOT_REV"

    return-object v0
.end method

.method public final search(Lorg/joni/Regex;[BIII)I
    .locals 16
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "text"    # [B
    .param p3, "textP"    # I
    .param p4, "textEnd"    # I
    .param p5, "textRange"    # I

    .prologue
    .line 423
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    .line 424
    .local v2, "enc":Lorg/jcodings/Encoding;
    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/joni/Regex;->exact:[B

    .line 425
    .local v10, "target":[B
    move-object/from16 v0, p1

    iget v12, v0, Lorg/joni/Regex;->exactP:I

    .line 426
    .local v12, "targetP":I
    move-object/from16 v0, p1

    iget v11, v0, Lorg/joni/Regex;->exactEnd:I

    .line 428
    .local v11, "targetEnd":I
    add-int/lit8 v9, v11, -0x1

    .line 429
    .local v9, "tail":I
    sub-int v13, v9, v12

    .line 430
    .local v13, "tlen1":I
    move/from16 v3, p5

    .line 439
    .local v3, "end":I
    add-int v14, v3, v13

    move/from16 v0, p4

    if-le v14, v0, :cond_0

    sub-int v3, p4, v13

    .line 441
    :cond_0
    move/from16 v5, p3

    .line 443
    .local v5, "s":I
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/joni/Regex;->intMap:[I

    if-nez v14, :cond_7

    .line 444
    :cond_1
    :goto_0
    if-ge v5, v3, :cond_9

    .line 446
    add-int v6, v5, v13

    .local v6, "se":I
    move v4, v6

    .line 447
    .local v4, "p":I
    move v8, v9

    .line 448
    .local v8, "t":I
    :goto_1
    aget-byte v14, p2, v4

    aget-byte v15, v10, v8

    if-ne v14, v15, :cond_3

    .line 449
    if-ne v8, v12, :cond_2

    move v14, v5

    .line 478
    .end local v4    # "p":I
    .end local v6    # "se":I
    .end local v8    # "t":I
    :goto_2
    return v14

    .line 450
    .restart local v4    # "p":I
    .restart local v6    # "se":I
    .restart local v8    # "t":I
    :cond_2
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 453
    :cond_3
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/joni/Regex;->map:[B

    aget-byte v15, p2, v6

    and-int/lit16 v15, v15, 0xff

    aget-byte v7, v14, v15

    .line 454
    .local v7, "skip":I
    move v8, v5

    .line 456
    :cond_4
    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v2, v0, v5, v1}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v14

    add-int/2addr v5, v14

    .line 457
    sub-int v14, v5, v8

    if-ge v14, v7, :cond_1

    if-lt v5, v3, :cond_4

    goto :goto_0

    .line 470
    .end local v7    # "skip":I
    :cond_5
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/joni/Regex;->intMap:[I

    aget-byte v15, p2, v6

    and-int/lit16 v15, v15, 0xff

    aget v7, v14, v15

    .line 471
    .restart local v7    # "skip":I
    move v8, v5

    .line 473
    :cond_6
    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v2, v0, v5, v1}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v14

    add-int/2addr v5, v14

    .line 474
    sub-int v14, v5, v8

    if-ge v14, v7, :cond_7

    if-lt v5, v3, :cond_6

    .line 460
    .end local v4    # "p":I
    .end local v6    # "se":I
    .end local v7    # "skip":I
    .end local v8    # "t":I
    :cond_7
    if-ge v5, v3, :cond_9

    .line 462
    add-int v6, v5, v13

    .restart local v6    # "se":I
    move v4, v6

    .line 463
    .restart local v4    # "p":I
    move v8, v9

    .line 465
    .restart local v8    # "t":I
    :goto_3
    aget-byte v14, p2, v4

    aget-byte v15, v10, v8

    if-ne v14, v15, :cond_5

    .line 466
    if-ne v8, v12, :cond_8

    move v14, v5

    goto :goto_2

    .line 467
    :cond_8
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 478
    .end local v4    # "p":I
    .end local v6    # "se":I
    .end local v8    # "t":I
    :cond_9
    const/4 v14, -0x1

    goto :goto_2
.end method

.method public final searchBackward(Lorg/joni/Regex;[BIIIIII)I
    .locals 9
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "text"    # [B
    .param p3, "textP"    # I
    .param p4, "adjustText"    # I
    .param p5, "textEnd"    # I
    .param p6, "textStart"    # I
    .param p7, "s_"    # I
    .param p8, "range_"    # I

    .prologue
    .line 482
    sget-object v0, Lorg/joni/SearchAlgorithm$6;->BM:Lorg/joni/SearchAlgorithm;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lorg/joni/SearchAlgorithm;->searchBackward(Lorg/joni/Regex;[BIIIIII)I

    move-result v0

    return v0
.end method
