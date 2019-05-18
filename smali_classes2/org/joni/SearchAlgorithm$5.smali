.class final Lorg/joni/SearchAlgorithm$5;
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


# static fields
.field private static final BM_BACKWARD_SEARCH_LENGTH_THRESHOLD:I = 0x64


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 316
    invoke-direct {p0}, Lorg/joni/SearchAlgorithm;-><init>()V

    return-void
.end method

.method private setBmBackwardSkip(Lorg/joni/Regex;[BII)V
    .locals 5
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "bytes"    # [B
    .param p3, "p"    # I
    .param p4, "end"    # I

    .prologue
    const/16 v4, 0x100

    .line 402
    iget-object v3, p1, Lorg/joni/Regex;->intMapBackward:[I

    if-nez v3, :cond_0

    .line 403
    new-array v2, v4, [I

    .line 404
    .local v2, "skip":[I
    iput-object v2, p1, Lorg/joni/Regex;->intMapBackward:[I

    .line 409
    :goto_0
    sub-int v1, p4, p3

    .line 411
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_1

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 406
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "skip":[I
    :cond_0
    iget-object v2, p1, Lorg/joni/Regex;->intMapBackward:[I

    .restart local v2    # "skip":[I
    goto :goto_0

    .line 412
    .restart local v0    # "i":I
    .restart local v1    # "len":I
    :cond_1
    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-lez v0, :cond_2

    aget-byte v3, p2, v0

    and-int/lit16 v3, v3, 0xff

    aput v0, v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 413
    :cond_2
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    const-string v0, "EXACT_BM"

    return-object v0
.end method

.method public final search(Lorg/joni/Regex;[BIII)I
    .locals 10
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "text"    # [B
    .param p3, "textP"    # I
    .param p4, "textEnd"    # I
    .param p5, "textRange"    # I

    .prologue
    .line 323
    iget-object v5, p1, Lorg/joni/Regex;->exact:[B

    .line 324
    .local v5, "target":[B
    iget v7, p1, Lorg/joni/Regex;->exactP:I

    .line 325
    .local v7, "targetP":I
    iget v6, p1, Lorg/joni/Regex;->exactEnd:I

    .line 327
    .local v6, "targetEnd":I
    sub-int v8, v6, v7

    add-int/2addr v8, p5

    add-int/lit8 v0, v8, -0x1

    .line 328
    .local v0, "end":I
    if-le v0, p4, :cond_0

    move v0, p4

    .line 330
    :cond_0
    add-int/lit8 v4, v6, -0x1

    .line 331
    .local v4, "tail":I
    sub-int v8, v6, v7

    add-int/2addr v8, p3

    add-int/lit8 v2, v8, -0x1

    .line 333
    .local v2, "s":I
    iget-object v8, p1, Lorg/joni/Regex;->intMap:[I

    if-nez v8, :cond_5

    .line 334
    :goto_0
    if-ge v2, v0, :cond_6

    .line 335
    move v1, v2

    .line 336
    .local v1, "p":I
    move v3, v4

    .line 338
    .local v3, "t":I
    :goto_1
    aget-byte v8, p2, v1

    aget-byte v9, v5, v3

    if-ne v8, v9, :cond_3

    .line 339
    if-ne v3, v7, :cond_2

    .line 358
    .end local v1    # "p":I
    .end local v3    # "t":I
    :cond_1
    :goto_2
    return v1

    .line 340
    .restart local v1    # "p":I
    .restart local v3    # "t":I
    :cond_2
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 343
    :cond_3
    iget-object v8, p1, Lorg/joni/Regex;->map:[B

    aget-byte v9, p2, v2

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    add-int/2addr v2, v8

    .line 344
    goto :goto_0

    .line 355
    :cond_4
    iget-object v8, p1, Lorg/joni/Regex;->intMap:[I

    aget-byte v9, p2, v2

    and-int/lit16 v9, v9, 0xff

    aget v8, v8, v9

    add-int/2addr v2, v8

    .line 346
    .end local v1    # "p":I
    .end local v3    # "t":I
    :cond_5
    if-ge v2, v0, :cond_6

    .line 347
    move v1, v2

    .line 348
    .restart local v1    # "p":I
    move v3, v4

    .line 350
    .restart local v3    # "t":I
    :goto_3
    aget-byte v8, p2, v1

    aget-byte v9, v5, v3

    if-ne v8, v9, :cond_4

    .line 351
    if-eq v3, v7, :cond_1

    .line 352
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 358
    .end local v1    # "p":I
    .end local v3    # "t":I
    :cond_6
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public final searchBackward(Lorg/joni/Regex;[BIIIIII)I
    .locals 21
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "text"    # [B
    .param p3, "textP"    # I
    .param p4, "adjustText"    # I
    .param p5, "textEnd"    # I
    .param p6, "textStart"    # I
    .param p7, "s_"    # I
    .param p8, "range_"    # I

    .prologue
    .line 364
    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    .line 365
    .local v14, "enc":Lorg/jcodings/Encoding;
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/joni/Regex;->exact:[B

    move-object/from16 v18, v0

    .line 366
    .local v18, "target":[B
    move-object/from16 v0, p1

    iget v0, v0, Lorg/joni/Regex;->exactP:I

    move/from16 v20, v0

    .line 367
    .local v20, "targetP":I
    move-object/from16 v0, p1

    iget v0, v0, Lorg/joni/Regex;->exactEnd:I

    move/from16 v19, v0

    .line 369
    .local v19, "targetEnd":I
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/joni/Regex;->intMapBackward:[I

    if-nez v5, :cond_2

    .line 370
    sub-int v5, p7, p8

    const/16 v6, 0x64

    if-ge v5, v6, :cond_1

    .line 372
    sget-object v5, Lorg/joni/SearchAlgorithm$5;->SLOW:Lorg/joni/SearchAlgorithm;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-virtual/range {v5 .. v13}, Lorg/joni/SearchAlgorithm;->searchBackward(Lorg/joni/Regex;[BIIIIII)I

    move-result v16

    .line 396
    :cond_0
    :goto_0
    return v16

    .line 374
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v20

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joni/SearchAlgorithm$5;->setBmBackwardSkip(Lorg/joni/Regex;[BII)V

    .line 377
    :cond_2
    sub-int v5, v19, v20

    sub-int v16, p5, v5

    .line 379
    .local v16, "s":I
    move/from16 v0, p6

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    .line 380
    move/from16 v16, p6

    .line 385
    :goto_1
    move/from16 v0, v16

    move/from16 v1, p3

    if-lt v0, v1, :cond_5

    .line 386
    move/from16 v15, v16

    .line 387
    .local v15, "p":I
    move/from16 v17, v20

    .line 388
    .local v17, "t":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    aget-byte v5, p2, v15

    aget-byte v6, v18, v17

    if-ne v5, v6, :cond_4

    .line 389
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 382
    .end local v15    # "p":I
    .end local v17    # "t":I
    :cond_3
    move-object/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, v16

    move/from16 v3, p5

    invoke-virtual {v14, v0, v1, v2, v3}, Lorg/jcodings/Encoding;->leftAdjustCharHead([BIII)I

    move-result v16

    goto :goto_1

    .line 391
    .restart local v15    # "p":I
    .restart local v17    # "t":I
    :cond_4
    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 393
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/joni/Regex;->intMapBackward:[I

    aget-byte v6, p2, v16

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    sub-int v16, v16, v5

    .line 394
    move-object/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, v16

    move/from16 v3, p5

    invoke-virtual {v14, v0, v1, v2, v3}, Lorg/jcodings/Encoding;->leftAdjustCharHead([BIII)I

    move-result v16

    .line 395
    goto :goto_1

    .line 396
    .end local v15    # "p":I
    .end local v17    # "t":I
    :cond_5
    const/16 v16, -0x1

    goto :goto_0
.end method
