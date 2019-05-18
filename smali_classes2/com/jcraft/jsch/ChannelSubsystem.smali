.class public Lcom/jcraft/jsch/ChannelSubsystem;
.super Lcom/jcraft/jsch/ChannelSession;


# instance fields
.field pty:Z

.field subsystem:Ljava/lang/String;

.field want_reply:Z

.field xforwading:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    const/4 v1, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->xforwading:Z

    const/4 v1, 0x5

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->pty:Z

    const/4 v1, 0x6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->want_reply:Z

    const/4 v1, 0x3

    const-string v0, ""

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->subsystem:Ljava/lang/String;

    nop

    return-void

    const/4 v1, 0x0
.end method


# virtual methods
.method public getErrStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSubsystem;->getExtInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    const/4 v1, 0x7
.end method

.method init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v2, 0x6

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSubsystem;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSubsystem;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSubsystem;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    const/4 v2, 0x7

    nop

    return-void

    const/4 v2, 0x2
.end method

.method public setErrStream(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x3

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/ChannelSubsystem;->setExtOutputStream(Ljava/io/OutputStream;)V

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public setPty(Z)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->pty:Z

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setSubsystem(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->subsystem:Ljava/lang/String;

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setWantReply(Z)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x7

    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->want_reply:Z

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setXForwarding(Z)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSubsystem;->xforwading:Z

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public start()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v6, 0x6

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSubsystem;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    const/4 v6, 0x3

    :try_start_0
    iget-boolean v3, p0, Lcom/jcraft/jsch/ChannelSubsystem;->xforwading:Z

    if-eqz v3, :cond_0

    const/4 v6, 0x6

    new-instance v2, Lcom/jcraft/jsch/RequestX11;

    invoke-direct {v2}, Lcom/jcraft/jsch/RequestX11;-><init>()V

    const/4 v6, 0x5

    invoke-virtual {v2, v0, p0}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    const/4 v6, 0x5

    :cond_0
    iget-boolean v3, p0, Lcom/jcraft/jsch/ChannelSubsystem;->pty:Z

    if-eqz v3, :cond_1

    const/4 v6, 0x0

    new-instance v2, Lcom/jcraft/jsch/RequestPtyReq;

    invoke-direct {v2}, Lcom/jcraft/jsch/RequestPtyReq;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v2, v0, p0}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    const/4 v6, 0x3

    :cond_1
    new-instance v2, Lcom/jcraft/jsch/RequestSubsystem;

    invoke-direct {v2}, Lcom/jcraft/jsch/RequestSubsystem;-><init>()V

    const/4 v6, 0x6

    check-cast v2, Lcom/jcraft/jsch/RequestSubsystem;

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSubsystem;->subsystem:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/jcraft/jsch/ChannelSubsystem;->want_reply:Z

    invoke-virtual {v2, v0, p0, v3, v4}, Lcom/jcraft/jsch/RequestSubsystem;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x6

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSubsystem;->io:Lcom/jcraft/jsch/IO;

    iget-object v3, v3, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-eqz v3, :cond_3

    const/4 v6, 0x6

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/jcraft/jsch/ChannelSubsystem;->thread:Ljava/lang/Thread;

    const/4 v6, 0x7

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSubsystem;->thread:Ljava/lang/Thread;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Subsystem for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v6, 0x6

    iget-boolean v3, v0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    if-eqz v3, :cond_2

    const/4 v6, 0x7

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSubsystem;->thread:Ljava/lang/Thread;

    iget-boolean v4, v0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    const/4 v6, 0x5

    :cond_2
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSubsystem;->thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    const/4 v6, 0x5

    :cond_3
    nop

    return-void

    const/4 v2, 0x2

    const/4 v6, 0x6

    :catch_0
    move-exception v1

    const/4 v6, 0x4

    instance-of v3, v1, Lcom/jcraft/jsch/JSchException;

    if-eqz v3, :cond_4

    check-cast v1, Lcom/jcraft/jsch/JSchException;

    throw v1

    const/4 v6, 0x3

    :cond_4
    instance-of v3, v1, Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    const/4 v6, 0x7

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    const-string v4, "ChannelSubsystem"

    invoke-direct {v3, v4, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    const/4 v6, 0x5

    :cond_5
    new-instance v3, Lcom/jcraft/jsch/JSchException;

    const-string v4, "ChannelSubsystem"

    invoke-direct {v3, v4}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
