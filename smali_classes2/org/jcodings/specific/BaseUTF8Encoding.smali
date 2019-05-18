.class abstract Lorg/jcodings/specific/BaseUTF8Encoding;
.super Lorg/jcodings/unicode/UnicodeEncoding;
.source "BaseUTF8Encoding.java"


# static fields
.field private static final INVALID_CODE_FE:I = -0x2

.field private static final INVALID_CODE_FF:I = -0x1

.field static final USE_INVALID_CODE_SCHEME:Z = true


# direct methods
.method protected constructor <init>([I[[I)V
    .locals 6
    .param p1, "EncLen"    # [I
    .param p2, "Trans"    # [[I

    .prologue
    .line 33
    const-string v1, "UTF-8"

    const/4 v2, 0x1

    const/4 v3, 0x6

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/jcodings/unicode/UnicodeEncoding;-><init>(Ljava/lang/String;II[I[[I)V

    .line 34
    return-void
.end method

.method static trail0(I)B
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 116
    and-int/lit8 v0, p0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    return v0
.end method

.method static trailS(II)B
    .locals 1
    .param p0, "code"    # I
    .param p1, "shift"    # I

    .prologue
    .line 112
    ushr-int v0, p0, p1

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    return v0
.end method

.method private static utf8IsLead(I)Z
    .locals 2
    .param p0, "c"    # I

    .prologue
    .line 196
    and-int/lit16 v0, p0, 0xc0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public codeToMbc(I[BI)I
    .locals 8
    .param p1, "code"    # I
    .param p2, "bytes"    # [B
    .param p3, "p"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const/16 v5, 0xc

    const/4 v2, 0x1

    const/4 v4, 0x6

    .line 121
    move v0, p3

    .line 122
    .local v0, "p_":I
    and-int/lit8 v3, p1, -0x80

    if-nez v3, :cond_0

    .line 123
    int-to-byte v3, p1

    aput-byte v3, p2, v0

    .line 156
    :goto_0
    return v2

    .line 126
    :cond_0
    and-int/lit16 v3, p1, -0x800

    if-nez v3, :cond_1

    .line 127
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .local v1, "p_":I
    ushr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x1f

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    move v0, v1

    .line 155
    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    :goto_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .restart local v1    # "p_":I
    invoke-static {p1}, Lorg/jcodings/specific/BaseUTF8Encoding;->trail0(I)B

    move-result v2

    aput-byte v2, p2, v0

    .line 156
    sub-int v2, v1, p3

    move v0, v1

    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    goto :goto_0

    .line 128
    :cond_1
    const/high16 v3, -0x10000

    and-int/2addr v3, p1

    if-nez v3, :cond_2

    .line 129
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .restart local v1    # "p_":I
    ushr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0xf

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 130
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    invoke-static {p1, v4}, Lorg/jcodings/specific/BaseUTF8Encoding;->trailS(II)B

    move-result v2

    aput-byte v2, p2, v1

    goto :goto_1

    .line 131
    :cond_2
    const/high16 v3, -0x200000

    and-int/2addr v3, p1

    if-nez v3, :cond_3

    .line 132
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .restart local v1    # "p_":I
    ushr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x7

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 133
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    invoke-static {p1, v5}, Lorg/jcodings/specific/BaseUTF8Encoding;->trailS(II)B

    move-result v2

    aput-byte v2, p2, v1

    .line 134
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .restart local v1    # "p_":I
    invoke-static {p1, v4}, Lorg/jcodings/specific/BaseUTF8Encoding;->trailS(II)B

    move-result v2

    aput-byte v2, p2, v0

    move v0, v1

    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    goto :goto_1

    .line 135
    :cond_3
    const/high16 v3, -0x4000000

    and-int/2addr v3, p1

    if-nez v3, :cond_4

    .line 136
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .restart local v1    # "p_":I
    ushr-int/lit8 v2, p1, 0x18

    and-int/lit8 v2, v2, 0x3

    or-int/lit16 v2, v2, 0xf8

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 137
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    const/16 v2, 0x12

    invoke-static {p1, v2}, Lorg/jcodings/specific/BaseUTF8Encoding;->trailS(II)B

    move-result v2

    aput-byte v2, p2, v1

    .line 138
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .restart local v1    # "p_":I
    invoke-static {p1, v5}, Lorg/jcodings/specific/BaseUTF8Encoding;->trailS(II)B

    move-result v2

    aput-byte v2, p2, v0

    .line 139
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    invoke-static {p1, v4}, Lorg/jcodings/specific/BaseUTF8Encoding;->trailS(II)B

    move-result v2

    aput-byte v2, p2, v1

    goto :goto_1

    .line 140
    :cond_4
    const/high16 v3, -0x80000000

    and-int/2addr v3, p1

    if-nez v3, :cond_5

    .line 141
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .restart local v1    # "p_":I
    ushr-int/lit8 v2, p1, 0x1e

    and-int/lit8 v2, v2, 0x1

    or-int/lit16 v2, v2, 0xfc

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 142
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    const/16 v2, 0x18

    invoke-static {p1, v2}, Lorg/jcodings/specific/BaseUTF8Encoding;->trailS(II)B

    move-result v2

    aput-byte v2, p2, v1

    .line 143
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .restart local v1    # "p_":I
    const/16 v2, 0x12

    invoke-static {p1, v2}, Lorg/jcodings/specific/BaseUTF8Encoding;->trailS(II)B

    move-result v2

    aput-byte v2, p2, v0

    .line 144
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    invoke-static {p1, v5}, Lorg/jcodings/specific/BaseUTF8Encoding;->trailS(II)B

    move-result v2

    aput-byte v2, p2, v1

    .line 145
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .restart local v1    # "p_":I
    invoke-static {p1, v4}, Lorg/jcodings/specific/BaseUTF8Encoding;->trailS(II)B

    move-result v2

    aput-byte v2, p2, v0

    move v0, v1

    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    goto/16 :goto_1

    .line 146
    :cond_5
    if-ne p1, v6, :cond_6

    .line 147
    aput-byte v6, p2, v0

    goto/16 :goto_0

    .line 149
    :cond_6
    if-ne p1, v7, :cond_7

    .line 150
    aput-byte v7, p2, v0

    goto/16 :goto_0

    .line 153
    :cond_7
    new-instance v2, Lorg/jcodings/exception/EncodingException;

    const-string v3, "too big wide-char value"

    invoke-direct {v2, v3}, Lorg/jcodings/exception/EncodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public codeToMbcLength(I)I
    .locals 2
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x1

    .line 68
    and-int/lit8 v1, p1, -0x80

    if-nez v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 70
    :cond_1
    and-int/lit16 v1, p1, -0x800

    if-nez v1, :cond_2

    .line 71
    const/4 v0, 0x2

    goto :goto_0

    .line 72
    :cond_2
    const/high16 v1, -0x10000

    and-int/2addr v1, p1

    if-nez v1, :cond_3

    .line 73
    const/4 v0, 0x3

    goto :goto_0

    .line 74
    :cond_3
    const/high16 v1, -0x200000

    and-int/2addr v1, p1

    if-nez v1, :cond_4

    .line 75
    const/4 v0, 0x4

    goto :goto_0

    .line 76
    :cond_4
    const/high16 v1, -0x4000000

    and-int/2addr v1, p1

    if-nez v1, :cond_5

    .line 77
    const/4 v0, 0x5

    goto :goto_0

    .line 78
    :cond_5
    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    if-nez v1, :cond_6

    .line 79
    const/4 v0, 0x6

    goto :goto_0

    .line 80
    :cond_6
    const/4 v1, -0x2

    if-eq p1, v1, :cond_0

    .line 82
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 85
    new-instance v0, Lorg/jcodings/exception/EncodingException;

    const-string v1, "invalid code point value"

    invoke-direct {v0, v1}, Lorg/jcodings/exception/EncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ctypeCodeRange(ILorg/jcodings/IntHolder;)[I
    .locals 1
    .param p1, "ctype"    # I
    .param p2, "sbOut"    # Lorg/jcodings/IntHolder;

    .prologue
    .line 191
    const/16 v0, 0x80

    iput v0, p2, Lorg/jcodings/IntHolder;->value:I

    .line 192
    invoke-super {p0, p1}, Lorg/jcodings/unicode/UnicodeEncoding;->ctypeCodeRange(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "UTF-8"

    return-object v0
.end method

.method public isNewLine([BII)Z
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 43
    if-ge p2, p3, :cond_0

    .line 44
    aget-byte v0, p1, p2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReverseMatchAllowed([BII)Z
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public leftAdjustCharHead([BIII)I
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "s"    # I
    .param p4, "end"    # I

    .prologue
    .line 203
    if-gt p3, p2, :cond_0

    .line 206
    .end local p3    # "s":I
    :goto_0
    return p3

    .line 204
    .restart local p3    # "s":I
    :cond_0
    move v0, p3

    .line 205
    .local v0, "p_":I
    :goto_1
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lorg/jcodings/specific/BaseUTF8Encoding;->utf8IsLead(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-le v0, p2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    move p3, v0

    .line 206
    goto :goto_0
.end method

.method public mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I
    .locals 4
    .param p1, "flag"    # I
    .param p2, "bytes"    # [B
    .param p3, "pp"    # Lorg/jcodings/IntHolder;
    .param p4, "end"    # I
    .param p5, "fold"    # [B

    .prologue
    .line 163
    iget v1, p3, Lorg/jcodings/IntHolder;->value:I

    .line 164
    .local v1, "p":I
    const/4 v0, 0x0

    .line 166
    .local v0, "foldP":I
    aget-byte v2, p2, v1

    invoke-static {v2}, Lorg/jcodings/specific/BaseUTF8Encoding;->isMbcAscii(B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    sget-object v2, Lorg/jcodings/ascii/AsciiTables;->ToLowerCaseTable:[B

    aget-byte v3, p2, v1

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    aput-byte v2, p5, v0

    .line 180
    iget v2, p3, Lorg/jcodings/IntHolder;->value:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p3, Lorg/jcodings/IntHolder;->value:I

    .line 181
    const/4 v2, 0x1

    .line 183
    :goto_0
    return v2

    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/jcodings/unicode/UnicodeEncoding;->mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I

    move-result v2

    goto :goto_0
.end method

.method public mbcToCode([BII)I
    .locals 7
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v6, 0x1

    .line 91
    invoke-virtual {p0, p1, p2, p3}, Lorg/jcodings/specific/BaseUTF8Encoding;->length([BII)I

    move-result v1

    .line 93
    .local v1, "len":I
    add-int/lit8 v4, p2, 0x1

    .end local p2    # "p":I
    .local v4, "p":I
    aget-byte v5, p1, p2

    and-int/lit16 v0, v5, 0xff

    .line 95
    .local v0, "c":I
    if-le v1, v6, :cond_1

    .line 96
    add-int/lit8 v1, v1, -0x1

    .line 97
    rsub-int/lit8 v5, v1, 0x6

    shl-int v5, v6, v5

    add-int/lit8 v5, v5, -0x1

    and-int v3, v0, v5

    .local v3, "n":I
    move v2, v1

    .line 98
    .end local v1    # "len":I
    .local v2, "len":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "len":I
    .restart local v1    # "len":I
    if-eqz v2, :cond_0

    .line 99
    add-int/lit8 p2, v4, 0x1

    .end local v4    # "p":I
    .restart local p2    # "p":I
    aget-byte v5, p1, v4

    and-int/lit16 v0, v5, 0xff

    .line 100
    shl-int/lit8 v5, v3, 0x6

    and-int/lit8 v6, v0, 0x3f

    or-int v3, v5, v6

    move v2, v1

    .end local v1    # "len":I
    .restart local v2    # "len":I
    move v4, p2

    .end local p2    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .end local v2    # "len":I
    .restart local v1    # "len":I
    :cond_0
    move p2, v4

    .line 107
    .end local v3    # "n":I
    .end local v4    # "p":I
    .restart local p2    # "p":I
    :goto_1
    return v3

    .line 105
    .end local p2    # "p":I
    .restart local v4    # "p":I
    :cond_1
    const/16 v5, 0xfd

    if-le v0, v5, :cond_3

    const/16 v5, 0xfe

    if-ne v0, v5, :cond_2

    const/4 v5, -0x2

    :goto_2
    move p2, v4

    .end local v4    # "p":I
    .restart local p2    # "p":I
    move v3, v5

    goto :goto_1

    .end local p2    # "p":I
    .restart local v4    # "p":I
    :cond_2
    const/4 v5, -0x1

    goto :goto_2

    :cond_3
    move p2, v4

    .end local v4    # "p":I
    .restart local p2    # "p":I
    move v3, v0

    .line 107
    goto :goto_1
.end method
