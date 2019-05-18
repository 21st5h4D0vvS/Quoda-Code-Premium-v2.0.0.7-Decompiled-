.class public Lcom/jcraft/jsch/Packet;
.super Ljava/lang/Object;


# static fields
.field private static random:Lcom/jcraft/jsch/Random;


# instance fields
.field ba4:[B

.field buffer:Lcom/jcraft/jsch/Buffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x2

    const/4 v0, 0x0

    sput-object v0, Lcom/jcraft/jsch/Packet;->random:Lcom/jcraft/jsch/Random;

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public constructor <init>(Lcom/jcraft/jsch/Buffer;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Packet;->ba4:[B

    const/4 v1, 0x7

    iput-object p1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x7

    nop

    return-void

    const/4 v1, 0x0
.end method

.method static setRandom(Lcom/jcraft/jsch/Random;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x0

    sput-object p0, Lcom/jcraft/jsch/Packet;->random:Lcom/jcraft/jsch/Random;

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method getBuffer()Lcom/jcraft/jsch/Buffer;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    return-object v0

    const/4 v1, 0x6
.end method

.method padding(I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v7, 0x7

    iget-object v2, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v0, v2, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v7, 0x3

    neg-int v2, v0

    add-int/lit8 v3, p1, -0x1

    and-int v1, v2, v3

    const/4 v7, 0x0

    if-ge v1, p1, :cond_0

    const/4 v7, 0x1

    add-int/2addr v1, p1

    const/4 v7, 0x1

    :cond_0
    add-int v2, v0, v1

    add-int/lit8 v0, v2, -0x4

    const/4 v7, 0x3

    iget-object v2, p0, Lcom/jcraft/jsch/Packet;->ba4:[B

    ushr-int/lit8 v3, v0, 0x18

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/Packet;->ba4:[B

    const/4 v3, 0x1

    ushr-int/lit8 v4, v0, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/Packet;->ba4:[B

    const/4 v3, 0x2

    ushr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v7, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/Packet;->ba4:[B

    const/4 v3, 0x3

    int-to-byte v4, v0

    aput-byte v4, v2, v3

    const/4 v7, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/Packet;->ba4:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-static {v2, v5, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    int-to-byte v3, v1

    aput-byte v3, v2, v6

    const/4 v7, 0x2

    sget-object v3, Lcom/jcraft/jsch/Packet;->random:Lcom/jcraft/jsch/Random;

    monitor-enter v3

    const/4 v7, 0x3

    :try_start_0
    sget-object v2, Lcom/jcraft/jsch/Packet;->random:Lcom/jcraft/jsch/Random;

    iget-object v4, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v5, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v2, v4, v5, v1}, Lcom/jcraft/jsch/Random;->fill([BII)V

    const/4 v7, 0x4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x2

    iget-object v2, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    const/4 v7, 0x4

    nop

    return-void

    const/4 v5, 0x4

    const/4 v7, 0x7

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x5

    iput v1, v0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v2, 0x6

    nop

    return-void

    const/4 v2, 0x2
.end method

.method shift(III)I
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x7

    add-int/lit8 v3, p1, 0x5

    add-int/lit8 v2, v3, 0x9

    const/4 v7, 0x6

    neg-int v3, v2

    add-int/lit8 v4, p2, -0x1

    and-int v1, v3, v4

    const/4 v7, 0x4

    if-ge v1, p2, :cond_0

    add-int/2addr v1, p2

    const/4 v7, 0x2

    :cond_0
    add-int/2addr v2, v1

    const/4 v7, 0x6

    add-int/2addr v2, p3

    const/4 v7, 0x6

    add-int/lit8 v2, v2, 0x20

    const/4 v7, 0x6

    iget-object v3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v3, v3

    iget-object v4, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x5

    add-int/lit8 v4, v4, -0x9

    sub-int/2addr v4, p1

    if-ge v3, v4, :cond_1

    const/4 v7, 0x5

    iget-object v3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x5

    add-int/lit8 v3, v3, -0x9

    sub-int/2addr v3, p1

    new-array v0, v3, [B

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v4, v4

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x7

    iget-object v3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iput-object v0, v3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v7, 0x3

    :cond_1
    iget-object v3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    add-int/lit8 v4, p1, 0x5

    add-int/lit8 v4, v4, 0x9

    iget-object v5, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v5, v5, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v6, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v6, v6, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v6, v6, -0x5

    add-int/lit8 v6, v6, -0x9

    sub-int/2addr v6, p1

    invoke-static {v3, v4, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    const/16 v4, 0xa

    iput v4, v3, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3, p1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v7, 0x5

    iget-object v3, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    add-int/lit8 v4, p1, 0x5

    add-int/lit8 v4, v4, 0x9

    iput v4, v3, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v7, 0x3

    return v2

    const/4 v1, 0x3
.end method

.method unshift(BIII)V
    .locals 4

    const/4 v3, 0x7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/16 v2, 0xe

    invoke-static {v0, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v1, 0x5

    aput-byte p1, v0, v1

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x6

    iput v1, v0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    add-int/lit8 v1, p4, 0x5

    add-int/lit8 v1, v1, 0x9

    iput v1, v0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v3, 0x0

    nop

    return-void

    const/4 v3, 0x4
.end method
