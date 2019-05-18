.class public Lorg/jcodings/transcode/TranscodeTableSupport;
.super Ljava/lang/Object;
.source "TranscodeTableSupport.java"

# interfaces
.implements Lorg/jcodings/transcode/TranscodingInstruction;


# static fields
.field public static final WORDINDEX_SHIFT_BITS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static INFO2WORDINDEX(I)I
    .locals 1
    .param p0, "info"    # I

    .prologue
    .line 32
    ushr-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static WORDINDEX2INFO(I)I
    .locals 1
    .param p0, "widx"    # I

    .prologue
    .line 28
    shl-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static funsio(I)I
    .locals 1
    .param p0, "diff"    # I

    .prologue
    .line 69
    shl-int/lit8 v0, p0, 0x8

    and-int/lit8 v0, v0, 0x13

    return v0
.end method

.method public static g4(IIII)I
    .locals 2
    .param p0, "b0"    # I
    .param p1, "b1"    # I
    .param p2, "b2"    # I
    .param p3, "b3"    # I

    .prologue
    .line 65
    shl-int/lit8 v0, p0, 0x8

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    and-int/lit8 v1, p1, 0xf

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    and-int/lit8 v1, p3, 0xf

    shl-int/lit8 v1, v1, 0x1c

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x12

    and-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static getBT0(I)I
    .locals 1
    .param p0, "a"    # I

    .prologue
    .line 85
    ushr-int/lit8 v0, p0, 0x5

    and-int/lit8 v0, v0, 0x7

    or-int/lit16 v0, v0, 0xf0

    return v0
.end method

.method public static getBT1(I)I
    .locals 1
    .param p0, "a"    # I

    .prologue
    .line 73
    ushr-int/lit8 v0, p0, 0x8

    return v0
.end method

.method public static getBT2(I)I
    .locals 1
    .param p0, "a"    # I

    .prologue
    .line 77
    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getBT3(I)I
    .locals 1
    .param p0, "a"    # I

    .prologue
    .line 81
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method public static makeSTR1(I)I
    .locals 1
    .param p0, "bi"    # I

    .prologue
    .line 36
    shl-int/lit8 v0, p0, 0x6

    or-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public static makeSTR1LEN(I)B
    .locals 1
    .param p0, "len"    # I

    .prologue
    .line 40
    add-int/lit8 v0, p0, -0x4

    int-to-byte v0, v0

    return v0
.end method

.method public static o1(I)I
    .locals 1
    .param p0, "b1"    # I

    .prologue
    .line 44
    shl-int/lit8 v0, p0, 0x8

    or-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static o2(II)I
    .locals 2
    .param p0, "b1"    # I
    .param p1, "b2"    # I

    .prologue
    .line 48
    shl-int/lit8 v0, p0, 0x8

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static o2FUNii(II)I
    .locals 2
    .param p0, "b1"    # I
    .param p1, "b2"    # I

    .prologue
    .line 89
    shl-int/lit8 v0, p0, 0x8

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0xb

    return v0
.end method

.method public static o3(III)I
    .locals 2
    .param p0, "b1"    # I
    .param p1, "b2"    # I
    .param p2, "b3"    # I

    .prologue
    .line 57
    shl-int/lit8 v0, p0, 0x8

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x18

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static o4(IIII)I
    .locals 2
    .param p0, "b0"    # I
    .param p1, "b1"    # I
    .param p2, "b2"    # I
    .param p3, "b3"    # I

    .prologue
    .line 61
    shl-int/lit8 v0, p1, 0x8

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0x18

    or-int/2addr v0, v1

    and-int/lit8 v1, p0, 0x7

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, -0x1

    return v0
.end method
