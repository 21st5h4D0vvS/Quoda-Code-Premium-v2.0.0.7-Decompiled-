.class abstract Lcom/jcraft/jsch/Request;
.super Ljava/lang/Object;


# instance fields
.field private channel:Lcom/jcraft/jsch/Channel;

.field private reply:Z

.field private session:Lcom/jcraft/jsch/Session;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Request;->reply:Z

    const/4 v2, 0x5

    iput-object v1, p0, Lcom/jcraft/jsch/Request;->session:Lcom/jcraft/jsch/Session;

    const/4 v2, 0x5

    iput-object v1, p0, Lcom/jcraft/jsch/Request;->channel:Lcom/jcraft/jsch/Channel;

    nop

    return-void

    const/4 v2, 0x7
.end method


# virtual methods
.method request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v1, 0x4

    iput-object p1, p0, Lcom/jcraft/jsch/Request;->session:Lcom/jcraft/jsch/Session;

    const/4 v1, 0x5

    iput-object p2, p0, Lcom/jcraft/jsch/Request;->channel:Lcom/jcraft/jsch/Channel;

    const/4 v1, 0x7

    iget v0, p2, Lcom/jcraft/jsch/Channel;->connectTimeout:I

    if-lez v0, :cond_0

    const/4 v1, 0x2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Request;->setReply(Z)V

    const/4 v1, 0x7

    :cond_0
    nop

    return-void

    const/4 v0, 0x1
.end method

.method setReply(Z)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x4

    iput-boolean p1, p0, Lcom/jcraft/jsch/Request;->reply:Z

    nop

    return-void

    const/4 v0, 0x7
.end method

.method waitForReply()Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/jcraft/jsch/Request;->reply:Z

    return v0

    const/4 v0, 0x1
.end method

.method write(Lcom/jcraft/jsch/Packet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x7

    const/4 v6, -0x1

    const/4 v7, 0x0

    iget-boolean v4, p0, Lcom/jcraft/jsch/Request;->reply:Z

    if-eqz v4, :cond_0

    const/4 v7, 0x5

    iget-object v4, p0, Lcom/jcraft/jsch/Request;->channel:Lcom/jcraft/jsch/Channel;

    iput v6, v4, Lcom/jcraft/jsch/Channel;->reply:I

    const/4 v7, 0x3

    :cond_0
    iget-object v4, p0, Lcom/jcraft/jsch/Request;->session:Lcom/jcraft/jsch/Session;

    invoke-virtual {v4, p1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v7, 0x0

    iget-boolean v4, p0, Lcom/jcraft/jsch/Request;->reply:Z

    if-eqz v4, :cond_3

    const/4 v7, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v7, 0x6

    iget-object v4, p0, Lcom/jcraft/jsch/Request;->channel:Lcom/jcraft/jsch/Channel;

    iget v4, v4, Lcom/jcraft/jsch/Channel;->connectTimeout:I

    int-to-long v2, v4

    const/4 v7, 0x2

    :cond_1
    iget-object v4, p0, Lcom/jcraft/jsch/Request;->channel:Lcom/jcraft/jsch/Channel;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Channel;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/jcraft/jsch/Request;->channel:Lcom/jcraft/jsch/Channel;

    iget v4, v4, Lcom/jcraft/jsch/Channel;->reply:I

    if-ne v4, v6, :cond_2

    const/4 v7, 0x6

    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x7

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/Request;->channel:Lcom/jcraft/jsch/Channel;

    const/4 v5, 0x0

    iput v5, v4, Lcom/jcraft/jsch/Channel;->reply:I

    const/4 v7, 0x3

    new-instance v4, Lcom/jcraft/jsch/JSchException;

    const-string v5, "channel request: timeout"

    invoke-direct {v4, v5}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v4

    const/4 v7, 0x2

    :cond_2
    iget-object v4, p0, Lcom/jcraft/jsch/Request;->channel:Lcom/jcraft/jsch/Channel;

    iget v4, v4, Lcom/jcraft/jsch/Channel;->reply:I

    if-nez v4, :cond_3

    const/4 v7, 0x2

    new-instance v4, Lcom/jcraft/jsch/JSchException;

    const-string v5, "failed to send channel request"

    invoke-direct {v4, v5}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v4

    const/4 v7, 0x6

    :catch_0
    move-exception v4

    goto :goto_0

    const/4 v4, 0x4

    const/4 v7, 0x3

    :cond_3
    nop

    return-void

    const/4 v4, 0x4
.end method
