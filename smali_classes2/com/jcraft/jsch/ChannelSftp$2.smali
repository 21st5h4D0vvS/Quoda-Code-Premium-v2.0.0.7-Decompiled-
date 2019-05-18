.class Lcom/jcraft/jsch/ChannelSftp$2;
.super Ljava/io/InputStream;


# instance fields
.field _data:[B

.field closed:Z

.field header:Lcom/jcraft/jsch/ChannelSftp$Header;

.field offset:J

.field request_max:I

.field request_offset:J

.field rest_byte:[B

.field rest_length:I

.field private final this$0:Lcom/jcraft/jsch/ChannelSftp;

.field private final val$handle:[B

.field private final val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

.field private final val$skip:J


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;JLcom/jcraft/jsch/SftpProgressMonitor;[B)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iput-wide p2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->val$skip:J

    iput-object p4, p0, Lcom/jcraft/jsch/ChannelSftp$2;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    iput-object p5, p0, Lcom/jcraft/jsch/ChannelSftp$2;->val$handle:[B

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v4, 0x1

    iget-wide v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->val$skip:J

    iput-wide v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->offset:J

    const/4 v4, 0x3

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->closed:Z

    const/4 v4, 0x6

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    const/4 v4, 0x1

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->_data:[B

    const/4 v4, 0x2

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_byte:[B

    const/4 v4, 0x2

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    const/4 v4, 0x7

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp$2;->request_max:I

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->offset:J

    iput-wide v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->request_offset:J

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

    const/4 v4, 0x2

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->closed:Z

    if-eqz v1, :cond_0

    const/4 v4, 0x6

    :goto_0
    nop

    return-void

    const/4 v0, 0x4

    const/4 v4, 0x5

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->closed:Z

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    invoke-interface {v1}, Lcom/jcraft/jsch/SftpProgressMonitor;->end()V

    const/4 v4, 0x0

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v1}, Lcom/jcraft/jsch/ChannelSftp;->access$900(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v3}, Lcom/jcraft/jsch/ChannelSftp;->access$700(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->cancel(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V

    const/4 v4, 0x7

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->val$handle:[B

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v1, v2, v3}, Lcom/jcraft/jsch/ChannelSftp;->access$400(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v1, 0x7

    const/4 v4, 0x0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "error"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x7

    const/4 v4, 0x0

    const/4 v1, -0x1

    const/4 v5, 0x2

    iget-boolean v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->closed:Z

    if-eqz v2, :cond_1

    const/4 v5, 0x3

    :cond_0
    :goto_0
    return v1

    const/4 v2, 0x1

    const/4 v5, 0x5

    :cond_1
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp$2;->_data:[B

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v4, v3}, Lcom/jcraft/jsch/ChannelSftp$2;->read([BII)I

    move-result v0

    const/4 v5, 0x5

    if-eq v0, v1, :cond_0

    const/4 v5, 0x3

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$2;->_data:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    goto :goto_0

    const/4 v3, 0x5
.end method

.method public read([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x3

    const/4 v2, 0x5

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp$2;->closed:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const/4 v2, 0x5

    :goto_0
    return v0

    const/4 v2, 0x6

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/ChannelSftp$2;->read([BII)I

    move-result v0

    goto :goto_0

    const/4 v0, 0x6
.end method

.method public read([BII)I
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->closed:Z

    if-eqz v4, :cond_0

    const/16 v20, -0x1

    :goto_0
    return v20

    const/4 v4, 0x4

    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_1
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v4, p2, p3

    move-object/from16 v0, p1

    array-length v5, v0

    if-le v4, v5, :cond_3

    :cond_2
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_3
    if-nez p3, :cond_4

    const/16 v20, 0x0

    goto :goto_0

    const/4 v13, 0x3

    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    if-lez v4, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p3

    if-le v0, v1, :cond_5

    move/from16 v20, p3

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_byte:[B

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-static {v4, v5, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    move/from16 v0, v20

    if-eq v0, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_byte:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_byte:[B

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    sub-int v7, v7, v20

    move/from16 v0, v20

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    move/from16 v0, v20

    int-to-long v6, v0

    invoke-interface {v4, v6, v7}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/ChannelSftp$2;->close()V

    const/16 v20, -0x1

    goto :goto_0

    const/4 v4, 0x4

    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    sub-int v4, v4, v20

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    goto/16 :goto_0

    const/4 v10, 0x1

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->access$700(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v4

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0xd

    move/from16 v0, p3

    if-ge v4, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->access$700(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v4

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v4, v4

    add-int/lit8 p3, v4, -0xd

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->access$800(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v4

    if-nez v4, :cond_a

    const/16 v4, 0x400

    move/from16 v0, p3

    if-le v0, v4, :cond_a

    const/16 p3, 0x400

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->access$900(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count()I

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->access$700(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v4

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v4, v4

    add-int/lit8 v8, v4, -0xd

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->access$800(Lcom/jcraft/jsch/ChannelSftp;)I

    move-result v4

    if-nez v4, :cond_b

    const/16 v8, 0x400

    :cond_b
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->access$900(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jcraft/jsch/ChannelSftp$2;->request_max:I

    if-ge v4, v5, :cond_c

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jcraft/jsch/ChannelSftp$2;->val$handle:[B

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/jcraft/jsch/ChannelSftp$2;->request_offset:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v9}, Lcom/jcraft/jsch/ChannelSftp;->access$900(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lcom/jcraft/jsch/ChannelSftp;->access$1000(Lcom/jcraft/jsch/ChannelSftp;[BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->request_offset:J

    int-to-long v6, v8

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->request_offset:J

    goto :goto_1

    const/4 v4, 0x5

    :catch_0
    move-exception v19

    new-instance v4, Ljava/io/IOException;

    const-string v5, "error"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v5}, Lcom/jcraft/jsch/ChannelSftp;->access$700(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-static {v4, v5, v6}, Lcom/jcraft/jsch/ChannelSftp;->access$500(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v4, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v0, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v0, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    move/from16 v22, v0

    const/16 v26, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->access$900(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v5, v5, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->get(I)Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;
    :try_end_1
    .catch Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v26

    const/16 v4, 0x65

    move/from16 v0, v27

    if-eq v0, v4, :cond_d

    const/16 v4, 0x67

    move/from16 v0, v27

    if-eq v0, v4, :cond_d

    new-instance v4, Ljava/io/IOException;

    const-string v5, "error"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_1
    move-exception v19

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;->offset:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->request_offset:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    iget v4, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/jcraft/jsch/ChannelSftp$2;->skip(J)J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->access$900(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v6}, Lcom/jcraft/jsch/ChannelSftp;->access$700(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->cancel(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V

    const/16 v20, 0x0

    goto/16 :goto_0

    const/4 v6, 0x0

    :catch_2
    move-exception v19

    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lcom/jcraft/jsch/SftpException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_d
    const/16 v4, 0x65

    move/from16 v0, v27

    if-ne v0, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v5}, Lcom/jcraft/jsch/ChannelSftp;->access$700(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    invoke-static {v4, v5, v6}, Lcom/jcraft/jsch/ChannelSftp;->access$1100(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->access$700(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v21

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    const/4 v4, 0x1

    move/from16 v0, v21

    if-ne v0, v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/ChannelSftp$2;->close()V

    const/16 v20, -0x1

    goto/16 :goto_0

    const/4 v0, 0x2

    :cond_e
    new-instance v4, Ljava/io/IOException;

    const-string v5, "error"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->access$700(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->rewind()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v5}, Lcom/jcraft/jsch/ChannelSftp;->access$700(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v5

    iget-object v5, v5, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-static {v4, v5, v6, v7}, Lcom/jcraft/jsch/ChannelSftp;->access$1200(Lcom/jcraft/jsch/ChannelSftp;[BII)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->access$700(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v24

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    add-int/lit8 v4, v4, -0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    sub-int v25, v4, v24

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->offset:J

    move/from16 v0, v24

    int-to-long v6, v0

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->offset:J

    move/from16 v20, v24

    if-lez v20, :cond_19

    move/from16 v18, v20

    move/from16 v0, v18

    move/from16 v1, p3

    if-le v0, v1, :cond_10

    move/from16 v18, p3

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->access$200(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v21

    if-gez v21, :cond_11

    const/16 v20, -0x1

    goto/16 :goto_0

    const/4 v13, 0x4

    :cond_11
    sub-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jsch/ChannelSftp$2;->rest_length:I

    if-lez v20, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_byte:[B

    array-length v4, v4

    move/from16 v0, v20

    if-ge v4, v0, :cond_12

    move/from16 v0, v20

    new-array v4, v0, [B

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_byte:[B

    :cond_12
    const/16 v17, 0x0

    move/from16 v16, v20

    :goto_2
    if-lez v16, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->access$200(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jcraft/jsch/ChannelSftp$2;->rest_byte:[B

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v4, v5, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v23

    if-gtz v23, :cond_17

    :cond_13
    if-lez v25, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->access$200(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;

    move-result-object v4

    move/from16 v0, v25

    int-to-long v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/io/InputStream;->skip(J)J

    :cond_14
    move/from16 v0, v24

    int-to-long v4, v0

    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->length:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->access$900(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jcraft/jsch/ChannelSftp$2;->header:Lcom/jcraft/jsch/ChannelSftp$Header;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v6}, Lcom/jcraft/jsch/ChannelSftp;->access$700(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->cancel(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V

    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/jcraft/jsch/ChannelSftp$2;->val$handle:[B

    move-object/from16 v0, v26

    iget-wide v4, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->offset:J

    move/from16 v0, v24

    int-to-long v6, v0

    add-long v12, v4, v6

    move-object/from16 v0, v26

    iget-wide v4, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->length:J

    move/from16 v0, v24

    int-to-long v6, v0

    sub-long/2addr v4, v6

    long-to-int v14, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4}, Lcom/jcraft/jsch/ChannelSftp;->access$900(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v15

    invoke-static/range {v10 .. v15}, Lcom/jcraft/jsch/ChannelSftp;->access$1000(Lcom/jcraft/jsch/ChannelSftp;[BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v0, v26

    iget-wide v4, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->offset:J

    move-object/from16 v0, v26

    iget-wide v6, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->length:J

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->request_offset:J

    :cond_15
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->request_max:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jcraft/jsch/ChannelSftp$2;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v5}, Lcom/jcraft/jsch/ChannelSftp;->access$900(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->size()I

    move-result v5

    if-ge v4, v5, :cond_16

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->request_max:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->request_max:I

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp$2;->val$monitor:Lcom/jcraft/jsch/SftpProgressMonitor;

    move/from16 v0, v21

    int-to-long v6, v0

    invoke-interface {v4, v6, v7}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/ChannelSftp$2;->close()V

    const/16 v20, -0x1

    goto/16 :goto_0

    const/4 v6, 0x7

    :cond_17
    add-int v17, v17, v23

    sub-int v16, v16, v23

    goto/16 :goto_2

    const/4 v3, 0x3

    :catch_3
    move-exception v19

    new-instance v4, Ljava/io/IOException;

    const-string v5, "error"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_18
    move/from16 v20, v21

    goto/16 :goto_0

    const/4 v14, 0x2

    :cond_19
    const/16 v20, 0x0

    goto/16 :goto_0

    const/4 v9, 0x6
.end method
