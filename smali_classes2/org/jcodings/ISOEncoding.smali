.class public abstract Lorg/jcodings/ISOEncoding;
.super Lorg/jcodings/CaseFoldMapEncoding;
.source "ISOEncoding.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;[S[B[[I)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "CTypeTable"    # [S
    .param p3, "LowerCaseTable"    # [B
    .param p4, "CaseFoldMap"    # [[I

    .prologue
    .line 25
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/jcodings/ISOEncoding;-><init>(Ljava/lang/String;[S[B[[IZ)V

    .line 26
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[S[B[[IZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "CTypeTable"    # [S
    .param p3, "LowerCaseTable"    # [B
    .param p4, "CaseFoldMap"    # [[I
    .param p5, "foldFlag"    # Z

    .prologue
    .line 29
    invoke-direct/range {p0 .. p5}, Lorg/jcodings/CaseFoldMapEncoding;-><init>(Ljava/lang/String;[S[B[[IZ)V

    .line 30
    return-void
.end method


# virtual methods
.method public getCharsetName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/jcodings/ISOEncoding;->getName()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public isCodeCType(II)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "ctype"    # I

    .prologue
    .line 58
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/jcodings/ISOEncoding;->isCodeCTypeInternal(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I
    .locals 6
    .param p1, "flag"    # I
    .param p2, "bytes"    # [B
    .param p3, "pp"    # Lorg/jcodings/IntHolder;
    .param p4, "end"    # I
    .param p5, "lower"    # [B

    .prologue
    const/16 v5, 0x73

    .line 41
    iget v2, p3, Lorg/jcodings/IntHolder;->value:I

    .line 42
    .local v2, "p":I
    const/4 v0, 0x0

    .line 44
    .local v0, "lowerP":I
    aget-byte v3, p2, v2

    const/16 v4, -0x21

    if-ne v3, v4, :cond_0

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, p1

    if-eqz v3, :cond_0

    .line 45
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "lowerP":I
    .local v1, "lowerP":I
    aput-byte v5, p5, v0

    .line 46
    aput-byte v5, p5, v1

    .line 47
    iget v3, p3, Lorg/jcodings/IntHolder;->value:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p3, Lorg/jcodings/IntHolder;->value:I

    .line 48
    const/4 v3, 0x2

    move v0, v1

    .line 53
    .end local v1    # "lowerP":I
    .restart local v0    # "lowerP":I
    :goto_0
    return v3

    .line 51
    :cond_0
    iget-object v3, p0, Lorg/jcodings/ISOEncoding;->LowerCaseTable:[B

    aget-byte v4, p2, v2

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    aput-byte v3, p5, v0

    .line 52
    iget v3, p3, Lorg/jcodings/IntHolder;->value:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p3, Lorg/jcodings/IntHolder;->value:I

    .line 53
    const/4 v3, 0x1

    goto :goto_0
.end method
