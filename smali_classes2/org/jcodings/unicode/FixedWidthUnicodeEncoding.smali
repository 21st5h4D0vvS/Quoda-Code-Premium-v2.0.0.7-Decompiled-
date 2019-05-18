.class public abstract Lorg/jcodings/unicode/FixedWidthUnicodeEncoding;
.super Lorg/jcodings/unicode/UnicodeEncoding;
.source "FixedWidthUnicodeEncoding.java"


# instance fields
.field protected final shift:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # I

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p2, v0}, Lorg/jcodings/unicode/UnicodeEncoding;-><init>(Ljava/lang/String;II[I)V

    .line 29
    invoke-static {p2}, Lorg/jcodings/unicode/FixedWidthUnicodeEncoding;->log2(I)I

    move-result v0

    iput v0, p0, Lorg/jcodings/unicode/FixedWidthUnicodeEncoding;->shift:I

    .line 30
    return-void
.end method

.method private static log2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "log":I
    :goto_0
    ushr-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return v0
.end method


# virtual methods
.method public final codeToMbcLength(I)I
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 54
    iget v0, p0, Lorg/jcodings/unicode/FixedWidthUnicodeEncoding;->minLength:I

    return v0
.end method

.method public final ctypeCodeRange(ILorg/jcodings/IntHolder;)[I
    .locals 1
    .param p1, "ctype"    # I
    .param p2, "sbOut"    # Lorg/jcodings/IntHolder;

    .prologue
    .line 61
    const/4 v0, 0x0

    iput v0, p2, Lorg/jcodings/IntHolder;->value:I

    .line 62
    invoke-super {p0, p1}, Lorg/jcodings/unicode/UnicodeEncoding;->ctypeCodeRange(I)[I

    move-result-object v0

    return-object v0
.end method

.method public final isReverseMatchAllowed([BII)Z
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public final leftAdjustCharHead([BIII)I
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "s"    # I
    .param p4, "end"    # I

    .prologue
    .line 67
    if-gt p3, p2, :cond_0

    .line 68
    .end local p3    # "s":I
    :goto_0
    return p3

    .restart local p3    # "s":I
    :cond_0
    sub-int v0, p3, p2

    iget v1, p0, Lorg/jcodings/unicode/FixedWidthUnicodeEncoding;->maxLength:I

    rem-int/2addr v0, v1

    sub-int/2addr p3, v0

    goto :goto_0
.end method

.method public final length(B)I
    .locals 1
    .param p1, "c"    # B

    .prologue
    .line 34
    iget v0, p0, Lorg/jcodings/unicode/FixedWidthUnicodeEncoding;->minLength:I

    return v0
.end method

.method public final length([BII)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 39
    iget v0, p0, Lorg/jcodings/unicode/FixedWidthUnicodeEncoding;->minLength:I

    return v0
.end method

.method public final strCodeAt([BIII)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .param p4, "index"    # I

    .prologue
    .line 49
    iget v0, p0, Lorg/jcodings/unicode/FixedWidthUnicodeEncoding;->shift:I

    shl-int v0, p4, v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0, p3}, Lorg/jcodings/unicode/FixedWidthUnicodeEncoding;->mbcToCode([BII)I

    move-result v0

    return v0
.end method

.method public final strLength([BII)I
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 44
    sub-int v0, p3, p2

    iget v1, p0, Lorg/jcodings/unicode/FixedWidthUnicodeEncoding;->shift:I

    ushr-int/2addr v0, v1

    return v0
.end method
