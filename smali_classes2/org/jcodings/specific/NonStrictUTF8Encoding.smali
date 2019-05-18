.class public final Lorg/jcodings/specific/NonStrictUTF8Encoding;
.super Lorg/jcodings/specific/BaseUTF8Encoding;
.source "NonStrictUTF8Encoding.java"


# static fields
.field public static final INSTANCE:Lorg/jcodings/specific/NonStrictUTF8Encoding;

.field private static final UTF8EncLen:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jcodings/specific/NonStrictUTF8Encoding;->UTF8EncLen:[I

    .line 53
    new-instance v0, Lorg/jcodings/specific/NonStrictUTF8Encoding;

    invoke-direct {v0}, Lorg/jcodings/specific/NonStrictUTF8Encoding;-><init>()V

    sput-object v0, Lorg/jcodings/specific/NonStrictUTF8Encoding;->INSTANCE:Lorg/jcodings/specific/NonStrictUTF8Encoding;

    return-void

    .line 34
    nop

    :array_0
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
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
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
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x6
        0x6
        0x1
        0x1
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lorg/jcodings/specific/NonStrictUTF8Encoding;->UTF8EncLen:[I

    sget-object v1, Lorg/jcodings/specific/UTF8Encoding;->UTF8Trans:[[I

    invoke-direct {p0, v0, v1}, Lorg/jcodings/specific/BaseUTF8Encoding;-><init>([I[[I)V

    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic codeToMbc(I[BI)I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3}, Lorg/jcodings/specific/BaseUTF8Encoding;->codeToMbc(I[BI)I

    move-result v0

    return v0
.end method

.method public bridge synthetic codeToMbcLength(I)I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1}, Lorg/jcodings/specific/BaseUTF8Encoding;->codeToMbcLength(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic ctypeCodeRange(ILorg/jcodings/IntHolder;)[I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lorg/jcodings/specific/BaseUTF8Encoding;->ctypeCodeRange(ILorg/jcodings/IntHolder;)[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCharsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lorg/jcodings/specific/BaseUTF8Encoding;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCodeCType(II)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "ctype"    # I

    .prologue
    .line 57
    if-ltz p1, :cond_0

    invoke-super {p0, p1, p2}, Lorg/jcodings/specific/BaseUTF8Encoding;->isCodeCType(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic isNewLine([BII)Z
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3}, Lorg/jcodings/specific/BaseUTF8Encoding;->isNewLine([BII)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isReverseMatchAllowed([BII)Z
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3}, Lorg/jcodings/specific/BaseUTF8Encoding;->isReverseMatchAllowed([BII)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic leftAdjustCharHead([BIII)I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3, p4}, Lorg/jcodings/specific/BaseUTF8Encoding;->leftAdjustCharHead([BIII)I

    move-result v0

    return v0
.end method

.method public length([BII)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lorg/jcodings/specific/NonStrictUTF8Encoding;->safeLengthForUptoFour([BII)I

    move-result v0

    .line 31
    .local v0, "len":I
    if-gez v0, :cond_0

    const/4 v0, 0x1

    .end local v0    # "len":I
    :cond_0
    return v0
.end method

.method public bridge synthetic mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I
    .locals 1

    .prologue
    .line 22
    invoke-super/range {p0 .. p5}, Lorg/jcodings/specific/BaseUTF8Encoding;->mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I

    move-result v0

    return v0
.end method

.method public bridge synthetic mbcToCode([BII)I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3}, Lorg/jcodings/specific/BaseUTF8Encoding;->mbcToCode([BII)I

    move-result v0

    return v0
.end method
