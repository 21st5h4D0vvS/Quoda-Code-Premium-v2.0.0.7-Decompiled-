.class Lcom/jcraft/jsch/ChannelSftp$1;
.super Ljava/io/OutputStream;


# instance fields
.field private _ackid:I

.field _data:[B

.field private ackcount:I

.field private ackid:[I

.field private header:Lcom/jcraft/jsch/ChannelSftp$Header;

.field private init:Z

.field private isClosed:Z

.field private startid:I

.field private final this$0:Lcom/jcraft/jsch/ChannelSftp;

.field private final val$_offset:[J

.field private final val$handle:[B

.field private final val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

.field private writecount:I


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;[B[JLcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x2

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iput-object p2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$handle:[B

    iput-object p3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$_offset:[J

    iput-object p4, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v3, 0x3

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->init:Z

    const/4 v3, 0x0

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->isClosed:Z

    const/4 v3, 0x1

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackid:[I

    const/4 v3, 0x3

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->startid:I

    const/4 v3, 0x2

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_ackid:I

    const/4 v3, 0x7

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackcount:I

    const/4 v3, 0x2

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->writecount:I

    const/4 v3, 0x5

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    const/4 v3, 0x0

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_data:[B

    nop

    return-void

    const/4 v1, 0x2
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v4, 0x4

    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->isClosed:Z

    if-eqz v1, :cond_0

    const/4 v4, 0x5

    :goto_0
    nop

    return-void

    const/4 v4, 0x0

    const/4 v4, 0x3

    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$1;->flush()V

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    invoke-interface {v1}, Lcom/jcraft/jsch/SftpProgressMonitor;->end()V

    const/4 v4, 0x3

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$handle:[B

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v1, v2, v3}, Lcom/jcraft/jsch/ChannelSftp;->access$400(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->isClosed:Z

    goto :goto_0

    const/4 v2, 0x7

    const/4 v4, 0x3

    :catch_0
    move-exception v0

    throw v0

    const/4 v4, 0x4

    :catch_1
    move-exception v0

    const/4 v4, 0x1

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x7

    const/4 v4, 0x7

    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->isClosed:Z

    if-eqz v1, :cond_0

    const/4 v4, 0x2

    new-instance v1, Ljava/io/IOException;

    const-string v2, "stream already closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    const/4 v4, 0x3

    :cond_0
    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->init:Z

    if-nez v1, :cond_1

    const/4 v4, 0x6

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->writecount:I

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackcount:I

    if-le v1, v2, :cond_1

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$1;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v1, v2, v3}, Lcom/jcraft/jsch/ChannelSftp;->access$300(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v4, 0x1

    :cond_1
    nop

    return-void

    const/4 v1, 0x5

    const/4 v4, 0x1

    :cond_2
    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackcount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackcount:I
    :try_end_0
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v0, 0x3

    const/4 v4, 0x0

    :catch_0
    move-exception v0

    const/4 v4, 0x4

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_data:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_data:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp$1;->write([BII)V

    const/4 v3, 0x4

    nop

    return-void

    const/4 v1, 0x5
.end method

.method public write([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x7

    const/4 v2, 0x6

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/ChannelSftp$1;->write([BII)V

    const/4 v2, 0x4

    nop

    return-void

    const/4 v2, 0x4
.end method

.method public write([BII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x7

    const/4 v1, 0x0

    const/4 v9, 0x2

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->init:Z

    if-eqz v0, :cond_0

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->access$000(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->startid:I

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->access$000(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_ackid:I

    const/4 v9, 0x0

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->init:Z

    const/4 v9, 0x1

    :cond_0
    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->isClosed:Z

    if-eqz v0, :cond_1

    const/4 v9, 0x4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    const/4 v9, 0x5

    :cond_1
    move v6, p3

    const/4 v9, 0x4

    :cond_2
    if-lez v6, :cond_6

    const/4 v9, 0x6

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$handle:[B

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$_offset:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelSftp;->access$100(Lcom/jcraft/jsch/ChannelSftp;[BJ[BII)I

    move-result v8

    const/4 v9, 0x3

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->writecount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->writecount:I

    const/4 v9, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$_offset:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    int-to-long v4, v8

    add-long/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v9, 0x3

    add-int/2addr p2, v8

    const/4 v9, 0x4

    sub-int/2addr v6, v8

    const/4 v9, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->access$000(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->startid:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->access$200(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/16 v1, 0x400

    if-lt v0, v1, :cond_2

    const/4 v9, 0x1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v0}, Lcom/jcraft/jsch/ChannelSftp;->access$200(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackid:[I

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$1;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->access$300(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v9, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackid:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_ackid:I

    const/4 v9, 0x1

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->startid:I

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_ackid:I

    if-gt v0, v1, :cond_4

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->_ackid:I

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$1;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->access$000(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_5

    const/4 v9, 0x6

    :cond_4
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v9, 0x0

    :catch_0
    move-exception v7

    throw v7

    const/4 v9, 0x7

    :cond_5
    :try_start_1
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackcount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->ackcount:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    const/4 v7, 0x6

    const/4 v9, 0x5

    :catch_1
    move-exception v7

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    const/4 v9, 0x2

    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$1;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    int-to-long v2, p3

    invoke-interface {v0, v2, v3}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$1;->close()V

    const/4 v9, 0x1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "canceled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v9, 0x2

    :cond_7
    nop

    return-void

    const/4 v3, 0x1
.end method
