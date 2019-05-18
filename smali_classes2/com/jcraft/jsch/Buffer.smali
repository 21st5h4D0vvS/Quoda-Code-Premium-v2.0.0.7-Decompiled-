.class public Lcom/jcraft/jsch/Buffer;
.super Ljava/lang/Object;


# instance fields
.field buffer:[B

.field index:I

.field s:I

.field final tmp:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    const/16 v0, 0x5000

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x3

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/4 v2, 0x2

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v2, 0x0

    iput v1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v2, 0x6

    iput v1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    const/4 v2, 0x5

    nop

    return-void

    const/4 v1, 0x4
.end method

.method public constructor <init>([B)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/4 v2, 0x4

    iput-object p1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v2, 0x7

    iput v1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v2, 0x5

    iput v1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    const/4 v2, 0x1

    nop

    return-void

    const/4 v1, 0x7
.end method

.method static fromBytes([[B)Lcom/jcraft/jsch/Buffer;
    .locals 5

    const/4 v4, 0x3

    const/4 v4, 0x6

    array-length v3, p0

    mul-int/lit8 v2, v3, 0x4

    const/4 v4, 0x6

    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    const/4 v4, 0x6

    aget-object v3, p0, v1

    array-length v3, v3

    add-int/2addr v2, v3

    const/4 v4, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v0, 0x6

    const/4 v4, 0x5

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    const/4 v4, 0x4

    const/4 v1, 0x0

    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    const/4 v4, 0x4

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    const/4 v4, 0x6

    const/4 v4, 0x1

    :cond_1
    return-object v0

    const/4 v0, 0x7
.end method


# virtual methods
.method checkFreeSize(I)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v2, p1

    if-ge v1, v2, :cond_0

    const/4 v4, 0x6

    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v2, p0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x7

    iput-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v4, 0x6

    :cond_0
    nop

    return-void

    const/4 v2, 0x2
.end method

.method public getByte()I
    .locals 4

    const/4 v3, 0x3

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/Buffer;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    const/4 v1, 0x4
.end method

.method public getByte(I)I
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x4

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->s:I

    const/4 v2, 0x5

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    const/4 v2, 0x7

    return v0

    const/4 v2, 0x1
.end method

.method public getByte([B)V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    const/4 v2, 0x3

    nop

    return-void

    const/4 v1, 0x0
.end method

.method getByte([BII)V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x5

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->s:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->s:I

    const/4 v2, 0x1

    nop

    return-void

    const/4 v2, 0x6
.end method

.method getBytes(ILjava/lang/String;)[[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v4, 0x7

    const/4 v4, 0x4

    new-array v2, p1, [[B

    const/4 v4, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v3

    if-ge v3, v1, :cond_0

    const/4 v4, 0x1

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v3, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v3

    const/4 v4, 0x2

    :cond_0
    new-array v3, v1, [B

    aput-object v3, v2, v0

    const/4 v4, 0x4

    aget-object v3, v2, v0

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    const/4 v4, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v4, 0x2

    const/4 v4, 0x4

    :cond_1
    return-object v2

    const/4 v1, 0x0
.end method

.method getCommand()B
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    return v0

    const/4 v2, 0x2
.end method

.method public getInt()I
    .locals 5

    const/4 v4, 0x6

    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    move-result v0

    const/4 v4, 0x0

    shl-int/lit8 v1, v0, 0x10

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getShort()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int v0, v1, v2

    const/4 v4, 0x1

    return v0

    const/4 v4, 0x3
.end method

.method public getLength()I
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x5

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    sub-int/2addr v0, v1

    return v0

    const/4 v1, 0x2
.end method

.method public getLong()J
    .locals 9

    const/4 v8, 0x5

    const-wide v6, 0xffffffffL

    const/4 v8, 0x5

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v2

    int-to-long v2, v2

    and-long v0, v2, v6

    const/4 v8, 0x4

    const/16 v2, 0x20

    shl-long v2, v0, v2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    or-long v0, v2, v4

    const/4 v8, 0x4

    return-wide v0

    const/4 v5, 0x7
.end method

.method public getMPInt()[B
    .locals 4

    const/4 v3, 0x6

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    const/4 v3, 0x4

    if-ltz v1, :cond_0

    const/16 v2, 0x2000

    if-le v1, v2, :cond_1

    const/4 v3, 0x4

    :cond_0
    const/16 v1, 0x2000

    const/4 v3, 0x1

    :cond_1
    new-array v0, v1, [B

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    const/4 v3, 0x2

    return-object v0

    const/4 v0, 0x3
.end method

.method public getMPIntBits()[B
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    const/4 v7, 0x6

    add-int/lit8 v4, v1, 0x7

    div-int/lit8 v2, v4, 0x8

    const/4 v7, 0x5

    new-array v3, v2, [B

    const/4 v7, 0x5

    invoke-virtual {p0, v3, v6, v2}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    const/4 v7, 0x3

    aget-byte v4, v3, v6

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    const/4 v7, 0x0

    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [B

    const/4 v7, 0x1

    aput-byte v6, v0, v6

    const/4 v7, 0x0

    const/4 v4, 0x1

    array-length v5, v3

    invoke-static {v3, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x3

    move-object v3, v0

    const/4 v7, 0x4

    :cond_0
    return-object v3

    const/4 v7, 0x6
.end method

.method public getOffSet()I
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x3

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->s:I

    return v0

    const/4 v0, 0x2
.end method

.method getShort()I
    .locals 4

    const/4 v3, 0x6

    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v0

    const/4 v3, 0x4

    shl-int/lit8 v1, v0, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int v0, v1, v2

    const/4 v3, 0x7

    return v0

    const/4 v3, 0x5
.end method

.method public getString()[B
    .locals 4

    const/4 v3, 0x6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    const/4 v3, 0x5

    if-ltz v1, :cond_0

    const/high16 v2, 0x40000

    if-le v1, v2, :cond_1

    const/4 v3, 0x1

    :cond_0
    const/high16 v1, 0x40000

    const/4 v3, 0x2

    :cond_1
    new-array v0, v1, [B

    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/jcraft/jsch/Buffer;->getByte([BII)V

    const/4 v3, 0x6

    return-object v0

    const/4 v1, 0x7
.end method

.method getString([I[I)[B
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    const/4 v3, 0x3

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Buffer;->getByte(I)I

    move-result v1

    aput v1, p1, v2

    const/4 v3, 0x4

    aput v0, p2, v2

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    return-object v1

    const/4 v1, 0x0
.end method

.method public getUInt()J
    .locals 13

    const/4 v12, 0x1

    const-wide/32 v10, 0xff00

    const/16 v8, 0x8

    const/4 v12, 0x2

    const-wide/16 v2, 0x0

    const/4 v12, 0x4

    const-wide/16 v0, 0x0

    const/4 v12, 0x4

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v4

    int-to-long v2, v4

    const/4 v12, 0x7

    shl-long v4, v2, v8

    and-long/2addr v4, v10

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long v2, v4, v6

    const/4 v12, 0x6

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v4

    int-to-long v0, v4

    const/4 v12, 0x3

    shl-long v4, v0, v8

    and-long/2addr v4, v10

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long v0, v4, v6

    const/4 v12, 0x0

    const/16 v4, 0x10

    shl-long v4, v2, v4

    const-wide/32 v6, -0x10000

    and-long/2addr v4, v6

    const-wide/32 v6, 0xffff

    and-long/2addr v6, v0

    or-long v2, v4, v6

    const/4 v12, 0x1

    return-wide v2

    const/4 v3, 0x6
.end method

.method public putByte(B)V
    .locals 4

    const/4 v3, 0x5

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/Buffer;->index:I

    aput-byte p1, v0, v1

    const/4 v3, 0x4

    nop

    return-void

    const/4 v1, 0x1
.end method

.method public putByte([B)V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x5

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V

    const/4 v2, 0x2

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public putByte([BII)V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x2

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v2, 0x4

    nop

    return-void

    const/4 v1, 0x5
.end method

.method public putInt(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    const/4 v5, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/4 v1, 0x1

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v5, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/4 v1, 0x2

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v5, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v2, p0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v3, 0x4

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x5

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v5, 0x6

    nop

    return-void

    const/4 v3, 0x7
.end method

.method public putLong(J)V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/16 v1, 0x38

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/16 v1, 0x30

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    const/4 v9, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/16 v1, 0x28

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    const/4 v9, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    const/4 v9, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v2, p0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-static {v0, v4, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/16 v1, 0x18

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/16 v1, 0x10

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    const/4 v9, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    const/16 v1, 0x8

    ushr-long v2, p1, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    long-to-int v1, p1

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    const/4 v9, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->tmp:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v2, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v2, v2, 0x4

    invoke-static {v0, v4, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x5

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v9, 0x3

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public putMPInt([B)V
    .locals 4

    const/4 v3, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x2

    array-length v0, p1

    const/4 v3, 0x6

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v3, 0x4

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x4

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v3, 0x7

    :goto_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    const/4 v3, 0x7

    nop

    return-void

    const/4 v2, 0x3

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    goto :goto_0

    const/4 v3, 0x4
.end method

.method putPad(I)V
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x2

    :goto_0
    if-lez p1, :cond_0

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/4 v3, 0x3

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    const/4 v1, 0x3

    const/4 v3, 0x4

    :cond_0
    nop

    return-void

    const/4 v0, 0x3
.end method

.method public putString([B)V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x3

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    const/4 v2, 0x3

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public putString([BII)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v0, 0x6

    invoke-virtual {p0, p1, p2, p3}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v1, 0x0

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->s:I

    const/4 v1, 0x7

    nop

    return-void

    const/4 v1, 0x1
.end method

.method rewind()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x2

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->s:I

    const/4 v1, 0x4

    nop

    return-void

    const/4 v1, 0x3
.end method

.method public setOffSet(I)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x3

    iput p1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public shift()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->s:I

    if-nez v0, :cond_0

    const/4 v6, 0x3

    :goto_0
    nop

    return-void

    const/4 v3, 0x1

    const/4 v6, 0x0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    iget-object v2, p0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v3, p0, Lcom/jcraft/jsch/Buffer;->index:I

    iget v4, p0, Lcom/jcraft/jsch/Buffer;->s:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x4

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    iget v1, p0, Lcom/jcraft/jsch/Buffer;->s:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v6, 0x1

    iput v5, p0, Lcom/jcraft/jsch/Buffer;->s:I

    goto :goto_0

    const/4 v1, 0x3
.end method

.method skip(I)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    iget v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x0
.end method
