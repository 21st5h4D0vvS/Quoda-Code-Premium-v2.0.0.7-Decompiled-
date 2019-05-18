.class abstract Lorg/jcodings/specific/BaseSJISEncoding;
.super Lorg/jcodings/CanBeTrailTableEncoding;
.source "BaseSJISEncoding.java"


# static fields
.field private static final CR_Hiragana:[I

.field private static final CR_Katakana:[I

.field private static final CTypeNameHash:Lorg/jcodings/util/BytesHash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jcodings/util/BytesHash",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PropertyList:[[I

.field static final SJIS_CAN_BE_TRAIL_TABLE:[Z

.field static final SjisEncLen:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x100

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jcodings/specific/BaseSJISEncoding;->CR_Hiragana:[I

    .line 78
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jcodings/specific/BaseSJISEncoding;->CR_Katakana:[I

    .line 86
    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    sget-object v2, Lorg/jcodings/specific/BaseSJISEncoding;->CR_Hiragana:[I

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/jcodings/specific/BaseSJISEncoding;->CR_Katakana:[I

    aput-object v2, v0, v1

    sput-object v0, Lorg/jcodings/specific/BaseSJISEncoding;->PropertyList:[[I

    .line 91
    new-instance v0, Lorg/jcodings/util/BytesHash;

    invoke-direct {v0}, Lorg/jcodings/util/BytesHash;-><init>()V

    sput-object v0, Lorg/jcodings/specific/BaseSJISEncoding;->CTypeNameHash:Lorg/jcodings/util/BytesHash;

    .line 94
    sget-object v0, Lorg/jcodings/specific/BaseSJISEncoding;->CTypeNameHash:Lorg/jcodings/util/BytesHash;

    const-string v1, "Hiragana"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jcodings/util/BytesHash;->put([BLjava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/jcodings/specific/BaseSJISEncoding;->CTypeNameHash:Lorg/jcodings/util/BytesHash;

    const-string v1, "Katakana"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jcodings/util/BytesHash;->put([BLjava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-array v0, v3, [Z

    fill-array-data v0, :array_2

    sput-object v0, Lorg/jcodings/specific/BaseSJISEncoding;->SJIS_CAN_BE_TRAIL_TABLE:[Z

    .line 163
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/jcodings/specific/BaseSJISEncoding;->SjisEncLen:[I

    return-void

    .line 73
    :array_0
    .array-data 4
        0x1
        0x829f
        0x82f1
    .end array-data

    .line 78
    :array_1
    .array-data 4
        0x4
        0xa6
        0xaf
        0xb1
        0xdd
        0x8340
        0x837e
        0x8380
        0x8396
    .end array-data

    .line 144
    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 163
    :array_3
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
        0x1
        0x1
    .end array-data
.end method

.method protected constructor <init>([[I)V
    .locals 8
    .param p1, "Trans"    # [[I

    .prologue
    .line 36
    const-string v1, "Shift_JIS"

    const/4 v2, 0x1

    const/4 v3, 0x2

    sget-object v4, Lorg/jcodings/specific/BaseSJISEncoding;->SjisEncLen:[I

    sget-object v6, Lorg/jcodings/ascii/AsciiTables;->AsciiCtypeTable:[S

    sget-object v7, Lorg/jcodings/specific/BaseSJISEncoding;->SJIS_CAN_BE_TRAIL_TABLE:[Z

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lorg/jcodings/CanBeTrailTableEncoding;-><init>(Ljava/lang/String;II[I[[I[S[Z)V

    .line 37
    return-void
.end method


# virtual methods
.method public codeToMbc(I[BI)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "bytes"    # [B
    .param p3, "p"    # I

    .prologue
    .line 62
    move v0, p3

    .line 63
    .local v0, "p_":I
    const v2, 0xff00

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .local v1, "p_":I
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    move v0, v1

    .line 64
    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .restart local v1    # "p_":I
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 65
    sub-int v2, v1, p3

    return v2
.end method

.method public codeToMbcLength(I)I
    .locals 2
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x1

    .line 51
    const/16 v1, 0x100

    if-ge p1, v1, :cond_1

    .line 52
    sget-object v1, Lorg/jcodings/specific/BaseSJISEncoding;->SjisEncLen:[I

    aget v1, v1, p1

    if-ne v1, v0, :cond_0

    .line 54
    :goto_0
    return v0

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :cond_1
    const v0, 0xffff

    if-gt p1, v0, :cond_2

    .line 54
    const/4 v0, 0x2

    goto :goto_0

    .line 56
    :cond_2
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
    .line 133
    const/16 v0, 0xe

    if-gt p1, v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    .line 136
    :cond_0
    const/16 v0, 0x80

    iput v0, p2, Lorg/jcodings/IntHolder;->value:I

    .line 138
    add-int/lit8 p1, p1, -0xf

    .line 139
    sget-object v0, Lorg/jcodings/specific/BaseSJISEncoding;->PropertyList:[[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    new-instance v0, Lorg/jcodings/exception/InternalException;

    const-string v1, "undefined type (bug)"

    invoke-direct {v0, v1}, Lorg/jcodings/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    sget-object v0, Lorg/jcodings/specific/BaseSJISEncoding;->PropertyList:[[I

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "windows-31j"

    return-object v0
.end method

.method public isCodeCType(II)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "ctype"    # I

    .prologue
    .line 110
    const/16 v0, 0xe

    if-gt p2, v0, :cond_1

    .line 111
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    .line 113
    invoke-virtual {p0, p1, p2}, Lorg/jcodings/specific/BaseSJISEncoding;->isCodeCTypeInternal(II)Z

    move-result v0

    .line 128
    :goto_0
    return v0

    .line 115
    :cond_0
    invoke-static {p2}, Lorg/jcodings/specific/BaseSJISEncoding;->isWordGraphPrint(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    const/4 v0, 0x1

    goto :goto_0

    .line 124
    :cond_1
    add-int/lit8 p2, p2, -0xf

    .line 125
    sget-object v0, Lorg/jcodings/specific/BaseSJISEncoding;->PropertyList:[[I

    array-length v0, v0

    if-lt p2, v0, :cond_2

    new-instance v0, Lorg/jcodings/exception/InternalException;

    const-string v1, "undefined type (bug)"

    invoke-direct {v0, v1}, Lorg/jcodings/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_2
    sget-object v0, Lorg/jcodings/specific/BaseSJISEncoding;->PropertyList:[[I

    aget-object v0, v0, p2

    invoke-static {v0, p1}, Lorg/jcodings/CodeRange;->isInCodeRange([II)Z

    move-result v0

    goto :goto_0

    .line 128
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I
    .locals 1
    .param p1, "flag"    # I
    .param p2, "bytes"    # [B
    .param p3, "pp"    # Lorg/jcodings/IntHolder;
    .param p4, "end"    # I
    .param p5, "lower"    # [B

    .prologue
    .line 70
    invoke-virtual/range {p0 .. p5}, Lorg/jcodings/specific/BaseSJISEncoding;->mbnMbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I

    move-result v0

    return v0
.end method

.method public mbcToCode([BII)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1, p2, p3}, Lorg/jcodings/specific/BaseSJISEncoding;->mbnMbcToCode([BII)I

    move-result v0

    return v0
.end method

.method public propertyNameToCType([BII)I
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 101
    sget-object v1, Lorg/jcodings/specific/BaseSJISEncoding;->CTypeNameHash:Lorg/jcodings/util/BytesHash;

    invoke-virtual {v1, p1, p2, p3}, Lorg/jcodings/util/BytesHash;->get([BII)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, "ctype":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 102
    invoke-super {p0, p1, p2, p3}, Lorg/jcodings/CanBeTrailTableEncoding;->propertyNameToCType([BII)I

    move-result v1

    .line 104
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method
