.class Lcom/jcraft/jsch/Channel$1;
.super Ljava/io/OutputStream;


# instance fields
.field b:[B

.field private buffer:Lcom/jcraft/jsch/Buffer;

.field private closed:Z

.field private dataLen:I

.field private packet:Lcom/jcraft/jsch/Packet;

.field private final this$0:Lcom/jcraft/jsch/Channel;

.field private final val$channel:Lcom/jcraft/jsch/Channel;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/Channel;Lcom/jcraft/jsch/Channel;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x6

    iput-object p1, p0, Lcom/jcraft/jsch/Channel$1;->this$0:Lcom/jcraft/jsch/Channel;

    iput-object p2, p0, Lcom/jcraft/jsch/Channel$1;->val$channel:Lcom/jcraft/jsch/Channel;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v2, 0x0

    iput v0, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    const/4 v2, 0x2

    iput-object v1, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    const/4 v2, 0x2

    iput-object v1, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    const/4 v2, 0x4

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel$1;->closed:Z

    const/4 v2, 0x4

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Channel$1;->b:[B

    nop

    return-void

    const/4 v0, 0x2
.end method

.method private declared-synchronized init()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x6

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->this$0:Lcom/jcraft/jsch/Channel;

    iget v2, v2, Lcom/jcraft/jsch/Channel;->rmpsize:I

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v1, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    const/4 v3, 0x2

    new-instance v1, Lcom/jcraft/jsch/Packet;

    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v1, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v3, 0x7

    array-length v1, v0

    add-int/lit8 v1, v1, -0xe

    add-int/lit8 v1, v1, -0x54

    if-gtz v1, :cond_0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    const/4 v3, 0x2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    const/4 v3, 0x5

    new-instance v1, Ljava/io/IOException;

    const-string v2, "failed to initialize the channel."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x5

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    const/4 v3, 0x1

    :cond_0
    monitor-exit p0

    nop

    return-void

    const/4 v1, 0x7
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    if-nez v1, :cond_0

    const/4 v2, 0x5

    :try_start_0
    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$1;->init()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x2

    :cond_0
    iget-boolean v1, p0, Lcom/jcraft/jsch/Channel$1;->closed:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    :goto_0
    nop

    return-void

    const/4 v1, 0x2

    const/4 v2, 0x6

    :catch_0
    move-exception v0

    const/4 v2, 0x3

    goto :goto_0

    const/4 v0, 0x0

    const/4 v2, 0x6

    :cond_1
    iget v1, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    if-lez v1, :cond_2

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->flush()V

    const/4 v2, 0x0

    :cond_2
    iget-object v1, p0, Lcom/jcraft/jsch/Channel$1;->val$channel:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel;->eof()V

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel$1;->closed:Z

    goto :goto_0

    const/4 v2, 0x4
.end method

.method public flush()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x6

    const/4 v6, 0x0

    iget-boolean v2, p0, Lcom/jcraft/jsch/Channel$1;->closed:Z

    if-eqz v2, :cond_0

    const/4 v6, 0x0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Already closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    const/4 v6, 0x5

    :cond_0
    iget v2, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    if-nez v2, :cond_1

    const/4 v6, 0x5

    :goto_0
    nop

    return-void

    const/4 v2, 0x4

    const/4 v6, 0x3

    :cond_1
    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v6, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    const/16 v3, 0x5e

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/Channel$1;->this$0:Lcom/jcraft/jsch/Channel;

    iget v3, v3, Lcom/jcraft/jsch/Channel;->recipient:I

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v6, 0x2

    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v3, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v3, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    const/4 v6, 0x1

    :try_start_0
    iget v1, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    const/4 v6, 0x0

    const/4 v2, 0x0

    iput v2, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    const/4 v6, 0x7

    iget-object v3, p0, Lcom/jcraft/jsch/Channel$1;->val$channel:Lcom/jcraft/jsch/Channel;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x3

    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->val$channel:Lcom/jcraft/jsch/Channel;

    iget-boolean v2, v2, Lcom/jcraft/jsch/Channel;->close:Z

    if-nez v2, :cond_2

    const/4 v6, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/Channel$1;->this$0:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v2

    iget-object v4, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    iget-object v5, p0, Lcom/jcraft/jsch/Channel$1;->val$channel:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v2, v4, v5, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    const/4 v6, 0x6

    :cond_2
    monitor-exit v3

    goto :goto_0

    const/4 v2, 0x4

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v6, 0x1

    :catch_0
    move-exception v0

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->close()V

    const/4 v6, 0x4

    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->b:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/Channel$1;->b:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/jcraft/jsch/Channel$1;->write([BII)V

    const/4 v3, 0x4

    nop

    return-void

    const/4 v3, 0x2
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/Channel$1;->packet:Lcom/jcraft/jsch/Packet;

    if-nez v3, :cond_0

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel$1;->init()V

    const/4 v5, 0x0

    :cond_0
    iget-boolean v3, p0, Lcom/jcraft/jsch/Channel$1;->closed:Z

    if-eqz v3, :cond_1

    const/4 v5, 0x7

    new-instance v3, Ljava/io/IOException;

    const-string v4, "Already closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    const/4 v5, 0x7

    :cond_1
    iget-object v3, p0, Lcom/jcraft/jsch/Channel$1;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v5, 0x7

    array-length v1, v0

    const/4 v5, 0x0

    :goto_0
    if-lez p3, :cond_4

    const/4 v5, 0x1

    move v2, p3

    const/4 v5, 0x6

    iget v3, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    add-int/lit8 v3, v3, 0xe

    sub-int v3, v1, v3

    add-int/lit8 v3, v3, -0x54

    if-le p3, v3, :cond_2

    const/4 v5, 0x0

    iget v3, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    add-int/lit8 v3, v3, 0xe

    sub-int v3, v1, v3

    add-int/lit8 v2, v3, -0x54

    const/4 v5, 0x6

    :cond_2
    if-gtz v2, :cond_3

    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel$1;->flush()V

    goto :goto_0

    const/4 v5, 0x7

    const/4 v5, 0x7

    :cond_3
    iget v3, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    add-int/lit8 v3, v3, 0xe

    invoke-static {p1, p2, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    iget v3, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/jcraft/jsch/Channel$1;->dataLen:I

    const/4 v5, 0x3

    add-int/2addr p2, v2

    const/4 v5, 0x7

    sub-int/2addr p3, v2

    const/4 v5, 0x1

    goto :goto_0

    const/4 v4, 0x0

    const/4 v5, 0x2

    :cond_4
    nop

    return-void

    const/4 v5, 0x5
.end method
