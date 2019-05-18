.class public Lcom/jcraft/jsch/ChannelDirectTCPIP;
.super Lcom/jcraft/jsch/Channel;


# static fields
.field private static final LOCAL_MAXIMUM_PACKET_SIZE:I = 0x4000

.field private static final LOCAL_WINDOW_SIZE_MAX:I = 0x20000

.field private static final _type:[B


# instance fields
.field host:Ljava/lang/String;

.field originator_IP_address:Ljava/lang/String;

.field originator_port:I

.field port:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x6

    const-string v0, "direct-tcpip"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->_type:[B

    nop

    return-void

    const/4 v1, 0x1
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, 0x7

    const/high16 v1, 0x20000

    const/4 v2, 0x4

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    const/4 v2, 0x6

    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->originator_IP_address:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->originator_port:I

    const/4 v2, 0x7

    sget-object v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->_type:[B

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->type:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->setLocalWindowSizeMax(I)V

    const/4 v2, 0x7

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->setLocalWindowSize(I)V

    const/4 v2, 0x4

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->setLocalPacketSize(I)V

    const/4 v2, 0x5

    nop

    return-void

    const/4 v2, 0x7
.end method


# virtual methods
.method public connect(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v5, 0x3

    iput p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->connectTimeout:I

    const/4 v5, 0x4

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v5, 0x5

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "session is down"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    :catch_0
    move-exception v1

    const/4 v5, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v2}, Lcom/jcraft/jsch/IO;->close()V

    const/4 v5, 0x0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->io:Lcom/jcraft/jsch/IO;

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->del(Lcom/jcraft/jsch/Channel;)V

    const/4 v5, 0x5

    instance-of v2, v1, Lcom/jcraft/jsch/JSchException;

    if-eqz v2, :cond_2

    const/4 v5, 0x0

    check-cast v1, Lcom/jcraft/jsch/JSchException;

    throw v1

    const/4 v5, 0x6

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->io:Lcom/jcraft/jsch/IO;

    iget-object v2, v2, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_3

    const/4 v5, 0x1

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->thread:Ljava/lang/Thread;

    const/4 v5, 0x5

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->thread:Ljava/lang/Thread;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "DirectTCPIP thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v5, 0x5

    iget-boolean v2, v0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    if-eqz v2, :cond_1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->thread:Ljava/lang/Thread;

    iget-boolean v3, v0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    const/4 v5, 0x2

    :cond_1
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->thread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const/4 v5, 0x4

    :cond_2
    :goto_0
    nop

    return-void

    const/4 v4, 0x0

    const/4 v5, 0x6

    :cond_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->sendChannelOpen()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    const/4 v2, 0x1
.end method

.method protected genChannelOpenPacket()Lcom/jcraft/jsch/Packet;
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x4

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->host:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->originator_IP_address:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x54

    invoke-direct {v0, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    const/4 v4, 0x5

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v4, 0x7

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v4, 0x5

    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->type:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x7

    iget v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->id:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v4, 0x6

    iget v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->lwsize:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v4, 0x5

    iget v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->lmpsize:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->host:Ljava/lang/String;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x7

    iget v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->port:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->originator_IP_address:Ljava/lang/String;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x3

    iget v2, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->originator_port:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v4, 0x6

    return-object v1

    const/4 v0, 0x0
.end method

.method init()V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x2

    new-instance v0, Lcom/jcraft/jsch/IO;

    invoke-direct {v0}, Lcom/jcraft/jsch/IO;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->io:Lcom/jcraft/jsch/IO;

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x2
.end method

.method public run()V
    .locals 9

    const/4 v8, 0x1

    const/4 v8, 0x2

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->sendChannelOpen()V

    const/4 v8, 0x3

    new-instance v1, Lcom/jcraft/jsch/Buffer;

    iget v4, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->rmpsize:I

    invoke-direct {v1, v4}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    const/4 v8, 0x0

    new-instance v3, Lcom/jcraft/jsch/Packet;

    invoke-direct {v3, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v8, 0x4

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    const/4 v8, 0x7

    const/4 v2, 0x0

    const/4 v8, 0x3

    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->thread:Ljava/lang/Thread;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->io:Lcom/jcraft/jsch/IO;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->io:Lcom/jcraft/jsch/IO;

    iget-object v4, v4, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-eqz v4, :cond_0

    const/4 v8, 0x5

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->io:Lcom/jcraft/jsch/IO;

    iget-object v4, v4, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    iget-object v5, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/16 v6, 0xe

    iget-object v7, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v7, v7

    add-int/lit8 v7, v7, -0xe

    add-int/lit8 v7, v7, -0x54

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v8, 0x4

    if-gtz v2, :cond_1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->eof()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x6

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->disconnect()V

    const/4 v8, 0x2

    nop

    return-void

    const/4 v5, 0x0

    const/4 v8, 0x4

    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v8, 0x1

    const/16 v4, 0x5e

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v8, 0x1

    iget v4, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->recipient:I

    invoke-virtual {v1, v4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v8, 0x5

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v8, 0x5

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    const/4 v8, 0x4

    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v8, 0x5

    :try_start_2
    iget-boolean v4, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->close:Z

    if-eqz v4, :cond_2

    const/4 v8, 0x6

    monitor-exit p0

    goto :goto_1

    const/4 v1, 0x5

    const/4 v8, 0x6

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v8, 0x2

    :catch_0
    move-exception v4

    goto :goto_1

    const/4 v2, 0x0

    const/4 v8, 0x5

    :cond_2
    :try_start_4
    invoke-virtual {v0, v3, p0, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    const/4 v8, 0x1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    const/4 v3, 0x1
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->host:Ljava/lang/String;

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setOrgIPAddress(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->originator_IP_address:Ljava/lang/String;

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setOrgPort(I)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x0

    iput p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->originator_port:I

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public setPort(I)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x5

    iput p1, p0, Lcom/jcraft/jsch/ChannelDirectTCPIP;->port:I

    nop

    return-void

    const/4 v0, 0x1
.end method
