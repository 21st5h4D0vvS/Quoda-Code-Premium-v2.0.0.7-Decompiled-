.class public Lcom/jcraft/jsch/ChannelShell;
.super Lcom/jcraft/jsch/ChannelSession;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    const/4 v1, 0x1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelShell;->pty:Z

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v2, 0x7

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelShell;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelShell;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelShell;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelShell;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v1, v1, Lcom/jcraft/jsch/Session;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    const/4 v2, 0x7

    nop

    return-void

    const/4 v2, 0x2
.end method

.method public start()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelShell;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelShell;->sendRequests()V

    const/4 v6, 0x7

    new-instance v2, Lcom/jcraft/jsch/RequestShell;

    invoke-direct {v2}, Lcom/jcraft/jsch/RequestShell;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v2, v0, p0}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x4

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelShell;->io:Lcom/jcraft/jsch/IO;

    iget-object v3, v3, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-eqz v3, :cond_1

    const/4 v6, 0x6

    new-instance v3, Ljava/lang/Thread;

    invoke-direct {v3, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/jcraft/jsch/ChannelShell;->thread:Ljava/lang/Thread;

    const/4 v6, 0x6

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelShell;->thread:Ljava/lang/Thread;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Shell for "

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

    if-eqz v3, :cond_0

    const/4 v6, 0x4

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelShell;->thread:Ljava/lang/Thread;

    iget-boolean v4, v0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setDaemon(Z)V

    const/4 v6, 0x6

    :cond_0
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelShell;->thread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    const/4 v6, 0x1

    :cond_1
    nop

    return-void

    const/4 v2, 0x3

    const/4 v6, 0x5

    :catch_0
    move-exception v1

    const/4 v6, 0x7

    instance-of v3, v1, Lcom/jcraft/jsch/JSchException;

    if-eqz v3, :cond_2

    check-cast v1, Lcom/jcraft/jsch/JSchException;

    throw v1

    const/4 v6, 0x3

    :cond_2
    instance-of v3, v1, Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    const/4 v6, 0x1

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    const-string v4, "ChannelShell"

    invoke-direct {v3, v4, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    const/4 v6, 0x4

    :cond_3
    new-instance v3, Lcom/jcraft/jsch/JSchException;

    const-string v4, "ChannelShell"

    invoke-direct {v3, v4}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
