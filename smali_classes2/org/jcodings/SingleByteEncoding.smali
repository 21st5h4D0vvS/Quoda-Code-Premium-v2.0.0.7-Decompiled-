.class public abstract Lorg/jcodings/SingleByteEncoding;
.super Lorg/jcodings/AbstractEncoding;
.source "SingleByteEncoding.java"


# instance fields
.field protected final LowerCaseTable:[B

.field protected codeSize:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;[S[B)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "CTypeTable"    # [S
    .param p3, "LowerCaseTable"    # [B

    .prologue
    const/4 v0, 0x1

    .line 31
    invoke-direct {p0, p1, v0, v0, p2}, Lorg/jcodings/AbstractEncoding;-><init>(Ljava/lang/String;II[S)V

    .line 28
    const/16 v0, 0xff

    iput v0, p0, Lorg/jcodings/SingleByteEncoding;->codeSize:I

    .line 32
    iput-object p3, p0, Lorg/jcodings/SingleByteEncoding;->LowerCaseTable:[B

    .line 33
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[S[BZ)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "CTypeTable"    # [S
    .param p3, "LowerCaseTable"    # [B
    .param p4, "isDummy"    # Z

    .prologue
    const/4 v2, 0x1

    .line 36
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/jcodings/AbstractEncoding;-><init>(Ljava/lang/String;II[SZ)V

    .line 28
    const/16 v0, 0xff

    iput v0, p0, Lorg/jcodings/SingleByteEncoding;->codeSize:I

    .line 37
    iput-object p3, p0, Lorg/jcodings/SingleByteEncoding;->LowerCaseTable:[B

    .line 38
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[S[BZI)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "CTypeTable"    # [S
    .param p3, "LowerCaseTable"    # [B
    .param p4, "isDummy"    # Z
    .param p5, "codeSize"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jcodings/SingleByteEncoding;-><init>(Ljava/lang/String;[S[BZ)V

    .line 42
    iput p5, p0, Lorg/jcodings/SingleByteEncoding;->codeSize:I

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic applyAllCaseFold(ILorg/jcodings/ApplyAllCaseFoldFunction;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3}, Lorg/jcodings/AbstractEncoding;->applyAllCaseFold(ILorg/jcodings/ApplyAllCaseFoldFunction;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic caseFoldCodesByString(I[BII)[Lorg/jcodings/CaseFoldCodeItem;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jcodings/AbstractEncoding;->caseFoldCodesByString(I[BII)[Lorg/jcodings/CaseFoldCodeItem;

    move-result-object v0

    return-object v0
.end method

.method public final codeToMbc(I[BI)I
    .locals 2
    .param p1, "code"    # I
    .param p2, "bytes"    # [B
    .param p3, "p"    # I

    .prologue
    .line 91
    iget v0, p0, Lorg/jcodings/SingleByteEncoding;->codeSize:I

    if-le p1, v0, :cond_0

    new-instance v0, Lorg/jcodings/exception/EncodingException;

    const-string v1, "out of range char"

    invoke-direct {v0, v1}, Lorg/jcodings/exception/EncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public codeToMbcLength(I)I
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public final ctypeCodeRange(ILorg/jcodings/IntHolder;)[I
    .locals 1
    .param p1, "ctype"    # I
    .param p2, "sbOut"    # Lorg/jcodings/IntHolder;

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic isNewLine([BII)Z
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3}, Lorg/jcodings/AbstractEncoding;->isNewLine([BII)Z

    move-result v0

    return v0
.end method

.method public final isReverseMatchAllowed([BII)Z
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public final leftAdjustCharHead([BIII)I
    .locals 0
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "s"    # I
    .param p4, "end"    # I

    .prologue
    .line 108
    return p3
.end method

.method public length(B)I
    .locals 1
    .param p1, "c"    # B

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public length([BII)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I
    .locals 1

    .prologue
    .line 25
    invoke-super/range {p0 .. p5}, Lorg/jcodings/AbstractEncoding;->mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I

    move-result v0

    return v0
.end method

.method public mbcToCode([BII)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 72
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public bridge synthetic propertyNameToCType([BII)I
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1, p2, p3}, Lorg/jcodings/AbstractEncoding;->propertyNameToCType([BII)I

    move-result v0

    return v0
.end method

.method public strCodeAt([BIII)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .param p4, "index"    # I

    .prologue
    .line 64
    aget-byte v0, p1, p4

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final strLength([BII)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 59
    sub-int v0, p3, p2

    return v0
.end method
