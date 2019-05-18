.class final Lorg/joni/SearchAlgorithm$4;
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
    .line 253
    invoke-direct {p0}, Lorg/joni/SearchAlgorithm;-><init>()V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    const-string v0, "EXACT_IC_SB"

    return-object v0
.end method

.method public final search(Lorg/joni/Regex;[BIII)I
    .locals 12
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "text"    # [B
    .param p3, "textP"    # I
    .param p4, "textEnd"    # I
    .param p5, "textRange"    # I

    .prologue
    .line 260
    iget-object v10, p1, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v10}, Lorg/jcodings/Encoding;->toLowerCaseTable()[B

    move-result-object v9

    .line 261
    .local v9, "toLowerTable":[B
    iget-object v6, p1, Lorg/joni/Regex;->exact:[B

    .line 262
    .local v6, "target":[B
    iget v8, p1, Lorg/joni/Regex;->exactP:I

    .line 263
    .local v8, "targetP":I
    iget v7, p1, Lorg/joni/Regex;->exactEnd:I

    .line 265
    .local v7, "targetEnd":I
    move/from16 v1, p4

    .line 266
    .local v1, "end":I
    sub-int v10, v7, v8

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v1, v10

    .line 268
    move/from16 v0, p5

    if-le v1, v0, :cond_0

    move/from16 v1, p5

    .line 269
    :cond_0
    move v4, p3

    .line 271
    .local v4, "s":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 272
    aget-byte v10, v6, v8

    aget-byte v11, p2, v4

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v9, v11

    if-ne v10, v11, :cond_2

    .line 273
    add-int/lit8 v2, v4, 0x1

    .line 274
    .local v2, "p":I
    add-int/lit8 v5, v8, 0x1

    .local v5, "t":I
    move v3, v2

    .line 275
    .end local v2    # "p":I
    .local v3, "p":I
    :goto_1
    if-ge v5, v7, :cond_4

    .line 276
    aget-byte v10, v6, v5

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "p":I
    .restart local v2    # "p":I
    aget-byte v11, p2, v3

    and-int/lit16 v11, v11, 0xff

    aget-byte v11, v9, v11

    if-eq v10, v11, :cond_1

    .line 280
    :goto_2
    if-ne v5, v7, :cond_2

    .line 284
    .end local v2    # "p":I
    .end local v4    # "s":I
    .end local v5    # "t":I
    :goto_3
    return v4

    .line 277
    .restart local v2    # "p":I
    .restart local v4    # "s":I
    .restart local v5    # "t":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    .end local v2    # "p":I
    .restart local v3    # "p":I
    goto :goto_1

    .line 282
    .end local v3    # "p":I
    .end local v5    # "t":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 284
    :cond_3
    const/4 v4, -0x1

    goto :goto_3

    .restart local v3    # "p":I
    .restart local v5    # "t":I
    :cond_4
    move v2, v3

    .end local v3    # "p":I
    .restart local v2    # "p":I
    goto :goto_2
.end method

.method public final searchBackward(Lorg/joni/Regex;[BIIIIII)I
    .locals 11
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "text"    # [B
    .param p3, "textP"    # I
    .param p4, "adjustText"    # I
    .param p5, "textEnd"    # I
    .param p6, "textStart"    # I
    .param p7, "s_"    # I
    .param p8, "range_"    # I

    .prologue
    .line 288
    iget-object v9, p1, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v9}, Lorg/jcodings/Encoding;->toLowerCaseTable()[B

    move-result-object v8

    .line 289
    .local v8, "toLowerTable":[B
    iget-object v5, p1, Lorg/joni/Regex;->exact:[B

    .line 290
    .local v5, "target":[B
    iget v7, p1, Lorg/joni/Regex;->exactP:I

    .line 291
    .local v7, "targetP":I
    iget v6, p1, Lorg/joni/Regex;->exactEnd:I

    .line 293
    .local v6, "targetEnd":I
    move/from16 v3, p5

    .line 294
    .local v3, "s":I
    sub-int v9, v6, v7

    sub-int/2addr v3, v9

    .line 296
    move/from16 v0, p6

    if-le v3, v0, :cond_0

    move/from16 v3, p6

    .line 298
    :cond_0
    :goto_0
    if-lt v3, p3, :cond_3

    .line 299
    aget-byte v9, v5, v7

    aget-byte v10, p2, v3

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v8, v10

    if-ne v9, v10, :cond_2

    .line 300
    add-int/lit8 v1, v3, 0x1

    .line 301
    .local v1, "p":I
    add-int/lit8 v4, v7, 0x1

    .local v4, "t":I
    move v2, v1

    .line 302
    .end local v1    # "p":I
    .local v2, "p":I
    :goto_1
    if-ge v4, v6, :cond_4

    .line 303
    aget-byte v9, v5, v4

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "p":I
    .restart local v1    # "p":I
    aget-byte v10, p2, v2

    and-int/lit16 v10, v10, 0xff

    aget-byte v10, v8, v10

    if-eq v9, v10, :cond_1

    .line 306
    :goto_2
    if-ne v4, v6, :cond_2

    .line 311
    .end local v1    # "p":I
    .end local v3    # "s":I
    .end local v4    # "t":I
    :goto_3
    return v3

    .line 304
    .restart local v1    # "p":I
    .restart local v3    # "s":I
    .restart local v4    # "t":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "p":I
    .restart local v2    # "p":I
    goto :goto_1

    .line 309
    .end local v2    # "p":I
    .end local v4    # "t":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 311
    :cond_3
    const/4 v3, -0x1

    goto :goto_3

    .restart local v2    # "p":I
    .restart local v4    # "t":I
    :cond_4
    move v1, v2

    .end local v2    # "p":I
    .restart local v1    # "p":I
    goto :goto_2
.end method
