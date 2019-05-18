.class public abstract Lorg/jcodings/CanBeTrailTableEncoding;
.super Lorg/jcodings/MultiByteEncoding;
.source "CanBeTrailTableEncoding.java"


# instance fields
.field protected final CanBeTrailTable:[Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;II[I[[I[S[Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "EncLen"    # [I
    .param p5, "Trans"    # [[I
    .param p6, "CTypeTable"    # [S
    .param p7, "CanBeTrailTable"    # [Z

    .prologue
    .line 27
    invoke-direct/range {p0 .. p6}, Lorg/jcodings/MultiByteEncoding;-><init>(Ljava/lang/String;II[I[[I[S)V

    .line 28
    iput-object p7, p0, Lorg/jcodings/CanBeTrailTableEncoding;->CanBeTrailTable:[Z

    .line 29
    return-void
.end method


# virtual methods
.method public isReverseMatchAllowed([BII)Z
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lorg/jcodings/CanBeTrailTableEncoding;->CanBeTrailTable:[Z

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public leftAdjustCharHead([BIII)I
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "s"    # I
    .param p4, "end"    # I

    .prologue
    .line 33
    if-gt p3, p2, :cond_0

    .line 48
    .end local p3    # "s":I
    :goto_0
    return p3

    .line 35
    .restart local p3    # "s":I
    :cond_0
    move v1, p3

    .line 37
    .local v1, "p_":I
    iget-object v2, p0, Lorg/jcodings/CanBeTrailTableEncoding;->CanBeTrailTable:[Z

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_2

    .line 38
    :cond_1
    if-le v1, p2, :cond_2

    .line 39
    iget-object v2, p0, Lorg/jcodings/CanBeTrailTableEncoding;->EncLen:[I

    add-int/lit8 v1, v1, -0x1

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    aget v2, v2, v3

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 40
    add-int/lit8 v1, v1, 0x1

    .line 45
    :cond_2
    invoke-virtual {p0, p1, v1, p4}, Lorg/jcodings/CanBeTrailTableEncoding;->length([BII)I

    move-result v0

    .line 46
    .local v0, "len":I
    add-int v2, v1, v0

    if-le v2, p3, :cond_3

    move p3, v1

    goto :goto_0

    .line 47
    :cond_3
    add-int/2addr v1, v0

    .line 48
    sub-int v2, p3, v1

    and-int/lit8 v2, v2, -0x2

    add-int p3, v1, v2

    goto :goto_0
.end method
