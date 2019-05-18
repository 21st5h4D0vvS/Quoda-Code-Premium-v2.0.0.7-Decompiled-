.class public abstract Lorg/jcodings/EucEncoding;
.super Lorg/jcodings/MultiByteEncoding;
.source "EucEncoding.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;II[I[[I[S)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "EncLen"    # [I
    .param p5, "Trans"    # [[I
    .param p6, "CTypeTable"    # [S

    .prologue
    .line 25
    invoke-direct/range {p0 .. p6}, Lorg/jcodings/MultiByteEncoding;-><init>(Ljava/lang/String;II[I[[I[S)V

    .line 26
    return-void
.end method


# virtual methods
.method protected abstract isLead(I)Z
.end method

.method public leftAdjustCharHead([BIII)I
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "s"    # I
    .param p4, "end"    # I

    .prologue
    .line 33
    if-gt p3, p2, :cond_0

    .line 43
    .end local p3    # "s":I
    :goto_0
    return p3

    .line 34
    .restart local p3    # "s":I
    :cond_0
    move v1, p3

    .line 36
    .local v1, "p_":I
    :goto_1
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v2}, Lorg/jcodings/EucEncoding;->isLead(I)Z

    move-result v2

    if-nez v2, :cond_1

    if-le v1, p2, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p0, p1, v1, p4}, Lorg/jcodings/EucEncoding;->length([BII)I

    move-result v0

    .line 40
    .local v0, "len":I
    add-int v2, v1, v0

    if-le v2, p3, :cond_2

    move p3, v1

    goto :goto_0

    .line 42
    :cond_2
    add-int/2addr v1, v0

    .line 43
    sub-int v2, p3, v1

    and-int/lit8 v2, v2, -0x2

    add-int p3, v1, v2

    goto :goto_0
.end method
