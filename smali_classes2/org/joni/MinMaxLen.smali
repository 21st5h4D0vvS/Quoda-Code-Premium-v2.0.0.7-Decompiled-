.class final Lorg/joni/MinMaxLen;
.super Ljava/lang/Object;
.source "MinMaxLen.java"


# static fields
.field static final INFINITE_DISTANCE:I = 0x7fffffff

.field private static final distValues:[S


# instance fields
.field max:I

.field min:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x64

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/joni/MinMaxLen;->distValues:[S

    return-void

    :array_0
    .array-data 2
        0x3e8s
        0x1f4s
        0x14ds
        0xfas
        0xc8s
        0xa7s
        0x8fs
        0x7ds
        0x6fs
        0x64s
        0x5bs
        0x53s
        0x4ds
        0x47s
        0x43s
        0x3fs
        0x3bs
        0x38s
        0x35s
        0x32s
        0x30s
        0x2ds
        0x2bs
        0x2as
        0x28s
        0x26s
        0x25s
        0x24s
        0x22s
        0x21s
        0x20s
        0x1fs
        0x1es
        0x1ds
        0x1ds
        0x1cs
        0x1bs
        0x1as
        0x1as
        0x19s
        0x18s
        0x18s
        0x17s
        0x17s
        0x16s
        0x16s
        0x15s
        0x15s
        0x14s
        0x14s
        0x14s
        0x13s
        0x13s
        0x13s
        0x12s
        0x12s
        0x12s
        0x11s
        0x11s
        0x11s
        0x10s
        0x10s
        0x10s
        0x10s
        0xfs
        0xfs
        0xfs
        0xfs
        0xes
        0xes
        0xes
        0xes
        0xes
        0xes
        0xds
        0xds
        0xds
        0xds
        0xds
        0xds
        0xcs
        0xcs
        0xcs
        0xcs
        0xcs
        0xcs
        0xbs
        0xbs
        0xbs
        0xbs
        0xbs
        0xbs
        0xbs
        0xbs
        0xbs
        0xas
        0xas
        0xas
        0xas
        0xas
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method constructor <init>(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lorg/joni/MinMaxLen;->min:I

    .line 31
    iput p2, p0, Lorg/joni/MinMaxLen;->max:I

    .line 32
    return-void
.end method

.method static distanceAdd(II)I
    .locals 2
    .param p0, "d1"    # I
    .param p1, "d2"    # I

    .prologue
    const v0, 0x7fffffff

    .line 105
    if-eq p0, v0, :cond_0

    if-ne p1, v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    sub-int v1, v0, p1

    if-gt p0, v1, :cond_0

    add-int v0, p0, p1

    goto :goto_0
.end method

.method static distanceMultiply(II)I
    .locals 2
    .param p0, "d"    # I
    .param p1, "m"    # I

    .prologue
    const v0, 0x7fffffff

    .line 114
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    div-int v1, v0, p1

    if-ge p0, v1, :cond_0

    .line 116
    mul-int v0, p0, p1

    goto :goto_0
.end method

.method static distanceRangeToString(II)Ljava/lang/String;
    .locals 4
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    const v3, 0x7fffffff

    .line 123
    const-string v0, ""

    .line 124
    .local v0, "s":Ljava/lang/String;
    if-ne p0, v3, :cond_0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "inf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    if-ne p1, v3, :cond_1

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "inf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :goto_1
    return-object v0

    .line 127
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method add(Lorg/joni/MinMaxLen;)V
    .locals 2
    .param p1, "other"    # Lorg/joni/MinMaxLen;

    .prologue
    .line 89
    iget v0, p0, Lorg/joni/MinMaxLen;->min:I

    iget v1, p1, Lorg/joni/MinMaxLen;->min:I

    invoke-static {v0, v1}, Lorg/joni/MinMaxLen;->distanceAdd(II)I

    move-result v0

    iput v0, p0, Lorg/joni/MinMaxLen;->min:I

    .line 90
    iget v0, p0, Lorg/joni/MinMaxLen;->max:I

    iget v1, p1, Lorg/joni/MinMaxLen;->max:I

    invoke-static {v0, v1}, Lorg/joni/MinMaxLen;->distanceAdd(II)I

    move-result v0

    iput v0, p0, Lorg/joni/MinMaxLen;->max:I

    .line 91
    return-void
.end method

.method addLength(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 94
    iget v0, p0, Lorg/joni/MinMaxLen;->min:I

    invoke-static {v0, p1}, Lorg/joni/MinMaxLen;->distanceAdd(II)I

    move-result v0

    iput v0, p0, Lorg/joni/MinMaxLen;->min:I

    .line 95
    iget v0, p0, Lorg/joni/MinMaxLen;->max:I

    invoke-static {v0, p1}, Lorg/joni/MinMaxLen;->distanceAdd(II)I

    move-result v0

    iput v0, p0, Lorg/joni/MinMaxLen;->max:I

    .line 96
    return-void
.end method

.method altMerge(Lorg/joni/MinMaxLen;)V
    .locals 2
    .param p1, "other"    # Lorg/joni/MinMaxLen;

    .prologue
    .line 99
    iget v0, p0, Lorg/joni/MinMaxLen;->min:I

    iget v1, p1, Lorg/joni/MinMaxLen;->min:I

    if-le v0, v1, :cond_0

    iget v0, p1, Lorg/joni/MinMaxLen;->min:I

    iput v0, p0, Lorg/joni/MinMaxLen;->min:I

    .line 100
    :cond_0
    iget v0, p0, Lorg/joni/MinMaxLen;->max:I

    iget v1, p1, Lorg/joni/MinMaxLen;->max:I

    if-ge v0, v1, :cond_1

    iget v0, p1, Lorg/joni/MinMaxLen;->max:I

    iput v0, p0, Lorg/joni/MinMaxLen;->max:I

    .line 101
    :cond_1
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lorg/joni/MinMaxLen;->max:I

    iput v0, p0, Lorg/joni/MinMaxLen;->min:I

    .line 81
    return-void
.end method

.method compareDistanceValue(Lorg/joni/MinMaxLen;II)I
    .locals 4
    .param p1, "other"    # Lorg/joni/MinMaxLen;
    .param p2, "v1"    # I
    .param p3, "v2"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 56
    if-gtz p3, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    if-gtz p2, :cond_2

    move v0, v1

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0}, Lorg/joni/MinMaxLen;->distanceValue()I

    move-result v2

    mul-int/2addr p2, v2

    .line 60
    invoke-virtual {p1}, Lorg/joni/MinMaxLen;->distanceValue()I

    move-result v2

    mul-int/2addr p3, v2

    .line 62
    if-le p3, p2, :cond_3

    move v0, v1

    goto :goto_0

    .line 63
    :cond_3
    if-lt p3, p2, :cond_0

    .line 65
    iget v2, p1, Lorg/joni/MinMaxLen;->min:I

    iget v3, p0, Lorg/joni/MinMaxLen;->min:I

    if-ge v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 66
    :cond_4
    iget v1, p1, Lorg/joni/MinMaxLen;->min:I

    iget v2, p0, Lorg/joni/MinMaxLen;->min:I

    if-gt v1, v2, :cond_0

    .line 67
    const/4 v0, 0x0

    goto :goto_0
.end method

.method copy(Lorg/joni/MinMaxLen;)V
    .locals 1
    .param p1, "other"    # Lorg/joni/MinMaxLen;

    .prologue
    .line 84
    iget v0, p1, Lorg/joni/MinMaxLen;->min:I

    iput v0, p0, Lorg/joni/MinMaxLen;->min:I

    .line 85
    iget v0, p1, Lorg/joni/MinMaxLen;->max:I

    iput v0, p0, Lorg/joni/MinMaxLen;->max:I

    .line 86
    return-void
.end method

.method distanceValue()I
    .locals 3

    .prologue
    .line 49
    iget v1, p0, Lorg/joni/MinMaxLen;->max:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 52
    :goto_0
    return v1

    .line 50
    :cond_0
    iget v1, p0, Lorg/joni/MinMaxLen;->max:I

    iget v2, p0, Lorg/joni/MinMaxLen;->min:I

    sub-int v0, v1, v2

    .line 52
    .local v0, "d":I
    sget-object v1, Lorg/joni/MinMaxLen;->distValues:[S

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lorg/joni/MinMaxLen;->distValues:[S

    aget-short v1, v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method equal(Lorg/joni/MinMaxLen;)Z
    .locals 2
    .param p1, "other"    # Lorg/joni/MinMaxLen;

    .prologue
    .line 71
    iget v0, p0, Lorg/joni/MinMaxLen;->min:I

    iget v1, p1, Lorg/joni/MinMaxLen;->min:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/joni/MinMaxLen;->max:I

    iget v1, p1, Lorg/joni/MinMaxLen;->max:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method set(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 75
    iput p1, p0, Lorg/joni/MinMaxLen;->min:I

    .line 76
    iput p2, p0, Lorg/joni/MinMaxLen;->max:I

    .line 77
    return-void
.end method
