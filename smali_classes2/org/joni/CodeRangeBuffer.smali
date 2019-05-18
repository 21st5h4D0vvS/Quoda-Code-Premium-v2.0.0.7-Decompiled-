.class public final Lorg/joni/CodeRangeBuffer;
.super Ljava/lang/Object;
.source "CodeRangeBuffer.java"


# static fields
.field private static final ALL_MULTI_BYTE_RANGE:I = 0x7fffffff

.field private static final INIT_MULTI_BYTE_RANGE_SIZE:I = 0x5


# instance fields
.field p:[I

.field used:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    .line 40
    invoke-virtual {p0, v1, v1}, Lorg/joni/CodeRangeBuffer;->writeCodePoint(II)V

    .line 41
    return-void
.end method

.method private constructor <init>(Lorg/joni/CodeRangeBuffer;)V
    .locals 4
    .param p1, "orig"    # Lorg/joni/CodeRangeBuffer;

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-object v0, p1, Lorg/joni/CodeRangeBuffer;->p:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    .line 49
    iget-object v0, p1, Lorg/joni/CodeRangeBuffer;->p:[I

    iget-object v1, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    iget-object v2, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget v0, p1, Lorg/joni/CodeRangeBuffer;->used:I

    iput v0, p0, Lorg/joni/CodeRangeBuffer;->used:I

    .line 51
    return-void
.end method

.method public constructor <init>([I)V
    .locals 1
    .param p1, "ranges"    # [I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    .line 35
    const/4 v0, 0x0

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/CodeRangeBuffer;->used:I

    .line 36
    return-void
.end method

.method public static addAllMultiByteRange(Lorg/jcodings/Encoding;Lorg/joni/CodeRangeBuffer;)Lorg/joni/CodeRangeBuffer;
    .locals 1
    .param p0, "enc"    # Lorg/jcodings/Encoding;
    .param p1, "pbuf"    # Lorg/joni/CodeRangeBuffer;

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lorg/joni/CodeRangeBuffer;->setAllMultiByteRange(Lorg/jcodings/Encoding;Lorg/joni/CodeRangeBuffer;)Lorg/joni/CodeRangeBuffer;

    move-result-object p1

    .line 205
    .end local p1    # "pbuf":Lorg/joni/CodeRangeBuffer;
    :cond_0
    return-object p1
.end method

.method public static addCodeRange(Lorg/joni/CodeRangeBuffer;Lorg/joni/ScanEnvironment;II)Lorg/joni/CodeRangeBuffer;
    .locals 2
    .param p0, "pbuf"    # Lorg/joni/CodeRangeBuffer;
    .param p1, "env"    # Lorg/joni/ScanEnvironment;
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    .line 187
    if-le p2, p3, :cond_1

    .line 188
    iget-object v0, p1, Lorg/joni/ScanEnvironment;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v0}, Lorg/joni/Syntax;->allowEmptyRangeInCC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    .end local p0    # "pbuf":Lorg/joni/CodeRangeBuffer;
    :goto_0
    return-object p0

    .line 191
    .restart local p0    # "pbuf":Lorg/joni/CodeRangeBuffer;
    :cond_0
    new-instance v0, Lorg/joni/exception/ValueException;

    const-string v1, "empty range in char class"

    invoke-direct {v0, v1}, Lorg/joni/exception/ValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_1
    invoke-static {p0, p2, p3}, Lorg/joni/CodeRangeBuffer;->addCodeRangeToBuff(Lorg/joni/CodeRangeBuffer;II)Lorg/joni/CodeRangeBuffer;

    move-result-object p0

    goto :goto_0
.end method

.method public static addCodeRangeToBuff(Lorg/joni/CodeRangeBuffer;II)Lorg/joni/CodeRangeBuffer;
    .locals 13
    .param p0, "pbuf"    # Lorg/joni/CodeRangeBuffer;
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 119
    if-le p1, p2, :cond_0

    .line 120
    move v5, p1

    .line 121
    .local v5, "n":I
    move p1, p2

    .line 122
    move p2, v5

    .line 125
    .end local v5    # "n":I
    :cond_0
    if-nez p0, :cond_1

    new-instance p0, Lorg/joni/CodeRangeBuffer;

    .end local p0    # "pbuf":Lorg/joni/CodeRangeBuffer;
    invoke-direct {p0}, Lorg/joni/CodeRangeBuffer;-><init>()V

    .line 127
    .restart local p0    # "pbuf":Lorg/joni/CodeRangeBuffer;
    :cond_1
    iget-object v6, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    .line 128
    .local v6, "p":[I
    const/4 v11, 0x0

    aget v5, v6, v11

    .line 130
    .restart local v5    # "n":I
    const/4 v4, 0x0

    .line 131
    .local v4, "low":I
    move v0, v5

    .line 133
    .local v0, "bound":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 134
    add-int v11, v4, v0

    ushr-int/lit8 v10, v11, 0x1

    .line 135
    .local v10, "x":I
    mul-int/lit8 v11, v10, 0x2

    add-int/lit8 v11, v11, 0x2

    aget v11, v6, v11

    if-le p1, v11, :cond_2

    .line 136
    add-int/lit8 v4, v10, 0x1

    goto :goto_0

    .line 138
    :cond_2
    move v0, v10

    goto :goto_0

    .line 142
    .end local v10    # "x":I
    :cond_3
    move v2, v4

    .line 143
    .local v2, "high":I
    move v0, v5

    .line 145
    :goto_1
    if-ge v2, v0, :cond_5

    .line 146
    add-int v11, v2, v0

    ushr-int/lit8 v10, v11, 0x1

    .line 147
    .restart local v10    # "x":I
    mul-int/lit8 v11, v10, 0x2

    add-int/lit8 v11, v11, 0x1

    aget v11, v6, v11

    add-int/lit8 v11, v11, -0x1

    if-lt p2, v11, :cond_4

    .line 148
    add-int/lit8 v2, v10, 0x1

    goto :goto_1

    .line 150
    :cond_4
    move v0, v10

    goto :goto_1

    .line 154
    .end local v10    # "x":I
    :cond_5
    add-int/lit8 v11, v4, 0x1

    sub-int v3, v11, v2

    .line 156
    .local v3, "incN":I
    add-int v11, v5, v3

    const/16 v12, 0x2710

    if-le v11, v12, :cond_6

    new-instance v11, Lorg/joni/exception/ValueException;

    const-string v12, "too many multibyte code ranges are specified"

    invoke-direct {v11, v12}, Lorg/joni/exception/ValueException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 158
    :cond_6
    const/4 v11, 0x1

    if-eq v3, v11, :cond_8

    .line 159
    mul-int/lit8 v11, v4, 0x2

    add-int/lit8 v11, v11, 0x1

    aget v11, v6, v11

    if-le p1, v11, :cond_7

    mul-int/lit8 v11, v4, 0x2

    add-int/lit8 v11, v11, 0x1

    aget p1, v6, v11

    .line 160
    :cond_7
    add-int/lit8 v11, v2, -0x1

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x2

    aget v11, v6, v11

    if-ge p2, v11, :cond_8

    add-int/lit8 v11, v2, -0x1

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, 0x2

    aget p2, v6, v11

    .line 163
    :cond_8
    if-eqz v3, :cond_9

    if-ge v2, v5, :cond_9

    .line 164
    mul-int/lit8 v11, v2, 0x2

    add-int/lit8 v1, v11, 0x1

    .line 165
    .local v1, "fromPos":I
    add-int/lit8 v11, v4, 0x1

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v9, v11, 0x1

    .line 166
    .local v9, "toPos":I
    sub-int v11, v5, v2

    mul-int/lit8 v8, v11, 0x2

    .line 168
    .local v8, "size":I
    if-lez v3, :cond_a

    .line 169
    invoke-direct {p0, v1, v9, v8}, Lorg/joni/CodeRangeBuffer;->moveRight(III)V

    .line 175
    .end local v1    # "fromPos":I
    .end local v8    # "size":I
    .end local v9    # "toPos":I
    :cond_9
    :goto_2
    mul-int/lit8 v11, v4, 0x2

    add-int/lit8 v7, v11, 0x1

    .line 177
    .local v7, "pos":I
    invoke-virtual {p0, v7, p1}, Lorg/joni/CodeRangeBuffer;->writeCodePoint(II)V

    .line 178
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {p0, v11, p2}, Lorg/joni/CodeRangeBuffer;->writeCodePoint(II)V

    .line 179
    add-int/2addr v5, v3

    .line 180
    const/4 v11, 0x0

    invoke-virtual {p0, v11, v5}, Lorg/joni/CodeRangeBuffer;->writeCodePoint(II)V

    .line 182
    return-object p0

    .line 171
    .end local v7    # "pos":I
    .restart local v1    # "fromPos":I
    .restart local v8    # "size":I
    .restart local v9    # "toPos":I
    :cond_a
    invoke-direct {p0, v1, v9}, Lorg/joni/CodeRangeBuffer;->moveLeftAndReduce(II)V

    goto :goto_2
.end method

.method public static andCodeRange1(Lorg/joni/CodeRangeBuffer;II[II)Lorg/joni/CodeRangeBuffer;
    .locals 4
    .param p0, "pbuf"    # Lorg/joni/CodeRangeBuffer;
    .param p1, "from1"    # I
    .param p2, "to1"    # I
    .param p3, "data"    # [I
    .param p4, "n"    # I

    .prologue
    .line 297
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_2

    .line 298
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v0, p3, v3

    .line 299
    .local v0, "from2":I
    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    aget v2, p3, v3

    .line 300
    .local v2, "to2":I
    if-ge v0, p1, :cond_4

    .line 301
    if-ge v2, p1, :cond_1

    .line 297
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_1
    add-int/lit8 p1, v2, 0x1

    .line 318
    :goto_1
    if-le p1, p2, :cond_0

    .line 321
    .end local v0    # "from2":I
    .end local v2    # "to2":I
    :cond_2
    if-gt p1, p2, :cond_3

    .line 322
    invoke-static {p0, p1, p2}, Lorg/joni/CodeRangeBuffer;->addCodeRangeToBuff(Lorg/joni/CodeRangeBuffer;II)Lorg/joni/CodeRangeBuffer;

    move-result-object p0

    .line 325
    :cond_3
    return-object p0

    .line 306
    .restart local v0    # "from2":I
    .restart local v2    # "to2":I
    :cond_4
    if-gt v0, p2, :cond_7

    .line 307
    if-ge v2, p2, :cond_6

    .line 308
    add-int/lit8 v3, v0, -0x1

    if-gt p1, v3, :cond_5

    .line 309
    add-int/lit8 v3, v0, -0x1

    invoke-static {p0, p1, v3}, Lorg/joni/CodeRangeBuffer;->addCodeRangeToBuff(Lorg/joni/CodeRangeBuffer;II)Lorg/joni/CodeRangeBuffer;

    move-result-object p0

    .line 311
    :cond_5
    add-int/lit8 p1, v2, 0x1

    goto :goto_1

    .line 313
    :cond_6
    add-int/lit8 p2, v0, -0x1

    goto :goto_1

    .line 316
    :cond_7
    move p1, v0

    goto :goto_1
.end method

.method public static andCodeRangeBuff(Lorg/joni/CodeRangeBuffer;ZLorg/joni/CodeRangeBuffer;Z)Lorg/joni/CodeRangeBuffer;
    .locals 17
    .param p0, "bbuf1"    # Lorg/joni/CodeRangeBuffer;
    .param p1, "not1"    # Z
    .param p2, "bbuf2"    # Lorg/joni/CodeRangeBuffer;
    .param p3, "not2"    # Z

    .prologue
    .line 331
    const/4 v10, 0x0

    .line 333
    .local v10, "pbuf":Lorg/joni/CodeRangeBuffer;
    if-nez p0, :cond_1

    .line 334
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/joni/CodeRangeBuffer;->clone()Lorg/joni/CodeRangeBuffer;

    move-result-object v16

    .line 378
    :goto_0
    return-object v16

    .line 335
    :cond_0
    const/16 v16, 0x0

    goto :goto_0

    .line 336
    :cond_1
    if-nez p2, :cond_3

    .line 337
    if-eqz p3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/joni/CodeRangeBuffer;->clone()Lorg/joni/CodeRangeBuffer;

    move-result-object v16

    goto :goto_0

    .line 338
    :cond_2
    const/16 v16, 0x0

    goto :goto_0

    .line 341
    :cond_3
    if-eqz p1, :cond_4

    .line 345
    move/from16 v12, p1

    .local v12, "tnot":Z
    move/from16 p1, p3

    move/from16 p3, v12

    .line 346
    move-object/from16 v11, p0

    .local v11, "tbuf":Lorg/joni/CodeRangeBuffer;
    move-object/from16 p0, p2

    move-object/from16 p2, v11

    .line 349
    .end local v11    # "tbuf":Lorg/joni/CodeRangeBuffer;
    .end local v12    # "tnot":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/joni/CodeRangeBuffer;->p:[I

    .line 350
    .local v8, "p1":[I
    const/16 v16, 0x0

    aget v6, v8, v16

    .line 351
    .local v6, "n1":I
    move-object/from16 v0, p2

    iget-object v9, v0, Lorg/joni/CodeRangeBuffer;->p:[I

    .line 352
    .local v9, "p2":[I
    const/16 v16, 0x0

    aget v7, v9, v16

    .line 354
    .local v7, "n2":I
    if-nez p3, :cond_a

    if-nez p1, :cond_a

    .line 355
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_b

    .line 356
    mul-int/lit8 v16, v4, 0x2

    add-int/lit8 v16, v16, 0x1

    aget v2, v8, v16

    .line 357
    .local v2, "from1":I
    mul-int/lit8 v16, v4, 0x2

    add-int/lit8 v16, v16, 0x2

    aget v14, v8, v16

    .line 359
    .local v14, "to1":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v7, :cond_5

    .line 360
    mul-int/lit8 v16, v5, 0x2

    add-int/lit8 v16, v16, 0x1

    aget v3, v9, v16

    .line 361
    .local v3, "from2":I
    mul-int/lit8 v16, v5, 0x2

    add-int/lit8 v16, v16, 0x2

    aget v15, v9, v16

    .line 363
    .local v15, "to2":I
    if-le v3, v14, :cond_6

    .line 355
    .end local v3    # "from2":I
    .end local v15    # "to2":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 364
    .restart local v3    # "from2":I
    .restart local v15    # "to2":I
    :cond_6
    if-ge v15, v2, :cond_7

    .line 359
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 365
    :cond_7
    if-le v2, v3, :cond_8

    move v1, v2

    .line 366
    .local v1, "from":I
    :goto_4
    if-ge v14, v15, :cond_9

    move v13, v14

    .line 367
    .local v13, "to":I
    :goto_5
    invoke-static {v10, v1, v13}, Lorg/joni/CodeRangeBuffer;->addCodeRangeToBuff(Lorg/joni/CodeRangeBuffer;II)Lorg/joni/CodeRangeBuffer;

    move-result-object v10

    goto :goto_3

    .end local v1    # "from":I
    .end local v13    # "to":I
    :cond_8
    move v1, v3

    .line 365
    goto :goto_4

    .restart local v1    # "from":I
    :cond_9
    move v13, v15

    .line 366
    goto :goto_5

    .line 370
    .end local v1    # "from":I
    .end local v2    # "from1":I
    .end local v3    # "from2":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v14    # "to1":I
    .end local v15    # "to2":I
    :cond_a
    if-nez p1, :cond_b

    .line 371
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    if-ge v4, v6, :cond_b

    .line 372
    mul-int/lit8 v16, v4, 0x2

    add-int/lit8 v16, v16, 0x1

    aget v2, v8, v16

    .line 373
    .restart local v2    # "from1":I
    mul-int/lit8 v16, v4, 0x2

    add-int/lit8 v16, v16, 0x2

    aget v14, v8, v16

    .line 374
    .restart local v14    # "to1":I
    invoke-static {v10, v2, v14, v9, v7}, Lorg/joni/CodeRangeBuffer;->andCodeRange1(Lorg/joni/CodeRangeBuffer;II[II)Lorg/joni/CodeRangeBuffer;

    move-result-object v10

    .line 371
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .end local v2    # "from1":I
    .end local v4    # "i":I
    .end local v14    # "to1":I
    :cond_b
    move-object/from16 v16, v10

    .line 378
    goto/16 :goto_0
.end method

.method private moveLeftAndReduce(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    iget-object v1, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    iget v2, p0, Lorg/joni/CodeRangeBuffer;->used:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget v0, p0, Lorg/joni/CodeRangeBuffer;->used:I

    sub-int v1, p1, p2

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/joni/CodeRangeBuffer;->used:I

    .line 103
    return-void
.end method

.method private moveRight(III)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "n"    # I

    .prologue
    .line 91
    add-int v0, p2, p3

    iget-object v1, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    array-length v1, v1

    if-le v0, v1, :cond_0

    add-int v0, p2, p3

    invoke-virtual {p0, v0}, Lorg/joni/CodeRangeBuffer;->expand(I)V

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    iget-object v1, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    invoke-static {v0, p1, v1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    add-int v0, p2, p3

    iget v1, p0, Lorg/joni/CodeRangeBuffer;->used:I

    if-le v0, v1, :cond_1

    add-int v0, p2, p3

    iput v0, p0, Lorg/joni/CodeRangeBuffer;->used:I

    .line 94
    :cond_1
    return-void
.end method

.method public static notCodeRangeBuff(Lorg/jcodings/Encoding;Lorg/joni/CodeRangeBuffer;)Lorg/joni/CodeRangeBuffer;
    .locals 9
    .param p0, "enc"    # Lorg/jcodings/Encoding;
    .param p1, "bbuf"    # Lorg/joni/CodeRangeBuffer;

    .prologue
    const v8, 0x7fffffff

    .line 210
    const/4 v4, 0x0

    .line 212
    .local v4, "pbuf":Lorg/joni/CodeRangeBuffer;
    if-nez p1, :cond_0

    invoke-static {p0, v4}, Lorg/joni/CodeRangeBuffer;->setAllMultiByteRange(Lorg/jcodings/Encoding;Lorg/joni/CodeRangeBuffer;)Lorg/joni/CodeRangeBuffer;

    move-result-object v7

    .line 234
    :goto_0
    return-object v7

    .line 214
    :cond_0
    iget-object v3, p1, Lorg/joni/CodeRangeBuffer;->p:[I

    .line 215
    .local v3, "p":[I
    const/4 v7, 0x0

    aget v2, v3, v7

    .line 217
    .local v2, "n":I
    if-gtz v2, :cond_1

    invoke-static {p0, v4}, Lorg/joni/CodeRangeBuffer;->setAllMultiByteRange(Lorg/jcodings/Encoding;Lorg/joni/CodeRangeBuffer;)Lorg/joni/CodeRangeBuffer;

    move-result-object v7

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p0}, Lorg/jcodings/Encoding;->mbcodeStartPosition()I

    move-result v5

    .line 222
    .local v5, "pre":I
    const/4 v6, 0x0

    .line 223
    .local v6, "to":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 224
    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v0, v3, v7

    .line 225
    .local v0, "from":I
    mul-int/lit8 v7, v1, 0x2

    add-int/lit8 v7, v7, 0x2

    aget v6, v3, v7

    .line 226
    add-int/lit8 v7, v0, -0x1

    if-gt v5, v7, :cond_2

    .line 227
    add-int/lit8 v7, v0, -0x1

    invoke-static {v4, v5, v7}, Lorg/joni/CodeRangeBuffer;->addCodeRangeToBuff(Lorg/joni/CodeRangeBuffer;II)Lorg/joni/CodeRangeBuffer;

    move-result-object v4

    .line 229
    :cond_2
    if-ne v6, v8, :cond_5

    .line 233
    .end local v0    # "from":I
    :cond_3
    if-ge v6, v8, :cond_4

    add-int/lit8 v7, v6, 0x1

    invoke-static {v4, v7, v8}, Lorg/joni/CodeRangeBuffer;->addCodeRangeToBuff(Lorg/joni/CodeRangeBuffer;II)Lorg/joni/CodeRangeBuffer;

    move-result-object v4

    :cond_4
    move-object v7, v4

    .line 234
    goto :goto_0

    .line 230
    .restart local v0    # "from":I
    :cond_5
    add-int/lit8 v5, v6, 0x1

    .line 223
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static orCodeRangeBuff(Lorg/jcodings/Encoding;Lorg/joni/CodeRangeBuffer;ZLorg/joni/CodeRangeBuffer;Z)Lorg/joni/CodeRangeBuffer;
    .locals 9
    .param p0, "enc"    # Lorg/jcodings/Encoding;
    .param p1, "bbuf1"    # Lorg/joni/CodeRangeBuffer;
    .param p2, "not1"    # Z
    .param p3, "bbuf2"    # Lorg/joni/CodeRangeBuffer;
    .param p4, "not2"    # Z

    .prologue
    .line 240
    const/4 v4, 0x0

    .line 242
    .local v4, "pbuf":Lorg/joni/CodeRangeBuffer;
    if-nez p1, :cond_2

    if-nez p3, :cond_2

    .line 243
    if-nez p2, :cond_0

    if-eqz p4, :cond_1

    .line 244
    :cond_0
    invoke-static {p0, v4}, Lorg/joni/CodeRangeBuffer;->setAllMultiByteRange(Lorg/jcodings/Encoding;Lorg/joni/CodeRangeBuffer;)Lorg/joni/CodeRangeBuffer;

    move-result-object v8

    .line 292
    :goto_0
    return-object v8

    .line 246
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 249
    :cond_2
    if-nez p3, :cond_3

    .line 253
    move v6, p2

    .local v6, "tnot":Z
    move p2, p4

    move p4, v6

    .line 254
    move-object v5, p1

    .local v5, "tbuf":Lorg/joni/CodeRangeBuffer;
    move-object p1, p3

    move-object p3, v5

    .line 257
    .end local v5    # "tbuf":Lorg/joni/CodeRangeBuffer;
    .end local v6    # "tnot":Z
    :cond_3
    if-nez p1, :cond_6

    .line 258
    if-eqz p2, :cond_4

    .line 259
    invoke-static {p0, v4}, Lorg/joni/CodeRangeBuffer;->setAllMultiByteRange(Lorg/jcodings/Encoding;Lorg/joni/CodeRangeBuffer;)Lorg/joni/CodeRangeBuffer;

    move-result-object v8

    goto :goto_0

    .line 261
    :cond_4
    if-nez p4, :cond_5

    .line 262
    invoke-virtual {p3}, Lorg/joni/CodeRangeBuffer;->clone()Lorg/joni/CodeRangeBuffer;

    move-result-object v8

    goto :goto_0

    .line 264
    :cond_5
    invoke-static {p0, p3}, Lorg/joni/CodeRangeBuffer;->notCodeRangeBuff(Lorg/jcodings/Encoding;Lorg/joni/CodeRangeBuffer;)Lorg/joni/CodeRangeBuffer;

    move-result-object v8

    goto :goto_0

    .line 269
    :cond_6
    if-eqz p2, :cond_7

    .line 273
    move v6, p2

    .restart local v6    # "tnot":Z
    move p2, p4

    move p4, v6

    .line 274
    move-object v5, p1

    .restart local v5    # "tbuf":Lorg/joni/CodeRangeBuffer;
    move-object p1, p3

    move-object p3, v5

    .line 277
    .end local v5    # "tbuf":Lorg/joni/CodeRangeBuffer;
    .end local v6    # "tnot":Z
    :cond_7
    if-nez p4, :cond_9

    if-nez p2, :cond_9

    .line 278
    invoke-virtual {p3}, Lorg/joni/CodeRangeBuffer;->clone()Lorg/joni/CodeRangeBuffer;

    move-result-object v4

    .line 283
    :cond_8
    :goto_1
    iget-object v3, p1, Lorg/joni/CodeRangeBuffer;->p:[I

    .line 284
    .local v3, "p1":[I
    const/4 v8, 0x0

    aget v2, v3, v8

    .line 286
    .local v2, "n1":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_a

    .line 287
    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x1

    aget v0, v3, v8

    .line 288
    .local v0, "from":I
    mul-int/lit8 v8, v1, 0x2

    add-int/lit8 v8, v8, 0x2

    aget v7, v3, v8

    .line 289
    .local v7, "to":I
    invoke-static {v4, v0, v7}, Lorg/joni/CodeRangeBuffer;->addCodeRangeToBuff(Lorg/joni/CodeRangeBuffer;II)Lorg/joni/CodeRangeBuffer;

    move-result-object v4

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 279
    .end local v0    # "from":I
    .end local v1    # "i":I
    .end local v2    # "n1":I
    .end local v3    # "p1":[I
    .end local v7    # "to":I
    :cond_9
    if-nez p2, :cond_8

    .line 280
    invoke-static {p0, p3}, Lorg/joni/CodeRangeBuffer;->notCodeRangeBuff(Lorg/jcodings/Encoding;Lorg/joni/CodeRangeBuffer;)Lorg/joni/CodeRangeBuffer;

    move-result-object v4

    goto :goto_1

    .restart local v1    # "i":I
    .restart local v2    # "n1":I
    .restart local v3    # "p1":[I
    :cond_a
    move-object v8, v4

    .line 292
    goto :goto_0
.end method

.method private static rangeNumToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "num"    # I

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static setAllMultiByteRange(Lorg/jcodings/Encoding;Lorg/joni/CodeRangeBuffer;)Lorg/joni/CodeRangeBuffer;
    .locals 2
    .param p0, "enc"    # Lorg/jcodings/Encoding;
    .param p1, "pbuf"    # Lorg/joni/CodeRangeBuffer;

    .prologue
    .line 199
    invoke-virtual {p0}, Lorg/jcodings/Encoding;->mbcodeStartPosition()I

    move-result v0

    const v1, 0x7fffffff

    invoke-static {p1, v0, v1}, Lorg/joni/CodeRangeBuffer;->addCodeRangeToBuff(Lorg/joni/CodeRangeBuffer;II)Lorg/joni/CodeRangeBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Lorg/joni/CodeRangeBuffer;->clone()Lorg/joni/CodeRangeBuffer;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/joni/CodeRangeBuffer;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lorg/joni/CodeRangeBuffer;

    invoke-direct {v0, p0}, Lorg/joni/CodeRangeBuffer;-><init>(Lorg/joni/CodeRangeBuffer;)V

    return-object v0
.end method

.method public ensureSize(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 81
    iget-object v2, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    array-length v0, v2

    .line 82
    .local v0, "length":I
    :goto_0
    if-ge v0, p1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iget-object v2, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    array-length v2, v2

    if-eq v2, v0, :cond_1

    .line 84
    new-array v1, v0, [I

    .line 85
    .local v1, "tmp":[I
    iget-object v2, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    iget v3, p0, Lorg/joni/CodeRangeBuffer;->used:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iput-object v1, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    .line 88
    .end local v1    # "tmp":[I
    :cond_1
    return-void
.end method

.method public expand(I)V
    .locals 5
    .param p1, "low"    # I

    .prologue
    const/4 v4, 0x0

    .line 73
    iget-object v2, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    array-length v0, v2

    .line 74
    .local v0, "length":I
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    if-lt v0, p1, :cond_0

    .line 75
    new-array v1, v0, [I

    .line 76
    .local v1, "tmp":[I
    iget-object v2, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    iget v3, p0, Lorg/joni/CodeRangeBuffer;->used:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iput-object v1, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    .line 78
    return-void
.end method

.method public getCodeRange()[I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    return-object v0
.end method

.method protected moveLeft(III)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "n"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    iget-object v1, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    invoke-static {v0, p1, v1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v2, "CodeRange"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n  used: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/joni/CodeRangeBuffer;->used:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n  code point: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v2, "\n  ranges: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    aget v2, v2, v5

    if-ge v1, v2, :cond_1

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Lorg/joni/CodeRangeBuffer;->rangeNumToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Lorg/joni/CodeRangeBuffer;->rangeNumToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    if-lez v1, :cond_0

    rem-int/lit8 v2, v1, 0x6

    if-nez v2, :cond_0

    const-string v2, "\n          "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeCodePoint(II)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "b"    # I

    .prologue
    .line 106
    add-int/lit8 v0, p1, 0x1

    .line 107
    .local v0, "u":I
    iget-object v1, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    array-length v1, v1

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/joni/CodeRangeBuffer;->expand(I)V

    .line 108
    :cond_0
    iget-object v1, p0, Lorg/joni/CodeRangeBuffer;->p:[I

    aput p2, v1, p1

    .line 109
    iget v1, p0, Lorg/joni/CodeRangeBuffer;->used:I

    if-ge v1, v0, :cond_1

    iput v0, p0, Lorg/joni/CodeRangeBuffer;->used:I

    .line 110
    :cond_1
    return-void
.end method
