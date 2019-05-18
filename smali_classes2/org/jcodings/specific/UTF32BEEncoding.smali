.class public final Lorg/jcodings/specific/UTF32BEEncoding;
.super Lorg/jcodings/unicode/FixedWidthUnicodeEncoding;
.source "UTF32BEEncoding.java"


# static fields
.field public static INSTANCE:Lorg/jcodings/specific/UTF32BEEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lorg/jcodings/specific/UTF32BEEncoding;

    invoke-direct {v0}, Lorg/jcodings/specific/UTF32BEEncoding;-><init>()V

    sput-object v0, Lorg/jcodings/specific/UTF32BEEncoding;->INSTANCE:Lorg/jcodings/specific/UTF32BEEncoding;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "UTF-32BE"

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
    const/high16 v2, -0x1000000

    and-int/2addr v2, p1

    ushr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 59
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    const/high16 v2, 0xff0000

    and-int/2addr v2, p1

    ushr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    .line 60
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "p_":I
    .restart local v1    # "p_":I
    const v2, 0xff00

    and-int/2addr v2, p1

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 61
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p_":I
    .restart local v0    # "p_":I
    and-int/lit16 v2, p1, 0xff

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
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    if-nez v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    if-nez v0, :cond_0

    aget-byte v0, p1, p2

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
    .locals 5
    .param p1, "flag"    # I
    .param p2, "bytes"    # [B
    .param p3, "pp"    # Lorg/jcodings/IntHolder;
    .param p4, "end"    # I
    .param p5, "fold"    # [B

    .prologue
    const/4 v4, 0x0

    .line 67
    iget v2, p3, Lorg/jcodings/IntHolder;->value:I

    .line 68
    .local v2, "p":I
    const/4 v0, 0x0

    .line 69
    .local v0, "foldP":I
    add-int/lit8 v3, v2, 0x3

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Lorg/jcodings/specific/UTF32BEEncoding;->isAscii(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, p2, v3

    if-nez v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, p2, v3

    if-nez v3, :cond_0

    aget-byte v3, p2, v2

    if-nez v3, :cond_0

    .line 70
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "foldP":I
    .local v1, "foldP":I
    aput-byte v4, p5, v0

    .line 71
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "foldP":I
    .restart local v0    # "foldP":I
    aput-byte v4, p5, v1

    .line 84
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "foldP":I
    .restart local v1    # "foldP":I
    aput-byte v4, p5, v0

    .line 85
    sget-object v3, Lorg/jcodings/ascii/AsciiTables;->ToLowerCaseTable:[B

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    aput-byte v3, p5, v1

    .line 86
    iget v3, p3, Lorg/jcodings/IntHolder;->value:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p3, Lorg/jcodings/IntHolder;->value:I

    .line 87
    const/4 v3, 0x4

    move v0, v1

    .line 89
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
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0x100

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x100

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x100

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method
