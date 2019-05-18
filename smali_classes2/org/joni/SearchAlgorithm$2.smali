.class final Lorg/joni/SearchAlgorithm$2;
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
    .line 48
    invoke-direct {p0}, Lorg/joni/SearchAlgorithm;-><init>()V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "EXACT"

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
    .line 55
    iget-object v1, p1, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    .line 56
    .local v1, "enc":Lorg/jcodings/Encoding;
    iget-object v7, p1, Lorg/joni/Regex;->exact:[B

    .line 57
    .local v7, "target":[B
    iget v9, p1, Lorg/joni/Regex;->exactP:I

    .line 58
    .local v9, "targetP":I
    iget v8, p1, Lorg/joni/Regex;->exactEnd:I

    .line 61
    .local v8, "targetEnd":I
    move/from16 v2, p4

    .line 62
    .local v2, "end":I
    sub-int v10, v8, v9

    add-int/lit8 v10, v10, -0x1

    sub-int/2addr v2, v10

    .line 64
    move/from16 v0, p5

    if-le v2, v0, :cond_0

    move/from16 v2, p5

    .line 66
    :cond_0
    move v5, p3

    .line 68
    .local v5, "s":I
    :goto_0
    if-ge v5, v2, :cond_3

    .line 69
    aget-byte v10, p2, v5

    aget-byte v11, v7, v9

    if-ne v10, v11, :cond_2

    .line 70
    add-int/lit8 v3, v5, 0x1

    .line 71
    .local v3, "p":I
    add-int/lit8 v6, v9, 0x1

    .local v6, "t":I
    move v4, v3

    .line 72
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_1
    if-ge v6, v8, :cond_4

    .line 73
    aget-byte v10, v7, v6

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    aget-byte v11, p2, v4

    if-eq v10, v11, :cond_1

    .line 77
    :goto_2
    if-ne v6, v8, :cond_2

    .line 82
    .end local v3    # "p":I
    .end local v5    # "s":I
    .end local v6    # "t":I
    :goto_3
    return v5

    .line 74
    .restart local v3    # "p":I
    .restart local v5    # "s":I
    .restart local v6    # "t":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_1

    .line 79
    .end local v4    # "p":I
    .end local v6    # "t":I
    :cond_2
    move/from16 v0, p4

    invoke-virtual {v1, p2, v5, v0}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v10

    add-int/2addr v5, v10

    goto :goto_0

    .line 82
    :cond_3
    const/4 v5, -0x1

    goto :goto_3

    .restart local v4    # "p":I
    .restart local v6    # "t":I
    :cond_4
    move v3, v4

    .end local v4    # "p":I
    .restart local v3    # "p":I
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
    .line 86
    iget-object v1, p1, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    .line 87
    .local v1, "enc":Lorg/jcodings/Encoding;
    iget-object v6, p1, Lorg/joni/Regex;->exact:[B

    .line 88
    .local v6, "target":[B
    iget v8, p1, Lorg/joni/Regex;->exactP:I

    .line 89
    .local v8, "targetP":I
    iget v7, p1, Lorg/joni/Regex;->exactEnd:I

    .line 91
    .local v7, "targetEnd":I
    move/from16 v4, p5

    .line 92
    .local v4, "s":I
    sub-int v9, v7, v8

    sub-int/2addr v4, v9

    .line 94
    move/from16 v0, p6

    if-le v4, v0, :cond_0

    .line 95
    move/from16 v4, p6

    .line 100
    :goto_0
    if-lt v4, p3, :cond_3

    .line 101
    aget-byte v9, p2, v4

    aget-byte v10, v6, v8

    if-ne v9, v10, :cond_2

    .line 102
    add-int/lit8 v2, v4, 0x1

    .line 103
    .local v2, "p":I
    add-int/lit8 v5, v8, 0x1

    .local v5, "t":I
    move v3, v2

    .line 104
    .end local v2    # "p":I
    .local v3, "p":I
    :goto_1
    if-ge v5, v7, :cond_4

    .line 105
    aget-byte v9, v6, v5

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "p":I
    .restart local v2    # "p":I
    aget-byte v10, p2, v3

    if-eq v9, v10, :cond_1

    .line 108
    :goto_2
    if-ne v5, v7, :cond_2

    .line 112
    .end local v2    # "p":I
    .end local v4    # "s":I
    .end local v5    # "t":I
    :goto_3
    return v4

    .line 97
    .restart local v4    # "s":I
    :cond_0
    move/from16 v0, p5

    invoke-virtual {v1, p2, p4, v4, v0}, Lorg/jcodings/Encoding;->leftAdjustCharHead([BIII)I

    move-result v4

    goto :goto_0

    .line 106
    .restart local v2    # "p":I
    .restart local v5    # "t":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v3, v2

    .end local v2    # "p":I
    .restart local v3    # "p":I
    goto :goto_1

    .line 110
    .end local v3    # "p":I
    .end local v5    # "t":I
    :cond_2
    move/from16 v0, p5

    invoke-virtual {v1, p2, p4, v4, v0}, Lorg/jcodings/Encoding;->prevCharHead([BIII)I

    move-result v4

    goto :goto_0

    .line 112
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
