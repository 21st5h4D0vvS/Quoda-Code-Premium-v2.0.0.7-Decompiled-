.class abstract Lorg/joni/ScannerSupport;
.super Lorg/jcodings/IntHolder;
.source "ScannerSupport.java"

# interfaces
.implements Lorg/joni/exception/ErrorMessages;


# instance fields
.field private final INT_SIGN_BIT:I

.field protected _p:I

.field private final begin:I

.field protected final bytes:[B

.field protected c:I

.field protected final enc:Lorg/jcodings/Encoding;

.field private final end:I

.field private lastFetched:I

.field protected p:I

.field protected stop:I


# direct methods
.method protected constructor <init>(Lorg/jcodings/Encoding;[BII)V
    .locals 1
    .param p1, "enc"    # Lorg/jcodings/Encoding;
    .param p2, "bytes"    # [B
    .param p3, "p"    # I
    .param p4, "end"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/jcodings/IntHolder;-><init>()V

    .line 60
    const/high16 v0, -0x80000000

    iput v0, p0, Lorg/joni/ScannerSupport;->INT_SIGN_BIT:I

    .line 43
    iput-object p1, p0, Lorg/joni/ScannerSupport;->enc:Lorg/jcodings/Encoding;

    .line 45
    iput-object p2, p0, Lorg/joni/ScannerSupport;->bytes:[B

    .line 46
    iput p3, p0, Lorg/joni/ScannerSupport;->begin:I

    .line 47
    iput p4, p0, Lorg/joni/ScannerSupport;->end:I

    .line 49
    invoke-virtual {p0}, Lorg/joni/ScannerSupport;->reset()V

    .line 50
    return-void
.end method


# virtual methods
.method protected final fetch()V
    .locals 5

    .prologue
    .line 137
    iget-object v0, p0, Lorg/joni/ScannerSupport;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ScannerSupport;->bytes:[B

    iget v2, p0, Lorg/joni/ScannerSupport;->p:I

    iget v3, p0, Lorg/joni/ScannerSupport;->stop:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/Encoding;->mbcToCode([BII)I

    move-result v0

    iput v0, p0, Lorg/joni/ScannerSupport;->c:I

    .line 138
    iget v0, p0, Lorg/joni/ScannerSupport;->p:I

    iput v0, p0, Lorg/joni/ScannerSupport;->lastFetched:I

    .line 139
    iget v0, p0, Lorg/joni/ScannerSupport;->p:I

    iget-object v1, p0, Lorg/joni/ScannerSupport;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/ScannerSupport;->bytes:[B

    iget v3, p0, Lorg/joni/ScannerSupport;->p:I

    iget v4, p0, Lorg/joni/ScannerSupport;->stop:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/joni/ScannerSupport;->p:I

    .line 140
    return-void
.end method

.method protected fetchTo()I
    .locals 6

    .prologue
    .line 143
    iget-object v1, p0, Lorg/joni/ScannerSupport;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/ScannerSupport;->bytes:[B

    iget v3, p0, Lorg/joni/ScannerSupport;->p:I

    iget v4, p0, Lorg/joni/ScannerSupport;->stop:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/jcodings/Encoding;->mbcToCode([BII)I

    move-result v0

    .line 144
    .local v0, "to":I
    iget v1, p0, Lorg/joni/ScannerSupport;->p:I

    iput v1, p0, Lorg/joni/ScannerSupport;->lastFetched:I

    .line 145
    iget v1, p0, Lorg/joni/ScannerSupport;->p:I

    iget-object v2, p0, Lorg/joni/ScannerSupport;->enc:Lorg/jcodings/Encoding;

    iget-object v3, p0, Lorg/joni/ScannerSupport;->bytes:[B

    iget v4, p0, Lorg/joni/ScannerSupport;->p:I

    iget v5, p0, Lorg/joni/ScannerSupport;->stop:I

    invoke-virtual {v2, v3, v4, v5}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/joni/ScannerSupport;->p:I

    .line 146
    return v0
.end method

.method protected getBegin()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/joni/ScannerSupport;->begin:I

    return v0
.end method

.method protected getEnd()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/joni/ScannerSupport;->end:I

    return v0
.end method

.method protected final inc()V
    .locals 5

    .prologue
    .line 132
    iget v0, p0, Lorg/joni/ScannerSupport;->p:I

    iput v0, p0, Lorg/joni/ScannerSupport;->lastFetched:I

    .line 133
    iget v0, p0, Lorg/joni/ScannerSupport;->p:I

    iget-object v1, p0, Lorg/joni/ScannerSupport;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/ScannerSupport;->bytes:[B

    iget v3, p0, Lorg/joni/ScannerSupport;->p:I

    iget v4, p0, Lorg/joni/ScannerSupport;->stop:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/joni/ScannerSupport;->p:I

    .line 134
    return-void
.end method

.method protected final left()Z
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Lorg/joni/ScannerSupport;->p:I

    iget v1, p0, Lorg/joni/ScannerSupport;->stop:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final mark()V
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lorg/joni/ScannerSupport;->p:I

    iput v0, p0, Lorg/joni/ScannerSupport;->_p:I

    .line 125
    return-void
.end method

.method protected newInternalException(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 182
    new-instance v0, Lorg/joni/exception/InternalException;

    invoke-direct {v0, p1}, Lorg/joni/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected newSyntaxException(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v0, Lorg/joni/exception/SyntaxException;

    invoke-direct {v0, p1}, Lorg/joni/exception/SyntaxException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected newValueException(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Lorg/joni/exception/ValueException;

    invoke-direct {v0, p1}, Lorg/joni/exception/ValueException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected newValueException(Ljava/lang/String;II)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 178
    new-instance v0, Lorg/joni/exception/ValueException;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/joni/ScannerSupport;->bytes:[B

    sub-int v3, p3, p2

    invoke-direct {v1, v2, p2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {v0, p1, v1}, Lorg/joni/exception/ValueException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method protected newValueException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v0, Lorg/joni/exception/ValueException;

    invoke-direct {v0, p1, p2}, Lorg/joni/exception/ValueException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method protected final peek()I
    .locals 4

    .prologue
    .line 154
    iget v0, p0, Lorg/joni/ScannerSupport;->p:I

    iget v1, p0, Lorg/joni/ScannerSupport;->stop:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/joni/ScannerSupport;->enc:Lorg/jcodings/Encoding;

    iget-object v1, p0, Lorg/joni/ScannerSupport;->bytes:[B

    iget v2, p0, Lorg/joni/ScannerSupport;->p:I

    iget v3, p0, Lorg/joni/ScannerSupport;->stop:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/jcodings/Encoding;->mbcToCode([BII)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final peekIs(I)Z
    .locals 1
    .param p1, "c"    # I

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/joni/ScannerSupport;->peek()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final reset()V
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lorg/joni/ScannerSupport;->begin:I

    iput v0, p0, Lorg/joni/ScannerSupport;->p:I

    .line 120
    iget v0, p0, Lorg/joni/ScannerSupport;->end:I

    iput v0, p0, Lorg/joni/ScannerSupport;->stop:I

    .line 121
    return-void
.end method

.method protected final restore()V
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/joni/ScannerSupport;->_p:I

    iput v0, p0, Lorg/joni/ScannerSupport;->p:I

    .line 129
    return-void
.end method

.method protected final scanUnsignedHexadecimalNumber(I)I
    .locals 7
    .param p1, "maxLength"    # I

    .prologue
    .line 81
    iget v0, p0, Lorg/joni/ScannerSupport;->c:I

    .line 82
    .local v0, "last":I
    const/4 v2, 0x0

    .line 83
    .local v2, "num":I
    :goto_0
    invoke-virtual {p0}, Lorg/joni/ScannerSupport;->left()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v1, p1, -0x1

    .end local p1    # "maxLength":I
    .local v1, "maxLength":I
    if-eqz p1, :cond_3

    .line 84
    invoke-virtual {p0}, Lorg/joni/ScannerSupport;->fetch()V

    .line 85
    iget-object v5, p0, Lorg/joni/ScannerSupport;->enc:Lorg/jcodings/Encoding;

    iget v6, p0, Lorg/joni/ScannerSupport;->c:I

    invoke-virtual {v5, v6}, Lorg/jcodings/Encoding;->isXDigit(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    move v3, v2

    .line 87
    .local v3, "onum":I
    iget-object v5, p0, Lorg/joni/ScannerSupport;->enc:Lorg/jcodings/Encoding;

    iget v6, p0, Lorg/joni/ScannerSupport;->c:I

    invoke-virtual {v5, v6}, Lorg/jcodings/Encoding;->xdigitVal(I)I

    move-result v4

    .line 88
    .local v4, "val":I
    shl-int/lit8 v5, v2, 0x4

    add-int v2, v5, v4

    .line 89
    xor-int v5, v3, v2

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    const/4 v5, -0x1

    move p1, v1

    .line 96
    .end local v1    # "maxLength":I
    .end local v3    # "onum":I
    .end local v4    # "val":I
    .restart local p1    # "maxLength":I
    :goto_1
    return v5

    .end local p1    # "maxLength":I
    .restart local v1    # "maxLength":I
    .restart local v3    # "onum":I
    .restart local v4    # "val":I
    :cond_0
    move p1, v1

    .line 90
    .end local v1    # "maxLength":I
    .restart local p1    # "maxLength":I
    goto :goto_0

    .line 91
    .end local v3    # "onum":I
    .end local v4    # "val":I
    .end local p1    # "maxLength":I
    .restart local v1    # "maxLength":I
    :cond_1
    invoke-virtual {p0}, Lorg/joni/ScannerSupport;->unfetch()V

    move p1, v1

    .line 95
    .end local v1    # "maxLength":I
    .restart local p1    # "maxLength":I
    :cond_2
    :goto_2
    iput v0, p0, Lorg/joni/ScannerSupport;->c:I

    move v5, v2

    .line 96
    goto :goto_1

    .end local p1    # "maxLength":I
    .restart local v1    # "maxLength":I
    :cond_3
    move p1, v1

    .end local v1    # "maxLength":I
    .restart local p1    # "maxLength":I
    goto :goto_2
.end method

.method protected final scanUnsignedNumber()I
    .locals 5

    .prologue
    .line 63
    iget v0, p0, Lorg/joni/ScannerSupport;->c:I

    .line 64
    .local v0, "last":I
    const/4 v1, 0x0

    .line 65
    .local v1, "num":I
    :cond_0
    invoke-virtual {p0}, Lorg/joni/ScannerSupport;->left()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 66
    invoke-virtual {p0}, Lorg/joni/ScannerSupport;->fetch()V

    .line 67
    iget-object v3, p0, Lorg/joni/ScannerSupport;->enc:Lorg/jcodings/Encoding;

    iget v4, p0, Lorg/joni/ScannerSupport;->c:I

    invoke-virtual {v3, v4}, Lorg/jcodings/Encoding;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    move v2, v1

    .line 69
    .local v2, "onum":I
    mul-int/lit8 v3, v1, 0xa

    iget v4, p0, Lorg/joni/ScannerSupport;->c:I

    invoke-static {v4}, Lorg/jcodings/Encoding;->digitVal(I)I

    move-result v4

    add-int v1, v3, v4

    .line 70
    xor-int v3, v2, v1

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    .line 77
    .end local v2    # "onum":I
    :goto_0
    return v3

    .line 72
    :cond_1
    invoke-virtual {p0}, Lorg/joni/ScannerSupport;->unfetch()V

    .line 76
    :cond_2
    iput v0, p0, Lorg/joni/ScannerSupport;->c:I

    move v3, v1

    .line 77
    goto :goto_0
.end method

.method protected final scanUnsignedOctalNumber(I)I
    .locals 7
    .param p1, "maxLength"    # I

    .prologue
    .line 100
    iget v0, p0, Lorg/joni/ScannerSupport;->c:I

    .line 101
    .local v0, "last":I
    const/4 v2, 0x0

    .line 102
    .local v2, "num":I
    :goto_0
    invoke-virtual {p0}, Lorg/joni/ScannerSupport;->left()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v1, p1, -0x1

    .end local p1    # "maxLength":I
    .local v1, "maxLength":I
    if-eqz p1, :cond_3

    .line 103
    invoke-virtual {p0}, Lorg/joni/ScannerSupport;->fetch()V

    .line 104
    iget-object v5, p0, Lorg/joni/ScannerSupport;->enc:Lorg/jcodings/Encoding;

    iget v6, p0, Lorg/joni/ScannerSupport;->c:I

    invoke-virtual {v5, v6}, Lorg/jcodings/Encoding;->isDigit(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lorg/joni/ScannerSupport;->c:I

    const/16 v6, 0x38

    if-ge v5, v6, :cond_1

    .line 105
    move v3, v2

    .line 106
    .local v3, "onum":I
    iget v5, p0, Lorg/joni/ScannerSupport;->c:I

    invoke-static {v5}, Lorg/jcodings/Encoding;->odigitVal(I)I

    move-result v4

    .line 107
    .local v4, "val":I
    shl-int/lit8 v5, v2, 0x3

    add-int v2, v5, v4

    .line 108
    xor-int v5, v3, v2

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    const/4 v5, -0x1

    move p1, v1

    .line 115
    .end local v1    # "maxLength":I
    .end local v3    # "onum":I
    .end local v4    # "val":I
    .restart local p1    # "maxLength":I
    :goto_1
    return v5

    .end local p1    # "maxLength":I
    .restart local v1    # "maxLength":I
    .restart local v3    # "onum":I
    .restart local v4    # "val":I
    :cond_0
    move p1, v1

    .line 109
    .end local v1    # "maxLength":I
    .restart local p1    # "maxLength":I
    goto :goto_0

    .line 110
    .end local v3    # "onum":I
    .end local v4    # "val":I
    .end local p1    # "maxLength":I
    .restart local v1    # "maxLength":I
    :cond_1
    invoke-virtual {p0}, Lorg/joni/ScannerSupport;->unfetch()V

    move p1, v1

    .line 114
    .end local v1    # "maxLength":I
    .restart local p1    # "maxLength":I
    :cond_2
    :goto_2
    iput v0, p0, Lorg/joni/ScannerSupport;->c:I

    move v5, v2

    .line 115
    goto :goto_1

    .end local p1    # "maxLength":I
    .restart local v1    # "maxLength":I
    :cond_3
    move p1, v1

    .end local v1    # "maxLength":I
    .restart local p1    # "maxLength":I
    goto :goto_2
.end method

.method protected final unfetch()V
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lorg/joni/ScannerSupport;->lastFetched:I

    iput v0, p0, Lorg/joni/ScannerSupport;->p:I

    .line 151
    return-void
.end method
