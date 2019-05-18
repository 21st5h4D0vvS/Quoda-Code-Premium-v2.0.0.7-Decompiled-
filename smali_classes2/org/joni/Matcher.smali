.class public abstract Lorg/joni/Matcher;
.super Lorg/jcodings/IntHolder;
.source "Matcher.java"


# static fields
.field public static final FAILED:I = -0x1

.field public static final INTERRUPTED:I = -0x2


# instance fields
.field protected final bytes:[B

.field protected final enc:Lorg/jcodings/Encoding;

.field protected final end:I

.field high:I

.field low:I

.field protected msaBegin:I

.field protected msaBestLen:I

.field protected msaBestS:I

.field protected msaEnd:I

.field protected msaOptions:I

.field protected final msaRegion:Lorg/joni/Region;

.field protected msaStart:I

.field protected final regex:Lorg/joni/Regex;

.field protected final str:I


# direct methods
.method public constructor <init>(Lorg/joni/Regex;[B)V
    .locals 2
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "bytes"    # [B

    .prologue
    .line 50
    const/4 v0, 0x0

    array-length v1, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/joni/Matcher;-><init>(Lorg/joni/Regex;[BII)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/joni/Regex;[BII)V
    .locals 2
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "bytes"    # [B
    .param p3, "p"    # I
    .param p4, "end"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/jcodings/IntHolder;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    .line 55
    iget-object v0, p1, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    iput-object v0, p0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    .line 57
    iput-object p2, p0, Lorg/joni/Matcher;->bytes:[B

    .line 58
    iput p3, p0, Lorg/joni/Matcher;->str:I

    .line 59
    iput p4, p0, Lorg/joni/Matcher;->end:I

    .line 61
    iget v0, p1, Lorg/joni/Regex;->numMem:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/joni/Matcher;->msaRegion:Lorg/joni/Region;

    .line 62
    return-void

    .line 61
    :cond_0
    new-instance v0, Lorg/joni/Region;

    iget v1, p1, Lorg/joni/Regex;->numMem:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/joni/Region;-><init>(I)V

    goto :goto_0
.end method

.method private backwardSearchRange([BIIIII)Z
    .locals 11
    .param p1, "bytes"    # [B
    .param p2, "str"    # I
    .param p3, "end"    # I
    .param p4, "s"    # I
    .param p5, "range"    # I
    .param p6, "adjrange"    # I

    .prologue
    .line 231
    iget-object v1, p0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->dMin:I

    add-int p5, p5, v1

    .line 232
    move v7, p4

    .line 235
    .local v7, "p":I
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget-object v1, v1, Lorg/joni/Regex;->searchAlgorithm:Lorg/joni/SearchAlgorithm;

    iget-object v2, p0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    move-object v3, p1

    move/from16 v4, p5

    move/from16 v5, p6

    move v6, p3

    move v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v1 .. v9}, Lorg/joni/SearchAlgorithm;->searchBackward(Lorg/joni/Regex;[BIIIIII)I

    move-result v7

    .line 237
    const/4 v1, -0x1

    if-eq v7, v1, :cond_3

    .line 238
    iget-object v1, p0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->subAnchor:I

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->subAnchor:I

    sparse-switch v1, :sswitch_data_0

    .line 270
    :cond_1
    iget-object v1, p0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->dMax:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 271
    iget-object v1, p0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->dMax:I

    sub-int v1, v7, v1

    iput v1, p0, Lorg/joni/Matcher;->low:I

    .line 272
    iget-object v1, p0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->dMin:I

    sub-int v1, v7, v1

    iput v1, p0, Lorg/joni/Matcher;->high:I

    .line 273
    iget-object v1, p0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    iget v2, p0, Lorg/joni/Matcher;->high:I

    move/from16 v0, p6

    invoke-virtual {v1, p1, v0, v2, p3}, Lorg/jcodings/Encoding;->rightAdjustCharHead([BIII)I

    move-result v1

    iput v1, p0, Lorg/joni/Matcher;->high:I

    .line 282
    :cond_2
    const/4 v1, 0x1

    .line 286
    :goto_1
    return v1

    .line 241
    :sswitch_0
    if-eq v7, p2, :cond_1

    .line 242
    iget-object v1, p0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v1, p1, p2, v7, p3}, Lorg/jcodings/Encoding;->prevCharHead([BIII)I

    move-result v10

    .line 243
    .local v10, "prev":I
    iget-object v1, p0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v1, p1, v10, p3}, Lorg/jcodings/Encoding;->isNewLine([BII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    move v7, v10

    .line 245
    goto :goto_0

    .line 251
    .end local v10    # "prev":I
    :sswitch_1
    if-eq v7, p3, :cond_1

    .line 260
    iget-object v1, p0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v1, p1, v7, p3}, Lorg/jcodings/Encoding;->isNewLine([BII)Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    iget-object v1, p0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    move/from16 v0, p6

    invoke-virtual {v1, p1, v0, v7, p3}, Lorg/jcodings/Encoding;->prevCharHead([BIII)I

    move-result v7

    .line 262
    const/4 v1, -0x1

    if-ne v7, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 286
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 239
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private endBuf(IIII)Z
    .locals 6
    .param p1, "start"    # I
    .param p2, "range"    # I
    .param p3, "minSemiEnd"    # I
    .param p4, "maxSemiEnd"    # I

    .prologue
    const/4 v0, 0x1

    .line 546
    iget v1, p0, Lorg/joni/Matcher;->str:I

    sub-int v1, p4, v1

    iget-object v2, p0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v2, v2, Lorg/joni/Regex;->anchorDmin:I

    if-ge v1, v2, :cond_1

    .line 571
    :cond_0
    :goto_0
    return v0

    .line 548
    :cond_1
    if-le p2, p1, :cond_6

    .line 549
    sub-int v1, p3, p1

    iget-object v2, p0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v2, v2, Lorg/joni/Regex;->anchorDmax:I

    if-le v1, v2, :cond_2

    .line 550
    iget-object v1, p0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->anchorDmax:I

    sub-int p1, p3, v1

    .line 551
    iget v1, p0, Lorg/joni/Matcher;->end:I

    if-ge p1, v1, :cond_5

    .line 552
    iget-object v1, p0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/Matcher;->bytes:[B

    iget v3, p0, Lorg/joni/Matcher;->str:I

    iget v4, p0, Lorg/joni/Matcher;->end:I

    invoke-virtual {v1, v2, v3, p1, v4}, Lorg/jcodings/Encoding;->rightAdjustCharHead([BIII)I

    move-result p1

    .line 557
    :cond_2
    :goto_1
    add-int/lit8 v1, p2, -0x1

    sub-int v1, p4, v1

    iget-object v2, p0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v2, v2, Lorg/joni/Regex;->anchorDmin:I

    if-ge v1, v2, :cond_3

    .line 558
    iget-object v1, p0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->anchorDmin:I

    sub-int v1, p4, v1

    add-int/lit8 p2, v1, 0x1

    .line 560
    :cond_3
    if-ge p1, p2, :cond_0

    .line 571
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 554
    :cond_5
    iget-object v1, p0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/Matcher;->bytes:[B

    iget v3, p0, Lorg/joni/Matcher;->str:I

    iget v4, p0, Lorg/joni/Matcher;->end:I

    iget v5, p0, Lorg/joni/Matcher;->end:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/jcodings/Encoding;->prevCharHead([BIII)I

    move-result p1

    goto :goto_1

    .line 562
    :cond_6
    sub-int v1, p3, p2

    iget-object v2, p0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v2, v2, Lorg/joni/Regex;->anchorDmax:I

    if-le v1, v2, :cond_7

    .line 563
    iget-object v1, p0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->anchorDmax:I

    sub-int p2, p3, v1

    .line 565
    :cond_7
    sub-int v1, p4, p1

    iget-object v2, p0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v2, v2, Lorg/joni/Regex;->anchorDmin:I

    if-ge v1, v2, :cond_8

    .line 566
    iget-object v1, p0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->anchorDmin:I

    sub-int p1, p4, v1

    .line 567
    iget-object v1, p0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/Matcher;->bytes:[B

    iget v3, p0, Lorg/joni/Matcher;->str:I

    iget v4, p0, Lorg/joni/Matcher;->end:I

    invoke-virtual {v1, v2, v3, p1, v4}, Lorg/jcodings/Encoding;->leftAdjustCharHead([BIII)I

    move-result p1

    .line 569
    :cond_8
    if-le p2, p1, :cond_4

    goto :goto_0
.end method

.method private forwardSearchRange([BIIIILorg/jcodings/IntHolder;)Z
    .locals 16
    .param p1, "bytes"    # [B
    .param p2, "str"    # I
    .param p3, "end"    # I
    .param p4, "s"    # I
    .param p5, "range"    # I
    .param p6, "lowPrev"    # Lorg/jcodings/IntHolder;

    .prologue
    .line 119
    const/4 v13, -0x1

    .line 120
    .local v13, "pprev":I
    move/from16 v6, p4

    .line 130
    .local v6, "p":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v3, v3, Lorg/joni/Regex;->dMin:I

    if-lez v3, :cond_0

    .line 131
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v3}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v3, v3, Lorg/joni/Regex;->dMin:I

    add-int/2addr v6, v3

    .line 140
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget-object v3, v3, Lorg/joni/Regex;->searchAlgorithm:Lorg/joni/SearchAlgorithm;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    move-object/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/joni/SearchAlgorithm;->search(Lorg/joni/Regex;[BIII)I

    move-result v6

    .line 142
    const/4 v3, -0x1

    if-eq v6, v3, :cond_c

    move/from16 v0, p5

    if-ge v6, v0, :cond_c

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v3, v3, Lorg/joni/Regex;->dMin:I

    sub-int v3, v6, v3

    move/from16 v0, p4

    if-ge v3, v0, :cond_2

    .line 145
    move v13, v6

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v3, v0, v6, v1}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v3

    add-int/2addr v6, v3

    .line 147
    goto :goto_0

    .line 134
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v3, v3, Lorg/joni/Regex;->dMin:I

    add-int v15, v6, v3

    .line 135
    .local v15, "q":I
    :goto_1
    if-ge v6, v15, :cond_0

    move/from16 v0, p3

    if-ge v6, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v3, v0, v6, v1}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v3

    add-int/2addr v6, v3

    goto :goto_1

    .line 150
    .end local v15    # "q":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v3, v3, Lorg/joni/Regex;->subAnchor:I

    if-eqz v3, :cond_3

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v3, v3, Lorg/joni/Regex;->subAnchor:I

    sparse-switch v3, :sswitch_data_0

    .line 186
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v3, v3, Lorg/joni/Regex;->dMax:I

    if-nez v3, :cond_8

    .line 187
    move-object/from16 v0, p0

    iput v6, v0, Lorg/joni/Matcher;->low:I

    .line 188
    if-eqz p6, :cond_4

    .line 189
    move-object/from16 v0, p0

    iget v3, v0, Lorg/joni/Matcher;->low:I

    move/from16 v0, p4

    if-le v3, v0, :cond_6

    .line 190
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p3

    invoke-virtual {v3, v0, v1, v6, v2}, Lorg/jcodings/Encoding;->prevCharHead([BIII)I

    move-result v3

    move-object/from16 v0, p6

    iput v3, v0, Lorg/jcodings/IntHolder;->value:I

    .line 212
    .end local v13    # "pprev":I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v3, v3, Lorg/joni/Regex;->dMin:I

    sub-int v3, v6, v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/joni/Matcher;->high:I

    .line 222
    const/4 v3, 0x1

    .line 225
    :goto_3
    return v3

    .line 153
    .restart local v13    # "pprev":I
    :sswitch_0
    move/from16 v0, p2

    if-eq v6, v0, :cond_3

    .line 154
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    const/4 v3, -0x1

    if-eq v13, v3, :cond_5

    move v3, v13

    :goto_4
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v4, v0, v3, v6, v1}, Lorg/jcodings/Encoding;->prevCharHead([BIII)I

    move-result v14

    .line 155
    .local v14, "prev":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v3, v0, v14, v1}, Lorg/jcodings/Encoding;->isNewLine([BII)Z

    move-result v3

    if-nez v3, :cond_3

    .line 157
    move v13, v6

    .line 158
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v3, v0, v6, v1}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v3

    add-int/2addr v6, v3

    .line 159
    goto/16 :goto_0

    .end local v14    # "prev":I
    :cond_5
    move/from16 v3, p2

    .line 154
    goto :goto_4

    .line 165
    :sswitch_1
    move/from16 v0, p3

    if-eq v6, v0, :cond_3

    .line 175
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v3, v0, v6, v1}, Lorg/jcodings/Encoding;->isNewLine([BII)Z

    move-result v3

    if-nez v3, :cond_3

    .line 178
    move v13, v6

    .line 179
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v3, v0, v6, v1}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v3

    add-int/2addr v6, v3

    .line 180
    goto/16 :goto_0

    .line 192
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    const/4 v4, -0x1

    if-eq v13, v4, :cond_7

    .end local v13    # "pprev":I
    :goto_5
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v3, v0, v13, v6, v1}, Lorg/jcodings/Encoding;->prevCharHead([BIII)I

    move-result v3

    move-object/from16 v0, p6

    iput v3, v0, Lorg/jcodings/IntHolder;->value:I

    goto :goto_2

    .restart local v13    # "pprev":I
    :cond_7
    move/from16 v13, p2

    goto :goto_5

    .line 196
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v3, v3, Lorg/joni/Regex;->dMax:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_4

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v3, v3, Lorg/joni/Regex;->dMax:I

    sub-int v3, v6, v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/joni/Matcher;->low:I

    .line 199
    move-object/from16 v0, p0

    iget v3, v0, Lorg/joni/Matcher;->low:I

    move/from16 v0, p4

    if-le v3, v0, :cond_a

    .line 200
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget v10, v0, Lorg/joni/Matcher;->low:I

    move-object/from16 v8, p1

    move/from16 v9, p4

    move/from16 v11, p3

    move-object/from16 v12, p6

    invoke-virtual/range {v7 .. v12}, Lorg/jcodings/Encoding;->rightAdjustCharHeadWithPrev([BIIILorg/jcodings/IntHolder;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/joni/Matcher;->low:I

    .line 201
    if-eqz p6, :cond_4

    move-object/from16 v0, p6

    iget v3, v0, Lorg/jcodings/IntHolder;->value:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    const/4 v4, -0x1

    if-eq v13, v4, :cond_9

    .end local v13    # "pprev":I
    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lorg/joni/Matcher;->low:I

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v3, v0, v13, v4, v1}, Lorg/jcodings/Encoding;->prevCharHead([BIII)I

    move-result v3

    move-object/from16 v0, p6

    iput v3, v0, Lorg/jcodings/IntHolder;->value:I

    goto/16 :goto_2

    .restart local v13    # "pprev":I
    :cond_9
    move/from16 v13, p4

    goto :goto_6

    .line 205
    :cond_a
    if-eqz p6, :cond_4

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    const/4 v4, -0x1

    if-eq v13, v4, :cond_b

    .end local v13    # "pprev":I
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lorg/joni/Matcher;->low:I

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v3, v0, v13, v4, v1}, Lorg/jcodings/Encoding;->prevCharHead([BIII)I

    move-result v3

    move-object/from16 v0, p6

    iput v3, v0, Lorg/jcodings/IntHolder;->value:I

    goto/16 :goto_2

    .restart local v13    # "pprev":I
    :cond_b
    move/from16 v13, p2

    goto :goto_7

    .line 225
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private match(I)I
    .locals 1
    .param p1, "s"    # I

    .prologue
    .line 575
    iget v0, p0, Lorg/joni/Matcher;->str:I

    sub-int v0, p1, v0

    return v0
.end method

.method private matchCheck(III)Z
    .locals 2
    .param p1, "upperRange"    # I
    .param p2, "s"    # I
    .param p3, "prev"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0, p1, p2, p3}, Lorg/joni/Matcher;->matchAt(III)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mismatch()I
    .locals 1

    .prologue
    .line 586
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public final getBegin()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lorg/joni/Matcher;->msaBegin:I

    return v0
.end method

.method public final getEagerRegion()Lorg/joni/Region;
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lorg/joni/Matcher;->msaRegion:Lorg/joni/Region;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/joni/Matcher;->msaRegion:Lorg/joni/Region;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/joni/Region;

    iget v1, p0, Lorg/joni/Matcher;->msaBegin:I

    iget v2, p0, Lorg/joni/Matcher;->msaEnd:I

    invoke-direct {v0, v1, v2}, Lorg/joni/Region;-><init>(II)V

    goto :goto_0
.end method

.method public final getEnd()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/joni/Matcher;->msaEnd:I

    return v0
.end method

.method public final getRegion()Lorg/joni/Region;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/joni/Matcher;->msaRegion:Lorg/joni/Region;

    return-object v0
.end method

.method public final match(III)I
    .locals 2
    .param p1, "at"    # I
    .param p2, "range"    # I
    .param p3, "option"    # I

    .prologue
    .line 94
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/joni/Matcher;->matchInterruptible(III)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 96
    :goto_0
    return v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "ex":Ljava/lang/InterruptedException;
    const/4 v1, -0x2

    goto :goto_0
.end method

.method protected abstract matchAt(III)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public final matchInterruptible(III)I
    .locals 5
    .param p1, "at"    # I
    .param p2, "range"    # I
    .param p3, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 101
    invoke-virtual {p0, p3, p1}, Lorg/joni/Matcher;->msaInit(II)V

    .line 108
    iget-object v1, p0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/Matcher;->bytes:[B

    iget v3, p0, Lorg/joni/Matcher;->str:I

    iget v4, p0, Lorg/joni/Matcher;->end:I

    invoke-virtual {v1, v2, v3, p1, v4}, Lorg/jcodings/Encoding;->prevCharHead([BIII)I

    move-result v0

    .line 111
    .local v0, "prev":I
    iget v1, p0, Lorg/joni/Matcher;->end:I

    invoke-virtual {p0, v1, p1, v0}, Lorg/joni/Matcher;->matchAt(III)I

    move-result v1

    return v1
.end method

.method protected final msaInit(II)V
    .locals 0
    .param p1, "option"    # I
    .param p2, "start"    # I

    .prologue
    .line 87
    iput p1, p0, Lorg/joni/Matcher;->msaOptions:I

    .line 88
    iput p2, p0, Lorg/joni/Matcher;->msaStart:I

    .line 90
    return-void
.end method

.method public final search(III)I
    .locals 2
    .param p1, "start"    # I
    .param p2, "range"    # I
    .param p3, "option"    # I

    .prologue
    .line 318
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/joni/Matcher;->searchInterruptible(III)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 320
    :goto_0
    return v1

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "ex":Ljava/lang/InterruptedException;
    const/4 v1, -0x2

    goto :goto_0
.end method

.method public final searchInterruptible(III)I
    .locals 24
    .param p1, "start"    # I
    .param p2, "range"    # I
    .param p3, "option"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 326
    move/from16 v21, p1

    .line 327
    .local v21, "origStart":I
    move/from16 v20, p2

    .line 337
    .local v20, "origRange":I
    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->end:I

    move/from16 v0, p1

    if-gt v0, v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->str:I

    move/from16 v0, p1

    if-ge v0, v5, :cond_1

    :cond_0
    const/4 v5, -0x1

    .line 542
    :goto_0
    return v5

    .line 340
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v5, v5, Lorg/joni/Regex;->anchor:I

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->str:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/joni/Matcher;->end:I

    if-ge v5, v6, :cond_e

    .line 343
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v5, v5, Lorg/joni/Regex;->anchor:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_5

    .line 346
    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_4

    .line 347
    add-int/lit8 p2, p1, 0x1

    .line 423
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/joni/Matcher;->msaInit(II)V

    .line 429
    move/from16 v9, p1

    .line 430
    .local v9, "s":I
    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_1f

    .line 431
    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->str:I

    if-le v9, v5, :cond_11

    .line 432
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/Matcher;->bytes:[B

    move-object/from16 v0, p0

    iget v7, v0, Lorg/joni/Matcher;->str:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/joni/Matcher;->end:I

    invoke-virtual {v5, v6, v7, v9, v8}, Lorg/jcodings/Encoding;->prevCharHead([BIII)I

    move-result v23

    .line 437
    .local v23, "prev":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget-object v5, v5, Lorg/joni/Regex;->searchAlgorithm:Lorg/joni/SearchAlgorithm;

    sget-object v6, Lorg/joni/SearchAlgorithm;->NONE:Lorg/joni/SearchAlgorithm;

    if-eq v5, v6, :cond_1d

    .line 438
    move/from16 v10, p2

    .line 439
    .local v10, "schRange":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v5, v5, Lorg/joni/Regex;->dMax:I

    if-eqz v5, :cond_3

    .line 440
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v5, v5, Lorg/joni/Regex;->dMax:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_12

    .line 441
    move-object/from16 v0, p0

    iget v10, v0, Lorg/joni/Matcher;->end:I

    .line 447
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->end:I

    sub-int v5, v5, p1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v6, v6, Lorg/joni/Regex;->thresholdLength:I

    if-ge v5, v6, :cond_13

    invoke-direct/range {p0 .. p0}, Lorg/joni/Matcher;->mismatch()I

    move-result v5

    goto/16 :goto_0

    .line 349
    .end local v9    # "s":I
    .end local v10    # "schRange":I
    .end local v23    # "prev":I
    :cond_4
    move/from16 p2, p1

    goto :goto_1

    .line 351
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v5, v5, Lorg/joni/Regex;->anchor:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    .line 353
    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_7

    .line 354
    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->str:I

    move/from16 v0, p1

    if-eq v0, v5, :cond_6

    const/4 v5, -0x1

    goto/16 :goto_0

    .line 355
    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->str:I

    add-int/lit8 p2, v5, 0x1

    goto/16 :goto_1

    .line 357
    :cond_7
    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->str:I

    move/from16 v0, p2

    if-gt v0, v5, :cond_8

    .line 358
    move-object/from16 v0, p0

    iget v0, v0, Lorg/joni/Matcher;->str:I

    move/from16 p1, v0

    .line 359
    move-object/from16 v0, p0

    iget v0, v0, Lorg/joni/Matcher;->str:I

    move/from16 p2, v0

    goto/16 :goto_1

    .line 361
    :cond_8
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 364
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v5, v5, Lorg/joni/Regex;->anchor:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_a

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Lorg/joni/Matcher;->end:I

    move/from16 v18, v0

    .local v18, "maxSemiEnd":I
    move/from16 v19, v18

    .line 367
    .local v19, "minSemiEnd":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joni/Matcher;->endBuf(IIII)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, -0x1

    goto/16 :goto_0

    .line 368
    .end local v18    # "maxSemiEnd":I
    .end local v19    # "minSemiEnd":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v5, v5, Lorg/joni/Regex;->anchor:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_c

    .line 369
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/Matcher;->bytes:[B

    move-object/from16 v0, p0

    iget v7, v0, Lorg/joni/Matcher;->str:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/joni/Matcher;->end:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/joni/Matcher;->end:I

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lorg/jcodings/Encoding;->stepBack([BIIII)I

    move-result v22

    .line 370
    .local v22, "preEnd":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/joni/Matcher;->end:I

    move/from16 v18, v0

    .line 371
    .restart local v18    # "maxSemiEnd":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/Matcher;->bytes:[B

    move-object/from16 v0, p0

    iget v7, v0, Lorg/joni/Matcher;->end:I

    move/from16 v0, v22

    invoke-virtual {v5, v6, v0, v7}, Lorg/jcodings/Encoding;->isNewLine([BII)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 372
    move/from16 v19, v22

    .line 379
    .restart local v19    # "minSemiEnd":I
    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->str:I

    move/from16 v0, v19

    if-le v0, v5, :cond_2

    move/from16 v0, p1

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    .line 381
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joni/Matcher;->endBuf(IIII)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, -0x1

    goto/16 :goto_0

    .line 384
    .end local v19    # "minSemiEnd":I
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/joni/Matcher;->end:I

    move/from16 v19, v0

    .line 386
    .restart local v19    # "minSemiEnd":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v19

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joni/Matcher;->endBuf(IIII)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, -0x1

    goto/16 :goto_0

    .line 388
    .end local v18    # "maxSemiEnd":I
    .end local v19    # "minSemiEnd":I
    .end local v22    # "preEnd":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v5, v5, Lorg/joni/Regex;->anchor:I

    const v6, 0x8000

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 390
    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_d

    .line 391
    add-int/lit8 p2, p1, 0x1

    goto/16 :goto_1

    .line 393
    :cond_d
    move/from16 p2, p1

    goto/16 :goto_1

    .line 397
    :cond_e
    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->str:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/joni/Matcher;->end:I

    if-ne v5, v6, :cond_2

    .line 403
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v5, v5, Lorg/joni/Regex;->thresholdLength:I

    if-nez v5, :cond_10

    .line 404
    move-object/from16 v0, p0

    iget v0, v0, Lorg/joni/Matcher;->str:I

    move/from16 p1, v0

    move/from16 v9, p1

    .line 405
    .restart local v9    # "s":I
    const/16 v23, -0x1

    .line 406
    .restart local v23    # "prev":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lorg/joni/Matcher;->msaInit(II)V

    .line 410
    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->end:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v5, v9, v1}, Lorg/joni/Matcher;->matchCheck(III)Z

    move-result v5

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/joni/Matcher;->match(I)I

    move-result v5

    goto/16 :goto_0

    .line 411
    :cond_f
    invoke-direct/range {p0 .. p0}, Lorg/joni/Matcher;->mismatch()I

    move-result v5

    goto/16 :goto_0

    .line 413
    .end local v9    # "s":I
    .end local v23    # "prev":I
    :cond_10
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 434
    .restart local v9    # "s":I
    :cond_11
    const/16 v23, 0x0

    .restart local v23    # "prev":I
    goto/16 :goto_2

    .line 443
    .restart local v10    # "schRange":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v5, v5, Lorg/joni/Regex;->dMax:I

    add-int/2addr v10, v5

    .line 444
    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->end:I

    if-le v10, v5, :cond_3

    move-object/from16 v0, p0

    iget v10, v0, Lorg/joni/Matcher;->end:I

    goto/16 :goto_3

    .line 449
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v5, v5, Lorg/joni/Regex;->dMax:I

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_19

    .line 451
    :cond_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/Matcher;->bytes:[B

    move-object/from16 v0, p0

    iget v7, v0, Lorg/joni/Matcher;->str:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/joni/Matcher;->end:I

    move-object/from16 v5, p0

    move-object/from16 v11, p0

    invoke-direct/range {v5 .. v11}, Lorg/joni/Matcher;->forwardSearchRange([BIIIILorg/jcodings/IntHolder;)Z

    move-result v5

    if-nez v5, :cond_15

    invoke-direct/range {p0 .. p0}, Lorg/joni/Matcher;->mismatch()I

    move-result v5

    goto/16 :goto_0

    .line 452
    :cond_15
    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->low:I

    if-ge v9, v5, :cond_16

    .line 453
    move-object/from16 v0, p0

    iget v9, v0, Lorg/joni/Matcher;->low:I

    .line 454
    move-object/from16 v0, p0

    iget v0, v0, Lorg/joni/Matcher;->value:I

    move/from16 v23, v0

    .line 456
    :cond_16
    :goto_4
    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->high:I

    if-gt v9, v5, :cond_18

    .line 457
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v23

    invoke-direct {v0, v1, v9, v2}, Lorg/joni/Matcher;->matchCheck(III)Z

    move-result v5

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/joni/Matcher;->match(I)I

    move-result v5

    goto/16 :goto_0

    .line 458
    :cond_17
    move/from16 v23, v9

    .line 459
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/Matcher;->bytes:[B

    move-object/from16 v0, p0

    iget v7, v0, Lorg/joni/Matcher;->end:I

    invoke-virtual {v5, v6, v9, v7}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v5

    add-int/2addr v9, v5

    goto :goto_4

    .line 461
    :cond_18
    move/from16 v0, p2

    if-lt v9, v0, :cond_14

    .line 462
    invoke-direct/range {p0 .. p0}, Lorg/joni/Matcher;->mismatch()I

    move-result v5

    goto/16 :goto_0

    .line 465
    :cond_19
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/Matcher;->bytes:[B

    move-object/from16 v0, p0

    iget v7, v0, Lorg/joni/Matcher;->str:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/joni/Matcher;->end:I

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lorg/joni/Matcher;->forwardSearchRange([BIIIILorg/jcodings/IntHolder;)Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-direct/range {p0 .. p0}, Lorg/joni/Matcher;->mismatch()I

    move-result v5

    goto/16 :goto_0

    .line 467
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v5, v5, Lorg/joni/Regex;->anchor:I

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_1d

    .line 469
    :cond_1b
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v23

    invoke-direct {v0, v1, v9, v2}, Lorg/joni/Matcher;->matchCheck(III)Z

    move-result v5

    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/joni/Matcher;->match(I)I

    move-result v5

    goto/16 :goto_0

    .line 470
    :cond_1c
    move/from16 v23, v9

    .line 471
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/Matcher;->bytes:[B

    move-object/from16 v0, p0

    iget v7, v0, Lorg/joni/Matcher;->end:I

    invoke-virtual {v5, v6, v9, v7}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v5

    add-int/2addr v9, v5

    .line 472
    move/from16 v0, p2

    if-lt v9, v0, :cond_1b

    .line 473
    invoke-direct/range {p0 .. p0}, Lorg/joni/Matcher;->mismatch()I

    move-result v5

    goto/16 :goto_0

    .line 480
    .end local v10    # "schRange":I
    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v23

    invoke-direct {v0, v1, v9, v2}, Lorg/joni/Matcher;->matchCheck(III)Z

    move-result v5

    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/joni/Matcher;->match(I)I

    move-result v5

    goto/16 :goto_0

    .line 481
    :cond_1e
    move/from16 v23, v9

    .line 482
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/Matcher;->bytes:[B

    move-object/from16 v0, p0

    iget v7, v0, Lorg/joni/Matcher;->end:I

    invoke-virtual {v5, v6, v9, v7}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v5

    add-int/2addr v9, v5

    .line 483
    move/from16 v0, p2

    if-lt v9, v0, :cond_1d

    .line 485
    move/from16 v0, p2

    if-ne v9, v0, :cond_2f

    .line 486
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v23

    invoke-direct {v0, v1, v9, v2}, Lorg/joni/Matcher;->matchCheck(III)Z

    move-result v5

    if-eqz v5, :cond_2f

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/joni/Matcher;->match(I)I

    move-result v5

    goto/16 :goto_0

    .line 490
    .end local v23    # "prev":I
    :cond_1f
    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->end:I

    move/from16 v0, v21

    if-ge v0, v5, :cond_20

    .line 491
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/Matcher;->bytes:[B

    move-object/from16 v0, p0

    iget v7, v0, Lorg/joni/Matcher;->end:I

    move/from16 v0, v21

    invoke-virtual {v5, v6, v0, v7}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v5

    add-int v21, v21, v5

    .line 495
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget-object v5, v5, Lorg/joni/Regex;->searchAlgorithm:Lorg/joni/SearchAlgorithm;

    sget-object v6, Lorg/joni/SearchAlgorithm;->NONE:Lorg/joni/SearchAlgorithm;

    if-eq v5, v6, :cond_2d

    .line 497
    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->end:I

    move/from16 v0, p2

    if-ge v0, v5, :cond_23

    .line 498
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/Matcher;->bytes:[B

    move-object/from16 v0, p0

    iget v7, v0, Lorg/joni/Matcher;->str:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/joni/Matcher;->end:I

    move/from16 v0, p2

    invoke-virtual {v5, v6, v7, v0, v8}, Lorg/jcodings/Encoding;->leftAdjustCharHead([BIII)I

    move-result v17

    .line 502
    .local v17, "adjrange":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v5, v5, Lorg/joni/Regex;->dMax:I

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_28

    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->end:I

    sub-int v5, v5, p2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v6, v6, Lorg/joni/Regex;->thresholdLength:I

    if-lt v5, v6, :cond_28

    .line 504
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v5, v5, Lorg/joni/Regex;->dMax:I

    add-int v15, v9, v5

    .line 505
    .local v15, "schStart":I
    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->end:I

    if-le v15, v5, :cond_22

    move-object/from16 v0, p0

    iget v15, v0, Lorg/joni/Matcher;->end:I

    .line 506
    :cond_22
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/joni/Matcher;->bytes:[B

    move-object/from16 v0, p0

    iget v13, v0, Lorg/joni/Matcher;->str:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/joni/Matcher;->end:I

    move-object/from16 v11, p0

    move/from16 v16, p2

    invoke-direct/range {v11 .. v17}, Lorg/joni/Matcher;->backwardSearchRange([BIIIII)Z

    move-result v5

    if-nez v5, :cond_24

    invoke-direct/range {p0 .. p0}, Lorg/joni/Matcher;->mismatch()I

    move-result v5

    goto/16 :goto_0

    .line 500
    .end local v15    # "schStart":I
    .end local v17    # "adjrange":I
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lorg/joni/Matcher;->end:I

    move/from16 v17, v0

    .restart local v17    # "adjrange":I
    goto :goto_5

    .line 507
    .restart local v15    # "schStart":I
    :cond_24
    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->high:I

    if-le v9, v5, :cond_25

    move-object/from16 v0, p0

    iget v9, v0, Lorg/joni/Matcher;->high:I

    .line 508
    :cond_25
    :goto_6
    const/4 v5, -0x1

    if-eq v9, v5, :cond_27

    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->low:I

    if-lt v9, v5, :cond_27

    .line 509
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/Matcher;->bytes:[B

    move-object/from16 v0, p0

    iget v7, v0, Lorg/joni/Matcher;->str:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/joni/Matcher;->end:I

    invoke-virtual {v5, v6, v7, v9, v8}, Lorg/jcodings/Encoding;->prevCharHead([BIII)I

    move-result v23

    .line 510
    .restart local v23    # "prev":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-direct {v0, v1, v9, v2}, Lorg/joni/Matcher;->matchCheck(III)Z

    move-result v5

    if-eqz v5, :cond_26

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/joni/Matcher;->match(I)I

    move-result v5

    goto/16 :goto_0

    .line 511
    :cond_26
    move/from16 v9, v23

    goto :goto_6

    .line 513
    .end local v23    # "prev":I
    :cond_27
    move/from16 v0, p2

    if-ge v9, v0, :cond_21

    .line 514
    invoke-direct/range {p0 .. p0}, Lorg/joni/Matcher;->mismatch()I

    move-result v5

    goto/16 :goto_0

    .line 516
    .end local v15    # "schStart":I
    :cond_28
    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->end:I

    sub-int v5, v5, p2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v6, v6, Lorg/joni/Regex;->thresholdLength:I

    if-ge v5, v6, :cond_29

    invoke-direct/range {p0 .. p0}, Lorg/joni/Matcher;->mismatch()I

    move-result v5

    goto/16 :goto_0

    .line 518
    :cond_29
    move v15, v9

    .line 519
    .restart local v15    # "schStart":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v5, v5, Lorg/joni/Regex;->dMax:I

    if-eqz v5, :cond_2a

    .line 520
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v5, v5, Lorg/joni/Regex;->dMax:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_2b

    .line 521
    move-object/from16 v0, p0

    iget v15, v0, Lorg/joni/Matcher;->end:I

    .line 531
    :cond_2a
    :goto_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/joni/Matcher;->bytes:[B

    move-object/from16 v0, p0

    iget v13, v0, Lorg/joni/Matcher;->str:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/joni/Matcher;->end:I

    move-object/from16 v11, p0

    move/from16 v16, p2

    invoke-direct/range {v11 .. v17}, Lorg/joni/Matcher;->backwardSearchRange([BIIIII)Z

    move-result v5

    if-nez v5, :cond_2d

    invoke-direct/range {p0 .. p0}, Lorg/joni/Matcher;->mismatch()I

    move-result v5

    goto/16 :goto_0

    .line 523
    :cond_2b
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->regex:Lorg/joni/Regex;

    iget v5, v5, Lorg/joni/Regex;->dMax:I

    add-int/2addr v15, v5

    .line 524
    move-object/from16 v0, p0

    iget v5, v0, Lorg/joni/Matcher;->end:I

    if-le v15, v5, :cond_2c

    .line 525
    move-object/from16 v0, p0

    iget v15, v0, Lorg/joni/Matcher;->end:I

    goto :goto_7

    .line 527
    :cond_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/Matcher;->bytes:[B

    move-object/from16 v0, p0

    iget v7, v0, Lorg/joni/Matcher;->end:I

    move/from16 v0, p1

    invoke-virtual {v5, v6, v0, v15, v7}, Lorg/jcodings/Encoding;->leftAdjustCharHead([BIII)I

    move-result v15

    goto :goto_7

    .line 536
    .end local v15    # "schStart":I
    .end local v17    # "adjrange":I
    :cond_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/joni/Matcher;->enc:Lorg/jcodings/Encoding;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/Matcher;->bytes:[B

    move-object/from16 v0, p0

    iget v7, v0, Lorg/joni/Matcher;->str:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/joni/Matcher;->end:I

    invoke-virtual {v5, v6, v7, v9, v8}, Lorg/jcodings/Encoding;->prevCharHead([BIII)I

    move-result v23

    .line 537
    .restart local v23    # "prev":I
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-direct {v0, v1, v9, v2}, Lorg/joni/Matcher;->matchCheck(III)Z

    move-result v5

    if-eqz v5, :cond_2e

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/joni/Matcher;->match(I)I

    move-result v5

    goto/16 :goto_0

    .line 538
    :cond_2e
    move/from16 v9, v23

    .line 539
    move/from16 v0, p2

    if-ge v9, v0, :cond_2d

    .line 542
    :cond_2f
    invoke-direct/range {p0 .. p0}, Lorg/joni/Matcher;->mismatch()I

    move-result v5

    goto/16 :goto_0
.end method

.method protected abstract stateCheckBuffClear()V
.end method

.method protected abstract stateCheckBuffInit(III)V
.end method
