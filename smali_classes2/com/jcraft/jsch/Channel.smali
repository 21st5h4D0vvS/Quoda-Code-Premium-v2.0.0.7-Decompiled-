.class public abstract Lcom/jcraft/jsch/Channel;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/Channel$PassiveOutputStream;,
        Lcom/jcraft/jsch/Channel$PassiveInputStream;,
        Lcom/jcraft/jsch/Channel$MyPipedInputStream;
    }
.end annotation


# static fields
.field static final SSH_MSG_CHANNEL_OPEN_CONFIRMATION:I = 0x5b

.field static final SSH_MSG_CHANNEL_OPEN_FAILURE:I = 0x5c

.field static final SSH_MSG_CHANNEL_WINDOW_ADJUST:I = 0x5d

.field static final SSH_OPEN_ADMINISTRATIVELY_PROHIBITED:I = 0x1

.field static final SSH_OPEN_CONNECT_FAILED:I = 0x2

.field static final SSH_OPEN_RESOURCE_SHORTAGE:I = 0x4

.field static final SSH_OPEN_UNKNOWN_CHANNEL_TYPE:I = 0x3

.field static index:I

.field private static pool:Ljava/util/Vector;


# instance fields
.field volatile close:Z

.field volatile connectTimeout:I

.field volatile connected:Z

.field volatile eof_local:Z

.field volatile eof_remote:Z

.field volatile exitstatus:I

.field id:I

.field io:Lcom/jcraft/jsch/IO;

.field volatile lmpsize:I

.field volatile lwsize:I

.field volatile lwsize_max:I

.field notifyme:I

.field volatile open_confirmation:Z

.field volatile recipient:I

.field volatile reply:I

.field volatile rmpsize:I

.field volatile rwsize:J

.field private session:Lcom/jcraft/jsch/Session;

.field thread:Ljava/lang/Thread;

.field protected type:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x5

    const/4 v0, 0x0

    sput v0, Lcom/jcraft/jsch/Channel;->index:I

    const/4 v1, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    nop

    return-void

    const/4 v1, 0x5
.end method

.method constructor <init>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x2

    iput v3, p0, Lcom/jcraft/jsch/Channel;->recipient:I

    const/4 v5, 0x2

    const-string v0, "foo"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->type:[B

    const/4 v5, 0x1

    const/high16 v0, 0x100000

    iput v0, p0, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    const/4 v5, 0x4

    iget v0, p0, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    iput v0, p0, Lcom/jcraft/jsch/Channel;->lwsize:I

    const/4 v5, 0x1

    const/16 v0, 0x4000

    iput v0, p0, Lcom/jcraft/jsch/Channel;->lmpsize:I

    const/4 v5, 0x1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jcraft/jsch/Channel;->rwsize:J

    const/4 v5, 0x4

    iput v2, p0, Lcom/jcraft/jsch/Channel;->rmpsize:I

    const/4 v5, 0x3

    iput-object v4, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    const/4 v5, 0x6

    iput-object v4, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;

    const/4 v5, 0x7

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->eof_local:Z

    const/4 v5, 0x2

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->eof_remote:Z

    const/4 v5, 0x6

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->close:Z

    const/4 v5, 0x4

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    const/4 v5, 0x1

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->open_confirmation:Z

    const/4 v5, 0x1

    iput v3, p0, Lcom/jcraft/jsch/Channel;->exitstatus:I

    const/4 v5, 0x7

    iput v2, p0, Lcom/jcraft/jsch/Channel;->reply:I

    const/4 v5, 0x3

    iput v2, p0, Lcom/jcraft/jsch/Channel;->connectTimeout:I

    const/4 v5, 0x5

    iput v2, p0, Lcom/jcraft/jsch/Channel;->notifyme:I

    const/4 v5, 0x0

    sget-object v1, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    monitor-enter v1

    const/4 v5, 0x7

    :try_start_0
    sget v0, Lcom/jcraft/jsch/Channel;->index:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/jcraft/jsch/Channel;->index:I

    iput v0, p0, Lcom/jcraft/jsch/Channel;->id:I

    const/4 v5, 0x3

    sget-object v0, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v5, 0x0

    monitor-exit v1

    const/4 v5, 0x3

    nop

    return-void

    const/4 v1, 0x7

    const/4 v5, 0x3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static del(Lcom/jcraft/jsch/Channel;)V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x6

    sget-object v1, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    monitor-enter v1

    const/4 v2, 0x4

    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    monitor-exit v1

    const/4 v2, 0x7

    nop

    return-void

    const/4 v0, 0x2

    const/4 v2, 0x4

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static disconnect(Lcom/jcraft/jsch/Session;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v8, 0x3

    const/4 v2, 0x0

    const/4 v8, 0x4

    const/4 v3, 0x0

    const/4 v8, 0x2

    sget-object v7, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    monitor-enter v7

    const/4 v8, 0x2

    :try_start_0
    sget-object v6, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v2, v6, [Lcom/jcraft/jsch/Channel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x4

    const/4 v5, 0x0

    move v4, v3

    :goto_0
    :try_start_1
    sget-object v6, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-ge v5, v6, :cond_0

    const/4 v8, 0x2

    :try_start_2
    sget-object v6, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jcraft/jsch/Channel;

    move-object v0, v6

    check-cast v0, Lcom/jcraft/jsch/Channel;

    move-object v1, v0

    const/4 v8, 0x7

    iget-object v6, v1, Lcom/jcraft/jsch/Channel;->session:Lcom/jcraft/jsch/Session;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v6, p0, :cond_2

    const/4 v8, 0x7

    add-int/lit8 v3, v4, 0x1

    :try_start_3
    aput-object v1, v2, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v8, 0x1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    goto :goto_0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :cond_0
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v8, 0x7

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_1

    const/4 v8, 0x5

    aget-object v6, v2, v5

    invoke-virtual {v6}, Lcom/jcraft/jsch/Channel;->disconnect()V

    const/4 v8, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    const/4 v5, 0x5

    const/4 v8, 0x4

    :catchall_0
    move-exception v6

    :goto_3
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    const/4 v8, 0x7

    :cond_1
    nop

    return-void

    const/4 v1, 0x0

    const/4 v8, 0x6

    :catchall_1
    move-exception v6

    move v3, v4

    goto :goto_3

    const/4 v7, 0x7

    const/4 v8, 0x0

    :catch_0
    move-exception v6

    move v3, v4

    goto :goto_1

    const/4 v7, 0x6

    :catch_1
    move-exception v6

    goto :goto_1

    const/4 v0, 0x2

    :cond_2
    move v3, v4

    goto :goto_1

    const/4 v1, 0x7
.end method

.method static getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;
    .locals 6

    const/4 v5, 0x6

    const/4 v5, 0x0

    sget-object v4, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    monitor-enter v4

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    const/4 v5, 0x1

    sget-object v3, Lcom/jcraft/jsch/Channel;->pool:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/Channel;

    move-object v0, v3

    check-cast v0, Lcom/jcraft/jsch/Channel;

    move-object v1, v0

    const/4 v5, 0x7

    iget v3, v1, Lcom/jcraft/jsch/Channel;->id:I

    if-ne v3, p0, :cond_0

    iget-object v3, v1, Lcom/jcraft/jsch/Channel;->session:Lcom/jcraft/jsch/Session;

    if-ne v3, p1, :cond_0

    monitor-exit v4

    const/4 v5, 0x3

    :goto_1
    return-object v1

    const/4 v5, 0x3

    const/4 v5, 0x0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v2, 0x4

    const/4 v5, 0x2

    :cond_1
    monitor-exit v4

    const/4 v5, 0x1

    const/4 v1, 0x0

    goto :goto_1

    const/4 v3, 0x5

    const/4 v5, 0x2

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method static getChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x0

    const-string v0, "session"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    new-instance v0, Lcom/jcraft/jsch/ChannelSession;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    const/4 v1, 0x2

    :goto_0
    return-object v0

    const/4 v0, 0x2

    const/4 v1, 0x1

    :cond_0
    const-string v0, "shell"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    new-instance v0, Lcom/jcraft/jsch/ChannelShell;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelShell;-><init>()V

    goto :goto_0

    const/4 v0, 0x4

    const/4 v1, 0x6

    :cond_1
    const-string v0, "exec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    new-instance v0, Lcom/jcraft/jsch/ChannelExec;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelExec;-><init>()V

    goto :goto_0

    const/4 v0, 0x3

    const/4 v1, 0x1

    :cond_2
    const-string v0, "x11"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    new-instance v0, Lcom/jcraft/jsch/ChannelX11;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelX11;-><init>()V

    goto :goto_0

    const/4 v1, 0x0

    const/4 v1, 0x7

    :cond_3
    const-string v0, "auth-agent@openssh.com"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x4

    new-instance v0, Lcom/jcraft/jsch/ChannelAgentForwarding;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelAgentForwarding;-><init>()V

    goto :goto_0

    const/4 v1, 0x5

    const/4 v1, 0x0

    :cond_4
    const-string v0, "direct-tcpip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    new-instance v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;-><init>()V

    goto :goto_0

    const/4 v1, 0x2

    const/4 v1, 0x6

    :cond_5
    const-string v0, "forwarded-tcpip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    new-instance v0, Lcom/jcraft/jsch/ChannelForwardedTCPIP;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;-><init>()V

    goto :goto_0

    const/4 v0, 0x0

    const/4 v1, 0x3

    :cond_6
    const-string v0, "sftp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x4

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSftp;-><init>()V

    goto :goto_0

    const/4 v1, 0x1

    const/4 v1, 0x4

    :cond_7
    const-string v0, "subsystem"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    new-instance v0, Lcom/jcraft/jsch/ChannelSubsystem;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelSubsystem;-><init>()V

    goto/16 :goto_0

    const/4 v0, 0x1

    const/4 v1, 0x2

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    const/4 v1, 0x6
.end method


# virtual methods
.method declared-synchronized addRemoteWindowSize(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v4, 0x7

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/jcraft/jsch/Channel;->rwsize:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/jcraft/jsch/Channel;->rwsize:J

    const/4 v4, 0x1

    iget v0, p0, Lcom/jcraft/jsch/Channel;->notifyme:I

    if-lez v0, :cond_0

    const/4 v4, 0x3

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x6

    :cond_0
    monitor-exit p0

    nop

    return-void

    const/4 v4, 0x2

    const/4 v4, 0x2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method close()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x2

    iget-boolean v2, p0, Lcom/jcraft/jsch/Channel;->close:Z

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    :goto_0
    nop

    return-void

    const/4 v0, 0x4

    const/4 v4, 0x5

    :cond_0
    iput-boolean v3, p0, Lcom/jcraft/jsch/Channel;->close:Z

    const/4 v4, 0x1

    iput-boolean v3, p0, Lcom/jcraft/jsch/Channel;->eof_remote:Z

    iput-boolean v3, p0, Lcom/jcraft/jsch/Channel;->eof_local:Z

    const/4 v4, 0x3

    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    const/4 v4, 0x2

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v4, 0x6

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v4, 0x6

    const/16 v2, 0x61

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v4, 0x4

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x6

    :try_start_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v4, 0x7

    monitor-exit p0

    goto :goto_0

    const/4 v2, 0x2

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v4, 0x4

    :catch_0
    move-exception v2

    goto :goto_0

    const/4 v2, 0x0
.end method

.method public connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->connect(I)V

    const/4 v1, 0x5

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public connect(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v3, 0x0

    iput p1, p0, Lcom/jcraft/jsch/Channel;->connectTimeout:I

    const/4 v3, 0x6

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->sendChannelOpen()V

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x3

    nop

    return-void

    const/4 v1, 0x0

    const/4 v3, 0x5

    :catch_0
    move-exception v0

    const/4 v3, 0x6

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    const/4 v3, 0x4

    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v1, :cond_0

    const/4 v3, 0x7

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    const/4 v3, 0x4

    :cond_0
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disconnect()V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x4

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x2

    :try_start_1
    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    if-nez v0, :cond_0

    const/4 v1, 0x3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x4

    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->del(Lcom/jcraft/jsch/Channel;)V

    const/4 v1, 0x2

    :goto_0
    nop

    return-void

    const/4 v1, 0x3

    const/4 v1, 0x0

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    const/4 v1, 0x2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x3

    :try_start_3
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->close()V

    const/4 v1, 0x1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->eof_local:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->eof_remote:Z

    const/4 v1, 0x2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Channel;->thread:Ljava/lang/Thread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v1, 0x2

    :try_start_4
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->del(Lcom/jcraft/jsch/Channel;)V

    goto :goto_0

    const/4 v1, 0x6

    const/4 v1, 0x5

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v1, 0x1

    :catchall_1
    move-exception v0

    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->del(Lcom/jcraft/jsch/Channel;)V

    throw v0

    const/4 v1, 0x5

    :catch_0
    move-exception v0

    goto :goto_1

    const/4 v0, 0x0
.end method

.method eof()V
    .locals 4

    const/4 v3, 0x7

    const/4 v3, 0x7

    iget-boolean v2, p0, Lcom/jcraft/jsch/Channel;->eof_local:Z

    if-eqz v2, :cond_0

    const/4 v3, 0x5

    :goto_0
    nop

    return-void

    const/4 v1, 0x7

    const/4 v3, 0x0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/jcraft/jsch/Channel;->eof_local:Z

    const/4 v3, 0x4

    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    const/4 v3, 0x4

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v3, 0x0

    const/16 v2, 0x60

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x0

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    :try_start_1
    iget-boolean v2, p0, Lcom/jcraft/jsch/Channel;->close:Z

    if-nez v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v3, 0x0

    :cond_1
    monitor-exit p0

    goto :goto_0

    const/4 v2, 0x4

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x6

    :catch_0
    move-exception v2

    goto :goto_0

    const/4 v1, 0x2
.end method

.method eof_remote()V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jcraft/jsch/Channel;->eof_remote:Z

    const/4 v1, 0x6

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0}, Lcom/jcraft/jsch/IO;->out_close()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    :goto_0
    nop

    return-void

    const/4 v1, 0x4

    const/4 v1, 0x7

    :catch_0
    move-exception v0

    goto :goto_0

    const/4 v0, 0x3
.end method

.method protected genChannelOpenPacket()Lcom/jcraft/jsch/Packet;
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x3

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    const/4 v3, 0x1

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v3, 0x5

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v3, 0x5

    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/Channel;->type:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v3, 0x2

    iget v2, p0, Lcom/jcraft/jsch/Channel;->id:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x2

    iget v2, p0, Lcom/jcraft/jsch/Channel;->lwsize:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x2

    iget v2, p0, Lcom/jcraft/jsch/Channel;->lmpsize:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x0

    return-object v1

    const/4 v2, 0x4
.end method

.method getData(Lcom/jcraft/jsch/Buffer;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x4

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->setRecipient(I)V

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jcraft/jsch/Channel;->setRemoteWindowSize(J)V

    const/4 v2, 0x5

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->setRemotePacketSize(I)V

    const/4 v2, 0x6

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public getExitStatus()I
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    iget v0, p0, Lcom/jcraft/jsch/Channel;->exitstatus:I

    return v0

    const/4 v0, 0x1
.end method

.method public getExtInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v4, 0x4

    new-instance v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    const v1, 0x8000

    invoke-direct {v0, p0, v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;I)V

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    new-instance v2, Lcom/jcraft/jsch/Channel$PassiveOutputStream;

    invoke-direct {v2, p0, v0}, Lcom/jcraft/jsch/Channel$PassiveOutputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedInputStream;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/jcraft/jsch/IO;->setExtOutputStream(Ljava/io/OutputStream;Z)V

    const/4 v4, 0x6

    return-object v0

    const/4 v4, 0x1
.end method

.method public getId()I
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    iget v0, p0, Lcom/jcraft/jsch/Channel;->id:I

    return v0

    const/4 v0, 0x6
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v4, 0x4

    new-instance v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    const v1, 0x8000

    invoke-direct {v0, p0, v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;I)V

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    new-instance v2, Lcom/jcraft/jsch/Channel$PassiveOutputStream;

    invoke-direct {v2, p0, v0}, Lcom/jcraft/jsch/Channel$PassiveOutputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedInputStream;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;Z)V

    const/4 v4, 0x3

    return-object v0

    const/4 v3, 0x5
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v2, 0x2

    move-object v0, p0

    const/4 v2, 0x6

    new-instance v1, Lcom/jcraft/jsch/Channel$1;

    invoke-direct {v1, p0, v0}, Lcom/jcraft/jsch/Channel$1;-><init>(Lcom/jcraft/jsch/Channel;Lcom/jcraft/jsch/Channel;)V

    const/4 v2, 0x0

    return-object v1

    const/4 v0, 0x0
.end method

.method getRecipient()I
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x3

    iget v0, p0, Lcom/jcraft/jsch/Channel;->recipient:I

    return v0

    const/4 v0, 0x3
.end method

.method public getSession()Lcom/jcraft/jsch/Session;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->session:Lcom/jcraft/jsch/Session;

    const/4 v3, 0x7

    if-nez v0, :cond_0

    const/4 v3, 0x4

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "session is not available"

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    const/4 v3, 0x0

    :cond_0
    return-object v0

    const/4 v1, 0x6
.end method

.method init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v0, 0x6

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public isClosed()Z
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x4

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->close:Z

    return v0

    const/4 v1, 0x6
.end method

.method public isConnected()Z
    .locals 4

    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->session:Lcom/jcraft/jsch/Session;

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    const/4 v3, 0x2

    :cond_0
    return v1

    const/4 v0, 0x3
.end method

.method public isEOF()Z
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    iget-boolean v0, p0, Lcom/jcraft/jsch/Channel;->eof_remote:Z

    return v0

    const/4 v1, 0x1
.end method

.method public run()V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x2
.end method

.method protected sendChannelOpen()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v12, 0x3

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    const/4 v12, 0x1

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v12, 0x1

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    const-string v10, "session is down"

    invoke-direct {v3, v10}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v3

    const/4 v12, 0x2

    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->genChannelOpenPacket()Lcom/jcraft/jsch/Packet;

    move-result-object v1

    const/4 v12, 0x4

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v12, 0x2

    const/16 v2, 0xa

    const/4 v12, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v12, 0x1

    iget v3, p0, Lcom/jcraft/jsch/Channel;->connectTimeout:I

    int-to-long v8, v3

    const/4 v12, 0x7

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    const/4 v12, 0x0

    :cond_1
    monitor-enter p0

    const/4 v12, 0x1

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v3

    const/4 v10, -0x1

    if-ne v3, v10, :cond_4

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_4

    if-lez v2, :cond_4

    const/4 v12, 0x1

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_2

    const/4 v12, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    sub-long/2addr v10, v4

    cmp-long v3, v10, v8

    if-lez v3, :cond_2

    const/4 v12, 0x7

    const/4 v2, 0x0

    const/4 v12, 0x2

    goto :goto_0

    const/4 v7, 0x2

    const/4 v12, 0x2

    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_3

    const-wide/16 v6, 0x1388

    const/4 v12, 0x0

    :goto_1
    const/4 v3, 0x1

    :try_start_1
    iput v3, p0, Lcom/jcraft/jsch/Channel;->notifyme:I

    const/4 v12, 0x7

    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v12, 0x2

    const/4 v3, 0x0

    :try_start_2
    iput v3, p0, Lcom/jcraft/jsch/Channel;->notifyme:I

    const/4 v12, 0x5

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    const/4 v6, 0x6

    :cond_3
    move-wide v6, v8

    const/4 v12, 0x3

    goto :goto_1

    const/4 v4, 0x6

    const/4 v12, 0x1

    :catch_0
    move-exception v3

    const/4 v12, 0x2

    const/4 v3, 0x0

    iput v3, p0, Lcom/jcraft/jsch/Channel;->notifyme:I

    goto :goto_2

    const/4 v1, 0x7

    const/4 v12, 0x1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    const/4 v12, 0x5

    :catchall_1
    move-exception v3

    const/4 v10, 0x0

    :try_start_3
    iput v10, p0, Lcom/jcraft/jsch/Channel;->notifyme:I

    throw v3

    const/4 v12, 0x7

    :cond_4
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v12, 0x5

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->isConnected()Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v12, 0x3

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    const-string v10, "session is down"

    invoke-direct {v3, v10}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v3

    const/4 v12, 0x4

    :cond_5
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v3

    const/4 v10, -0x1

    if-ne v3, v10, :cond_6

    const/4 v12, 0x6

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    const-string v10, "channel is not opened."

    invoke-direct {v3, v10}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v3

    const/4 v12, 0x6

    :cond_6
    iget-boolean v3, p0, Lcom/jcraft/jsch/Channel;->open_confirmation:Z

    if-nez v3, :cond_7

    const/4 v12, 0x1

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    const-string v10, "channel is not opened."

    invoke-direct {v3, v10}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v3

    const/4 v12, 0x2

    :cond_7
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/jcraft/jsch/Channel;->connected:Z

    const/4 v12, 0x4

    nop

    return-void

    const/4 v4, 0x2
.end method

.method protected sendOpenConfirmation()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v3, 0x4

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    const/4 v3, 0x2

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v3, 0x6

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v3, 0x7

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x2

    iget v2, p0, Lcom/jcraft/jsch/Channel;->id:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x0

    iget v2, p0, Lcom/jcraft/jsch/Channel;->lwsize:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x3

    iget v2, p0, Lcom/jcraft/jsch/Channel;->lmpsize:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v3, 0x7

    nop

    return-void

    const/4 v0, 0x3
.end method

.method protected sendOpenFailure(I)V
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x1

    :try_start_0
    new-instance v0, Lcom/jcraft/jsch/Buffer;

    const/16 v2, 0x64

    invoke-direct {v0, v2}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    const/4 v3, 0x1

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v3, 0x2

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v3, 0x4

    const/16 v2, 0x5c

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x6

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x6

    const-string v2, "open failed"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v3, 0x2

    sget-object v2, Lcom/jcraft/jsch/Util;->empty:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x5

    :goto_0
    nop

    return-void

    const/4 v0, 0x2

    const/4 v3, 0x7

    :catch_0
    move-exception v2

    goto :goto_0

    const/4 v0, 0x5
.end method

.method public sendSignal(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x5

    const/4 v2, 0x3

    new-instance v0, Lcom/jcraft/jsch/RequestSignal;

    invoke-direct {v0}, Lcom/jcraft/jsch/RequestSignal;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/RequestSignal;->setSignal(Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/jcraft/jsch/RequestSignal;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    const/4 v2, 0x2

    nop

    return-void

    const/4 v1, 0x3
.end method

.method setExitStatus(I)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x6

    iput p1, p0, Lcom/jcraft/jsch/Channel;->exitstatus:I

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setExtOutputStream(Ljava/io/OutputStream;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jcraft/jsch/IO;->setExtOutputStream(Ljava/io/OutputStream;Z)V

    const/4 v2, 0x2

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public setExtOutputStream(Ljava/io/OutputStream;Z)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jsch/IO;->setExtOutputStream(Ljava/io/OutputStream;Z)V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;Z)V

    const/4 v2, 0x4

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setInputStream(Ljava/io/InputStream;Z)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;Z)V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v1, 0x6
.end method

.method setLocalPacketSize(I)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x2

    iput p1, p0, Lcom/jcraft/jsch/Channel;->lmpsize:I

    nop

    return-void

    const/4 v0, 0x5
.end method

.method setLocalWindowSize(I)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x7

    iput p1, p0, Lcom/jcraft/jsch/Channel;->lwsize:I

    nop

    return-void

    const/4 v0, 0x4
.end method

.method setLocalWindowSizeMax(I)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x3

    iput p1, p0, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;Z)V

    const/4 v2, 0x5

    nop

    return-void

    const/4 v1, 0x1
.end method

.method public setOutputStream(Ljava/io/OutputStream;Z)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;Z)V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x5
.end method

.method declared-synchronized setRecipient(I)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/jcraft/jsch/Channel;->recipient:I

    const/4 v1, 0x1

    iget v0, p0, Lcom/jcraft/jsch/Channel;->notifyme:I

    if-lez v0, :cond_0

    const/4 v1, 0x5

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    :cond_0
    monitor-exit p0

    nop

    return-void

    const/4 v0, 0x2

    const/4 v1, 0x4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setRemotePacketSize(I)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x1

    iput p1, p0, Lcom/jcraft/jsch/Channel;->rmpsize:I

    nop

    return-void

    const/4 v0, 0x4
.end method

.method declared-synchronized setRemoteWindowSize(J)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/jcraft/jsch/Channel;->rwsize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    nop

    return-void

    const/4 v0, 0x2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setSession(Lcom/jcraft/jsch/Session;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/jcraft/jsch/Channel;->session:Lcom/jcraft/jsch/Session;

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public setXForwarding(Z)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x3
.end method

.method write([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x3

    const/4 v2, 0x4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/Channel;->write([BII)V

    const/4 v2, 0x7

    nop

    return-void

    const/4 v0, 0x3
.end method

.method write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v1, 0x4

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/IO;->put([BII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    nop

    return-void

    const/4 v0, 0x2

    const/4 v1, 0x6

    :catch_0
    move-exception v0

    goto :goto_0

    const/4 v1, 0x7
.end method

.method write_ext([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x7

    const/4 v1, 0x7

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jcraft/jsch/IO;->put_ext([BII)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    :goto_0
    nop

    return-void

    const/4 v0, 0x3

    const/4 v1, 0x6

    :catch_0
    move-exception v0

    goto :goto_0

    const/4 v0, 0x6
.end method
