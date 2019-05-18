.class public final Lorg/jcodings/specific/NonStrictEUCJPEncoding;
.super Lorg/jcodings/specific/BaseEUCJPEncoding;
.source "NonStrictEUCJPEncoding.java"


# static fields
.field public static final INSTANCE:Lorg/jcodings/specific/NonStrictEUCJPEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/jcodings/specific/NonStrictEUCJPEncoding;

    invoke-direct {v0}, Lorg/jcodings/specific/NonStrictEUCJPEncoding;-><init>()V

    sput-object v0, Lorg/jcodings/specific/NonStrictEUCJPEncoding;->INSTANCE:Lorg/jcodings/specific/NonStrictEUCJPEncoding;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    check-cast v0, [[I

    invoke-direct {p0, v0}, Lorg/jcodings/specific/BaseEUCJPEncoding;-><init>([[I)V

    .line 26
    return-void
.end method


# virtual methods
.method public bridge synthetic codeToMbc(I[BI)I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3}, Lorg/jcodings/specific/BaseEUCJPEncoding;->codeToMbc(I[BI)I

    move-result v0

    return v0
.end method

.method public bridge synthetic codeToMbcLength(I)I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1}, Lorg/jcodings/specific/BaseEUCJPEncoding;->codeToMbcLength(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic ctypeCodeRange(ILorg/jcodings/IntHolder;)[I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lorg/jcodings/specific/BaseEUCJPEncoding;->ctypeCodeRange(ILorg/jcodings/IntHolder;)[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isCodeCType(II)Z
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1, p2}, Lorg/jcodings/specific/BaseEUCJPEncoding;->isCodeCType(II)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isReverseMatchAllowed([BII)Z
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3}, Lorg/jcodings/specific/BaseEUCJPEncoding;->isReverseMatchAllowed([BII)Z

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

    invoke-virtual {p0, v0}, Lorg/jcodings/specific/NonStrictEUCJPEncoding;->length(B)I

    move-result v0

    return v0
.end method

.method public bridge synthetic mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I
    .locals 1

    .prologue
    .line 22
    invoke-super/range {p0 .. p5}, Lorg/jcodings/specific/BaseEUCJPEncoding;->mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I

    move-result v0

    return v0
.end method

.method public bridge synthetic mbcToCode([BII)I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3}, Lorg/jcodings/specific/BaseEUCJPEncoding;->mbcToCode([BII)I

    move-result v0

    return v0
.end method

.method public bridge synthetic propertyNameToCType([BII)I
    .locals 1

    .prologue
    .line 22
    invoke-super {p0, p1, p2, p3}, Lorg/jcodings/specific/BaseEUCJPEncoding;->propertyNameToCType([BII)I

    move-result v0

    return v0
.end method
