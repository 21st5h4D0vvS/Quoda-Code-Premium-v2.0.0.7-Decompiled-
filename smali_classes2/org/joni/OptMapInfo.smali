.class final Lorg/joni/OptMapInfo;
.super Ljava/lang/Object;
.source "OptMapInfo.java"


# static fields
.field static final ByteValTable:[S

.field private static final z:I = 0x8000


# instance fields
.field final anchor:Lorg/joni/OptAnchorInfo;

.field final map:[B

.field final mmd:Lorg/joni/MinMaxLen;

.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const/16 v0, 0x80

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/joni/OptMapInfo;->ByteValTable:[S

    return-void

    :array_0
    .array-data 2
        0x5s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0xas
        0xas
        0x1s
        0x1s
        0xas
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0x1s
        0xcs
        0x4s
        0x7s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x6s
        0x6s
        0x6s
        0x6s
        0x7s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x5s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x6s
        0x6s
        0x6s
        0x6s
        0x7s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x1s
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/joni/MinMaxLen;

    invoke-direct {v0}, Lorg/joni/MinMaxLen;-><init>()V

    iput-object v0, p0, Lorg/joni/OptMapInfo;->mmd:Lorg/joni/MinMaxLen;

    .line 28
    new-instance v0, Lorg/joni/OptAnchorInfo;

    invoke-direct {v0}, Lorg/joni/OptAnchorInfo;-><init>()V

    iput-object v0, p0, Lorg/joni/OptMapInfo;->anchor:Lorg/joni/OptAnchorInfo;

    .line 31
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/joni/OptMapInfo;->map:[B

    return-void
.end method

.method static positionValue(Lorg/jcodings/Encoding;I)I
    .locals 2
    .param p0, "enc"    # Lorg/jcodings/Encoding;
    .param p1, "i"    # I

    .prologue
    .line 118
    sget-object v0, Lorg/joni/OptMapInfo;->ByteValTable:[S

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 119
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/jcodings/Encoding;->minLength()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 120
    const/16 v0, 0x14

    .line 125
    :goto_0
    return v0

    .line 122
    :cond_0
    sget-object v0, Lorg/joni/OptMapInfo;->ByteValTable:[S

    aget-short v0, v0, p1

    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method addChar(BLorg/jcodings/Encoding;)V
    .locals 3
    .param p1, "c"    # B
    .param p2, "enc"    # Lorg/jcodings/Encoding;

    .prologue
    .line 49
    and-int/lit16 v0, p1, 0xff

    .line 50
    .local v0, "c_":I
    iget-object v1, p0, Lorg/joni/OptMapInfo;->map:[B

    aget-byte v1, v1, v0

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lorg/joni/OptMapInfo;->map:[B

    const/4 v2, 0x1

    aput-byte v2, v1, v0

    .line 52
    iget v1, p0, Lorg/joni/OptMapInfo;->value:I

    invoke-static {p2, v0}, Lorg/joni/OptMapInfo;->positionValue(Lorg/jcodings/Encoding;I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/joni/OptMapInfo;->value:I

    .line 54
    :cond_0
    return-void
.end method

.method addCharAmb([BIILorg/jcodings/Encoding;I)V
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .param p4, "enc"    # Lorg/jcodings/Encoding;
    .param p5, "caseFoldFlag"    # I

    .prologue
    const/4 v4, 0x0

    .line 57
    aget-byte v3, p1, p2

    invoke-virtual {p0, v3, p4}, Lorg/joni/OptMapInfo;->addChar(BLorg/jcodings/Encoding;)V

    .line 59
    const v3, -0x40000001    # -1.9999999f

    and-int/2addr p5, v3

    .line 60
    invoke-virtual {p4, p5, p1, p2, p3}, Lorg/jcodings/Encoding;->caseFoldCodesByString(I[BII)[Lorg/jcodings/CaseFoldCodeItem;

    move-result-object v2

    .line 62
    .local v2, "items":[Lorg/jcodings/CaseFoldCodeItem;
    const/4 v3, 0x7

    new-array v0, v3, [B

    .line 63
    .local v0, "buf":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 64
    aget-object v3, v2, v1

    iget-object v3, v3, Lorg/jcodings/CaseFoldCodeItem;->code:[I

    aget v3, v3, v4

    invoke-virtual {p4, v3, v0, v4}, Lorg/jcodings/Encoding;->codeToMbc(I[BI)I

    .line 65
    aget-byte v3, v0, v4

    invoke-virtual {p0, v3, p4}, Lorg/joni/OptMapInfo;->addChar(BLorg/jcodings/Encoding;)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method altMerge(Lorg/joni/OptMapInfo;Lorg/jcodings/Encoding;)V
    .locals 4
    .param p1, "other"    # Lorg/joni/OptMapInfo;
    .param p2, "enc"    # Lorg/jcodings/Encoding;

    .prologue
    .line 87
    iget v2, p0, Lorg/joni/OptMapInfo;->value:I

    if-nez v2, :cond_0

    .line 103
    :goto_0
    return-void

    .line 88
    :cond_0
    iget v2, p1, Lorg/joni/OptMapInfo;->value:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/joni/OptMapInfo;->mmd:Lorg/joni/MinMaxLen;

    iget v2, v2, Lorg/joni/MinMaxLen;->max:I

    iget-object v3, p1, Lorg/joni/OptMapInfo;->mmd:Lorg/joni/MinMaxLen;

    iget v3, v3, Lorg/joni/MinMaxLen;->max:I

    if-ge v2, v3, :cond_2

    .line 89
    :cond_1
    invoke-virtual {p0}, Lorg/joni/OptMapInfo;->clear()V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v2, p0, Lorg/joni/OptMapInfo;->mmd:Lorg/joni/MinMaxLen;

    iget-object v3, p1, Lorg/joni/OptMapInfo;->mmd:Lorg/joni/MinMaxLen;

    invoke-virtual {v2, v3}, Lorg/joni/MinMaxLen;->altMerge(Lorg/joni/MinMaxLen;)V

    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, "val":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v2, 0x100

    if-ge v0, v2, :cond_5

    .line 97
    iget-object v2, p1, Lorg/joni/OptMapInfo;->map:[B

    aget-byte v2, v2, v0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/joni/OptMapInfo;->map:[B

    const/4 v3, 0x1

    aput-byte v3, v2, v0

    .line 98
    :cond_3
    iget-object v2, p0, Lorg/joni/OptMapInfo;->map:[B

    aget-byte v2, v2, v0

    if-eqz v2, :cond_4

    invoke-static {p2, v0}, Lorg/joni/OptMapInfo;->positionValue(Lorg/jcodings/Encoding;I)I

    move-result v2

    add-int/2addr v1, v2

    .line 96
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_5
    iput v1, p0, Lorg/joni/OptMapInfo;->value:I

    .line 102
    iget-object v2, p0, Lorg/joni/OptMapInfo;->anchor:Lorg/joni/OptAnchorInfo;

    iget-object v3, p1, Lorg/joni/OptMapInfo;->anchor:Lorg/joni/OptAnchorInfo;

    invoke-virtual {v2, v3}, Lorg/joni/OptAnchorInfo;->altMerge(Lorg/joni/OptAnchorInfo;)V

    goto :goto_0
.end method

.method clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    iget-object v1, p0, Lorg/joni/OptMapInfo;->mmd:Lorg/joni/MinMaxLen;

    invoke-virtual {v1}, Lorg/joni/MinMaxLen;->clear()V

    .line 35
    iget-object v1, p0, Lorg/joni/OptMapInfo;->anchor:Lorg/joni/OptAnchorInfo;

    invoke-virtual {v1}, Lorg/joni/OptAnchorInfo;->clear()V

    .line 36
    iput v2, p0, Lorg/joni/OptMapInfo;->value:I

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/joni/OptMapInfo;->map:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/joni/OptMapInfo;->map:[B

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method copy(Lorg/joni/OptMapInfo;)V
    .locals 4
    .param p1, "other"    # Lorg/joni/OptMapInfo;

    .prologue
    const/4 v3, 0x0

    .line 41
    iget-object v0, p0, Lorg/joni/OptMapInfo;->mmd:Lorg/joni/MinMaxLen;

    iget-object v1, p1, Lorg/joni/OptMapInfo;->mmd:Lorg/joni/MinMaxLen;

    invoke-virtual {v0, v1}, Lorg/joni/MinMaxLen;->copy(Lorg/joni/MinMaxLen;)V

    .line 42
    iget-object v0, p0, Lorg/joni/OptMapInfo;->anchor:Lorg/joni/OptAnchorInfo;

    iget-object v1, p1, Lorg/joni/OptMapInfo;->anchor:Lorg/joni/OptAnchorInfo;

    invoke-virtual {v0, v1}, Lorg/joni/OptAnchorInfo;->copy(Lorg/joni/OptAnchorInfo;)V

    .line 43
    iget v0, p1, Lorg/joni/OptMapInfo;->value:I

    iput v0, p0, Lorg/joni/OptMapInfo;->value:I

    .line 45
    iget-object v0, p1, Lorg/joni/OptMapInfo;->map:[B

    iget-object v1, p0, Lorg/joni/OptMapInfo;->map:[B

    iget-object v2, p1, Lorg/joni/OptMapInfo;->map:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    return-void
.end method

.method select(Lorg/joni/OptMapInfo;)V
    .locals 4
    .param p1, "alt"    # Lorg/joni/OptMapInfo;

    .prologue
    const v3, 0x8000

    .line 72
    iget v2, p1, Lorg/joni/OptMapInfo;->value:I

    if-nez v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget v2, p0, Lorg/joni/OptMapInfo;->value:I

    if-nez v2, :cond_2

    .line 74
    invoke-virtual {p0, p1}, Lorg/joni/OptMapInfo;->copy(Lorg/joni/OptMapInfo;)V

    goto :goto_0

    .line 78
    :cond_2
    iget v2, p0, Lorg/joni/OptMapInfo;->value:I

    div-int v0, v3, v2

    .line 79
    .local v0, "v1":I
    iget v2, p1, Lorg/joni/OptMapInfo;->value:I

    div-int v1, v3, v2

    .line 81
    .local v1, "v2":I
    iget-object v2, p0, Lorg/joni/OptMapInfo;->mmd:Lorg/joni/MinMaxLen;

    iget-object v3, p1, Lorg/joni/OptMapInfo;->mmd:Lorg/joni/MinMaxLen;

    invoke-virtual {v2, v3, v0, v1}, Lorg/joni/MinMaxLen;->compareDistanceValue(Lorg/joni/MinMaxLen;II)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, p1}, Lorg/joni/OptMapInfo;->copy(Lorg/joni/OptMapInfo;)V

    goto :goto_0
.end method
