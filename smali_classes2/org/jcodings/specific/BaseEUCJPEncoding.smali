.class abstract Lorg/jcodings/specific/BaseEUCJPEncoding;
.super Lorg/jcodings/EucEncoding;
.source "BaseEUCJPEncoding.java"


# static fields
.field private static final CR_Hiragana:[I

.field private static final CR_Katakana:[I

.field private static final CTypeNameHash:Lorg/jcodings/util/CaseInsensitiveBytesHash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jcodings/util/CaseInsensitiveBytesHash",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final EUCJPEncLen:[I

.field private static final PropertyList:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jcodings/specific/BaseEUCJPEncoding;->CR_Hiragana:[I

    .line 103
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jcodings/specific/BaseEUCJPEncoding;->CR_Katakana:[I

    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    sget-object v2, Lorg/jcodings/specific/BaseEUCJPEncoding;->CR_Hiragana:[I

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/jcodings/specific/BaseEUCJPEncoding;->CR_Katakana:[I

    aput-object v2, v0, v1

    sput-object v0, Lorg/jcodings/specific/BaseEUCJPEncoding;->PropertyList:[[I

    .line 115
    new-instance v0, Lorg/jcodings/util/CaseInsensitiveBytesHash;

    invoke-direct {v0}, Lorg/jcodings/util/CaseInsensitiveBytesHash;-><init>()V

    sput-object v0, Lorg/jcodings/specific/BaseEUCJPEncoding;->CTypeNameHash:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    .line 118
    sget-object v0, Lorg/jcodings/specific/BaseEUCJPEncoding;->CTypeNameHash:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    const-string v1, "Hiragana"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->put([BLjava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lorg/jcodings/specific/BaseEUCJPEncoding;->CTypeNameHash:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    const-string v1, "Katakana"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->put([BLjava/lang/Object;)Ljava/lang/Object;

    .line 163
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/jcodings/specific/BaseEUCJPEncoding;->EUCJPEncLen:[I

    return-void

    .line 98
    :array_0
    .array-data 4
        0x1
        0xa4a1
        0xa4f3
    .end array-data

    .line 103
    :array_1
    .array-data 4
        0x3
        0xa5a1
        0xa5f6
        0xaaa6
        0xaaaf
        0xaab1
        0xaadd
    .end array-data

    .line 163
    :array_2
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data
.end method

.method protected constructor <init>([[I)V
    .locals 7
    .param p1, "Trans"    # [[I

    .prologue
    .line 36
    const-string v1, "EUC-JP"

    const/4 v2, 0x1

    const/4 v3, 0x3

    sget-object v4, Lorg/jcodings/specific/BaseEUCJPEncoding;->EUCJPEncLen:[I

    sget-object v6, Lorg/jcodings/ascii/AsciiTables;->AsciiCtypeTable:[S

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lorg/jcodings/EucEncoding;-><init>(Ljava/lang/String;II[I[[I[S)V

    .line 37
    return-void
.end method


# virtual methods
.method public codeToMbc(I[BI)I
    .locals 4
    .param p1, "code"    # I
    .param p2, "bytes"    # [B
    .param p3, "p"    # I

    .prologue
    .line 60
    move v0, p3

    .line 61
    .local v0, "p_":I
    const/high16 v2, 0xff0000

    and-int/2addr v2, p1

    if-eqz v2, :cond_2

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .local v1, "p_":I
    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 62
    :goto_0
    const v2, 0xff00

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 63
    :goto_1
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .restart local v1    # "p_":I
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 65
    invoke-virtual {p0, p2, p3, v1}, Lorg/jcodings/specific/BaseEUCJPEncoding;->length([BII)I

    move-result v2

    sub-int v3, v1, p3

    if-eq v2, v3, :cond_0

    new-instance v2, Lorg/jcodings/exception/EncodingException;

    const-string v3, "invalid code point value"

    invoke-direct {v2, v3}, Lorg/jcodings/exception/EncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_0
    sub-int v2, v1, p3

    return v2

    :cond_1
    move v0, v1

    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    goto :goto_1

    :cond_2
    move v1, v0

    .end local v0    # "p_":I
    .restart local v1    # "p_":I
    goto :goto_0
.end method

.method public codeToMbcLength(I)I
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 46
    invoke-static {p1}, Lorg/jcodings/specific/BaseEUCJPEncoding;->isAscii(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    .line 51
    :cond_0
    const v0, 0xffffff

    if-le p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 52
    :cond_1
    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    const/high16 v1, 0x800000

    if-lt v0, v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 53
    :cond_2
    const v0, 0xff00

    and-int/2addr v0, p1

    const v1, 0x8000

    if-lt v0, v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 55
    :cond_3
    new-instance v0, Lorg/jcodings/exception/EncodingException;

    const-string v1, "invalid code point value"

    invoke-direct {v0, v1}, Lorg/jcodings/exception/EncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ctypeCodeRange(ILorg/jcodings/IntHolder;)[I
    .locals 2
    .param p1, "ctype"    # I
    .param p2, "sbOut"    # Lorg/jcodings/IntHolder;

    .prologue
    .line 152
    const/16 v0, 0xe

    if-gt p1, v0, :cond_0

    .line 153
    const/4 v0, 0x0

    .line 159
    :goto_0
    return-object v0

    .line 155
    :cond_0
    const/16 v0, 0x80

    iput v0, p2, Lorg/jcodings/IntHolder;->value:I

    .line 157
    add-int/lit8 p1, p1, -0xf

    .line 158
    sget-object v0, Lorg/jcodings/specific/BaseEUCJPEncoding;->PropertyList:[[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    new-instance v0, Lorg/jcodings/exception/InternalException;

    const-string v1, "undefined type (bug)"

    invoke-direct {v0, v1}, Lorg/jcodings/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_1
    sget-object v0, Lorg/jcodings/specific/BaseEUCJPEncoding;->PropertyList:[[I

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public isCodeCType(II)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "ctype"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 133
    const/16 v2, 0xe

    if-gt p2, v2, :cond_2

    .line 134
    const/16 v2, 0x80

    if-ge p1, v2, :cond_1

    .line 136
    invoke-virtual {p0, p1, p2}, Lorg/jcodings/specific/BaseEUCJPEncoding;->isCodeCTypeInternal(II)Z

    move-result v0

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    invoke-static {p2}, Lorg/jcodings/specific/BaseEUCJPEncoding;->isWordGraphPrint(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 139
    invoke-virtual {p0, p1}, Lorg/jcodings/specific/BaseEUCJPEncoding;->codeToMbcLength(I)I

    move-result v2

    if-gt v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 143
    :cond_2
    add-int/lit8 p2, p2, -0xf

    .line 144
    sget-object v0, Lorg/jcodings/specific/BaseEUCJPEncoding;->PropertyList:[[I

    array-length v0, v0

    if-lt p2, v0, :cond_3

    new-instance v0, Lorg/jcodings/exception/InternalException;

    const-string v1, "undefined type (bug)"

    invoke-direct {v0, v1}, Lorg/jcodings/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_3
    sget-object v0, Lorg/jcodings/specific/BaseEUCJPEncoding;->PropertyList:[[I

    aget-object v0, v0, p2

    invoke-static {v0, p1}, Lorg/jcodings/CodeRange;->isInCodeRange([II)Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v1

    .line 147
    goto :goto_0
.end method

.method protected isLead(I)Z
    .locals 2
    .param p1, "c"    # I

    .prologue
    .line 89
    add-int/lit16 v0, p1, -0xa1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x5d

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReverseMatchAllowed([BII)Z
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 94
    aget-byte v1, p1, p2

    and-int/lit16 v0, v1, 0xff

    .line 95
    .local v0, "c":I
    const/16 v1, 0x7e

    if-le v0, v1, :cond_0

    const/16 v1, 0x8e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8f

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I
    .locals 8
    .param p1, "flag"    # I
    .param p2, "bytes"    # [B
    .param p3, "pp"    # Lorg/jcodings/IntHolder;
    .param p4, "end"    # I
    .param p5, "lower"    # [B

    .prologue
    .line 71
    iget v4, p3, Lorg/jcodings/IntHolder;->value:I

    .line 72
    .local v4, "p":I
    const/4 v2, 0x0

    .line 74
    .local v2, "lowerP":I
    aget-byte v6, p2, v4

    invoke-static {v6}, Lorg/jcodings/specific/BaseEUCJPEncoding;->isMbcAscii(B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 75
    sget-object v6, Lorg/jcodings/ascii/AsciiTables;->ToLowerCaseTable:[B

    aget-byte v7, p2, v4

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    aput-byte v6, p5, v2

    .line 76
    iget v6, p3, Lorg/jcodings/IntHolder;->value:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p3, Lorg/jcodings/IntHolder;->value:I

    .line 77
    const/4 v1, 0x1

    .line 84
    :goto_0
    return v1

    .line 79
    :cond_0
    invoke-virtual {p0, p2, v4, p4}, Lorg/jcodings/specific/BaseEUCJPEncoding;->length([BII)I

    move-result v1

    .line 80
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

    .line 81
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "lowerP":I
    .restart local v2    # "lowerP":I
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "p":I
    .restart local v4    # "p":I
    aget-byte v6, p2, v5

    aput-byte v6, p5, v3

    .line 80
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2    # "lowerP":I
    .restart local v3    # "lowerP":I
    move v5, v4

    .end local v4    # "p":I
    .restart local v5    # "p":I
    goto :goto_1

    .line 83
    :cond_1
    iget v6, p3, Lorg/jcodings/IntHolder;->value:I

    add-int/2addr v6, v1

    iput v6, p3, Lorg/jcodings/IntHolder;->value:I

    move v2, v3

    .end local v3    # "lowerP":I
    .restart local v2    # "lowerP":I
    move v4, v5

    .line 84
    .end local v5    # "p":I
    .restart local v4    # "p":I
    goto :goto_0
.end method

.method public mbcToCode([BII)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lorg/jcodings/specific/BaseEUCJPEncoding;->mbnMbcToCode([BII)I

    move-result v0

    return v0
.end method

.method public propertyNameToCType([BII)I
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 125
    sget-object v1, Lorg/jcodings/specific/BaseEUCJPEncoding;->CTypeNameHash:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    invoke-virtual {v1, p1, p2, p3}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([BII)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, "ctype":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 126
    invoke-super {p0, p1, p2, p3}, Lorg/jcodings/EucEncoding;->propertyNameToCType([BII)I

    move-result v1

    .line 128
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method
