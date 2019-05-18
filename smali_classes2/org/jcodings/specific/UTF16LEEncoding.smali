.class public final Lorg/jcodings/specific/UTF16LEEncoding;
.super Lorg/jcodings/unicode/UnicodeEncoding;
.source "UTF16LEEncoding.java"


# static fields
.field public static final INSTANCE:Lorg/jcodings/specific/UTF16LEEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lorg/jcodings/specific/UTF16LEEncoding;

    invoke-direct {v0}, Lorg/jcodings/specific/UTF16LEEncoding;-><init>()V

    sput-object v0, Lorg/jcodings/specific/UTF16LEEncoding;->INSTANCE:Lorg/jcodings/specific/UTF16LEEncoding;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 30
    const-string v0, "UTF-16LE"

    const/4 v1, 0x2

    const/4 v2, 0x4

    sget-object v3, Lorg/jcodings/specific/UTF16BEEncoding;->UTF16EncLen:[I

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/jcodings/unicode/UnicodeEncoding;-><init>(Ljava/lang/String;II[I)V

    .line 31
    return-void
.end method

.method private static isSurrogate(I)Z
    .locals 2
    .param p0, "c"    # I

    .prologue
    .line 197
    and-int/lit16 v0, p0, 0xf8

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSurrogateFirst(I)Z
    .locals 2
    .param p0, "c"    # I

    .prologue
    .line 181
    and-int/lit16 v0, p0, 0xfc

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSurrogateSecond(I)Z
    .locals 2
    .param p0, "c"    # I

    .prologue
    .line 189
    and-int/lit16 v0, p0, 0xfc

    const/16 v1, 0xdc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public codeToMbc(I[BI)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "bytes"    # [B
    .param p3, "p"    # I

    .prologue
    .line 101
    move v2, p3

    .line 102
    .local v2, "p_":I
    const v4, 0xffff

    if-le p1, v4, :cond_0

    .line 111
    ushr-int/lit8 v4, p1, 0xa

    const v5, 0xd7c0

    add-int v0, v4, v5

    .line 112
    .local v0, "high":I
    and-int/lit16 v4, p1, 0x3ff

    const v5, 0xdc00

    add-int v1, v4, v5

    .line 113
    .local v1, "low":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "p_":I
    .local v3, "p_":I
    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    .line 114
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "p_":I
    .restart local v2    # "p_":I
    ushr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 115
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "p_":I
    .restart local v3    # "p_":I
    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    .line 116
    ushr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 118
    const/4 v4, 0x4

    move v2, v3

    .line 122
    .end local v0    # "high":I
    .end local v1    # "low":I
    .end local v3    # "p_":I
    .restart local v2    # "p_":I
    :goto_0
    return v4

    .line 120
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "p_":I
    .restart local v3    # "p_":I
    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v2

    .line 121
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "p_":I
    .restart local v2    # "p_":I
    const v4, 0xff00

    and-int/2addr v4, p1

    ushr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 122
    const/4 v4, 0x2

    goto :goto_0
.end method

.method public codeToMbcLength(I)I
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 96
    const v0, 0xffff

    if-le p1, v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public ctypeCodeRange(ILorg/jcodings/IntHolder;)[I
    .locals 1
    .param p1, "ctype"    # I
    .param p2, "sbOut"    # Lorg/jcodings/IntHolder;

    .prologue
    .line 157
    const/4 v0, 0x0

    iput v0, p2, Lorg/jcodings/IntHolder;->value:I

    .line 158
    invoke-super {p0, p1}, Lorg/jcodings/unicode/UnicodeEncoding;->ctypeCodeRange(I)[I

    move-result-object v0

    return-object v0
.end method

.method public isNewLine([BII)Z
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 59
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_0

    .line 60
    aget-byte v0, p1, p2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 69
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
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public leftAdjustCharHead([BIII)I
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "s"    # I
    .param p4, "end"    # I

    .prologue
    .line 163
    if-gt p3, p2, :cond_0

    move v0, p3

    .line 169
    .end local p3    # "s":I
    .local v0, "s":I
    :goto_0
    return v0

    .line 165
    .end local v0    # "s":I
    .restart local p3    # "s":I
    :cond_0
    sub-int v1, p3, p2

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    add-int/lit8 p3, p3, -0x1

    .line 167
    :cond_1
    add-int/lit8 v1, p3, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lorg/jcodings/specific/UTF16LEEncoding;->isSurrogateSecond(I)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, p2, 0x1

    if-le p3, v1, :cond_2

    add-int/lit8 p3, p3, -0x2

    :cond_2
    move v0, p3

    .line 169
    .end local p3    # "s":I
    .restart local v0    # "s":I
    goto :goto_0
.end method

.method public length(B)I
    .locals 2
    .param p1, "c"    # B

    .prologue
    .line 35
    iget-object v0, p0, Lorg/jcodings/specific/UTF16LEEncoding;->EncLen:[I

    and-int/lit16 v1, p1, 0xff

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public length([BII)I
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 43
    sub-int v1, p3, p2

    .line 44
    .local v1, "length":I
    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lorg/jcodings/specific/UTF16LEEncoding;->missing(I)I

    move-result v2

    .line 53
    :cond_0
    :goto_0
    return v2

    .line 46
    :cond_1
    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v0, v4, 0xff

    .line 47
    .local v0, "b":I
    invoke-static {v0}, Lorg/jcodings/specific/UTF16LEEncoding;->isSurrogate(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    invoke-static {v0}, Lorg/jcodings/specific/UTF16LEEncoding;->isSurrogateFirst(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 50
    if-ge v1, v3, :cond_2

    rsub-int/lit8 v2, v1, 0x4

    invoke-virtual {p0, v2}, Lorg/jcodings/specific/UTF16LEEncoding;->missing(I)I

    move-result v2

    goto :goto_0

    .line 51
    :cond_2
    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Lorg/jcodings/specific/UTF16LEEncoding;->isSurrogateSecond(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_0

    .line 53
    :cond_3
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I
    .locals 5
    .param p1, "flag"    # I
    .param p2, "bytes"    # [B
    .param p3, "pp"    # Lorg/jcodings/IntHolder;
    .param p4, "end"    # I
    .param p5, "fold"    # [B

    .prologue
    .line 128
    iget v2, p3, Lorg/jcodings/IntHolder;->value:I

    .line 129
    .local v2, "p":I
    const/4 v0, 0x0

    .line 131
    .local v0, "foldP":I
    aget-byte v3, p2, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Lorg/jcodings/specific/UTF16LEEncoding;->isAscii(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, p2, v3

    if-nez v3, :cond_0

    .line 144
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "foldP":I
    .local v1, "foldP":I
    sget-object v3, Lorg/jcodings/ascii/AsciiTables;->ToLowerCaseTable:[B

    aget-byte v4, p2, v2

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    aput-byte v3, p5, v0

    .line 145
    const/4 v3, 0x0

    aput-byte v3, p5, v1

    .line 146
    iget v3, p3, Lorg/jcodings/IntHolder;->value:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p3, Lorg/jcodings/IntHolder;->value:I

    .line 147
    const/4 v3, 0x2

    move v0, v1

    .line 149
    .end local v1    # "foldP":I
    .restart local v0    # "foldP":I
    :goto_0
    return v3

    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/jcodings/unicode/UnicodeEncoding;->mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I

    move-result v3

    goto :goto_0
.end method

.method public mbcToCode([BII)I
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 75
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Lorg/jcodings/specific/UTF16LEEncoding;->isSurrogateFirst(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    aget-byte v3, p1, p2

    and-int/lit16 v0, v3, 0xff

    .line 84
    .local v0, "c0":I
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v1, v3, 0xff

    .line 85
    .local v1, "c1":I
    shl-int/lit8 v3, v1, 0x8

    add-int/2addr v3, v0

    and-int/lit16 v3, v3, 0x3ff

    shl-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p2, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    and-int/lit16 v4, v4, 0x3ff

    add-int/2addr v3, v4

    const/high16 v4, 0x10000

    add-int v2, v3, v4

    .line 91
    .end local v0    # "c0":I
    .end local v1    # "c1":I
    .local v2, "code":I
    :goto_0
    return v2

    .line 89
    .end local v2    # "code":I
    :cond_0
    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit16 v3, v3, 0x100

    add-int/lit8 v4, p2, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int v2, v3, v4

    .restart local v2    # "code":I
    goto :goto_0
.end method
