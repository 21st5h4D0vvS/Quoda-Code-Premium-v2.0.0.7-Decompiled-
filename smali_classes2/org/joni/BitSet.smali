.class public final Lorg/joni/BitSet;
.super Ljava/lang/Object;
.source "BitSet.java"


# static fields
.field static final BITSET_SIZE:I = 0x8

.field private static final BITS_IN_ROOM:I = 0x20

.field static final BITS_PER_BYTE:I = 0x8

.field private static final BITS_TO_STRING_WRAP:I = 0x4

.field static final ROOM_SHIFT:I

.field public static final SINGLE_BYTE_SIZE:I = 0x100


# instance fields
.field final bits:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/16 v0, 0x20

    invoke-static {v0}, Lorg/joni/BitSet;->log2(I)I

    move-result v0

    sput v0, Lorg/joni/BitSet;->ROOM_SHIFT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/joni/BitSet;->bits:[I

    return-void
.end method

.method static bit(I)I
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 106
    const/4 v0, 0x1

    rem-int/lit16 v1, p0, 0x100

    shl-int/2addr v0, v1

    return v0
.end method

.method private static log2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "log":I
    :goto_0
    ushr-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return v0
.end method


# virtual methods
.method public and(Lorg/joni/BitSet;)V
    .locals 4
    .param p1, "other"    # Lorg/joni/BitSet;

    .prologue
    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/joni/BitSet;->bits:[I

    aget v2, v1, v0

    iget-object v3, p1, Lorg/joni/BitSet;->bits:[I

    aget v3, v3, v0

    and-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method

.method public at(I)Z
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lorg/joni/BitSet;->bits:[I

    sget v1, Lorg/joni/BitSet;->ROOM_SHIFT:I

    ushr-int v1, p1, v1

    aget v0, v0, v1

    invoke-static {p1}, Lorg/joni/BitSet;->bit(I)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/joni/BitSet;->bits:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method public clear(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lorg/joni/BitSet;->bits:[I

    sget v1, Lorg/joni/BitSet;->ROOM_SHIFT:I

    ushr-int v1, p1, v1

    aget v2, v0, v1

    invoke-static {p1}, Lorg/joni/BitSet;->bit(I)I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aput v2, v0, v1

    .line 52
    return-void
.end method

.method public copy(Lorg/joni/BitSet;)V
    .locals 3
    .param p1, "other"    # Lorg/joni/BitSet;

    .prologue
    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/joni/BitSet;->bits:[I

    iget-object v2, p1, Lorg/joni/BitSet;->bits:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method

.method public invert()V
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/joni/BitSet;->bits:[I

    iget-object v2, p0, Lorg/joni/BitSet;->bits:[I

    aget v2, v2, v0

    xor-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method public invert(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lorg/joni/BitSet;->bits:[I

    sget v1, Lorg/joni/BitSet;->ROOM_SHIFT:I

    ushr-int v1, p1, v1

    aget v2, v0, v1

    invoke-static {p1}, Lorg/joni/BitSet;->bit(I)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 56
    return-void
.end method

.method public invertTo(Lorg/joni/BitSet;)V
    .locals 3
    .param p1, "to"    # Lorg/joni/BitSet;

    .prologue
    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lorg/joni/BitSet;->bits:[I

    iget-object v2, p0, Lorg/joni/BitSet;->bits:[I

    aget v2, v2, v0

    xor-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 64
    iget-object v1, p0, Lorg/joni/BitSet;->bits:[I

    aget v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 66
    :goto_1
    return v1

    .line 63
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public numOn()I
    .locals 3

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, "num":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x100

    if-ge v0, v2, :cond_1

    .line 100
    invoke-virtual {p0, v0}, Lorg/joni/BitSet;->at(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 99
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_1
    return v1
.end method

.method public or(Lorg/joni/BitSet;)V
    .locals 4
    .param p1, "other"    # Lorg/joni/BitSet;

    .prologue
    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/joni/BitSet;->bits:[I

    aget v2, v1, v0

    iget-object v3, p1, Lorg/joni/BitSet;->bits:[I

    aget v3, v3, v0

    or-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method public set(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lorg/joni/BitSet;->bits:[I

    sget v1, Lorg/joni/BitSet;->ROOM_SHIFT:I

    ushr-int v1, p1, v1

    aget v2, v0, v1

    invoke-static {p1}, Lorg/joni/BitSet;->bit(I)I

    move-result v3

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 48
    return-void
.end method

.method public setAll()V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/joni/BitSet;->bits:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method public setRange(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 70
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/joni/BitSet;->set(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v2, "BitSet"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x100

    if-ge v1, v2, :cond_2

    .line 36
    rem-int/lit8 v2, v1, 0x40

    if-nez v2, :cond_0

    const-string v2, "\n  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_0
    invoke-virtual {p0, v1}, Lorg/joni/BitSet;->at(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "1"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_1
    const-string v2, "0"

    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
