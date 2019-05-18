.class public final Lorg/jcodings/specific/NonStrictSJISEncoding;
.super Lorg/jcodings/specific/BaseSJISEncoding;
.source "NonStrictSJISEncoding.java"


# static fields
.field public static final INSTANCE:Lorg/jcodings/specific/NonStrictSJISEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/jcodings/specific/NonStrictSJISEncoding;

    invoke-direct {v0}, Lorg/jcodings/specific/NonStrictSJISEncoding;-><init>()V

    sput-object v0, Lorg/jcodings/specific/NonStrictSJISEncoding;->INSTANCE:Lorg/jcodings/specific/NonStrictSJISEncoding;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    check-cast v0, [[I

    invoke-direct {p0, v0}, Lorg/jcodings/specific/BaseSJISEncoding;-><init>([[I)V

    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic codeToMbc(I[BI)I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3}, Lorg/jcodings/specific/BaseSJISEncoding;->codeToMbc(I[BI)I

    move-result v0

    return v0
.end method

.method public bridge synthetic codeToMbcLength(I)I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1}, Lorg/jcodings/specific/BaseSJISEncoding;->codeToMbcLength(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic ctypeCodeRange(ILorg/jcodings/IntHolder;)[I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lorg/jcodings/specific/BaseSJISEncoding;->ctypeCodeRange(ILorg/jcodings/IntHolder;)[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCharsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lorg/jcodings/specific/BaseSJISEncoding;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isCodeCType(II)Z
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lorg/jcodings/specific/BaseSJISEncoding;->isCodeCType(II)Z

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
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/jcodings/specific/NonStrictSJISEncoding;->length(B)I

    move-result v0

    return v0
.end method

.method public bridge synthetic mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I
    .locals 1

    .prologue
    .line 22
    invoke-super/range {p0 .. p5}, Lorg/jcodings/specific/BaseSJISEncoding;->mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I

    move-result v0

    return v0
.end method

.method public bridge synthetic mbcToCode([BII)I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3}, Lorg/jcodings/specific/BaseSJISEncoding;->mbcToCode([BII)I

    move-result v0

    return v0
.end method

.method public bridge synthetic propertyNameToCType([BII)I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3}, Lorg/jcodings/specific/BaseSJISEncoding;->propertyNameToCType([BII)I

    move-result v0

    return v0
.end method
