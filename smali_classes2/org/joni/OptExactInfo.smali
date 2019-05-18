.class final Lorg/joni/OptExactInfo;
.super Ljava/lang/Object;
.source "OptExactInfo.java"


# static fields
.field private static final COMP_EM_BASE:I = 0x14

.field static final OPT_EXACT_MAXLEN:I = 0x18


# instance fields
.field final anchor:Lorg/joni/OptAnchorInfo;

.field final bytes:[B

.field ignoreCase:Z

.field length:I

.field final mmd:Lorg/joni/MinMaxLen;

.field reachEnd:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/joni/MinMaxLen;

    invoke-direct {v0}, Lorg/joni/MinMaxLen;-><init>()V

    iput-object v0, p0, Lorg/joni/OptExactInfo;->mmd:Lorg/joni/MinMaxLen;

    .line 28
    new-instance v0, Lorg/joni/OptAnchorInfo;

    invoke-direct {v0}, Lorg/joni/OptAnchorInfo;-><init>()V

    iput-object v0, p0, Lorg/joni/OptExactInfo;->anchor:Lorg/joni/OptAnchorInfo;

    .line 33
    const/16 v0, 0x18

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/joni/OptExactInfo;->bytes:[B

    return-void
.end method


# virtual methods
.method altMerge(Lorg/joni/OptExactInfo;Lorg/joni/OptEnvironment;)V
    .locals 7
    .param p1, "other"    # Lorg/joni/OptExactInfo;
    .param p2, "env"    # Lorg/joni/OptEnvironment;

    .prologue
    const/4 v6, 0x0

    .line 101
    iget v3, p1, Lorg/joni/OptExactInfo;->length:I

    if-eqz v3, :cond_0

    iget v3, p0, Lorg/joni/OptExactInfo;->length:I

    if-nez v3, :cond_2

    .line 102
    :cond_0
    invoke-virtual {p0}, Lorg/joni/OptExactInfo;->clear()V

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    iget-object v3, p0, Lorg/joni/OptExactInfo;->mmd:Lorg/joni/MinMaxLen;

    iget-object v4, p1, Lorg/joni/OptExactInfo;->mmd:Lorg/joni/MinMaxLen;

    invoke-virtual {v3, v4}, Lorg/joni/MinMaxLen;->equal(Lorg/joni/MinMaxLen;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 107
    invoke-virtual {p0}, Lorg/joni/OptExactInfo;->clear()V

    goto :goto_0

    .line 112
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lorg/joni/OptExactInfo;->length:I

    if-ge v0, v3, :cond_4

    iget v3, p1, Lorg/joni/OptExactInfo;->length:I

    if-ge v0, v3, :cond_4

    .line 113
    iget-object v3, p0, Lorg/joni/OptExactInfo;->bytes:[B

    aget-byte v3, v3, v0

    iget-object v4, p1, Lorg/joni/OptExactInfo;->bytes:[B

    aget-byte v4, v4, v0

    if-eq v3, v4, :cond_7

    .line 125
    :cond_4
    iget-boolean v3, p1, Lorg/joni/OptExactInfo;->reachEnd:Z

    if-eqz v3, :cond_5

    iget v3, p1, Lorg/joni/OptExactInfo;->length:I

    if-lt v0, v3, :cond_5

    iget v3, p0, Lorg/joni/OptExactInfo;->length:I

    if-ge v0, v3, :cond_6

    :cond_5
    iput-boolean v6, p0, Lorg/joni/OptExactInfo;->reachEnd:Z

    .line 127
    :cond_6
    iput v0, p0, Lorg/joni/OptExactInfo;->length:I

    .line 128
    iget-boolean v3, p0, Lorg/joni/OptExactInfo;->ignoreCase:Z

    iget-boolean v4, p1, Lorg/joni/OptExactInfo;->ignoreCase:Z

    or-int/2addr v3, v4

    iput-boolean v3, p0, Lorg/joni/OptExactInfo;->ignoreCase:Z

    .line 130
    iget-object v3, p0, Lorg/joni/OptExactInfo;->anchor:Lorg/joni/OptAnchorInfo;

    iget-object v4, p1, Lorg/joni/OptExactInfo;->anchor:Lorg/joni/OptAnchorInfo;

    invoke-virtual {v3, v4}, Lorg/joni/OptAnchorInfo;->altMerge(Lorg/joni/OptAnchorInfo;)V

    .line 132
    iget-boolean v3, p0, Lorg/joni/OptExactInfo;->reachEnd:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/joni/OptExactInfo;->anchor:Lorg/joni/OptAnchorInfo;

    iput v6, v3, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    goto :goto_0

    .line 114
    :cond_7
    iget-object v3, p2, Lorg/joni/OptEnvironment;->enc:Lorg/jcodings/Encoding;

    iget-object v4, p0, Lorg/joni/OptExactInfo;->bytes:[B

    iget v5, p0, Lorg/joni/OptExactInfo;->length:I

    invoke-virtual {v3, v4, v0, v5}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v2

    .line 117
    .local v2, "len":I
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_2
    if-ge v1, v2, :cond_8

    .line 118
    iget-object v3, p0, Lorg/joni/OptExactInfo;->bytes:[B

    add-int v4, v0, v1

    aget-byte v3, v3, v4

    iget-object v4, p1, Lorg/joni/OptExactInfo;->bytes:[B

    add-int v5, v0, v1

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_9

    .line 121
    :cond_8
    if-lt v1, v2, :cond_4

    .line 122
    add-int/2addr v0, v2

    .line 123
    goto :goto_1

    .line 117
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lorg/joni/OptExactInfo;->mmd:Lorg/joni/MinMaxLen;

    invoke-virtual {v0}, Lorg/joni/MinMaxLen;->clear()V

    .line 42
    iget-object v0, p0, Lorg/joni/OptExactInfo;->anchor:Lorg/joni/OptAnchorInfo;

    invoke-virtual {v0}, Lorg/joni/OptAnchorInfo;->clear()V

    .line 44
    iput-boolean v1, p0, Lorg/joni/OptExactInfo;->reachEnd:Z

    .line 45
    iput-boolean v1, p0, Lorg/joni/OptExactInfo;->ignoreCase:Z

    .line 46
    iput v1, p0, Lorg/joni/OptExactInfo;->length:I

    .line 47
    return-void
.end method

.method compare(Lorg/joni/OptMapInfo;)I
    .locals 4
    .param p1, "m"    # Lorg/joni/OptMapInfo;

    .prologue
    .line 163
    iget v2, p1, Lorg/joni/OptMapInfo;->value:I

    if-gtz v2, :cond_0

    const/4 v2, -0x1

    .line 168
    :goto_0
    return v2

    .line 165
    :cond_0
    iget v2, p0, Lorg/joni/OptExactInfo;->length:I

    mul-int/lit8 v3, v2, 0x14

    iget-boolean v2, p0, Lorg/joni/OptExactInfo;->ignoreCase:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    mul-int v0, v3, v2

    .line 166
    .local v0, "ve":I
    const/16 v2, 0xc8

    iget v3, p1, Lorg/joni/OptMapInfo;->value:I

    div-int v1, v2, v3

    .line 168
    .local v1, "vm":I
    iget-object v2, p0, Lorg/joni/OptExactInfo;->mmd:Lorg/joni/MinMaxLen;

    iget-object v3, p1, Lorg/joni/OptMapInfo;->mmd:Lorg/joni/MinMaxLen;

    invoke-virtual {v2, v3, v0, v1}, Lorg/joni/MinMaxLen;->compareDistanceValue(Lorg/joni/MinMaxLen;II)I

    move-result v2

    goto :goto_0

    .line 165
    .end local v0    # "ve":I
    .end local v1    # "vm":I
    :cond_1
    const/4 v2, 0x2

    goto :goto_1
.end method

.method concat(Lorg/joni/OptExactInfo;Lorg/jcodings/Encoding;)V
    .locals 12
    .param p1, "other"    # Lorg/joni/OptExactInfo;
    .param p2, "enc"    # Lorg/jcodings/Encoding;

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x1

    .line 60
    iget-boolean v8, p0, Lorg/joni/OptExactInfo;->ignoreCase:Z

    if-nez v8, :cond_1

    iget-boolean v8, p1, Lorg/joni/OptExactInfo;->ignoreCase:Z

    if-eqz v8, :cond_1

    .line 61
    iget v8, p0, Lorg/joni/OptExactInfo;->length:I

    iget v10, p1, Lorg/joni/OptExactInfo;->length:I

    if-lt v8, v10, :cond_0

    .line 84
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-boolean v11, p0, Lorg/joni/OptExactInfo;->ignoreCase:Z

    .line 65
    :cond_1
    const/4 v5, 0x0

    .line 66
    .local v5, "p":I
    iget v8, p1, Lorg/joni/OptExactInfo;->length:I

    add-int v0, v5, v8

    .line 69
    .local v0, "end":I
    iget v1, p0, Lorg/joni/OptExactInfo;->length:I

    .local v1, "i":I
    :goto_1
    if-ge v5, v0, :cond_2

    .line 70
    iget-object v8, p1, Lorg/joni/OptExactInfo;->bytes:[B

    invoke-virtual {p2, v8, v5, v0}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v4

    .line 71
    .local v4, "len":I
    add-int v8, v1, v4

    const/16 v10, 0x18

    if-le v8, v10, :cond_4

    .line 77
    .end local v4    # "len":I
    :cond_2
    iput v1, p0, Lorg/joni/OptExactInfo;->length:I

    .line 78
    if-ne v5, v0, :cond_6

    iget-boolean v8, p1, Lorg/joni/OptExactInfo;->reachEnd:Z

    :goto_2
    iput-boolean v8, p0, Lorg/joni/OptExactInfo;->reachEnd:Z

    .line 80
    new-instance v7, Lorg/joni/OptAnchorInfo;

    invoke-direct {v7}, Lorg/joni/OptAnchorInfo;-><init>()V

    .line 81
    .local v7, "tmp":Lorg/joni/OptAnchorInfo;
    iget-object v8, p0, Lorg/joni/OptExactInfo;->anchor:Lorg/joni/OptAnchorInfo;

    iget-object v10, p1, Lorg/joni/OptExactInfo;->anchor:Lorg/joni/OptAnchorInfo;

    invoke-virtual {v7, v8, v10, v11, v11}, Lorg/joni/OptAnchorInfo;->concat(Lorg/joni/OptAnchorInfo;Lorg/joni/OptAnchorInfo;II)V

    .line 82
    iget-boolean v8, p1, Lorg/joni/OptExactInfo;->reachEnd:Z

    if-nez v8, :cond_3

    iput v9, v7, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    .line 83
    :cond_3
    iget-object v8, p0, Lorg/joni/OptExactInfo;->anchor:Lorg/joni/OptAnchorInfo;

    invoke-virtual {v8, v7}, Lorg/joni/OptAnchorInfo;->copy(Lorg/joni/OptAnchorInfo;)V

    goto :goto_0

    .line 72
    .end local v7    # "tmp":Lorg/joni/OptAnchorInfo;
    .restart local v4    # "len":I
    :cond_4
    const/4 v3, 0x0

    .local v3, "j":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    move v6, v5

    .end local v5    # "p":I
    .local v6, "p":I
    :goto_3
    if-ge v3, v4, :cond_5

    if-ge v6, v0, :cond_5

    .line 73
    iget-object v8, p0, Lorg/joni/OptExactInfo;->bytes:[B

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v10, p1, Lorg/joni/OptExactInfo;->bytes:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "p":I
    .restart local v5    # "p":I
    aget-byte v10, v10, v6

    aput-byte v10, v8, v2

    .line 72
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v6, v5

    .end local v5    # "p":I
    .restart local v6    # "p":I
    goto :goto_3

    :cond_5
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    move v5, v6

    .line 75
    .end local v6    # "p":I
    .restart local v5    # "p":I
    goto :goto_1

    .end local v3    # "j":I
    .end local v4    # "len":I
    :cond_6
    move v8, v9

    .line 78
    goto :goto_2
.end method

.method concatStr([BIIZLorg/jcodings/Encoding;)V
    .locals 8
    .param p1, "lbytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .param p4, "raw"    # Z
    .param p5, "enc"    # Lorg/jcodings/Encoding;

    .prologue
    const/16 v7, 0x18

    .line 89
    iget v0, p0, Lorg/joni/OptExactInfo;->length:I

    .local v0, "i":I
    :goto_0
    if-ge p2, p3, :cond_0

    if-ge v0, v7, :cond_0

    .line 90
    invoke-virtual {p5, p1, p2, p3}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v3

    .line 91
    .local v3, "len":I
    add-int v5, v0, v3

    if-le v5, v7, :cond_1

    .line 97
    .end local v3    # "len":I
    :cond_0
    iput v0, p0, Lorg/joni/OptExactInfo;->length:I

    .line 98
    return-void

    .line 92
    .restart local v3    # "len":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "j":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    move v4, p2

    .end local p2    # "p":I
    .local v4, "p":I
    :goto_1
    if-ge v2, v3, :cond_2

    if-ge v4, p3, :cond_2

    .line 93
    iget-object v5, p0, Lorg/joni/OptExactInfo;->bytes:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "p":I
    .restart local p2    # "p":I
    aget-byte v6, p1, v4

    aput-byte v6, v5, v1

    .line 92
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    move v4, p2

    .end local p2    # "p":I
    .restart local v4    # "p":I
    goto :goto_1

    :cond_2
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    move p2, v4

    .line 95
    .end local v4    # "p":I
    .restart local p2    # "p":I
    goto :goto_0
.end method

.method copy(Lorg/joni/OptExactInfo;)V
    .locals 4
    .param p1, "other"    # Lorg/joni/OptExactInfo;

    .prologue
    const/4 v3, 0x0

    .line 50
    iget-object v0, p0, Lorg/joni/OptExactInfo;->mmd:Lorg/joni/MinMaxLen;

    iget-object v1, p1, Lorg/joni/OptExactInfo;->mmd:Lorg/joni/MinMaxLen;

    invoke-virtual {v0, v1}, Lorg/joni/MinMaxLen;->copy(Lorg/joni/MinMaxLen;)V

    .line 51
    iget-object v0, p0, Lorg/joni/OptExactInfo;->anchor:Lorg/joni/OptAnchorInfo;

    iget-object v1, p1, Lorg/joni/OptExactInfo;->anchor:Lorg/joni/OptAnchorInfo;

    invoke-virtual {v0, v1}, Lorg/joni/OptAnchorInfo;->copy(Lorg/joni/OptAnchorInfo;)V

    .line 52
    iget-boolean v0, p1, Lorg/joni/OptExactInfo;->reachEnd:Z

    iput-boolean v0, p0, Lorg/joni/OptExactInfo;->reachEnd:Z

    .line 53
    iget-boolean v0, p1, Lorg/joni/OptExactInfo;->ignoreCase:Z

    iput-boolean v0, p0, Lorg/joni/OptExactInfo;->ignoreCase:Z

    .line 54
    iget v0, p1, Lorg/joni/OptExactInfo;->length:I

    iput v0, p0, Lorg/joni/OptExactInfo;->length:I

    .line 56
    iget-object v0, p1, Lorg/joni/OptExactInfo;->bytes:[B

    iget-object v1, p0, Lorg/joni/OptExactInfo;->bytes:[B

    const/16 v2, 0x18

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-void
.end method

.method isFull()Z
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lorg/joni/OptExactInfo;->length:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method select(Lorg/joni/OptExactInfo;Lorg/jcodings/Encoding;)V
    .locals 5
    .param p1, "alt"    # Lorg/joni/OptExactInfo;
    .param p2, "enc"    # Lorg/jcodings/Encoding;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 137
    iget v0, p0, Lorg/joni/OptExactInfo;->length:I

    .line 138
    .local v0, "v1":I
    iget v1, p1, Lorg/joni/OptExactInfo;->length:I

    .line 140
    .local v1, "v2":I
    if-nez v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    if-nez v0, :cond_2

    .line 143
    invoke-virtual {p0, p1}, Lorg/joni/OptExactInfo;->copy(Lorg/joni/OptExactInfo;)V

    goto :goto_0

    .line 145
    :cond_2
    if-gt v0, v2, :cond_4

    if-gt v1, v2, :cond_4

    .line 147
    iget-object v2, p0, Lorg/joni/OptExactInfo;->bytes:[B

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-static {p2, v2}, Lorg/joni/OptMapInfo;->positionValue(Lorg/jcodings/Encoding;I)I

    move-result v1

    .line 148
    iget-object v2, p1, Lorg/joni/OptExactInfo;->bytes:[B

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-static {p2, v2}, Lorg/joni/OptMapInfo;->positionValue(Lorg/jcodings/Encoding;I)I

    move-result v0

    .line 150
    iget v2, p0, Lorg/joni/OptExactInfo;->length:I

    if-le v2, v4, :cond_3

    add-int/lit8 v0, v0, 0x5

    .line 151
    :cond_3
    iget v2, p1, Lorg/joni/OptExactInfo;->length:I

    if-le v2, v4, :cond_4

    add-int/lit8 v1, v1, 0x5

    .line 154
    :cond_4
    iget-boolean v2, p0, Lorg/joni/OptExactInfo;->ignoreCase:Z

    if-nez v2, :cond_5

    mul-int/lit8 v0, v0, 0x2

    .line 155
    :cond_5
    iget-boolean v2, p1, Lorg/joni/OptExactInfo;->ignoreCase:Z

    if-nez v2, :cond_6

    mul-int/lit8 v1, v1, 0x2

    .line 157
    :cond_6
    iget-object v2, p0, Lorg/joni/OptExactInfo;->mmd:Lorg/joni/MinMaxLen;

    iget-object v3, p1, Lorg/joni/OptExactInfo;->mmd:Lorg/joni/MinMaxLen;

    invoke-virtual {v2, v3, v0, v1}, Lorg/joni/MinMaxLen;->compareDistanceValue(Lorg/joni/MinMaxLen;II)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/joni/OptExactInfo;->copy(Lorg/joni/OptExactInfo;)V

    goto :goto_0
.end method
