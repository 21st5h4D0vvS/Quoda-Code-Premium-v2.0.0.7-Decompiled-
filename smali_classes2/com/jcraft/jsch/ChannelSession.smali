.class Lcom/jcraft/jsch/ChannelSession;
.super Lcom/jcraft/jsch/Channel;


# static fields
.field private static _session:[B


# instance fields
.field protected agent_forwarding:Z

.field protected env:Ljava/util/Hashtable;

.field protected pty:Z

.field protected tcol:I

.field protected terminal_mode:[B

.field protected thp:I

.field protected trow:I

.field protected ttype:Ljava/lang/String;

.field protected twp:I

.field protected xforwading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x4

    const-string v0, "session"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/ChannelSession;->_session:[B

    nop

    return-void

    const/4 v0, 0x1
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    const/4 v2, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->agent_forwarding:Z

    const/4 v2, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->xforwading:Z

    const/4 v2, 0x2

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->env:Ljava/util/Hashtable;

    const/4 v2, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->pty:Z

    const/4 v2, 0x6

    const-string v0, "vt100"

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->ttype:Ljava/lang/String;

    const/4 v2, 0x3

    const/16 v0, 0x50

    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->tcol:I

    const/4 v2, 0x3

    const/16 v0, 0x18

    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->trow:I

    const/4 v2, 0x1

    const/16 v0, 0x280

    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->twp:I

    const/4 v2, 0x2

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSession;->thp:I

    const/4 v2, 0x5

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->terminal_mode:[B

    const/4 v2, 0x4

    sget-object v0, Lcom/jcraft/jsch/ChannelSession;->_session:[B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->type:[B

    const/4 v2, 0x0

    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->io:Lcom/jcraft/jsch/IO;

    const/4 v2, 0x7

    nop

    return-void

    const/4 v0, 0x3
.end method

.method private getEnv()Ljava/util/Hashtable;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->env:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v1, 0x4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->env:Ljava/util/Hashtable;

    const/4 v1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->env:Ljava/util/Hashtable;

    return-object v0

    const/4 v1, 0x7
.end method

.method private toByteArray(Ljava/lang/Object;)[B
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    return-object p1

    const/4 v1, 0x6

    :cond_0
    check-cast p1, [B

    check-cast p1, [B

    goto :goto_0

    const/4 v0, 0x0
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    const/4 v8, 0x0

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    iget v4, p0, Lcom/jcraft/jsch/ChannelSession;->rmpsize:I

    invoke-direct {v1, v4}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    const/4 v8, 0x3

    new-instance v3, Lcom/jcraft/jsch/Packet;

    invoke-direct {v3, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v8, 0x5

    const/4 v2, -0x1

    const/4 v8, 0x2

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSession;->thread:Ljava/lang/Thread;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSession;->io:Lcom/jcraft/jsch/IO;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSession;->io:Lcom/jcraft/jsch/IO;

    iget-object v4, v4, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-eqz v4, :cond_1

    const/4 v8, 0x7

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSession;->io:Lcom/jcraft/jsch/IO;

    iget-object v4, v4, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    iget-object v5, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/16 v6, 0xe

    iget-object v7, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v7, v7

    add-int/lit8 v7, v7, -0xe

    add-int/lit8 v7, v7, -0x54

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v8, 0x2

    if-eqz v2, :cond_0

    const/4 v8, 0x2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->eof()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x6

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSession;->thread:Ljava/lang/Thread;

    const/4 v8, 0x0

    if-eqz v0, :cond_2

    const/4 v8, 0x0

    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x3

    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/jcraft/jsch/ChannelSession;->thread:Ljava/lang/Thread;

    const/4 v8, 0x5

    nop

    return-void

    const/4 v3, 0x5

    const/4 v8, 0x3

    :cond_3
    :try_start_2
    iget-boolean v4, p0, Lcom/jcraft/jsch/ChannelSession;->close:Z

    if-nez v4, :cond_1

    const/4 v8, 0x6

    invoke-virtual {v3}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v8, 0x6

    const/16 v4, 0x5e

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v8, 0x6

    iget v4, p0, Lcom/jcraft/jsch/ChannelSession;->recipient:I

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v8, 0x7

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v8, 0x5

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    const/4 v8, 0x6

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v4

    invoke-virtual {v4, v3, p0, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    const/4 v3, 0x7

    const/4 v8, 0x3

    :catch_0
    move-exception v4

    goto :goto_1

    const/4 v2, 0x5

    const/4 v8, 0x7

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method protected sendRequests()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v10, 0x6

    const/4 v10, 0x3

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    const/4 v10, 0x5

    iget-boolean v5, p0, Lcom/jcraft/jsch/ChannelSession;->agent_forwarding:Z

    if-eqz v5, :cond_0

    const/4 v10, 0x1

    new-instance v3, Lcom/jcraft/jsch/RequestAgentForwarding;

    invoke-direct {v3}, Lcom/jcraft/jsch/RequestAgentForwarding;-><init>()V

    const/4 v10, 0x6

    invoke-virtual {v3, v1, p0}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    const/4 v10, 0x6

    :cond_0
    iget-boolean v5, p0, Lcom/jcraft/jsch/ChannelSession;->xforwading:Z

    if-eqz v5, :cond_1

    const/4 v10, 0x4

    new-instance v3, Lcom/jcraft/jsch/RequestX11;

    invoke-direct {v3}, Lcom/jcraft/jsch/RequestX11;-><init>()V

    const/4 v10, 0x1

    invoke-virtual {v3, v1, p0}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    const/4 v10, 0x5

    :cond_1
    iget-boolean v5, p0, Lcom/jcraft/jsch/ChannelSession;->pty:Z

    if-eqz v5, :cond_3

    const/4 v10, 0x3

    new-instance v3, Lcom/jcraft/jsch/RequestPtyReq;

    invoke-direct {v3}, Lcom/jcraft/jsch/RequestPtyReq;-><init>()V

    move-object v5, v3

    const/4 v10, 0x2

    check-cast v5, Lcom/jcraft/jsch/RequestPtyReq;

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSession;->ttype:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/RequestPtyReq;->setTType(Ljava/lang/String;)V

    move-object v5, v3

    const/4 v10, 0x4

    check-cast v5, Lcom/jcraft/jsch/RequestPtyReq;

    iget v6, p0, Lcom/jcraft/jsch/ChannelSession;->tcol:I

    iget v7, p0, Lcom/jcraft/jsch/ChannelSession;->trow:I

    iget v8, p0, Lcom/jcraft/jsch/ChannelSession;->twp:I

    iget v9, p0, Lcom/jcraft/jsch/ChannelSession;->thp:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/jcraft/jsch/RequestPtyReq;->setTSize(IIII)V

    const/4 v10, 0x3

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSession;->terminal_mode:[B

    if-eqz v5, :cond_2

    move-object v5, v3

    const/4 v10, 0x2

    check-cast v5, Lcom/jcraft/jsch/RequestPtyReq;

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSession;->terminal_mode:[B

    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/RequestPtyReq;->setTerminalMode([B)V

    const/4 v10, 0x3

    :cond_2
    invoke-virtual {v3, v1, p0}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    const/4 v10, 0x5

    :cond_3
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSession;->env:Ljava/util/Hashtable;

    if-eqz v5, :cond_4

    const/4 v10, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSession;->env:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v10, 0x7

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    const/4 v10, 0x6

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSession;->env:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v10, 0x3

    new-instance v3, Lcom/jcraft/jsch/RequestEnv;

    invoke-direct {v3}, Lcom/jcraft/jsch/RequestEnv;-><init>()V

    move-object v5, v3

    const/4 v10, 0x0

    check-cast v5, Lcom/jcraft/jsch/RequestEnv;

    invoke-direct {p0, v2}, Lcom/jcraft/jsch/ChannelSession;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v6

    invoke-direct {p0, v4}, Lcom/jcraft/jsch/ChannelSession;->toByteArray(Ljava/lang/Object;)[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/jcraft/jsch/RequestEnv;->setEnv([B[B)V

    const/4 v10, 0x2

    invoke-virtual {v3, v1, p0}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    goto :goto_0

    const/4 v9, 0x0

    const/4 v10, 0x4

    :cond_4
    nop

    return-void

    const/4 v7, 0x4
.end method

.method public setAgentForwarding(Z)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x5

    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSession;->agent_forwarding:Z

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setEnv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x2

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSession;->setEnv([B[B)V

    const/4 v2, 0x1

    nop

    return-void

    const/4 v2, 0x1
.end method

.method public setEnv(Ljava/util/Hashtable;)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x7

    monitor-enter p0

    const/4 v1, 0x3

    :try_start_0
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSession;->env:Ljava/util/Hashtable;

    const/4 v1, 0x3

    monitor-exit p0

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x2

    const/4 v1, 0x6

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setEnv([B[B)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x4

    monitor-enter p0

    const/4 v1, 0x7

    :try_start_0
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;->getEnv()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    monitor-exit p0

    const/4 v1, 0x4

    nop

    return-void

    const/4 v0, 0x1

    const/4 v1, 0x5

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPty(Z)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x7

    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSession;->pty:Z

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public setPtySize(IIII)V
    .locals 8

    const/4 v7, 0x5

    const/4 v7, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSession;->ttype:Ljava/lang/String;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSession;->setPtyType(Ljava/lang/String;IIII)V

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSession;->pty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v7, 0x4

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v1, 0x3

    const/4 v7, 0x0

    :cond_1
    :try_start_0
    new-instance v6, Lcom/jcraft/jsch/RequestWindowChange;

    invoke-direct {v6}, Lcom/jcraft/jsch/RequestWindowChange;-><init>()V

    const/4 v7, 0x2

    invoke-virtual {v6, p1, p2, p3, p4}, Lcom/jcraft/jsch/RequestWindowChange;->setSize(IIII)V

    const/4 v7, 0x4

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSession;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    invoke-virtual {v6, v0, p0}, Lcom/jcraft/jsch/RequestWindowChange;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v3, 0x1

    const/4 v7, 0x7

    :catch_0
    move-exception v0

    goto :goto_0

    const/4 v1, 0x4
.end method

.method public setPtyType(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x7

    const/4 v6, 0x5

    const/16 v2, 0x50

    const/16 v3, 0x18

    const/16 v4, 0x280

    const/16 v5, 0x1e0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSession;->setPtyType(Ljava/lang/String;IIII)V

    const/4 v6, 0x5

    nop

    return-void

    const/4 v4, 0x6
.end method

.method public setPtyType(Ljava/lang/String;IIII)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSession;->ttype:Ljava/lang/String;

    const/4 v0, 0x1

    iput p2, p0, Lcom/jcraft/jsch/ChannelSession;->tcol:I

    const/4 v0, 0x6

    iput p3, p0, Lcom/jcraft/jsch/ChannelSession;->trow:I

    const/4 v0, 0x1

    iput p4, p0, Lcom/jcraft/jsch/ChannelSession;->twp:I

    const/4 v0, 0x6

    iput p5, p0, Lcom/jcraft/jsch/ChannelSession;->thp:I

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setTerminalMode([B)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSession;->terminal_mode:[B

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setXForwarding(Z)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/jcraft/jsch/ChannelSession;->xforwading:Z

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x5
.end method
