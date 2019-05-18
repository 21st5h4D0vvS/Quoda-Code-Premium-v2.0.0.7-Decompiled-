.class public final Lorg/jcodings/specific/UTF32LEEncoding;
.super Lorg/jcodings/unicode/FixedWidthUnicodeEncoding;
.source "UTF32LEEncoding.java"


# static fields
.field public static INSTANCE:Lorg/jcodings/specific/UTF32LEEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lorg/jcodings/specific/UTF32LEEncoding;

    invoke-direct {v0}, Lorg/jcodings/specific/UTF32LEEncoding;-><init>()V

    sput-object v0, Lorg/jcodings/specific/UTF32LEEncoding;->INSTANCE:Lorg/jcodings/specific/UTF32LEEncoding;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "UTF-32LE"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/jcodings/unicode/FixedWidthUnicodeEncoding;-><init>(Ljava/lang/String;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public codeToMbc(I[BI)I
    .locals 3
    .param p1, "code"    # I
    .param p2, "bytes"    # [B
    .param p3, "p"    # I

    .prologue
    .line 57
    move v0, p3

    .line 58
    .local v0, "p_":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .local v1, "p_":I
    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 59
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    const v2, 0xff00

    and-int/2addr v2, p1

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 60
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .restart local v1    # "p_":I
    const/high16 v2, 0xff0000

    and-int/2addr v2, p1

    ushr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 61
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, p1

    ushr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 62
    const/4 v2, 0x4

    return v2
.end method

.method public isNewLine([BII)Z
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 35
    add-int/lit8 v0, p2, 0x3

    if-ge v0, p3, :cond_0

    .line 36
    aget-byte v0, p1, p2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    if-nez v0, :cond_0

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    if-nez v0, :cond_0

    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 47
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
    .param p5, "fold"    # [B

    .prologue
    const/4 v5, 0x0

    .line 67
    iget v2, p3, Lorg/jcodings/IntHolder;->value:I

    .line 68
    .local v2, "p":I
    const/4 v0, 0x0

    .line 69
    .local v0, "foldP":I
    aget-byte v3, p2, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Lorg/jcodings/specific/UTF32LEEncoding;->isAscii(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, p2, v3

    if-nez v3, :cond_0

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, p2, v3

    if-nez v3, :cond_0

    add-int/lit8 v3, v2, 0x3

    aget-byte v3, p2, v3

    if-nez v3, :cond_0

    .line 77
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "foldP":I
    .local v1, "foldP":I
    sget-object v3, Lorg/jcodings/ascii/AsciiTables;->ToLowerCaseTable:[B

    aget-byte v4, p2, v2

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    aput-byte v3, p5, v0

    .line 78
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "foldP":I
    .restart local v0    # "foldP":I
    aput-byte v5, p5, v1

    .line 81
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "foldP":I
    .restart local v1    # "foldP":I
    aput-byte v5, p5, v0

    .line 82
    aput-byte v5, p5, v1

    .line 83
    iget v3, p3, Lorg/jcodings/IntHolder;->value:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p3, Lorg/jcodings/IntHolder;->value:I

    .line 84
    const/4 v3, 0x4

    move v0, v1

    .line 86
    .end local v1    # "foldP":I
    .restart local v0    # "foldP":I
    :goto_0
    return v3

    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/jcodings/unicode/FixedWidthUnicodeEncoding;->mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I

    move-result v3

    goto :goto_0
.end method

.method public mbcToCode([BII)I
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 52
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0x100

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x100

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x100

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method
