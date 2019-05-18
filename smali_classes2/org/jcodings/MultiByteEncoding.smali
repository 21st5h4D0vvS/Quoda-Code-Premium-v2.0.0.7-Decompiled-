.class public abstract Lorg/jcodings/MultiByteEncoding;
.super Lorg/jcodings/AbstractEncoding;
.source "MultiByteEncoding.java"


# static fields
.field protected static final A:I = -0x1

.field protected static final F:I = -0x2


# instance fields
.field protected final EncLen:[I

.field protected final Trans:[[I

.field protected final TransZero:[I


# direct methods
.method protected constructor <init>(Ljava/lang/String;II[I[[I[S)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "EncLen"    # [I
    .param p5, "Trans"    # [[I
    .param p6, "CTypeTable"    # [S

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p6}, Lorg/jcodings/AbstractEncoding;-><init>(Ljava/lang/String;II[S)V

    .line 38
    iput-object p4, p0, Lorg/jcodings/MultiByteEncoding;->EncLen:[I

    .line 39
    iput-object p5, p0, Lorg/jcodings/MultiByteEncoding;->Trans:[[I

    .line 40
    if-eqz p5, :cond_0

    const/4 v0, 0x0

    aget-object v0, p5, v0

    :goto_0
    iput-object v0, p0, Lorg/jcodings/MultiByteEncoding;->TransZero:[I

    .line 41
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lengthForThree([BIIII)I
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .param p4, "b"    # I
    .param p5, "s"    # I

    .prologue
    const/4 v0, -0x1

    .line 101
    add-int/lit8 p2, p2, 0x1

    if-ne p2, p3, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, p4, v0}, Lorg/jcodings/MultiByteEncoding;->missing(II)I

    move-result v0

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    iget-object v1, p0, Lorg/jcodings/MultiByteEncoding;->Trans:[[I

    aget-object v1, v1, p5

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    aget p5, v1, v2

    .line 103
    if-ne p5, v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0
.end method

.method private lengthForThreeUptoFour([BIIII)I
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .param p4, "b"    # I
    .param p5, "s"    # I

    .prologue
    const/4 v0, 0x3

    const/4 v1, -0x1

    .line 78
    add-int/lit8 p2, p2, 0x1

    if-ne p2, p3, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, p4, v0}, Lorg/jcodings/MultiByteEncoding;->missing(II)I

    move-result v0

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 79
    :cond_1
    iget-object v2, p0, Lorg/jcodings/MultiByteEncoding;->Trans:[[I

    aget-object v2, v2, p5

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    aget p5, v2, v3

    .line 80
    if-gez p5, :cond_2

    if-eq p5, v1, :cond_0

    move v0, v1

    goto :goto_0

    .line 81
    :cond_2
    add-int/lit8 p2, p2, 0x1

    if-ne p2, p3, :cond_3

    invoke-virtual {p0, p4, v0}, Lorg/jcodings/MultiByteEncoding;->missing(II)I

    move-result v0

    goto :goto_0

    .line 82
    :cond_3
    iget-object v0, p0, Lorg/jcodings/MultiByteEncoding;->Trans:[[I

    aget-object v0, v0, p5

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    aget p5, v0, v2

    .line 83
    if-ne p5, v1, :cond_4

    const/4 v1, 0x4

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private lengthForTwo([BIIII)I
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .param p4, "b"    # I
    .param p5, "s"    # I

    .prologue
    const/4 v0, -0x1

    .line 114
    add-int/lit8 p2, p2, 0x1

    if-ne p2, p3, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p4, v0}, Lorg/jcodings/MultiByteEncoding;->missing(II)I

    move-result v0

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    iget-object v1, p0, Lorg/jcodings/MultiByteEncoding;->Trans:[[I

    aget-object v1, v1, p5

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    aget p5, v1, v2

    .line 116
    if-ne p5, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method private lengthForTwoUptoThree([BIIII)I
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .param p4, "b"    # I
    .param p5, "s"    # I

    .prologue
    const/4 v0, -0x1

    .line 94
    add-int/lit8 p2, p2, 0x1

    if-ne p2, p3, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p4, v0}, Lorg/jcodings/MultiByteEncoding;->missing(II)I

    move-result v0

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    iget-object v1, p0, Lorg/jcodings/MultiByteEncoding;->Trans:[[I

    aget-object v1, v1, p5

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    aget p5, v1, v2

    .line 96
    if-gez p5, :cond_2

    if-ne p5, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 97
    :cond_2
    invoke-direct/range {p0 .. p5}, Lorg/jcodings/MultiByteEncoding;->lengthForThree([BIIII)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic applyAllCaseFold(ILorg/jcodings/ApplyAllCaseFoldFunction;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Lorg/jcodings/AbstractEncoding;->applyAllCaseFold(ILorg/jcodings/ApplyAllCaseFoldFunction;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic caseFoldCodesByString(I[BII)[Lorg/jcodings/CaseFoldCodeItem;
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jcodings/AbstractEncoding;->caseFoldCodesByString(I[BII)[Lorg/jcodings/CaseFoldCodeItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isNewLine([BII)Z
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Lorg/jcodings/AbstractEncoding;->isNewLine([BII)Z

    move-result v0

    return v0
.end method

.method public length(B)I
    .locals 2
    .param p1, "c"    # B

    .prologue
    .line 45
    iget-object v0, p0, Lorg/jcodings/MultiByteEncoding;->EncLen:[I

    and-int/lit16 v1, p1, 0xff

    aget v0, v0, v1

    return v0
.end method

.method protected final lengthForTwoUptoFour([BIIII)I
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .param p4, "b"    # I
    .param p5, "s"    # I

    .prologue
    const/4 v0, -0x1

    .line 71
    add-int/lit8 p2, p2, 0x1

    if-ne p2, p3, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, p4, v0}, Lorg/jcodings/MultiByteEncoding;->missing(II)I

    move-result v0

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    iget-object v1, p0, Lorg/jcodings/MultiByteEncoding;->Trans:[[I

    aget-object v1, v1, p5

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    aget p5, v1, v2

    .line 73
    if-gez p5, :cond_2

    if-ne p5, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 74
    :cond_2
    invoke-direct/range {p0 .. p5}, Lorg/jcodings/MultiByteEncoding;->lengthForThreeUptoFour([BIIII)I

    move-result v0

    goto :goto_0
.end method

.method protected final mb2CodeToMbc(I[BI)I
    .locals 4
    .param p1, "code"    # I
    .param p2, "bytes"    # [B
    .param p3, "p"    # I

    .prologue
    .line 168
    move v0, p3

    .line 169
    .local v0, "p_":I
    const v2, 0xff00

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    .line 170
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .local v1, "p_":I
    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    move v0, v1

    .line 172
    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .restart local v1    # "p_":I
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 174
    invoke-virtual {p0, p2, p3, v1}, Lorg/jcodings/MultiByteEncoding;->length([BII)I

    move-result v2

    sub-int v3, v1, p3

    if-eq v2, v3, :cond_1

    new-instance v2, Lorg/jcodings/exception/EncodingException;

    const-string v3, "invalid code point value"

    invoke-direct {v2, v3}, Lorg/jcodings/exception/EncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_1
    sub-int v2, v1, p3

    return v2
.end method

.method protected final mb2CodeToMbcLength(I)I
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 152
    const v0, 0xff00

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final mb2IsCodeCType(II)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "ctype"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 190
    const/16 v2, 0x80

    if-ge p1, v2, :cond_1

    .line 191
    invoke-virtual {p0, p1, p2}, Lorg/jcodings/MultiByteEncoding;->isCodeCTypeInternal(II)Z

    move-result v0

    .line 197
    :cond_0
    :goto_0
    return v0

    .line 193
    :cond_1
    invoke-static {p2}, Lorg/jcodings/MultiByteEncoding;->isWordGraphPrint(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 194
    invoke-virtual {p0, p1}, Lorg/jcodings/MultiByteEncoding;->codeToMbcLength(I)I

    move-result v2

    if-gt v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 197
    goto :goto_0
.end method

.method protected final mb4CodeToMbc(I[BI)I
    .locals 4
    .param p1, "code"    # I
    .param p2, "bytes"    # [B
    .param p3, "p"    # I

    .prologue
    .line 179
    move v0, p3

    .line 180
    .local v0, "p_":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, p1

    if-eqz v2, :cond_5

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .local v1, "p_":I
    ushr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 181
    :goto_0
    const/high16 v2, 0xff0000

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    if-eq v1, p3, :cond_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    move v1, v0

    .line 182
    .end local v0    # "p_":I
    .restart local v1    # "p_":I
    :cond_1
    const v2, 0xff00

    and-int/2addr v2, p1

    if-nez v2, :cond_2

    if-eq v1, p3, :cond_4

    :cond_2
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 183
    :goto_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .restart local v1    # "p_":I
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 185
    invoke-virtual {p0, p2, p3, v1}, Lorg/jcodings/MultiByteEncoding;->length([BII)I

    move-result v2

    sub-int v3, v1, p3

    if-eq v2, v3, :cond_3

    new-instance v2, Lorg/jcodings/exception/EncodingException;

    const-string v3, "invalid code point value"

    invoke-direct {v2, v3}, Lorg/jcodings/exception/EncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_3
    sub-int v2, v1, p3

    return v2

    :cond_4
    move v0, v1

    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    goto :goto_1

    :cond_5
    move v1, v0

    .end local v0    # "p_":I
    .restart local v1    # "p_":I
    goto :goto_0
.end method

.method protected final mb4CodeToMbcLength(I)I
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 156
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x4

    .line 163
    :goto_0
    return v0

    .line 158
    :cond_0
    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 159
    const/4 v0, 0x3

    goto :goto_0

    .line 160
    :cond_1
    const v0, 0xff00

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 161
    const/4 v0, 0x2

    goto :goto_0

    .line 163
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final mb4IsCodeCType(II)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "ctype"    # I

    .prologue
    .line 201
    invoke-virtual {p0, p1, p2}, Lorg/jcodings/MultiByteEncoding;->mb2IsCodeCType(II)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I
    .locals 1

    .prologue
    .line 26
    invoke-super/range {p0 .. p5}, Lorg/jcodings/AbstractEncoding;->mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I

    move-result v0

    return v0
.end method

.method protected final mbnMbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I
    .locals 8
    .param p1, "flag"    # I
    .param p2, "bytes"    # [B
    .param p3, "pp"    # Lorg/jcodings/IntHolder;
    .param p4, "end"    # I
    .param p5, "lower"    # [B

    .prologue
    .line 134
    iget v4, p3, Lorg/jcodings/IntHolder;->value:I

    .line 135
    .local v4, "p":I
    const/4 v2, 0x0

    .line 137
    .local v2, "lowerP":I
    aget-byte v6, p2, v4

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Lorg/jcodings/MultiByteEncoding;->isAscii(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 138
    sget-object v6, Lorg/jcodings/ascii/AsciiTables;->ToLowerCaseTable:[B

    aget-byte v7, p2, v4

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    aput-byte v6, p5, v2

    .line 139
    iget v6, p3, Lorg/jcodings/IntHolder;->value:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p3, Lorg/jcodings/IntHolder;->value:I

    .line 140
    const/4 v1, 0x1

    .line 147
    :goto_0
    return v1

    .line 142
    :cond_0
    invoke-virtual {p0, p2, v4, p4}, Lorg/jcodings/MultiByteEncoding;->length([BII)I

    move-result v1

    .line 143
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v3, v2

    .end local v2    # "lowerP":I
    .local v3, "lowerP":I
    move v5, v4

    .end local v4    # "p":I
    .local v5, "p":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 144
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "lowerP":I
    .restart local v2    # "lowerP":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "p":I
    .restart local v4    # "p":I
    aget-byte v6, p2, v5

    aput-byte v6, p5, v3

    .line 143
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2    # "lowerP":I
    .restart local v3    # "lowerP":I
    move v5, v4

    .end local v4    # "p":I
    .restart local v5    # "p":I
    goto :goto_1

    .line 146
    :cond_1
    iget v6, p3, Lorg/jcodings/IntHolder;->value:I

    add-int/2addr v6, v1

    iput v6, p3, Lorg/jcodings/IntHolder;->value:I

    move v2, v3

    .end local v3    # "lowerP":I
    .restart local v2    # "lowerP":I
    move v4, v5

    .line 147
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_0
.end method

.method protected final mbnMbcToCode([BII)I
    .locals 7
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 120
    invoke-virtual {p0, p1, p2, p3}, Lorg/jcodings/MultiByteEncoding;->length([BII)I

    move-result v2

    .line 121
    .local v2, "len":I
    add-int/lit8 v5, p2, 0x1

    .end local p2    # "p":I
    .local v5, "p":I
    aget-byte v6, p1, p2

    and-int/lit16 v3, v6, 0xff

    .line 122
    .local v3, "n":I
    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    move p2, v5

    .end local v5    # "p":I
    .restart local p2    # "p":I
    move v4, v3

    .line 130
    .end local v3    # "n":I
    .local v4, "n":I
    :goto_0
    return v4

    .line 124
    .end local v4    # "n":I
    .end local p2    # "p":I
    .restart local v3    # "n":I
    .restart local v5    # "p":I
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 125
    if-lt v5, p3, :cond_2

    :cond_1
    move p2, v5

    .end local v5    # "p":I
    .restart local p2    # "p":I
    move v4, v3

    .line 130
    .end local v3    # "n":I
    .restart local v4    # "n":I
    goto :goto_0

    .line 126
    .end local v4    # "n":I
    .end local p2    # "p":I
    .restart local v3    # "n":I
    .restart local v5    # "p":I
    :cond_2
    add-int/lit8 p2, v5, 0x1

    .end local v5    # "p":I
    .restart local p2    # "p":I
    aget-byte v6, p1, v5

    and-int/lit16 v0, v6, 0xff

    .line 127
    .local v0, "c":I
    shl-int/lit8 v3, v3, 0x8

    .line 128
    add-int/2addr v3, v0

    .line 124
    add-int/lit8 v1, v1, 0x1

    move v5, p2

    .end local p2    # "p":I
    .restart local v5    # "p":I
    goto :goto_1
.end method

.method protected final missing(I)I
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 49
    rsub-int/lit8 v0, p1, -0x1

    return v0
.end method

.method protected final missing(II)I
    .locals 1
    .param p1, "b"    # I
    .param p2, "delta"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lorg/jcodings/MultiByteEncoding;->EncLen:[I

    aget v0, v0, p1

    sub-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/jcodings/MultiByteEncoding;->missing(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic propertyNameToCType([BII)I
    .locals 1

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Lorg/jcodings/AbstractEncoding;->propertyNameToCType([BII)I

    move-result v0

    return v0
.end method

.method protected final safeLengthForUptoFour([BII)I
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v0, -0x1

    .line 64
    aget-byte v1, p1, p2

    and-int/lit16 v4, v1, 0xff

    .line 65
    .local v4, "b":I
    iget-object v1, p0, Lorg/jcodings/MultiByteEncoding;->TransZero:[I

    aget v5, v1, v4

    .line 66
    .local v5, "s":I
    if-gez v5, :cond_1

    if-ne v5, v0, :cond_0

    const/4 v0, 0x1

    .line 67
    :cond_0
    :goto_0
    return v0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jcodings/MultiByteEncoding;->lengthForTwoUptoFour([BIIII)I

    move-result v0

    goto :goto_0
.end method

.method protected final safeLengthForUptoFourGreatedThan127([BII)I
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v0, -0x1

    .line 57
    aget-byte v1, p1, p2

    and-int/lit16 v4, v1, 0xff

    .line 58
    .local v4, "b":I
    iget-object v1, p0, Lorg/jcodings/MultiByteEncoding;->TransZero:[I

    aget v5, v1, v4

    .line 59
    .local v5, "s":I
    if-gez v5, :cond_1

    if-ne v5, v0, :cond_0

    const/4 v0, 0x1

    .line 60
    :cond_0
    :goto_0
    return v0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jcodings/MultiByteEncoding;->lengthForTwoUptoFour([BIIII)I

    move-result v0

    goto :goto_0
.end method

.method protected final safeLengthForUptoThree([BII)I
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v0, -0x1

    .line 87
    aget-byte v1, p1, p2

    and-int/lit16 v4, v1, 0xff

    .line 88
    .local v4, "b":I
    iget-object v1, p0, Lorg/jcodings/MultiByteEncoding;->TransZero:[I

    aget v5, v1, v4

    .line 89
    .local v5, "s":I
    if-gez v5, :cond_1

    if-ne v5, v0, :cond_0

    const/4 v0, 0x1

    .line 90
    :cond_0
    :goto_0
    return v0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/jcodings/MultiByteEncoding;->lengthForTwoUptoThree([BIIII)I

    move-result v0

    goto :goto_0
.end method

.method protected final safeLengthForUptoTwo([BII)I
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v0, -0x1

    .line 107
    aget-byte v1, p1, p2

    and-int/lit16 v4, v1, 0xff

    .line 108
    .local v4, "b":I
    iget-object v1, p0, Lorg/jcodings/MultiByteEncoding;->TransZero:[I

    aget v5, v1, v4

    .line 109
    .local v5, "s":I
    if-gez v5, :cond_1

    if-ne v5, v0, :cond_0

    const/4 v0, 0x1

    .line 110
    :cond_0
    :goto_0
    return v0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/jcodings/MultiByteEncoding;->lengthForTwo([BIIII)I

    move-result v0

    goto :goto_0
.end method

.method public strCodeAt([BIII)I
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .param p4, "index"    # I

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "n":I
    move v1, p2

    .line 218
    .local v1, "q":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 219
    if-ne v0, p4, :cond_0

    invoke-virtual {p0, p1, v1, p3}, Lorg/jcodings/MultiByteEncoding;->mbcToCode([BII)I

    move-result v2

    .line 223
    :goto_1
    return v2

    .line 220
    :cond_0
    invoke-virtual {p0, p1, v1, p3}, Lorg/jcodings/MultiByteEncoding;->length([BII)I

    move-result v2

    add-int/2addr v1, v2

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public strLength([BII)I
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "n":I
    move v1, p2

    .line 208
    .local v1, "q":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 209
    invoke-virtual {p0, p1, v1, p3}, Lorg/jcodings/MultiByteEncoding;->length([BII)I

    move-result v2

    add-int/2addr v1, v2

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return v0
.end method
