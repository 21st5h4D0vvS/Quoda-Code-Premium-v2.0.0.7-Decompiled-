.class public Lcom/jcraft/jsch/Session;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/Session$1;,
        Lcom/jcraft/jsch/Session$GlobalRequestReply;,
        Lcom/jcraft/jsch/Session$Forwarding;
    }
.end annotation


# static fields
.field private static final PACKET_MAX_SIZE:I = 0x40000

.field static final SSH_MSG_CHANNEL_CLOSE:I = 0x61

.field static final SSH_MSG_CHANNEL_DATA:I = 0x5e

.field static final SSH_MSG_CHANNEL_EOF:I = 0x60

.field static final SSH_MSG_CHANNEL_EXTENDED_DATA:I = 0x5f

.field static final SSH_MSG_CHANNEL_FAILURE:I = 0x64

.field static final SSH_MSG_CHANNEL_OPEN:I = 0x5a

.field static final SSH_MSG_CHANNEL_OPEN_CONFIRMATION:I = 0x5b

.field static final SSH_MSG_CHANNEL_OPEN_FAILURE:I = 0x5c

.field static final SSH_MSG_CHANNEL_REQUEST:I = 0x62

.field static final SSH_MSG_CHANNEL_SUCCESS:I = 0x63

.field static final SSH_MSG_CHANNEL_WINDOW_ADJUST:I = 0x5d

.field static final SSH_MSG_DEBUG:I = 0x4

.field static final SSH_MSG_DISCONNECT:I = 0x1

.field static final SSH_MSG_GLOBAL_REQUEST:I = 0x50

.field static final SSH_MSG_IGNORE:I = 0x2

.field static final SSH_MSG_KEXDH_INIT:I = 0x1e

.field static final SSH_MSG_KEXDH_REPLY:I = 0x1f

.field static final SSH_MSG_KEXINIT:I = 0x14

.field static final SSH_MSG_KEX_DH_GEX_GROUP:I = 0x1f

.field static final SSH_MSG_KEX_DH_GEX_INIT:I = 0x20

.field static final SSH_MSG_KEX_DH_GEX_REPLY:I = 0x21

.field static final SSH_MSG_KEX_DH_GEX_REQUEST:I = 0x22

.field static final SSH_MSG_NEWKEYS:I = 0x15

.field static final SSH_MSG_REQUEST_FAILURE:I = 0x52

.field static final SSH_MSG_REQUEST_SUCCESS:I = 0x51

.field static final SSH_MSG_SERVICE_ACCEPT:I = 0x6

.field static final SSH_MSG_SERVICE_REQUEST:I = 0x5

.field static final SSH_MSG_UNIMPLEMENTED:I = 0x3

.field static final buffer_margin:I = 0x54

.field private static final keepalivemsg:[B

.field private static final nomoresessions:[B

.field static random:Lcom/jcraft/jsch/Random;


# instance fields
.field private Ec2s:[B

.field private Es2c:[B

.field private IVc2s:[B

.field private IVs2c:[B

.field private I_C:[B

.field private I_S:[B

.field private K_S:[B

.field private MACc2s:[B

.field private MACs2c:[B

.field private V_C:[B

.field private V_S:[B

.field agent_forwarding:Z

.field auth_failures:I

.field buf:Lcom/jcraft/jsch/Buffer;

.field private c2scipher:Lcom/jcraft/jsch/Cipher;

.field private c2scipher_size:I

.field private c2smac:Lcom/jcraft/jsch/MAC;

.field compress_len:[I

.field private config:Ljava/util/Hashtable;

.field private connectThread:Ljava/lang/Thread;

.field protected daemon_thread:Z

.field private deflater:Lcom/jcraft/jsch/Compression;

.field private grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

.field guess:[Ljava/lang/String;

.field host:Ljava/lang/String;

.field private hostKeyAlias:Ljava/lang/String;

.field private hostkey:Lcom/jcraft/jsch/HostKey;

.field private hostkeyRepository:Lcom/jcraft/jsch/HostKeyRepository;

.field private identityRepository:Lcom/jcraft/jsch/IdentityRepository;

.field in:Ljava/io/InputStream;

.field private in_kex:Z

.field private inflater:Lcom/jcraft/jsch/Compression;

.field private io:Lcom/jcraft/jsch/IO;

.field private isAuthed:Z

.field private volatile isConnected:Z

.field jsch:Lcom/jcraft/jsch/JSch;

.field private kex_start_time:J

.field private lock:Ljava/lang/Object;

.field max_auth_tries:I

.field org_host:Ljava/lang/String;

.field out:Ljava/io/OutputStream;

.field packet:Lcom/jcraft/jsch/Packet;

.field password:[B

.field port:I

.field private proxy:Lcom/jcraft/jsch/Proxy;

.field private s2ccipher:Lcom/jcraft/jsch/Cipher;

.field private s2ccipher_size:I

.field private s2cmac:Lcom/jcraft/jsch/MAC;

.field private s2cmac_result1:[B

.field private s2cmac_result2:[B

.field private seqi:I

.field private seqo:I

.field private serverAliveCountMax:I

.field private serverAliveInterval:I

.field private session_id:[B

.field private socket:Ljava/net/Socket;

.field socket_factory:Lcom/jcraft/jsch/SocketFactory;

.field thread:Ljava/lang/Runnable;

.field private timeout:I

.field uncompress_len:[I

.field private userinfo:Lcom/jcraft/jsch/UserInfo;

.field username:Ljava/lang/String;

.field x11_forwarding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x4

    const-string v0, "keepalive@jcraft.com"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Session;->keepalivemsg:[B

    const/4 v1, 0x6

    const-string v0, "no-more-sessions@openssh.com"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Session;->nomoresessions:[B

    nop

    return-void

    const/4 v1, 0x3
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v6, 0x3

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x2

    const-string v0, "SSH-2.0-JSCH-0.1.50"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->V_C:[B

    const/4 v6, 0x3

    iput v3, p0, Lcom/jcraft/jsch/Session;->seqi:I

    const/4 v6, 0x2

    iput v3, p0, Lcom/jcraft/jsch/Session;->seqo:I

    const/4 v6, 0x1

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v6, 0x5

    iput v3, p0, Lcom/jcraft/jsch/Session;->timeout:I

    const/4 v6, 0x1

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    const/4 v6, 0x5

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->isAuthed:Z

    const/4 v6, 0x7

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    const/4 v6, 0x1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    const/4 v6, 0x5

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->x11_forwarding:Z

    const/4 v6, 0x0

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->agent_forwarding:Z

    const/4 v6, 0x6

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->in:Ljava/io/InputStream;

    const/4 v6, 0x0

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->out:Ljava/io/OutputStream;

    const/4 v6, 0x4

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    const/4 v6, 0x5

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    const/4 v6, 0x4

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    const/4 v6, 0x0

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    const/4 v6, 0x1

    iput v3, p0, Lcom/jcraft/jsch/Session;->serverAliveInterval:I

    const/4 v6, 0x5

    iput v4, p0, Lcom/jcraft/jsch/Session;->serverAliveCountMax:I

    const/4 v6, 0x4

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    const/4 v6, 0x6

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->hostkeyRepository:Lcom/jcraft/jsch/HostKeyRepository;

    const/4 v6, 0x4

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    const/4 v6, 0x1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/jcraft/jsch/Session;->kex_start_time:J

    const/4 v6, 0x6

    const/4 v0, 0x6

    iput v0, p0, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    const/4 v6, 0x1

    iput v3, p0, Lcom/jcraft/jsch/Session;->auth_failures:I

    const/4 v6, 0x7

    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v0, "127.0.0.1"

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->org_host:Ljava/lang/String;

    const/4 v6, 0x2

    const/16 v0, 0x16

    iput v0, p0, Lcom/jcraft/jsch/Session;->port:I

    const/4 v6, 0x2

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    const/4 v6, 0x6

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->password:[B

    const/4 v6, 0x4

    iput-boolean v3, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    const/4 v6, 0x6

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->uncompress_len:[I

    const/4 v6, 0x2

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->compress_len:[I

    const/4 v6, 0x0

    iput v5, p0, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    const/4 v6, 0x7

    iput v5, p0, Lcom/jcraft/jsch/Session;->c2scipher_size:I

    const/4 v6, 0x2

    new-instance v0, Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-direct {v0, p0, v2}, Lcom/jcraft/jsch/Session$GlobalRequestReply;-><init>(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Session$1;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    const/4 v6, 0x4

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->hostkey:Lcom/jcraft/jsch/HostKey;

    const/4 v6, 0x5

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    const/4 v6, 0x0

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v6, 0x6

    new-instance v0, Lcom/jcraft/jsch/Packet;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    const/4 v6, 0x7

    iput-object p2, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    const/4 v6, 0x2

    iput-object p3, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    iput-object p3, p0, Lcom/jcraft/jsch/Session;->org_host:Ljava/lang/String;

    const/4 v6, 0x2

    iput p4, p0, Lcom/jcraft/jsch/Session;->port:I

    const/4 v6, 0x6

    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->applyConfig()V

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v6, 0x2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "user.name"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v6, 0x0

    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "username is not given."

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    const/4 v6, 0x2

    :cond_1
    nop

    return-void

    const/4 v0, 0x1

    const/4 v6, 0x7

    :catch_0
    move-exception v0

    goto :goto_0

    const/4 v1, 0x3
.end method

.method private _setPortForwardingR(Ljava/lang/String;I)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x4

    iget-object v7, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    monitor-enter v7

    const/4 v11, 0x7

    :try_start_0
    new-instance v1, Lcom/jcraft/jsch/Buffer;

    const/16 v6, 0x64

    invoke-direct {v1, v6}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    const/4 v11, 0x1

    new-instance v4, Lcom/jcraft/jsch/Packet;

    invoke-direct {v4, v1}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v11, 0x0

    invoke-static {p1}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x7

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setThread(Ljava/lang/Thread;)V

    const/4 v11, 0x2

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v6, p2}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setPort(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v4}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v11, 0x7

    const/16 v6, 0x50

    invoke-virtual {v1, v6}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v11, 0x2

    const-string v6, "tcpip-forward"

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v11, 0x1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v11, 0x0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v11, 0x7

    invoke-virtual {v1, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v11, 0x2

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v11, 0x4

    const/4 v2, 0x0

    const/4 v11, 0x0

    :try_start_2
    iget-object v6, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->getReply()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    const/4 v11, 0x4

    :goto_0
    const/16 v6, 0xa

    if-ge v2, v6, :cond_1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    const/4 v11, 0x0

    const-wide/16 v8, 0x3e8

    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v11, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    const/4 v11, 0x3

    :try_start_4
    iget-object v6, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->getReply()I

    move-result v5

    goto :goto_0

    const/4 v0, 0x4

    const/4 v11, 0x4

    :catch_0
    move-exception v3

    const/4 v11, 0x0

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setThread(Ljava/lang/Thread;)V

    const/4 v11, 0x6

    instance-of v6, v3, Ljava/lang/Throwable;

    if-eqz v6, :cond_0

    const/4 v11, 0x0

    new-instance v6, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    const/4 v11, 0x5

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    const/4 v11, 0x7

    :cond_0
    :try_start_5
    new-instance v6, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v6

    const/4 v11, 0x4

    :cond_1
    iget-object v6, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setThread(Ljava/lang/Thread;)V

    const/4 v11, 0x7

    if-eq v5, v10, :cond_2

    const/4 v11, 0x3

    new-instance v6, Lcom/jcraft/jsch/JSchException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "remote port forwarding failed for listen port "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v6

    const/4 v11, 0x1

    :cond_2
    iget-object v6, p0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->getPort()I

    move-result p2

    const/4 v11, 0x5

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v11, 0x4

    return p2

    const/4 v3, 0x7

    const/4 v11, 0x1

    :catch_1
    move-exception v6

    goto :goto_1

    const/4 v0, 0x1
.end method

.method private _write(Lcom/jcraft/jsch/Packet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v2, 0x7

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->encode(Lcom/jcraft/jsch/Packet;)V

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/IO;->put(Lcom/jcraft/jsch/Packet;)V

    const/4 v2, 0x2

    iget v0, p0, Lcom/jcraft/jsch/Session;->seqo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/Session;->seqo:I

    const/4 v2, 0x2

    :cond_0
    monitor-exit v1

    const/4 v2, 0x0

    nop

    return-void

    const/4 v2, 0x5

    const/4 v2, 0x5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private applyConfig()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v14, 0x4

    const/4 v14, 0x3

    iget-object v12, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v12}, Lcom/jcraft/jsch/JSch;->getConfigRepository()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v1

    const/4 v14, 0x5

    if-nez v1, :cond_1

    const/4 v14, 0x0

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v10, 0x4

    const/4 v14, 0x0

    :cond_1
    iget-object v12, p0, Lcom/jcraft/jsch/Session;->org_host:Ljava/lang/String;

    invoke-interface {v1, v12}, Lcom/jcraft/jsch/ConfigRepository;->getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v0

    const/4 v14, 0x7

    const/4 v10, 0x0

    const/4 v14, 0x4

    invoke-interface {v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->getUser()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x3

    if-eqz v10, :cond_2

    const/4 v14, 0x0

    iput-object v10, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    const/4 v14, 0x2

    :cond_2
    invoke-interface {v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->getHostname()Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x2

    if-eqz v10, :cond_3

    const/4 v14, 0x2

    iput-object v10, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    const/4 v14, 0x4

    :cond_3
    invoke-interface {v0}, Lcom/jcraft/jsch/ConfigRepository$Config;->getPort()I

    move-result v9

    const/4 v14, 0x5

    const/4 v12, -0x1

    if-eq v9, v12, :cond_4

    const/4 v14, 0x5

    iput v9, p0, Lcom/jcraft/jsch/Session;->port:I

    const/4 v14, 0x5

    :cond_4
    const-string v12, "kex"

    invoke-direct {p0, v0, v12}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const/4 v14, 0x4

    const-string v12, "server_host_key"

    invoke-direct {p0, v0, v12}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const/4 v14, 0x0

    const-string v12, "cipher.c2s"

    invoke-direct {p0, v0, v12}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const/4 v14, 0x0

    const-string v12, "cipher.s2c"

    invoke-direct {p0, v0, v12}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const/4 v14, 0x5

    const-string v12, "mac.c2s"

    invoke-direct {p0, v0, v12}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const/4 v14, 0x6

    const-string v12, "mac.s2c"

    invoke-direct {p0, v0, v12}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const/4 v14, 0x6

    const-string v12, "compression.c2s"

    invoke-direct {p0, v0, v12}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const/4 v14, 0x7

    const-string v12, "compression.s2c"

    invoke-direct {p0, v0, v12}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const/4 v14, 0x5

    const-string v12, "compression_level"

    invoke-direct {p0, v0, v12}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const/4 v14, 0x4

    const-string v12, "StrictHostKeyChecking"

    invoke-direct {p0, v0, v12}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const/4 v14, 0x5

    const-string v12, "HashKnownHosts"

    invoke-direct {p0, v0, v12}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const/4 v14, 0x0

    const-string v12, "PreferredAuthentications"

    invoke-direct {p0, v0, v12}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const/4 v14, 0x4

    const-string v12, "MaxAuthTries"

    invoke-direct {p0, v0, v12}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const/4 v14, 0x6

    const-string v12, "ClearAllForwardings"

    invoke-direct {p0, v0, v12}, Lcom/jcraft/jsch/Session;->checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V

    const/4 v14, 0x7

    const-string v12, "HostKeyAlias"

    invoke-interface {v0, v12}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x4

    if-eqz v10, :cond_5

    const/4 v14, 0x2

    invoke-virtual {p0, v10}, Lcom/jcraft/jsch/Session;->setHostKeyAlias(Ljava/lang/String;)V

    const/4 v14, 0x4

    :cond_5
    const-string v12, "UserKnownHostsFile"

    invoke-interface {v0, v12}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x7

    if-eqz v10, :cond_6

    const/4 v14, 0x2

    new-instance v8, Lcom/jcraft/jsch/KnownHosts;

    iget-object v12, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-direct {v8, v12}, Lcom/jcraft/jsch/KnownHosts;-><init>(Lcom/jcraft/jsch/JSch;)V

    const/4 v14, 0x7

    invoke-virtual {v8, v10}, Lcom/jcraft/jsch/KnownHosts;->setKnownHosts(Ljava/lang/String;)V

    const/4 v14, 0x3

    invoke-virtual {p0, v8}, Lcom/jcraft/jsch/Session;->setHostKeyRepository(Lcom/jcraft/jsch/HostKeyRepository;)V

    const/4 v14, 0x0

    :cond_6
    const-string v12, "IdentityFile"

    invoke-interface {v0, v12}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x2

    if-eqz v11, :cond_d

    const/4 v14, 0x7

    const-string v12, ""

    invoke-interface {v1, v12}, Lcom/jcraft/jsch/ConfigRepository;->getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v12

    const-string v13, "IdentityFile"

    invoke-interface {v12, v13}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x7

    if-eqz v2, :cond_7

    const/4 v14, 0x0

    const/4 v3, 0x0

    :goto_1
    array-length v12, v2

    if-ge v3, v12, :cond_8

    const/4 v14, 0x6

    iget-object v12, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    aget-object v13, v2, v3

    invoke-virtual {v12, v13}, Lcom/jcraft/jsch/JSch;->addIdentity(Ljava/lang/String;)V

    const/4 v14, 0x6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    const/4 v0, 0x2

    const/4 v14, 0x1

    :cond_7
    const/4 v12, 0x0

    new-array v2, v12, [Ljava/lang/String;

    const/4 v14, 0x7

    :cond_8
    array-length v12, v11

    array-length v13, v2

    sub-int/2addr v12, v13

    if-lez v12, :cond_d

    const/4 v14, 0x2

    new-instance v6, Lcom/jcraft/jsch/IdentityRepository$Wrapper;

    iget-object v12, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v12}, Lcom/jcraft/jsch/JSch;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v12

    const/4 v13, 0x1

    invoke-direct {v6, v12, v13}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;-><init>(Lcom/jcraft/jsch/IdentityRepository;Z)V

    const/4 v14, 0x2

    const/4 v3, 0x0

    :goto_2
    array-length v12, v11

    if-ge v3, v12, :cond_c

    const/4 v14, 0x3

    aget-object v5, v11, v3

    const/4 v14, 0x2

    const/4 v7, 0x0

    :goto_3
    array-length v12, v2

    if-ge v7, v12, :cond_a

    const/4 v14, 0x3

    aget-object v12, v2, v7

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    const/4 v14, 0x6

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    const/4 v14, 0x2

    const/4 v14, 0x2

    :cond_9
    const/4 v5, 0x0

    const/4 v14, 0x1

    :cond_a
    if-nez v5, :cond_b

    const/4 v14, 0x0

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    const/4 v12, 0x1

    const/4 v14, 0x2

    :cond_b
    const/4 v12, 0x0

    iget-object v13, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-static {v5, v12, v13}, Lcom/jcraft/jsch/IdentityFile;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/JSch;)Lcom/jcraft/jsch/IdentityFile;

    move-result-object v4

    const/4 v14, 0x2

    invoke-virtual {v6, v4}, Lcom/jcraft/jsch/IdentityRepository$Wrapper;->add(Lcom/jcraft/jsch/Identity;)V

    goto :goto_4

    const/4 v5, 0x5

    const/4 v14, 0x5

    :cond_c
    invoke-virtual {p0, v6}, Lcom/jcraft/jsch/Session;->setIdentityRepository(Lcom/jcraft/jsch/IdentityRepository;)V

    const/4 v14, 0x3

    :cond_d
    const-string v12, "ServerAliveInterval"

    invoke-interface {v0, v12}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x2

    if-eqz v10, :cond_e

    const/4 v14, 0x1

    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/jcraft/jsch/Session;->setServerAliveInterval(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v14, 0x3

    :cond_e
    :goto_5
    const-string v12, "ConnectTimeout"

    invoke-interface {v0, v12}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x2

    if-eqz v10, :cond_f

    const/4 v14, 0x2

    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/jcraft/jsch/Session;->setTimeout(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v14, 0x6

    :cond_f
    :goto_6
    const-string v12, "MaxAuthTries"

    invoke-interface {v0, v12}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x4

    if-eqz v10, :cond_10

    const/4 v14, 0x6

    const-string v12, "MaxAuthTries"

    invoke-virtual {p0, v12, v10}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x7

    :cond_10
    const-string v12, "ClearAllForwardings"

    invoke-interface {v0, v12}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x4

    if-eqz v10, :cond_0

    const/4 v14, 0x5

    const-string v12, "ClearAllForwardings"

    invoke-virtual {p0, v12, v10}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    const/4 v8, 0x0

    const/4 v14, 0x6

    :catch_0
    move-exception v12

    goto :goto_6

    const/4 v11, 0x4

    const/4 v14, 0x4

    :catch_1
    move-exception v12

    goto :goto_5

    const/4 v6, 0x0
.end method

.method private applyConfigChannel(Lcom/jcraft/jsch/ChannelSession;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v4, 0x4

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v3}, Lcom/jcraft/jsch/JSch;->getConfigRepository()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v1

    const/4 v4, 0x7

    if-nez v1, :cond_1

    const/4 v4, 0x3

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v4, 0x6

    const/4 v4, 0x0

    :cond_1
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->org_host:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/jcraft/jsch/ConfigRepository;->getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v0

    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v4, 0x1

    const-string v3, "ForwardAgent"

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    if-eqz v2, :cond_2

    const/4 v4, 0x7

    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/jcraft/jsch/ChannelSession;->setAgentForwarding(Z)V

    const/4 v4, 0x3

    :cond_2
    const-string v3, "RequestTTY"

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v4, 0x6

    const-string v3, "yes"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/jcraft/jsch/ChannelSession;->setPty(Z)V

    goto :goto_0

    const/4 v1, 0x7
.end method

.method static checkCipher(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x6

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v8, 0x6

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jcraft/jsch/Cipher;

    move-object v0, v4

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    move-object v1, v0

    const/4 v8, 0x5

    const/4 v4, 0x0

    invoke-interface {v1}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    move-result v6

    new-array v6, v6, [B

    invoke-interface {v1}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v7

    new-array v7, v7, [B

    invoke-interface {v1, v4, v6, v7}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x1

    const/4 v4, 0x1

    const/4 v8, 0x4

    :goto_0
    return v4

    const/4 v6, 0x1

    const/4 v8, 0x2

    :catch_0
    move-exception v3

    move v4, v5

    const/4 v8, 0x4

    goto :goto_0

    const/4 v8, 0x5
.end method

.method private checkCiphers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v9, 0x4

    :cond_0
    return-object v1

    const/4 v6, 0x6

    const/4 v9, 0x0

    :cond_1
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v9, 0x7

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "CheckCiphers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v7, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    const/4 v9, 0x0

    :cond_2
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const/4 v9, 0x6

    const-string v4, ","

    invoke-static {p1, v4}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x5

    const/4 v2, 0x0

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_4

    const/4 v9, 0x3

    aget-object v4, v0, v2

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/jcraft/jsch/Session;->checkCipher(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v9, 0x3

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v9, 0x6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v9, 0x4

    const/4 v9, 0x1

    :cond_4
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v9, 0x7

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual {v3}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-static {v4, v8, v1, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x6

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v9, 0x7

    const/4 v2, 0x0

    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    const/4 v9, 0x1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " is not available."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v7, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    const/4 v9, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    const/4 v6, 0x5
.end method

.method private checkConfig(Lcom/jcraft/jsch/ConfigRepository$Config;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x0

    invoke-interface {p1, p2}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, p2, v0}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    :cond_0
    nop

    return-void

    const/4 v0, 0x3
.end method

.method private checkHost(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const-string v18, "StrictHostKeyChecking"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    move-object/from16 p1, v0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/jcraft/jsch/KeyExchange;->getHostKey()[B

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lcom/jcraft/jsch/KeyExchange;->getKeyType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Lcom/jcraft/jsch/KeyExchange;->getFingerPrint()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    const/16 v18, 0x16

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "]:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;

    move-result-object v9

    const-string v18, "HashKnownHosts"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v18, "yes"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    instance-of v0, v9, Lcom/jcraft/jsch/KnownHosts;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v18, v9

    check-cast v18, Lcom/jcraft/jsch/KnownHosts;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/jcraft/jsch/KnownHosts;->createHashedHostKey(Ljava/lang/String;[B)Lcom/jcraft/jsch/HostKey;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/Session;->hostkey:Lcom/jcraft/jsch/HostKey;

    :goto_0
    const/4 v10, 0x0

    monitor-enter v9

    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v9, v0, v3}, Lcom/jcraft/jsch/HostKeyRepository;->check(Ljava/lang/String;[B)I

    move-result v10

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x0

    const-string v18, "ask"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "yes"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    :cond_2
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v10, v0, :cond_8

    const/4 v6, 0x0

    monitor-enter v9

    :try_start_1
    invoke-interface {v9}, Lcom/jcraft/jsch/HostKeyRepository;->getKnownHostsRepositoryID()Ljava/lang/String;

    move-result-object v6

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v6, :cond_3

    const-string v6, "known_hosts"

    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    new-instance v18, Ljava/lang/StringBuffer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    const-string v19, "WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!\nIT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!\nSomeone could be eavesdropping on you right now (man-in-the-middle attack)!\nIt is also possible that the "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, " host key has just been changed.\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "The fingerprint for the "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, " key sent by the remote host is\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, ".\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "Please contact your system administrator.\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, "Add correct host key in "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    const-string v19, " to get rid of this message."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v18, "ask"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "\nDo you want to delete the old key and insert the new key?"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/jcraft/jsch/UserInfo;->promptYesNo(Ljava/lang/String;)Z

    move-result v5

    :cond_4
    :goto_1
    if-nez v5, :cond_7

    new-instance v18, Lcom/jcraft/jsch/JSchException;

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "HostKey has been changed: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_5
    new-instance v18, Lcom/jcraft/jsch/HostKey;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;[B)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/Session;->hostkey:Lcom/jcraft/jsch/HostKey;

    goto/16 :goto_0

    const/4 v3, 0x1

    :catchall_0
    move-exception v18

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v18

    :catchall_1
    move-exception v18

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v18

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    goto :goto_1

    const/4 v0, 0x6

    :cond_7
    monitor-enter v9

    :try_start_4
    const-string v18, "DSA"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const-string v18, "ssh-dss"

    :goto_2
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v9, v0, v1, v2}, Lcom/jcraft/jsch/HostKeyRepository;->remove(Ljava/lang/String;Ljava/lang/String;[B)V

    const/4 v11, 0x1

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_8
    const-string v18, "ask"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "yes"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    :cond_9
    if-eqz v10, :cond_d

    if-nez v11, :cond_d

    const-string v18, "yes"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    new-instance v18, Lcom/jcraft/jsch/JSchException;

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "reject HostKey: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_a
    :try_start_5
    const-string v18, "ssh-rsa"

    goto :goto_2

    const/4 v13, 0x4

    :catchall_2
    move-exception v18

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v18

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "The authenticity of host \'"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "\' can\'t be established.\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, " key fingerprint is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, ".\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "Are you sure you want to continue connecting?"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/jcraft/jsch/UserInfo;->promptYesNo(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    new-instance v18, Lcom/jcraft/jsch/JSchException;

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "reject HostKey: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_c
    const/4 v11, 0x1

    :cond_d
    const-string v18, "no"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v10, :cond_e

    const/4 v11, 0x1

    :cond_e
    if-nez v10, :cond_15

    const-string v18, "DSA"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    const-string v18, "ssh-dss"

    :goto_3
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lcom/jcraft/jsch/HostKeyRepository;->getHostKey(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;

    move-result-object v15

    const/16 v18, 0x0

    array-length v0, v3

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v3, v0, v1}, Lcom/jcraft/jsch/Util;->toBase64([BII)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    :goto_4
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_15

    aget-object v18, v15, v10

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/HostKey;->getKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    aget-object v18, v15, v12

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/HostKey;->getMarker()Ljava/lang/String;

    move-result-object v18

    const-string v19, "@revoked"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "The "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, " host key for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, " is marked as revoked.\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "This could mean that a stolen key is being used to "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "impersonate this host."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    :cond_f
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v18

    const/16 v19, 0x1

    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    const-string v21, "Host \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, "\' has provided revoked key."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_10
    new-instance v18, Lcom/jcraft/jsch/JSchException;

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "revoked HostKey: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_11
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_12

    new-instance v18, Lcom/jcraft/jsch/JSchException;

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "UnknownHostKey: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, ". "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, " key fingerprint is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_12
    new-instance v18, Lcom/jcraft/jsch/JSchException;

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "HostKey has been changed: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_13
    const-string v18, "ssh-rsa"

    goto/16 :goto_3

    const/4 v0, 0x0

    :cond_14
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    const/4 v11, 0x5

    :cond_15
    if-nez v10, :cond_16

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_16

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v18

    const/16 v19, 0x1

    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    const-string v21, "Host \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, "\' is known and mathces the "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, " host key"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_16
    if-eqz v11, :cond_17

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v18

    const/16 v19, 0x2

    invoke-interface/range {v18 .. v19}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_17

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v18

    const/16 v19, 0x2

    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    const-string v21, "Permanently added \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, "\' ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string v21, ") to the list of known hosts."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_17
    if-eqz v11, :cond_18

    monitor-enter v9

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->hostkey:Lcom/jcraft/jsch/HostKey;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v9, v0, v1}, Lcom/jcraft/jsch/HostKeyRepository;->add(Lcom/jcraft/jsch/HostKey;Lcom/jcraft/jsch/UserInfo;)V

    monitor-exit v9

    :cond_18
    nop

    return-void

    const/4 v12, 0x2

    :catchall_3
    move-exception v18

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v18
.end method

.method static checkKex(Lcom/jcraft/jsch/Session;Ljava/lang/String;)Z
    .locals 10

    const/4 v9, 0x2

    const/4 v9, 0x7

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v9, 0x2

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/KeyExchange;

    move-object v0, v2

    check-cast v0, Lcom/jcraft/jsch/KeyExchange;

    move-object v1, v0

    const/4 v9, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jcraft/jsch/KeyExchange;->init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x1

    const/4 v2, 0x1

    const/4 v9, 0x4

    :goto_0
    return v2

    const/4 v7, 0x0

    :catch_0
    move-exception v8

    const/4 v2, 0x0

    goto :goto_0

    const/4 v9, 0x0
.end method

.method private checkKexes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const/4 v9, 0x2

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v9, 0x4

    :cond_0
    return-object v1

    const/4 v3, 0x6

    const/4 v9, 0x4

    :cond_1
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v9, 0x0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "CheckKexes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v7, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    const/4 v9, 0x5

    :cond_2
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const/4 v9, 0x6

    const-string v4, ","

    invoke-static {p1, v4}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x2

    const/4 v2, 0x0

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_4

    const/4 v9, 0x3

    aget-object v4, v0, v2

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/jcraft/jsch/Session;->checkKex(Lcom/jcraft/jsch/Session;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v9, 0x2

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v9, 0x6

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v4, 0x0

    const/4 v9, 0x7

    :cond_4
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v9, 0x1

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    const/4 v9, 0x1

    invoke-virtual {v3}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    invoke-static {v4, v8, v1, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v9, 0x1

    const/4 v2, 0x0

    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    const/4 v9, 0x5

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " is not available."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v7, v5}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    const/4 v9, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    const/4 v0, 0x2
.end method

.method private expandKey(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x7

    move-object v0, p4

    const/4 v6, 0x3

    invoke-interface {p5}, Lcom/jcraft/jsch/HASH;->getBlockSize()I

    move-result v1

    const/4 v6, 0x4

    :goto_0
    array-length v3, v0

    if-ge v3, p6, :cond_0

    const/4 v6, 0x5

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    const/4 v6, 0x3

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    const/4 v6, 0x5

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    const/4 v6, 0x6

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    const/4 v6, 0x2

    iget-object v3, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v4, p1, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {p5, v3, v5, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    const/4 v6, 0x5

    array-length v3, v0

    add-int/2addr v3, v1

    new-array v2, v3, [B

    const/4 v6, 0x7

    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x2

    invoke-interface {p5}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v3

    array-length v4, v0

    invoke-static {v3, v5, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x5

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->bzero([B)V

    const/4 v6, 0x4

    move-object v0, v2

    const/4 v6, 0x4

    goto :goto_0

    const/4 v5, 0x1

    const/4 v6, 0x1

    :cond_0
    return-object v0

    const/4 v3, 0x7
.end method

.method private initDeflater(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v6, 0x6

    const-string v4, "none"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v6, 0x5

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;

    const/4 v6, 0x7

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v2, 0x0

    const/4 v6, 0x7

    :cond_1
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    if-eqz v2, :cond_0

    const/4 v6, 0x2

    const-string v4, "zlib"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/jcraft/jsch/Session;->isAuthed:Z

    if-eqz v4, :cond_0

    const-string v4, "zlib@openssh.com"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v6, 0x6

    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v6, 0x6

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jcraft/jsch/Compression;

    check-cast v4, Lcom/jcraft/jsch/Compression;

    iput-object v4, p0, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x5

    const/4 v3, 0x6

    const/4 v6, 0x0

    :try_start_1
    const-string v4, "compression_level"

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    const/4 v6, 0x4

    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;

    const/4 v5, 0x1

    invoke-interface {v4, v5, v3}, Lcom/jcraft/jsch/Compression;->init(II)V
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    const/4 v2, 0x5

    const/4 v6, 0x7

    :catch_0
    move-exception v1

    const/4 v6, 0x4

    new-instance v4, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    const/4 v6, 0x3

    :catch_1
    move-exception v1

    const/4 v6, 0x6

    new-instance v4, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    const/4 v6, 0x3

    :catch_2
    move-exception v4

    goto :goto_1

    const/4 v6, 0x5
.end method

.method private initInflater(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v6, 0x5

    const/4 v6, 0x2

    const-string v3, "none"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x2

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    const/4 v6, 0x1

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v1, 0x4

    const/4 v6, 0x7

    :cond_1
    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    if-eqz v2, :cond_0

    const/4 v6, 0x6

    const-string v3, "zlib"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/jcraft/jsch/Session;->isAuthed:Z

    if-eqz v3, :cond_0

    const-string v3, "zlib@openssh.com"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v6, 0x1

    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v6, 0x2

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/Compression;

    check-cast v3, Lcom/jcraft/jsch/Compression;

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    const/4 v6, 0x4

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/jcraft/jsch/Compression;->init(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v1, 0x3

    const/4 v6, 0x3

    :catch_0
    move-exception v1

    const/4 v6, 0x5

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private parseForwarding(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x3

    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x6

    array-length v7, v6

    const/4 v8, 0x1

    if-le v7, v8, :cond_4

    const/4 v10, 0x5

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const/4 v10, 0x4

    const/4 v3, 0x0

    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_1

    const/4 v10, 0x5

    aget-object v7, v6, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    const/4 v10, 0x2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    const/4 v1, 0x3

    const/4 v10, 0x7

    :cond_0
    aget-object v7, v6, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    const/4 v2, 0x7

    const/4 v10, 0x0

    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v10, 0x3

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    const/4 v10, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v10, 0x1

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    const/4 v10, 0x0

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v10, 0x7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    const/4 v7, 0x2

    const/4 v10, 0x7

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v10, 0x0

    :cond_4
    move-object v4, p1

    const/4 v10, 0x5

    new-instance v1, Lcom/jcraft/jsch/Session$Forwarding;

    const/4 v7, 0x0

    invoke-direct {v1, p0, v7}, Lcom/jcraft/jsch/Session$Forwarding;-><init>(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Session$1;)V

    const/4 v10, 0x3

    :try_start_0
    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v9, :cond_5

    const/4 v10, 0x2

    new-instance v7, Lcom/jcraft/jsch/JSchException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "parseForwarding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x2

    :catch_0
    move-exception v0

    const/4 v10, 0x1

    new-instance v7, Lcom/jcraft/jsch/JSchException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "parseForwarding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v7

    const/4 v10, 0x2

    :cond_5
    :try_start_1
    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/jcraft/jsch/Session$Forwarding;->hostport:I

    const/4 v10, 0x7

    const/4 v7, 0x0

    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/4 v10, 0x1

    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v9, :cond_6

    const/4 v10, 0x5

    new-instance v7, Lcom/jcraft/jsch/JSchException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "parseForwarding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v7

    const/4 v10, 0x0

    :cond_6
    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/jcraft/jsch/Session$Forwarding;->host:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v7, 0x0

    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/4 v10, 0x0

    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v9, :cond_a

    const/4 v10, 0x2

    const-string v7, ":"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    const/4 v10, 0x6

    const/4 v7, 0x0

    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/4 v10, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "*"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    :cond_7
    const-string p1, "0.0.0.0"

    const/4 v10, 0x4

    :cond_8
    const-string v7, "localhost"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string p1, "127.0.0.1"

    const/4 v10, 0x4

    :cond_9
    iput-object p1, v1, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;

    const/4 v10, 0x7

    :goto_3
    return-object v1

    const/4 v10, 0x7

    const/4 v10, 0x5

    :cond_a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    const/4 v10, 0x5

    const-string v7, "127.0.0.1"

    iput-object v7, v1, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    const/4 v0, 0x1
.end method

.method private receive_kexinit(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v2

    if-eq v9, v2, :cond_1

    const/4 v10, 0x2

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    const/4 v10, 0x2

    iget v2, p1, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v2, v2, -0x5

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    const/4 v10, 0x6

    :goto_0
    iget-object v2, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v3, p1, Lcom/jcraft/jsch/Buffer;->s:I

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    array-length v5, v5

    invoke-static {v2, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v10, 0x0

    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-nez v2, :cond_0

    const/4 v10, 0x7

    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->send_kexinit()V

    const/4 v10, 0x7

    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->I_C:[B

    invoke-static {v2, v3}, Lcom/jcraft/jsch/KeyExchange;->guess([B[B)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v10, 0x5

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v10, 0x5

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "Algorithm negotiation fail"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    const/4 v10, 0x7

    :cond_1
    add-int/lit8 v2, v9, -0x1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v3

    sub-int/2addr v2, v3

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    goto :goto_0

    const/4 v8, 0x0

    const/4 v10, 0x2

    :cond_2
    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->isAuthed:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const-string v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v10, 0x0

    :cond_3
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "NONE Cipher should not be chosen before authentification is successed."

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    const/4 v10, 0x6

    :cond_4
    const/4 v1, 0x0

    const/4 v10, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/4 v10, 0x2

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/KeyExchange;

    move-object v0, v2

    check-cast v0, Lcom/jcraft/jsch/KeyExchange;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->V_S:[B

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->V_C:[B

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->I_S:[B

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->I_C:[B

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/jcraft/jsch/KeyExchange;->init(Lcom/jcraft/jsch/Session;[B[B[B[B)V

    const/4 v10, 0x3

    return-object v1

    const/4 v4, 0x2

    const/4 v10, 0x4

    :catch_0
    move-exception v8

    const/4 v10, 0x4

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v8}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private receive_newkeys(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v1, 0x7

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/Session;->updateKeys(Lcom/jcraft/jsch/KeyExchange;)V

    const/4 v1, 0x2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    const/4 v1, 0x4

    nop

    return-void

    const/4 v1, 0x4
.end method

.method private requestPortForwarding()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v6, 0x6

    const/4 v6, 0x5

    const-string v4, "ClearAllForwardings"

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "yes"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v6, 0x2

    :cond_0
    nop

    return-void

    const/4 v0, 0x5

    const/4 v6, 0x7

    :cond_1
    iget-object v4, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v4}, Lcom/jcraft/jsch/JSch;->getConfigRepository()Lcom/jcraft/jsch/ConfigRepository;

    move-result-object v1

    const/4 v6, 0x4

    if-eqz v1, :cond_0

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->org_host:Ljava/lang/String;

    invoke-interface {v1, v4}, Lcom/jcraft/jsch/ConfigRepository;->getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;

    move-result-object v0

    const/4 v6, 0x2

    const-string v4, "LocalForward"

    invoke-interface {v0, v4}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x4

    if-eqz v3, :cond_2

    const/4 v6, 0x2

    const/4 v2, 0x0

    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_2

    const/4 v6, 0x0

    aget-object v4, v3, v2

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;)I

    const/4 v6, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v5, 0x0

    const/4 v6, 0x7

    :cond_2
    const-string v4, "RemoteForward"

    invoke-interface {v0, v4}, Lcom/jcraft/jsch/ConfigRepository$Config;->getValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    if-eqz v3, :cond_0

    const/4 v6, 0x2

    const/4 v2, 0x0

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_0

    const/4 v6, 0x0

    aget-object v4, v3, v2

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;)I

    const/4 v6, 0x7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    const/4 v2, 0x0
.end method

.method private send_kexinit()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x2

    iget-boolean v7, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-eqz v7, :cond_1

    const/4 v14, 0x3

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v2, 0x7

    const/4 v14, 0x2

    :cond_1
    const-string v7, "cipher.c2s"

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x2

    const-string v7, "cipher.s2c"

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x2

    const-string v7, "CheckCiphers"

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/jcraft/jsch/Session;->checkCiphers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x6

    if-eqz v4, :cond_3

    array-length v7, v4

    if-lez v7, :cond_3

    const/4 v14, 0x6

    invoke-static {v1, v4}, Lcom/jcraft/jsch/Util;->diffString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x1

    invoke-static {v2, v4}, Lcom/jcraft/jsch/Util;->diffString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v14, 0x4

    if-eqz v1, :cond_2

    if-nez v2, :cond_3

    const/4 v14, 0x5

    :cond_2
    new-instance v7, Lcom/jcraft/jsch/JSchException;

    const-string v8, "There are not any available ciphers."

    invoke-direct {v7, v8}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v7

    const/4 v14, 0x2

    :cond_3
    const-string v7, "kex"

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x2

    const-string v7, "CheckKexes"

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/jcraft/jsch/Session;->checkKexes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x6

    if-eqz v5, :cond_4

    array-length v7, v5

    if-lez v7, :cond_4

    const/4 v14, 0x2

    invoke-static {v3, v5}, Lcom/jcraft/jsch/Util;->diffString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x7

    if-nez v3, :cond_4

    const/4 v14, 0x3

    new-instance v7, Lcom/jcraft/jsch/JSchException;

    const-string v8, "There are not any available kexes."

    invoke-direct {v7, v8}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v7

    const/4 v14, 0x0

    :cond_4
    iput-boolean v12, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    const/4 v14, 0x7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/jcraft/jsch/Session;->kex_start_time:J

    const/4 v14, 0x5

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    const/4 v14, 0x3

    new-instance v6, Lcom/jcraft/jsch/Packet;

    invoke-direct {v6, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v14, 0x1

    invoke-virtual {v6}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v14, 0x0

    const/16 v7, 0x14

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v14, 0x6

    sget-object v8, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    monitor-enter v8

    const/4 v14, 0x2

    :try_start_0
    sget-object v7, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    iget-object v9, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget v10, v0, Lcom/jcraft/jsch/Buffer;->index:I

    const/16 v11, 0x10

    invoke-interface {v7, v9, v10, v11}, Lcom/jcraft/jsch/Random;->fill([BII)V

    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    const/4 v14, 0x3

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v14, 0x1

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v14, 0x7

    const-string v7, "server_host_key"

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v14, 0x4

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v14, 0x5

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v14, 0x2

    const-string v7, "mac.c2s"

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v14, 0x7

    const-string v7, "mac.s2c"

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v14, 0x4

    const-string v7, "compression.c2s"

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v14, 0x3

    const-string v7, "compression.s2c"

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v14, 0x1

    const-string v7, "lang.c2s"

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v14, 0x6

    const-string v7, "lang.s2c"

    invoke-virtual {p0, v7}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v14, 0x5

    invoke-virtual {v0, v13}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v14, 0x3

    invoke-virtual {v0, v13}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v14, 0x3

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->setOffSet(I)V

    const/4 v14, 0x2

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v7

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/jcraft/jsch/Session;->I_C:[B

    const/4 v14, 0x2

    iget-object v7, p0, Lcom/jcraft/jsch/Session;->I_C:[B

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    const/4 v14, 0x0

    invoke-virtual {p0, v6}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v14, 0x3

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v7

    invoke-interface {v7, v12}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v14, 0x1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v7

    const-string v8, "SSH_MSG_KEXINIT sent"

    invoke-interface {v7, v12, v8}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    goto/16 :goto_0

    const/4 v8, 0x6

    const/4 v14, 0x0

    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method private send_newkeys()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v3, 0x3

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    const-string v1, "SSH_MSG_NEWKEYS sent"

    invoke-interface {v0, v2, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    const/4 v3, 0x4

    :cond_0
    nop

    return-void

    const/4 v1, 0x4
.end method

.method private start_discard(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v0, 0x0

    const/4 v5, 0x7

    invoke-interface {p2}, Lcom/jcraft/jsch/Cipher;->isCBC()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v5, 0x7

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "Packet corrupt"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    const/4 v5, 0x0

    :cond_0
    const/high16 v2, 0x40000

    if-eq p4, v2, :cond_1

    if-eqz p3, :cond_1

    const/4 v5, 0x4

    move-object v0, p3

    const/4 v5, 0x2

    :cond_1
    iget v2, p1, Lcom/jcraft/jsch/Buffer;->index:I

    sub-int/2addr p5, v2

    const/4 v5, 0x0

    :goto_0
    if-lez p5, :cond_4

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    const/4 v5, 0x3

    iget-object v2, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v2, v2

    if-le p5, v2, :cond_3

    iget-object v2, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v1, v2

    const/4 v5, 0x2

    :goto_1
    iget-object v2, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v3, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-virtual {v2, v3, v4, v1}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    const/4 v5, 0x2

    iget-object v2, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-interface {v0, v2, v4, v1}, Lcom/jcraft/jsch/MAC;->update([BII)V

    const/4 v5, 0x6

    :cond_2
    sub-int/2addr p5, v1

    const/4 v5, 0x0

    goto :goto_0

    const/4 v1, 0x2

    :cond_3
    move v1, p5

    const/4 v5, 0x2

    goto :goto_1

    const/4 v4, 0x3

    const/4 v5, 0x5

    :cond_4
    if-eqz v0, :cond_5

    const/4 v5, 0x0

    iget-object v2, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-interface {v0, v2, v4}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    const/4 v5, 0x1

    :cond_5
    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "Packet corrupt"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private updateKeys(Lcom/jcraft/jsch/KeyExchange;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v13, 0x5

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->getK()[B

    move-result-object v2

    const/4 v13, 0x2

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->getH()[B

    move-result-object v3

    const/4 v13, 0x1

    invoke-virtual {p1}, Lcom/jcraft/jsch/KeyExchange;->getHash()Lcom/jcraft/jsch/HASH;

    move-result-object v5

    const/4 v13, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    if-nez v0, :cond_0

    const/4 v13, 0x1

    array-length v0, v3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    const/4 v13, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    array-length v1, v3

    invoke-static {v3, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x3

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    const/4 v13, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    const/4 v13, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    const/4 v13, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v13, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    const/4 v13, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v5, v0, v4, v1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    const/4 v13, 0x1

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->IVc2s:[B

    const/4 v13, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    add-int/lit8 v11, v0, -0x1

    const/4 v13, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v1, v0, v11

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, v11

    const/4 v13, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v5, v0, v4, v1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    const/4 v13, 0x5

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->IVs2c:[B

    const/4 v13, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v1, v0, v11

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, v11

    const/4 v13, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v5, v0, v4, v1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    const/4 v13, 0x6

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    const/4 v13, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v1, v0, v11

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, v11

    const/4 v13, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v5, v0, v4, v1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    const/4 v13, 0x7

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    const/4 v13, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v1, v0, v11

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, v11

    const/4 v13, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v5, v0, v4, v1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    const/4 v13, 0x7

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->MACc2s:[B

    const/4 v13, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    aget-byte v1, v0, v11

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, v11

    const/4 v13, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget v1, v1, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v5, v0, v4, v1}, Lcom/jcraft/jsch/HASH;->update([BII)V

    const/4 v13, 0x5

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->MACs2c:[B

    const/4 v13, 0x3

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v12, v0, v1

    const/4 v13, 0x1

    invoke-virtual {p0, v12}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v13, 0x2

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    const/4 v13, 0x3

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    array-length v1, v1

    if-le v0, v1, :cond_1

    const/4 v13, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    const/4 v13, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    const/4 v13, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    const/4 v13, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    const/4 v13, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v5, v0, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    const/4 v13, 0x6

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v10

    const/4 v13, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    array-length v0, v0

    array-length v1, v10

    add-int/2addr v0, v1

    new-array v7, v0, [B

    const/4 v13, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    array-length v6, v6

    invoke-static {v0, v1, v7, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    array-length v1, v1

    array-length v4, v10

    invoke-static {v10, v0, v7, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x3

    iput-object v7, p0, Lcom/jcraft/jsch/Session;->Es2c:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v12, 0x2

    const/4 v13, 0x2

    :catch_0
    move-exception v9

    const/4 v13, 0x2

    instance-of v0, v9, Lcom/jcraft/jsch/JSchException;

    if-eqz v0, :cond_3

    const/4 v13, 0x3

    throw v9

    const/4 v13, 0x7

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->Es2c:[B

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->IVs2c:[B

    invoke-interface {v0, v1, v4, v6}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V

    const/4 v13, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    const/4 v13, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v12, v0, v1

    const/4 v13, 0x7

    invoke-virtual {p0, v12}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v13, 0x2

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/MAC;

    check-cast v0, Lcom/jcraft/jsch/MAC;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    const/4 v13, 0x2

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->MACs2c:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->expandKey(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->MACs2c:[B

    const/4 v13, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->MACs2c:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/MAC;->init([B)V

    const/4 v13, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac_result1:[B

    const/4 v13, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->s2cmac_result2:[B

    const/4 v13, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v12, v0, v1

    const/4 v13, 0x7

    invoke-virtual {p0, v12}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v13, 0x3

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    check-cast v0, Lcom/jcraft/jsch/Cipher;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    const/4 v13, 0x7

    :goto_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getBlockSize()I

    move-result v0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    array-length v1, v1

    if-le v0, v1, :cond_2

    const/4 v13, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    const/4 v13, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    const/4 v13, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, v3}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    const/4 v13, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte([B)V

    const/4 v13, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v5, v0, v1, v4}, Lcom/jcraft/jsch/HASH;->update([BII)V

    const/4 v13, 0x7

    invoke-interface {v5}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v10

    const/4 v13, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    array-length v0, v0

    array-length v1, v10

    add-int/2addr v0, v1

    new-array v7, v0, [B

    const/4 v13, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    array-length v6, v6

    invoke-static {v0, v1, v7, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    array-length v1, v1

    array-length v4, v10

    invoke-static {v10, v0, v7, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v13, 0x1

    iput-object v7, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    goto :goto_1

    const/4 v13, 0x4

    const/4 v13, 0x6

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->Ec2s:[B

    iget-object v6, p0, Lcom/jcraft/jsch/Session;->IVc2s:[B

    invoke-interface {v0, v1, v4, v6}, Lcom/jcraft/jsch/Cipher;->init(I[B[B)V

    const/4 v13, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    invoke-interface {v0}, Lcom/jcraft/jsch/Cipher;->getIVSize()I

    move-result v0

    iput v0, p0, Lcom/jcraft/jsch/Session;->c2scipher_size:I

    const/4 v13, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x4

    aget-object v12, v0, v1

    const/4 v13, 0x3

    invoke-virtual {p0, v12}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v13, 0x0

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jcraft/jsch/MAC;

    check-cast v0, Lcom/jcraft/jsch/MAC;

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    const/4 v13, 0x7

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->MACc2s:[B

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v0}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->expandKey(Lcom/jcraft/jsch/Buffer;[B[B[BLcom/jcraft/jsch/HASH;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->MACc2s:[B

    const/4 v13, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->MACc2s:[B

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/MAC;->init([B)V

    const/4 v13, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v12, v0, v1

    const/4 v13, 0x3

    invoke-direct {p0, v12}, Lcom/jcraft/jsch/Session;->initDeflater(Ljava/lang/String;)V

    const/4 v13, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v12, v0, v1

    const/4 v13, 0x6

    invoke-direct {p0, v12}, Lcom/jcraft/jsch/Session;->initInflater(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v13, 0x2

    nop

    return-void

    const/4 v10, 0x3

    const/4 v13, 0x3

    :cond_3
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method addChannel(Lcom/jcraft/jsch/Channel;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x4

    invoke-virtual {p1, p0}, Lcom/jcraft/jsch/Channel;->setSession(Lcom/jcraft/jsch/Session;)V

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public connect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v1, 0x7

    const/4 v1, 0x3

    iget v0, p0, Lcom/jcraft/jsch/Session;->timeout:I

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->connect(I)V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v1, 0x1
.end method

.method public connect(I)V
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->isConnected:Z

    move/from16 v31, v0

    if-eqz v31, :cond_0

    new-instance v31, Lcom/jcraft/jsch/JSchException;

    const-string v32, "session is already connected"

    invoke-direct/range {v31 .. v32}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v31

    :cond_0
    new-instance v31, Lcom/jcraft/jsch/IO;

    invoke-direct/range {v31 .. v31}, Lcom/jcraft/jsch/IO;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    sget-object v31, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    if-nez v31, :cond_1

    :try_start_0
    const-string v31, "random"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/jcraft/jsch/Random;

    check-cast v31, Lcom/jcraft/jsch/Random;

    sput-object v31, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    sget-object v31, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    invoke-static/range {v31 .. v31}, Lcom/jcraft/jsch/Packet;->setRandom(Lcom/jcraft/jsch/Random;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v31

    if-eqz v31, :cond_2

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x1

    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    const-string v34, "Connecting to "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " port "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/Session;->port:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    move-object/from16 v31, v0

    if-nez v31, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    move-object/from16 v31, v0

    if-nez v31, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/Session;->port:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/Util;->createSocket(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v23

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    :goto_1
    if-lez p1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_3
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jcraft/jsch/Session;->isConnected:Z

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v31

    if-eqz v31, :cond_4

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x1

    const-string v33, "Connection established"

    invoke-interface/range {v31 .. v33}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/JSch;->addSession(Lcom/jcraft/jsch/Session;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->V_C:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    new-array v14, v0, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->V_C:[B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->V_C:[B

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v14

    move/from16 v31, v0

    add-int/lit8 v31, v31, -0x1

    const/16 v32, 0xa

    aput-byte v32, v14, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    array-length v0, v14

    move/from16 v33, v0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v14, v1, v2}, Lcom/jcraft/jsch/IO;->put([BII)V

    :cond_5
    const/4 v15, 0x0

    const/16 v17, 0x0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v15, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/jcraft/jsch/IO;->getByte()I

    move-result v17

    if-gez v17, :cond_b

    :cond_7
    :goto_2
    if-gez v17, :cond_c

    new-instance v31, Lcom/jcraft/jsch/JSchException;

    const-string v32, "connection is closed by foreign host"

    invoke-direct/range {v31 .. v32}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v31
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v12

    const/16 v31, 0x0

    :try_start_2
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->isConnected:Z

    move/from16 v31, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v31, :cond_8

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/jcraft/jsch/Packet;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    const/16 v32, 0x3

    invoke-virtual/range {v31 .. v32}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    const-string v32, "en"

    invoke-static/range {v32 .. v32}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->packet:Lcom/jcraft/jsch/Packet;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    :goto_3
    const/16 v31, 0x0

    :try_start_4
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jcraft/jsch/Session;->isConnected:Z

    instance-of v0, v12, Ljava/lang/RuntimeException;

    move/from16 v31, v0

    if-eqz v31, :cond_2d

    check-cast v12, Ljava/lang/RuntimeException;

    throw v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->password:[B

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/jcraft/jsch/Util;->bzero([B)V

    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/Session;->password:[B

    throw v31

    :catch_1
    move-exception v12

    new-instance v31, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v12}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v31

    :cond_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/Session;->port:I

    move/from16 v33, v0

    invoke-interface/range {v31 .. v33}, Lcom/jcraft/jsch/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    move-object/from16 v32, v0

    invoke-interface/range {v31 .. v32}, Lcom/jcraft/jsch/SocketFactory;->getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    move-object/from16 v32, v0

    invoke-interface/range {v31 .. v32}, Lcom/jcraft/jsch/SocketFactory;->getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v23

    goto/16 :goto_0

    const/4 v10, 0x7

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    move-object/from16 v32, v0

    monitor-enter v32
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/Session;->port:I

    move/from16 v35, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/jcraft/jsch/Proxy;->connect(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/jcraft/jsch/Proxy;->getInputStream()Ljava/io/InputStream;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Lcom/jcraft/jsch/Proxy;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Lcom/jcraft/jsch/Proxy;->getSocket()Ljava/net/Socket;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    monitor-exit v32

    goto/16 :goto_1

    const/4 v3, 0x0

    :catchall_1
    move-exception v31

    monitor-exit v32
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v31

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v31, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v32, v0

    aput-byte v32, v31, v15

    add-int/lit8 v15, v15, 0x1

    const/16 v31, 0xa

    move/from16 v0, v17

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    goto/16 :goto_2

    const/4 v1, 0x5

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v31, v0

    add-int/lit8 v32, v15, -0x1

    aget-byte v31, v31, v32

    const/16 v32, 0xa

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    add-int/lit8 v15, v15, -0x1

    if-lez v15, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v31, v0

    add-int/lit8 v32, v15, -0x1

    aget-byte v31, v31, v32

    const/16 v32, 0xd

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_d

    add-int/lit8 v15, v15, -0x1

    :cond_d
    const/16 v31, 0x3

    move/from16 v0, v31

    if-le v15, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v15, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget-byte v31, v31, v32

    const/16 v32, 0x53

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v31, v0

    const/16 v32, 0x1

    aget-byte v31, v31, v32

    const/16 v32, 0x53

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v31, v0

    const/16 v32, 0x2

    aget-byte v31, v31, v32

    const/16 v32, 0x48

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v31, v0

    const/16 v32, 0x3

    aget-byte v31, v31, v32

    const/16 v32, 0x2d

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-eq v15, v0, :cond_f

    const/16 v31, 0x7

    move/from16 v0, v31

    if-lt v15, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v31, v0

    const/16 v32, 0x4

    aget-byte v31, v31, v32

    const/16 v32, 0x31

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v31, v0

    const/16 v32, 0x6

    aget-byte v31, v31, v32

    const/16 v32, 0x39

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_10

    :cond_f
    new-instance v31, Lcom/jcraft/jsch/JSchException;

    const-string v32, "invalid server\'s version string"

    invoke-direct/range {v31 .. v32}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v31

    :cond_10
    new-array v0, v15, [B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/Session;->V_S:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->V_S:[B

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v31

    if-eqz v31, :cond_11

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x1

    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    const-string v34, "Remote version string: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->V_S:[B

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x1

    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    const-string v34, "Local version string: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->V_C:[B

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->send_kexinit()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v31

    const/16 v32, 0x14

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_12

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    new-instance v31, Lcom/jcraft/jsch/JSchException;

    new-instance v32, Ljava/lang/StringBuffer;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    const-string v33, "invalid protocol: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v31

    :cond_12
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v31

    if-eqz v31, :cond_13

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x1

    const-string v33, "SSH_MSG_KEXINIT received"

    invoke-interface/range {v31 .. v33}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Session;->receive_kexinit(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;

    move-result-object v19

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual/range {v19 .. v19}, Lcom/jcraft/jsch/KeyExchange;->getState()I

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/jcraft/jsch/Session;->kex_start_time:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/KeyExchange;->next(Lcom/jcraft/jsch/Buffer;)Z

    move-result v24

    if-nez v24, :cond_16

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    new-instance v31, Lcom/jcraft/jsch/JSchException;

    new-instance v32, Ljava/lang/StringBuffer;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    const-string v33, "verify: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v31

    :cond_15
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    new-instance v31, Lcom/jcraft/jsch/JSchException;

    new-instance v32, Ljava/lang/StringBuffer;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    const-string v33, "invalid protocol(kex): "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v31

    :cond_16
    invoke-virtual/range {v19 .. v19}, Lcom/jcraft/jsch/KeyExchange;->getState()I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v31

    if-nez v31, :cond_14

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/Session;->port:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/jcraft/jsch/Session;->checkHost(Ljava/lang/String;ILcom/jcraft/jsch/KeyExchange;)V
    :try_end_8
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->send_newkeys()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v31

    const/16 v32, 0x15

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_1b

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v31

    if-eqz v31, :cond_17

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x1

    const-string v33, "SSH_MSG_NEWKEYS received"

    invoke-interface/range {v31 .. v33}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/Session;->receive_newkeys(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    const-string v31, "MaxAuthTries"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_18

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jsch/Session;->max_auth_tries:I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_18
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v30, 0x0

    :try_start_b
    const-string v31, "userauth.none"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/jcraft/jsch/UserAuth;

    move-object/from16 v0, v31

    check-cast v0, Lcom/jcraft/jsch/UserAuth;

    move-object/from16 v30, v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    move-result v7

    const-string v31, "PreferredAuthentications"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v31, ","

    move-object/from16 v0, v31

    invoke-static {v11, v0}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/16 v27, 0x0

    if-nez v7, :cond_19

    move-object/from16 v0, v30

    check-cast v0, Lcom/jcraft/jsch/UserAuthNone;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/jcraft/jsch/UserAuthNone;->getMethods()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_1c

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v27

    :cond_19
    :goto_4
    const-string v31, ","

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    const/16 v21, 0x0

    move/from16 v22, v21

    :goto_5
    if-nez v7, :cond_2f

    if-eqz v10, :cond_2f

    array-length v0, v10

    move/from16 v31, v0

    move/from16 v0, v22

    move/from16 v1, v31

    if-ge v0, v1, :cond_2f

    add-int/lit8 v21, v22, 0x1

    aget-object v20, v10, v22

    const/4 v6, 0x0

    const/16 v18, 0x0

    :goto_6
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v18

    move/from16 v1, v31

    if-ge v0, v1, :cond_1a

    aget-object v31, v26, v18

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1d

    const/4 v6, 0x1

    :cond_1a
    if-nez v6, :cond_1e

    move/from16 v22, v21

    goto :goto_5

    const/4 v11, 0x3

    :catch_2
    move-exception v13

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    throw v13

    :cond_1b
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    new-instance v31, Lcom/jcraft/jsch/JSchException;

    new-instance v32, Ljava/lang/StringBuffer;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    const-string v33, "invalid protocol(newkyes): "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v31

    :catch_3
    move-exception v12

    new-instance v31, Lcom/jcraft/jsch/JSchException;

    new-instance v32, Ljava/lang/StringBuffer;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    const-string v33, "MaxAuthTries: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    const-string v33, "MaxAuthTries"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v12}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v31

    :catch_4
    move-exception v12

    new-instance v31, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v12}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v31

    :cond_1c
    move-object/from16 v27, v11

    goto/16 :goto_4

    const/4 v14, 0x4

    :cond_1d
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_6

    const/4 v9, 0x7

    :cond_1e
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v31

    if-eqz v31, :cond_21

    const-string v28, "Authentications that can continue: "

    add-int/lit8 v18, v21, -0x1

    :goto_7
    array-length v0, v10

    move/from16 v31, v0

    move/from16 v0, v18

    move/from16 v1, v31

    if-ge v0, v1, :cond_20

    new-instance v31, Ljava/lang/StringBuffer;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    aget-object v32, v10, v18

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    add-int/lit8 v31, v18, 0x1

    array-length v0, v10

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_1f

    new-instance v31, Ljava/lang/StringBuffer;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    const-string v32, ","

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    :cond_1f
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    const/4 v14, 0x3

    :cond_20
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x1

    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    const-string v34, "Next authentication method: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_21
    const/16 v30, 0x0

    const/4 v9, 0x0

    :try_start_d
    new-instance v31, Ljava/lang/StringBuffer;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuffer;-><init>()V

    const-string v32, "userauth."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_22

    new-instance v31, Ljava/lang/StringBuffer;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuffer;-><init>()V

    const-string v32, "userauth."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/jcraft/jsch/UserAuth;

    move-object/from16 v0, v31

    check-cast v0, Lcom/jcraft/jsch/UserAuth;

    move-object/from16 v30, v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_22
    :goto_8
    if-eqz v30, :cond_23

    const/4 v8, 0x0

    :try_start_e
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    move-result v7

    if-eqz v7, :cond_23

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v31

    if-eqz v31, :cond_23

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x1

    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    const-string v34, "Authentication succeeded ("

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, ")."

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V
    :try_end_e
    .catch Lcom/jcraft/jsch/JSchAuthCancelException; {:try_start_e .. :try_end_e} :catch_6
    .catch Lcom/jcraft/jsch/JSchPartialAuthException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_8
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_23
    :goto_9
    move/from16 v22, v21

    goto/16 :goto_5

    const/4 v1, 0x7

    :catch_5
    move-exception v12

    :try_start_f
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v31

    if-eqz v31, :cond_22

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x2

    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    const-string v34, "failed to load "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " method"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    goto :goto_8

    const/4 v5, 0x4

    :catch_6
    move-exception v13

    const/4 v8, 0x1

    goto :goto_9

    const/4 v5, 0x5

    :catch_7
    move-exception v13

    move-object/from16 v29, v27

    invoke-virtual {v13}, Lcom/jcraft/jsch/JSchPartialAuthException;->getMethods()Ljava/lang/String;

    move-result-object v27

    const-string v31, ","

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_24

    const/16 v21, 0x0

    :cond_24
    const/4 v8, 0x0

    move/from16 v22, v21

    goto/16 :goto_5

    const/4 v7, 0x4

    :catch_8
    move-exception v13

    throw v13

    :catch_9
    move-exception v13

    throw v13

    :catch_a
    move-exception v13

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x2

    invoke-interface/range {v31 .. v32}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v31

    if-eqz v31, :cond_25

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x2

    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    const-string v34, "an exception during authentication\n"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_25
    :goto_a
    if-nez v7, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/Session;->auth_failures:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_26

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x1

    invoke-interface/range {v31 .. v32}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v31

    if-eqz v31, :cond_26

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v31

    const/16 v32, 0x1

    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    const-string v34, "Login trials exceeds "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v31 .. v33}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_26
    if-eqz v8, :cond_27

    new-instance v31, Lcom/jcraft/jsch/JSchException;

    const-string v32, "Auth cancel"

    invoke-direct/range {v31 .. v32}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v31

    :cond_27
    new-instance v31, Lcom/jcraft/jsch/JSchException;

    const-string v32, "Auth fail"

    invoke-direct/range {v31 .. v32}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v31

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    move-object/from16 v31, v0

    if-eqz v31, :cond_2a

    if-gtz p1, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/Session;->timeout:I

    move/from16 v31, v0

    if-lez v31, :cond_2a

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/Session;->timeout:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_2a
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jcraft/jsch/Session;->isAuthed:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    move-object/from16 v32, v0

    monitor-enter v32
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->isConnected:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2c

    new-instance v31, Ljava/lang/Thread;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    move-object/from16 v31, v0

    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    const-string v34, "Connect thread "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " session"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    move/from16 v33, v0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Thread;->start()V

    invoke-direct/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->requestPortForwarding()V

    :cond_2c
    monitor-exit v32
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->password:[B

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lcom/jcraft/jsch/Util;->bzero([B)V

    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/Session;->password:[B

    nop

    return-void

    const/4 v3, 0x7

    :catchall_2
    move-exception v31

    :try_start_11
    monitor-exit v32
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    :try_start_12
    throw v31
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_2d
    :try_start_13
    instance-of v0, v12, Lcom/jcraft/jsch/JSchException;

    move/from16 v31, v0

    if-eqz v31, :cond_2e

    check-cast v12, Lcom/jcraft/jsch/JSchException;

    throw v12

    :cond_2e
    new-instance v31, Lcom/jcraft/jsch/JSchException;

    new-instance v32, Ljava/lang/StringBuffer;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    const-string v33, "Session.connect: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v31
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :catch_b
    move-exception v31

    goto/16 :goto_3

    const/4 v4, 0x1

    :cond_2f
    move/from16 v21, v22

    goto/16 :goto_a

    const/4 v3, 0x6
.end method

.method public delPortForwardingL(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v1, 0x5

    const-string v0, "127.0.0.1"

    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jsch/Session;->delPortForwardingL(Ljava/lang/String;I)V

    const/4 v1, 0x7

    nop

    return-void

    const/4 v1, 0x7
.end method

.method public delPortForwardingL(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v0, 0x5

    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/PortWatcher;->delPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public delPortForwardingR(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v1, 0x6

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/jcraft/jsch/Session;->delPortForwardingR(Ljava/lang/String;I)V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x4
.end method

.method public delPortForwardingR(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->delPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;I)V

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public disconnect()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-nez v0, :cond_0

    const/4 v5, 0x5

    :goto_0
    nop

    return-void

    const/4 v0, 0x7

    const/4 v5, 0x1

    :cond_0
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v5, 0x6

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Disconnecting from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/jcraft/jsch/Session;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    const/4 v5, 0x0

    :cond_1
    invoke-static {p0}, Lcom/jcraft/jsch/Channel;->disconnect(Lcom/jcraft/jsch/Session;)V

    const/4 v5, 0x2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/jcraft/jsch/PortWatcher;->delPort(Lcom/jcraft/jsch/Session;)V

    const/4 v5, 0x7

    invoke-static {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->delPort(Lcom/jcraft/jsch/Session;)V

    const/4 v5, 0x2

    invoke-static {p0}, Lcom/jcraft/jsch/ChannelX11;->removeFakedCookie(Lcom/jcraft/jsch/Session;)V

    const/4 v5, 0x4

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v5, 0x2

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    const/4 v5, 0x5

    invoke-static {}, Ljava/lang/Thread;->yield()V

    const/4 v5, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v5, 0x3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->connectThread:Ljava/lang/Thread;

    const/4 v5, 0x0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x6

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->thread:Ljava/lang/Runnable;

    const/4 v5, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    if-eqz v0, :cond_5

    const/4 v5, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v5, 0x6

    :cond_3
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v5, 0x6

    :cond_4
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->out_ext:Ljava/io/OutputStream;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    iget-object v0, v0, Lcom/jcraft/jsch/IO;->out_ext:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v5, 0x2

    :cond_5
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    if-nez v0, :cond_7

    const/4 v5, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_6

    const/4 v5, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x1

    :cond_6
    :goto_1
    iput-object v3, p0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    const/4 v5, 0x1

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    const/4 v5, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0, p0}, Lcom/jcraft/jsch/JSch;->removeSession(Lcom/jcraft/jsch/Session;)Z

    goto/16 :goto_0

    const/4 v0, 0x3

    const/4 v5, 0x3

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    const/4 v5, 0x0

    :cond_7
    :try_start_3
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    monitor-enter v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v5, 0x6

    :try_start_4
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    invoke-interface {v0}, Lcom/jcraft/jsch/Proxy;->close()V

    const/4 v5, 0x0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v5, 0x0

    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    const/4 v1, 0x7

    const/4 v5, 0x5

    :catch_0
    move-exception v0

    goto :goto_1

    const/4 v1, 0x5

    const/4 v5, 0x3

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
.end method

.method public encode(Lcom/jcraft/jsch/Packet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;

    if-eqz v0, :cond_0

    const/4 v8, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->compress_len:[I

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->index:I

    aput v3, v0, v2

    const/4 v8, 0x3

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;

    iget-object v4, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v5, 0x5

    iget-object v7, p0, Lcom/jcraft/jsch/Session;->compress_len:[I

    invoke-interface {v3, v4, v5, v7}, Lcom/jcraft/jsch/Compression;->compress([BI[I)[B

    move-result-object v3

    iput-object v3, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v8, 0x0

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/Session;->compress_len:[I

    aget v3, v3, v2

    iput v3, v0, Lcom/jcraft/jsch/Buffer;->index:I

    const/4 v8, 0x5

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_4

    const/4 v8, 0x2

    iget v0, p0, Lcom/jcraft/jsch/Session;->c2scipher_size:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Packet;->padding(I)V

    const/4 v8, 0x7

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v3, 0x4

    aget-byte v6, v0, v3

    const/4 v8, 0x3

    sget-object v3, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    monitor-enter v3

    const/4 v8, 0x3

    :try_start_0
    sget-object v0, Lcom/jcraft/jsch/Session;->random:Lcom/jcraft/jsch/Random;

    iget-object v4, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v5, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v5, v5, Lcom/jcraft/jsch/Buffer;->index:I

    sub-int/2addr v5, v6

    invoke-interface {v0, v4, v5, v6}, Lcom/jcraft/jsch/Random;->fill([BII)V

    const/4 v8, 0x6

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x0

    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_1

    const/4 v8, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    iget v3, p0, Lcom/jcraft/jsch/Session;->seqo:I

    invoke-interface {v0, v3}, Lcom/jcraft/jsch/MAC;->update(I)V

    const/4 v8, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v4, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v0, v3, v2, v4}, Lcom/jcraft/jsch/MAC;->update([BII)V

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v3, v3, Lcom/jcraft/jsch/Buffer;->buffer:[B

    iget-object v4, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v4, v4, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v0, v3, v4}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    const/4 v8, 0x4

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v0, :cond_2

    const/4 v8, 0x5

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->index:I

    move-object v4, v1

    move v5, v2

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    const/4 v8, 0x5

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    if-eqz v0, :cond_3

    const/4 v8, 0x2

    iget-object v0, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v2, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v2}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    const/4 v8, 0x3

    :cond_3
    nop

    return-void

    const/4 v4, 0x7

    const/4 v8, 0x1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    const/4 v8, 0x0

    :cond_4
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Packet;->padding(I)V

    goto :goto_0

    const/4 v5, 0x4
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->V_C:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x0
.end method

.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x5

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    const/4 v2, 0x7

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x5

    :goto_0
    return-object v0

    const/4 v0, 0x5

    const/4 v2, 0x3

    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-static {p1}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x4

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    const/4 v0, 0x6

    const/4 v2, 0x6

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    const/4 v2, 0x2
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x4
.end method

.method public getHostKey()Lcom/jcraft/jsch/HostKey;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->hostkey:Lcom/jcraft/jsch/HostKey;

    return-object v0

    const/4 v0, 0x2
.end method

.method public getHostKeyAlias()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x1
.end method

.method public getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->hostkeyRepository:Lcom/jcraft/jsch/HostKeyRepository;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->getHostKeyRepository()Lcom/jcraft/jsch/HostKeyRepository;

    move-result-object v0

    const/4 v1, 0x7

    :goto_0
    return-object v0

    const/4 v1, 0x7

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->hostkeyRepository:Lcom/jcraft/jsch/HostKeyRepository;

    goto :goto_0

    const/4 v1, 0x5
.end method

.method getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    if-nez v0, :cond_0

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSch;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v0

    const/4 v1, 0x3

    :goto_0
    return-object v0

    const/4 v1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    goto :goto_0

    const/4 v1, 0x7
.end method

.method public getPort()I
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x7

    iget v0, p0, Lcom/jcraft/jsch/Session;->port:I

    return v0

    const/4 v1, 0x6
.end method

.method public getPortForwardingL()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v1, 0x3

    invoke-static {p0}, Lcom/jcraft/jsch/PortWatcher;->getPortForwarding(Lcom/jcraft/jsch/Session;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x0
.end method

.method public getPortForwardingR()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v1, 0x3

    invoke-static {p0}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->getPortForwarding(Lcom/jcraft/jsch/Session;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x7
.end method

.method public getServerAliveCountMax()I
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    iget v0, p0, Lcom/jcraft/jsch/Session;->serverAliveCountMax:I

    return v0

    const/4 v1, 0x3
.end method

.method public getServerAliveInterval()I
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x4

    iget v0, p0, Lcom/jcraft/jsch/Session;->serverAliveInterval:I

    return v0

    const/4 v1, 0x4
.end method

.method public getServerVersion()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->V_S:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x1
.end method

.method getSessionId()[B
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->session_id:[B

    return-object v0

    const/4 v0, 0x2
.end method

.method public getStreamForwarder(Ljava/lang/String;I)Lcom/jcraft/jsch/Channel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v1, 0x6

    new-instance v0, Lcom/jcraft/jsch/ChannelDirectTCPIP;

    invoke-direct {v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->init()V

    const/4 v1, 0x6

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Session;->addChannel(Lcom/jcraft/jsch/Channel;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->setHost(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/ChannelDirectTCPIP;->setPort(I)V

    const/4 v1, 0x5

    return-object v0

    const/4 v1, 0x0
.end method

.method public getTimeout()I
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x2

    iget v0, p0, Lcom/jcraft/jsch/Session;->timeout:I

    return v0

    const/4 v0, 0x1
.end method

.method public getUserInfo()Lcom/jcraft/jsch/UserInfo;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    return-object v0

    const/4 v1, 0x4
.end method

.method public getUserName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x1
.end method

.method public isConnected()Z
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x6

    iget-boolean v0, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    return v0

    const/4 v0, 0x5
.end method

.method public noMoreSessionChannels()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x6

    const/4 v3, 0x3

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    const/4 v3, 0x6

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v3, 0x2

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v3, 0x7

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v3, 0x3

    sget-object v2, Lcom/jcraft/jsch/Session;->nomoresessions:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v3, 0x6

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v3, 0x4

    nop

    return-void

    const/4 v3, 0x2
.end method

.method public openChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->isConnected:Z

    if-nez v2, :cond_0

    const/4 v4, 0x2

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    const-string v3, "session is down"

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    const/4 v4, 0x4

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/jcraft/jsch/Channel;->getChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v1

    const/4 v4, 0x5

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->addChannel(Lcom/jcraft/jsch/Channel;)V

    const/4 v4, 0x4

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel;->init()V

    const/4 v4, 0x1

    instance-of v2, v1, Lcom/jcraft/jsch/ChannelSession;

    if-eqz v2, :cond_1

    const/4 v4, 0x2

    move-object v0, v1

    check-cast v0, Lcom/jcraft/jsch/ChannelSession;

    move-object v2, v0

    invoke-direct {p0, v2}, Lcom/jcraft/jsch/Session;->applyConfigChannel(Lcom/jcraft/jsch/ChannelSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x6

    :cond_1
    :goto_0
    return-object v1

    const/4 v3, 0x3

    const/4 v4, 0x2

    :catch_0
    move-exception v2

    const/4 v4, 0x7

    const/4 v1, 0x0

    goto :goto_0

    const/4 v3, 0x5
.end method

.method public read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v0, p1

    iget v4, v0, Lcom/jcraft/jsch/Buffer;->index:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jsch/Buffer;->index:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    add-int/2addr v2, v3

    move-object/from16 v0, p1

    iput v2, v0, Lcom/jcraft/jsch/Buffer;->index:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x1000000

    and-int/2addr v2, v3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, 0xff0000

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int v6, v2, v3

    const/4 v2, 0x5

    if-lt v6, v2, :cond_2

    const/high16 v2, 0x40000

    if-le v6, v2, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    const/high16 v7, 0x40000

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jsch/Session;->start_discard(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    :cond_3
    add-int/lit8 v2, v6, 0x4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    sub-int v10, v2, v3

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v2, v10

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v3, v3

    if-le v2, v3, :cond_4

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v2, v10

    new-array v15, v2, [B

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-static {v2, v3, v15, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    rem-int v2, v10, v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Bad packet length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, v17

    invoke-interface {v2, v3, v0}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    const/high16 v2, 0x40000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    sub-int v7, v2, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jsch/Session;->start_discard(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    :cond_6
    if-lez v10, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v0, p1

    iget v4, v0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-virtual {v2, v3, v4, v10}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    move-object/from16 v0, p1

    iget v2, v0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v2, v10

    move-object/from16 v0, p1

    iput v2, v0, Lcom/jcraft/jsch/Buffer;->index:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v0, p0

    iget v9, v0, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jcraft/jsch/Session;->s2ccipher_size:I

    invoke-interface/range {v7 .. v12}, Lcom/jcraft/jsch/Cipher;->update([BII[BI)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jcraft/jsch/Session;->seqi:I

    invoke-interface {v2, v3}, Lcom/jcraft/jsch/MAC;->update(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-interface {v2, v3, v4, v5}, Lcom/jcraft/jsch/MAC;->update([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jcraft/jsch/Session;->s2cmac_result1:[B

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/jcraft/jsch/MAC;->doFinal([BI)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->io:Lcom/jcraft/jsch/IO;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jcraft/jsch/Session;->s2cmac_result2:[B

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jcraft/jsch/Session;->s2cmac_result2:[B

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->s2cmac_result1:[B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jcraft/jsch/Session;->s2cmac_result2:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_9

    const/high16 v2, 0x40000

    if-le v10, v2, :cond_8

    new-instance v2, Ljava/io/IOException;

    const-string v3, "MAC Error"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/Session;->s2ccipher:Lcom/jcraft/jsch/Cipher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jcraft/jsch/Session;->s2cmac:Lcom/jcraft/jsch/MAC;

    const/high16 v2, 0x40000

    sub-int v7, v2, v10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jsch/Session;->start_discard(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/Cipher;Lcom/jcraft/jsch/MAC;II)V

    goto/16 :goto_0

    const/4 v11, 0x4

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jcraft/jsch/Session;->seqi:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/jcraft/jsch/Session;->seqi:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    if-eqz v2, :cond_a

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v3, 0x4

    aget-byte v19, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->uncompress_len:[I

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget v4, v0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v4, v4, -0x5

    sub-int v4, v4, v19

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v4, 0x5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/jcraft/jsch/Session;->uncompress_len:[I

    invoke-interface {v2, v3, v4, v5}, Lcom/jcraft/jsch/Compression;->uncompress([BI[I)[B

    move-result-object v15

    if-eqz v15, :cond_b

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->uncompress_len:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x5

    move-object/from16 v0, p1

    iput v2, v0, Lcom/jcraft/jsch/Buffer;->index:I

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v22, v0

    const/4 v2, 0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v16

    new-instance v2, Lcom/jcraft/jsch/JSchException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "SSH_MSG_DISCONNECT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {v14}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "fail in inflater"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_c
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    return-object p1

    const/4 v1, 0x3

    :cond_d
    const/4 v2, 0x2

    move/from16 v0, v22

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    move/from16 v0, v22

    if-ne v0, v2, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v21

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Received SSH_MSG_UNIMPLEMENTED for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    goto/16 :goto_0

    const/4 v11, 0x5

    :cond_e
    const/4 v2, 0x4

    move/from16 v0, v22

    if-ne v0, v2, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getShort()I

    goto/16 :goto_0

    const/4 v11, 0x1

    :cond_f
    const/16 v2, 0x5d

    move/from16 v0, v22

    if-ne v0, v2, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/jcraft/jsch/Channel;->addRemoteWindowSize(I)V

    goto/16 :goto_0

    const/4 v4, 0x5

    :cond_10
    const/16 v2, 0x34

    move/from16 v0, v22

    if-ne v0, v2, :cond_c

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/jcraft/jsch/Session;->isAuthed:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->inflater:Lcom/jcraft/jsch/Compression;

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->deflater:Lcom/jcraft/jsch/Compression;

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v18, v2, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Session;->initDeflater(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/Session;->guess:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v18, v2, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/Session;->initInflater(Ljava/lang/String;)V

    goto/16 :goto_1

    const/4 v4, 0x0
.end method

.method public rekey()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/jcraft/jsch/Session;->send_kexinit()V

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public run()V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/Session;->thread:Ljava/lang/Runnable;

    new-instance v4, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v4}, Lcom/jcraft/jsch/Buffer;-><init>()V

    new-instance v15, Lcom/jcraft/jsch/Packet;

    invoke-direct {v15, v4}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v10, 0x0

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v13, v0, [I

    const/4 v11, 0x0

    const/16 v25, 0x0

    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->isConnected:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->thread:Ljava/lang/Runnable;

    move-object/from16 v28, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v28, :cond_1

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    const/16 v25, 0x0

    :try_start_2
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v28

    move/from16 v0, v28

    and-int/lit16 v14, v0, 0xff

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/jcraft/jsch/KeyExchange;->getState()I

    move-result v28

    move/from16 v0, v28

    if-ne v0, v14, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/jcraft/jsch/Session;->kex_start_time:J

    invoke-virtual {v11, v4}, Lcom/jcraft/jsch/KeyExchange;->next(Lcom/jcraft/jsch/Buffer;)Z

    move-result v20

    if-nez v20, :cond_0

    new-instance v28, Lcom/jcraft/jsch/JSchException;

    new-instance v29, Ljava/lang/StringBuffer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    const-string v30, "verify: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v28
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v7

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jcraft/jsch/Session;->in_kex:Z

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v28

    const/16 v29, 0x1

    invoke-interface/range {v28 .. v29}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v28

    if-eqz v28, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v28

    const/16 v29, 0x1

    new-instance v30, Ljava/lang/StringBuffer;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuffer;-><init>()V

    const-string v31, "Caught an exception, leaving main loop due to "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-interface/range {v28 .. v30}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_1
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->disconnect()V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :goto_1
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/jcraft/jsch/Session;->isConnected:Z

    nop

    return-void

    const/4 v4, 0x5

    :catch_1
    move-exception v8

    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->in_kex:Z

    move/from16 v28, v0

    if-nez v28, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/Session;->serverAliveCountMax:I

    move/from16 v28, v0

    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->sendKeepAliveMsg()V

    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    const/4 v7, 0x4

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->in_kex:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/Session;->serverAliveCountMax:I

    move/from16 v28, v0

    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    const/4 v7, 0x3

    :cond_3
    throw v8

    :cond_4
    sparse-switch v14, :sswitch_data_0

    new-instance v28, Ljava/io/IOException;

    new-instance v29, Ljava/lang/StringBuffer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    const-string v30, "Unknown SSH message type "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v28

    :sswitch_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/jcraft/jsch/Session;->receive_kexinit(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/KeyExchange;

    move-result-object v11

    goto/16 :goto_0

    const/4 v7, 0x4

    :sswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/jcraft/jsch/Session;->send_newkeys()V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/jcraft/jsch/Session;->receive_newkeys(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/KeyExchange;)V

    const/4 v11, 0x0

    goto/16 :goto_0

    const/4 v0, 0x3

    :sswitch_2
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v4, v0, v13}, Lcom/jcraft/jsch/Buffer;->getString([I[I)[B

    move-result-object v9

    if-eqz v5, :cond_0

    const/16 v28, 0x0

    aget v28, v13, v28
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v28, :cond_0

    const/16 v28, 0x0

    :try_start_5
    aget v28, v24, v28

    const/16 v29, 0x0

    aget v29, v13, v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v5, v9, v0, v1}, Lcom/jcraft/jsch/Channel;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/16 v28, 0x0

    :try_start_6
    aget v12, v13, v28

    iget v0, v5, Lcom/jcraft/jsch/Channel;->lwsize:I

    move/from16 v28, v0

    sub-int v28, v28, v12

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Channel;->setLocalWindowSize(I)V

    iget v0, v5, Lcom/jcraft/jsch/Channel;->lwsize:I

    move/from16 v28, v0

    iget v0, v5, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    invoke-virtual {v15}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v28, 0x5d

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    invoke-virtual {v5}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget v0, v5, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    move/from16 v28, v0

    iget v0, v5, Lcom/jcraft/jsch/Channel;->lwsize:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    monitor-enter v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-boolean v0, v5, Lcom/jcraft/jsch/Channel;->close:Z

    move/from16 v28, v0

    if-nez v28, :cond_5

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    :cond_5
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget v0, v5, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Channel;->setLocalWindowSize(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    const/4 v5, 0x5

    :catch_2
    move-exception v7

    :try_start_9
    invoke-virtual {v5}, Lcom/jcraft/jsch/Channel;->disconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    const/4 v4, 0x1

    :catch_3
    move-exception v28

    goto/16 :goto_0

    const/4 v12, 0x3

    :catchall_0
    move-exception v28

    :try_start_a
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v28

    :sswitch_3
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v5

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-object/from16 v0, v24

    invoke-virtual {v4, v0, v13}, Lcom/jcraft/jsch/Buffer;->getString([I[I)[B

    move-result-object v9

    if-eqz v5, :cond_0

    const/16 v28, 0x0

    aget v28, v13, v28

    if-eqz v28, :cond_0

    const/16 v28, 0x0

    aget v28, v24, v28

    const/16 v29, 0x0

    aget v29, v13, v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v5, v9, v0, v1}, Lcom/jcraft/jsch/Channel;->write_ext([BII)V

    const/16 v28, 0x0

    aget v12, v13, v28

    iget v0, v5, Lcom/jcraft/jsch/Channel;->lwsize:I

    move/from16 v28, v0

    sub-int v28, v28, v12

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Channel;->setLocalWindowSize(I)V

    iget v0, v5, Lcom/jcraft/jsch/Channel;->lwsize:I

    move/from16 v28, v0

    iget v0, v5, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    invoke-virtual {v15}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v28, 0x5d

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    invoke-virtual {v5}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget v0, v5, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    move/from16 v28, v0

    iget v0, v5, Lcom/jcraft/jsch/Channel;->lwsize:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    monitor-enter v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :try_start_c
    iget-boolean v0, v5, Lcom/jcraft/jsch/Channel;->close:Z

    move/from16 v28, v0

    if-nez v28, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    :cond_6
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    iget v0, v5, Lcom/jcraft/jsch/Channel;->lwsize_max:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Channel;->setLocalWindowSize(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_0

    const/4 v11, 0x7

    :catchall_1
    move-exception v28

    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v28

    :sswitch_4
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Channel;->addRemoteWindowSize(I)V

    goto/16 :goto_0

    const/4 v7, 0x5

    :sswitch_5
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/jcraft/jsch/Channel;->eof_remote()V

    goto/16 :goto_0

    const/4 v10, 0x0

    :sswitch_6
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/jcraft/jsch/Channel;->disconnect()V

    goto/16 :goto_0

    const/4 v2, 0x5

    :sswitch_7
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v5

    if-nez v5, :cond_7

    :cond_7
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v16

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getUInt()J

    move-result-wide v22

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v21

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Lcom/jcraft/jsch/Channel;->setRemoteWindowSize(J)V

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Channel;->setRemotePacketSize(I)V

    const/16 v28, 0x1

    move/from16 v0, v28

    iput-boolean v0, v5, Lcom/jcraft/jsch/Channel;->open_confirmation:Z

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Channel;->setRecipient(I)V

    goto/16 :goto_0

    const/4 v10, 0x0

    :sswitch_8
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v5

    if-nez v5, :cond_8

    :cond_8
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Channel;->setExitStatus(I)V

    const/16 v28, 0x1

    move/from16 v0, v28

    iput-boolean v0, v5, Lcom/jcraft/jsch/Channel;->close:Z

    const/16 v28, 0x1

    move/from16 v0, v28

    iput-boolean v0, v5, Lcom/jcraft/jsch/Channel;->eof_remote:Z

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/jcraft/jsch/Channel;->setRecipient(I)V

    goto/16 :goto_0

    const/4 v6, 0x0

    :sswitch_9
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v10

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v9

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v28

    if-eqz v28, :cond_a

    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v5

    if-eqz v5, :cond_0

    const/16 v19, 0x64

    invoke-static {v9}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v28

    const-string v29, "exit-status"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_9

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/jcraft/jsch/Channel;->setExitStatus(I)V

    const/16 v19, 0x63

    :cond_9
    if-eqz v18, :cond_0

    invoke-virtual {v15}, Lcom/jcraft/jsch/Packet;->reset()V

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    invoke-virtual {v5}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    goto/16 :goto_0

    const/4 v9, 0x5

    :cond_a
    const/16 v18, 0x0

    goto :goto_2

    const/4 v13, 0x4

    :sswitch_a
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v9

    invoke-static {v9}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v6

    const-string v28, "forwarded-tcpip"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_d

    const-string v28, "x11"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->x11_forwarding:Z

    move/from16 v28, v0

    if-nez v28, :cond_d

    :cond_b
    const-string v28, "auth-agent@openssh.com"

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->agent_forwarding:Z

    move/from16 v28, v0

    if-nez v28, :cond_d

    :cond_c
    invoke-virtual {v15}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v28, 0x5c

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    sget-object v28, Lcom/jcraft/jsch/Util;->empty:[B

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    sget-object v28, Lcom/jcraft/jsch/Util;->empty:[B

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    :sswitch_b
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v5

    if-eqz v5, :cond_0

    const/16 v28, 0x1

    move/from16 v0, v28

    iput v0, v5, Lcom/jcraft/jsch/Channel;->reply:I

    goto/16 :goto_0

    const/4 v8, 0x7

    :cond_d
    invoke-static {v6}, Lcom/jcraft/jsch/Channel;->getChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/jcraft/jsch/Session;->addChannel(Lcom/jcraft/jsch/Channel;)V

    invoke-virtual {v5, v4}, Lcom/jcraft/jsch/Channel;->getData(Lcom/jcraft/jsch/Buffer;)V

    invoke-virtual {v5}, Lcom/jcraft/jsch/Channel;->init()V

    new-instance v27, Ljava/lang/Thread;

    move-object/from16 v0, v27

    invoke-direct {v0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    const-string v29, "Channel "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    move/from16 v28, v0

    if-eqz v28, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_e
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    const/4 v2, 0x5

    :sswitch_c
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/jcraft/jsch/Channel;->getChannel(ILcom/jcraft/jsch/Session;)Lcom/jcraft/jsch/Channel;

    move-result-object v5

    if-eqz v5, :cond_0

    const/16 v28, 0x0

    move/from16 v0, v28

    iput v0, v5, Lcom/jcraft/jsch/Channel;->reply:I

    goto/16 :goto_0

    const/4 v7, 0x4

    :sswitch_d
    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getShort()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v9

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v28

    if-eqz v28, :cond_f

    const/16 v18, 0x1

    :goto_3
    if-eqz v18, :cond_0

    invoke-virtual {v15}, Lcom/jcraft/jsch/Packet;->reset()V

    const/16 v28, 0x52

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    goto/16 :goto_0

    const/4 v1, 0x6

    :cond_f
    const/16 v18, 0x0

    goto :goto_3

    const/4 v3, 0x5

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->getThread()Ljava/lang/Thread;

    move-result-object v26

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    move-object/from16 v29, v0

    const/16 v28, 0x51

    move/from16 v0, v28

    if-ne v14, v0, :cond_11

    const/16 v28, 0x1

    :goto_4
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setReply(I)V

    const/16 v28, 0x51

    move/from16 v0, v28

    if-ne v14, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->getPort()I

    move-result v28

    if-nez v28, :cond_10

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getShort()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->grr:Lcom/jcraft/jsch/Session$GlobalRequestReply;

    move-object/from16 v28, v0

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/jcraft/jsch/Session$GlobalRequestReply;->setPort(I)V

    :cond_10
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->interrupt()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    goto/16 :goto_0

    const/4 v13, 0x3

    :cond_11
    const/16 v28, 0x0

    goto :goto_4

    const/4 v0, 0x0

    :catch_4
    move-exception v28

    goto/16 :goto_1

    const/4 v5, 0x0

    :catch_5
    move-exception v28

    goto/16 :goto_1

    const/4 v8, 0x5

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x50 -> :sswitch_d
        0x51 -> :sswitch_e
        0x52 -> :sswitch_e
        0x5a -> :sswitch_a
        0x5b -> :sswitch_7
        0x5c -> :sswitch_8
        0x5d -> :sswitch_4
        0x5e -> :sswitch_2
        0x5f -> :sswitch_3
        0x60 -> :sswitch_5
        0x61 -> :sswitch_6
        0x62 -> :sswitch_9
        0x63 -> :sswitch_b
        0x64 -> :sswitch_c
    .end sparse-switch
.end method

.method public sendIgnore()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v3, 0x5

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    const/4 v3, 0x2

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v3, 0x6

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v3, 0x7

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v3, 0x4

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v3, 0x4

    nop

    return-void

    const/4 v3, 0x4
.end method

.method public sendKeepAliveMsg()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x6

    const/4 v3, 0x1

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    const/4 v3, 0x3

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v3, 0x7

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v3, 0x2

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v3, 0x4

    sget-object v2, Lcom/jcraft/jsch/Session;->keepalivemsg:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v3, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v3, 0x1

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v3, 0x3

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setClientVersion(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->V_C:[B

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x7

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x7

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v2, 0x4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    const/4 v2, 0x7

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    monitor-exit v1

    const/4 v2, 0x1

    nop

    return-void

    const/4 v0, 0x0

    const/4 v2, 0x2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setConfig(Ljava/util/Hashtable;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v6, 0x7

    iget-object v4, p0, Lcom/jcraft/jsch/Session;->lock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v6, 0x5

    :try_start_0
    iget-object v3, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    if-nez v3, :cond_0

    const/4 v6, 0x0

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    const/4 v6, 0x1

    :cond_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/jcraft/jsch/Session;->config:Ljava/util/Hashtable;

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    const/4 v6, 0x0

    const/4 v6, 0x4

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setConfig(Ljava/util/Properties;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x6

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/util/Hashtable;)V

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public setDaemonThread(Z)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x7

    iput-boolean p1, p0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setHostKeyAlias(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->hostKeyAlias:Ljava/lang/String;

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setHostKeyRepository(Lcom/jcraft/jsch/HostKeyRepository;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->hostkeyRepository:Lcom/jcraft/jsch/HostKeyRepository;

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public setIdentityRepository(Lcom/jcraft/jsch/IdentityRepository;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->identityRepository:Lcom/jcraft/jsch/IdentityRepository;

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->in:Ljava/io/InputStream;

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->out:Ljava/io/OutputStream;

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x5

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->password:[B

    const/4 v1, 0x4

    :cond_0
    nop

    return-void

    const/4 v1, 0x4
.end method

.method public setPassword([B)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x7

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/Session;->password:[B

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/Session;->password:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x1

    :cond_0
    nop

    return-void

    const/4 v3, 0x4
.end method

.method public setPort(I)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x0

    iput p1, p0, Lcom/jcraft/jsch/Session;->port:I

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setPortForwardingL(ILjava/lang/String;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v1, 0x6

    const-string v0, "127.0.0.1"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v0

    return v0

    const/4 v1, 0x2
.end method

.method public setPortForwardingL(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v5, 0x6

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->parseForwarding(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;

    move-result-object v0

    const/4 v5, 0x2

    iget-object v1, v0, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;

    iget v2, v0, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    iget-object v3, v0, Lcom/jcraft/jsch/Session$Forwarding;->host:Ljava/lang/String;

    iget v4, v0, Lcom/jcraft/jsch/Session$Forwarding;->hostport:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v1

    return v1

    const/4 v0, 0x2
.end method

.method public setPortForwardingL(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)I

    move-result v0

    return v0

    const/4 v1, 0x7
.end method

.method public setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/jcraft/jsch/Session;->setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;I)I

    move-result v0

    return v0

    const/4 v5, 0x5
.end method

.method public setPortForwardingL(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v4, 0x6

    invoke-static/range {p0 .. p5}, Lcom/jcraft/jsch/PortWatcher;->addPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/ServerSocketFactory;)Lcom/jcraft/jsch/PortWatcher;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, p6}, Lcom/jcraft/jsch/PortWatcher;->setConnectTimeout(I)V

    const/4 v4, 0x1

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v4, 0x2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "PortWatcher Thread for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/4 v4, 0x2

    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    if-eqz v2, :cond_0

    const/4 v4, 0x3

    iget-boolean v2, p0, Lcom/jcraft/jsch/Session;->daemon_thread:Z

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setDaemon(Z)V

    const/4 v4, 0x7

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 v4, 0x1

    iget v2, v0, Lcom/jcraft/jsch/PortWatcher;->lport:I

    return v2

    const/4 v3, 0x3
.end method

.method public setPortForwardingR(Ljava/lang/String;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v8, 0x7

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->parseForwarding(Ljava/lang/String;)Lcom/jcraft/jsch/Session$Forwarding;

    move-result-object v7

    const/4 v8, 0x3

    iget-object v0, v7, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;

    iget v1, v7, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/Session;->_setPortForwardingR(Ljava/lang/String;I)I

    move-result v3

    const/4 v8, 0x1

    iget-object v1, v7, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;

    iget v2, v7, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    iget-object v4, v7, Lcom/jcraft/jsch/Session$Forwarding;->host:Ljava/lang/String;

    iget v5, v7, Lcom/jcraft/jsch/Session$Forwarding;->hostport:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->addPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    const/4 v8, 0x6

    return v3

    const/4 v0, 0x2
.end method

.method public setPortForwardingR(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x7

    nop

    return-void

    const/4 v1, 0x7
.end method

.method public setPortForwardingR(ILjava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v6, 0x5

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v5, v1

    check-cast v5, Lcom/jcraft/jsch/SocketFactory;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    const/4 v6, 0x3

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setPortForwardingR(ILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v6, 0x6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    const/4 v6, 0x7

    nop

    return-void

    const/4 v4, 0x1
.end method

.method public setPortForwardingR(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v1, 0x6

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setPortForwardingR(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    check-cast v5, Lcom/jcraft/jsch/SocketFactory;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/Session;->setPortForwardingR(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    const/4 v6, 0x7

    nop

    return-void

    const/4 v5, 0x0
.end method

.method public setPortForwardingR(Ljava/lang/String;ILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v7, 0x3

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/Session;->_setPortForwardingR(Ljava/lang/String;I)I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    const/4 v7, 0x6

    invoke-static/range {v0 .. v6}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->addPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;ILcom/jcraft/jsch/SocketFactory;)V

    const/4 v7, 0x0

    nop

    return-void

    const/4 v3, 0x3
.end method

.method public setPortForwardingR(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v6, 0x5

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/Session;->_setPortForwardingR(Ljava/lang/String;I)I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelForwardedTCPIP;->addPort(Lcom/jcraft/jsch/Session;Ljava/lang/String;IILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    nop

    return-void

    const/4 v3, 0x2
.end method

.method public setProxy(Lcom/jcraft/jsch/Proxy;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->proxy:Lcom/jcraft/jsch/Proxy;

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public setServerAliveCountMax(I)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x6

    iput p1, p0, Lcom/jcraft/jsch/Session;->serverAliveCountMax:I

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public setServerAliveInterval(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v0, 0x6

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/Session;->setTimeout(I)V

    const/4 v0, 0x1

    iput p1, p0, Lcom/jcraft/jsch/Session;->serverAliveInterval:I

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setSocketFactory(Lcom/jcraft/jsch/SocketFactory;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->socket_factory:Lcom/jcraft/jsch/SocketFactory;

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setTimeout(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v3, 0x4

    const/4 v3, 0x6

    iget-object v1, p0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    if-nez v1, :cond_1

    const/4 v3, 0x1

    if-gez p1, :cond_0

    const/4 v3, 0x3

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v2, "invalid timeout value"

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    const/4 v3, 0x4

    :cond_0
    iput p1, p0, Lcom/jcraft/jsch/Session;->timeout:I

    const/4 v3, 0x3

    :goto_0
    nop

    return-void

    const/4 v3, 0x5

    const/4 v3, 0x1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/Session;->socket:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 v3, 0x3

    iput p1, p0, Lcom/jcraft/jsch/Session;->timeout:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v1, 0x4

    const/4 v3, 0x0

    :catch_0
    move-exception v0

    const/4 v3, 0x7

    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    const/4 v3, 0x6

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    const/4 v3, 0x3

    :cond_2
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setUserInfo(Lcom/jcraft/jsch/UserInfo;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->userinfo:Lcom/jcraft/jsch/UserInfo;

    nop

    return-void

    const/4 v0, 0x1
.end method

.method setUserName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/jcraft/jsch/Session;->username:Ljava/lang/String;

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setX11Cookie(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x7

    invoke-static {p1}, Lcom/jcraft/jsch/ChannelX11;->setCookie(Ljava/lang/String;)V

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setX11Host(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/jcraft/jsch/ChannelX11;->setHost(Ljava/lang/String;)V

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public setX11Port(I)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x3

    invoke-static {p1}, Lcom/jcraft/jsch/ChannelX11;->setPort(I)V

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public write(Lcom/jcraft/jsch/Packet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v9, 0x1

    const/16 v8, 0x1f

    const/4 v9, 0x5

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getTimeout()I

    move-result v1

    int-to-long v2, v1

    const/4 v9, 0x6

    :goto_0
    iget-boolean v1, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-eqz v1, :cond_1

    const/4 v9, 0x6

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/jcraft/jsch/Session;->kex_start_time:J

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-lez v1, :cond_0

    const/4 v9, 0x5

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    const-string v4, "timeout in wating for rekeying process."

    invoke-direct {v1, v4}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1

    const/4 v9, 0x7

    :cond_0
    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v0

    const/4 v9, 0x3

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    if-eq v0, v8, :cond_1

    if-eq v0, v8, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x21

    if-eq v0, v1, :cond_1

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v9, 0x5

    :cond_1
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->_write(Lcom/jcraft/jsch/Packet;)V

    const/4 v9, 0x0

    nop

    return-void

    const/4 v6, 0x2

    const/4 v9, 0x2

    :cond_2
    const-wide/16 v4, 0xa

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v2, 0x7

    const/4 v9, 0x6

    :catch_0
    move-exception v1

    goto :goto_0

    const/4 v1, 0x5
.end method

.method write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jcraft/jsch/Session;->getTimeout()I

    move-result v8

    int-to-long v6, v8

    :goto_0
    iget-boolean v8, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-eqz v8, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/jcraft/jsch/Session;->kex_start_time:J

    sub-long/2addr v8, v10

    cmp-long v8, v8, v6

    if-lez v8, :cond_0

    new-instance v8, Lcom/jcraft/jsch/JSchException;

    const-string v9, "timeout in wating for rekeying process."

    invoke-direct {v8, v9}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    const-wide/16 v8, 0xa

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v6, 0x0

    :catch_0
    move-exception v8

    goto :goto_0

    const/4 v7, 0x6

    :cond_1
    monitor-enter p2

    :try_start_1
    iget-wide v8, p2, Lcom/jcraft/jsch/Channel;->rwsize:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v10, p3

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    :try_start_2
    iget v8, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    const-wide/16 v8, 0x64

    invoke-virtual {p2, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget v8, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    :cond_2
    :goto_1
    iget-wide v8, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    int-to-long v10, p3

    cmp-long v8, v8, v10

    if-ltz v8, :cond_4

    iget-wide v8, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    int-to-long v10, p3

    sub-long/2addr v8, v10

    iput-wide v8, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->_write(Lcom/jcraft/jsch/Packet;)V

    :cond_3
    nop

    return-void

    const/4 v6, 0x2

    :catch_1
    move-exception v8

    :try_start_4
    iget v8, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    goto :goto_1

    const/4 v11, 0x0

    :catchall_0
    move-exception v8

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8

    :catchall_1
    move-exception v8

    :try_start_5
    iget v9, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p2, Lcom/jcraft/jsch/Channel;->notifyme:I

    throw v8

    :cond_4
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-boolean v8, p2, Lcom/jcraft/jsch/Channel;->close:Z

    if-nez v8, :cond_5

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->isConnected()Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    new-instance v8, Ljava/io/IOException;

    const-string v9, "channel is broken"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    monitor-enter p2

    :try_start_6
    iget-wide v8, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_9

    iget-wide v2, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    int-to-long v8, p3

    cmp-long v8, v2, v8

    if-lez v8, :cond_7

    int-to-long v2, p3

    :cond_7
    int-to-long v8, p3

    cmp-long v8, v2, v8

    if-eqz v8, :cond_8

    long-to-int v10, v2

    iget-object v8, p0, Lcom/jcraft/jsch/Session;->c2scipher:Lcom/jcraft/jsch/Cipher;

    if-eqz v8, :cond_b

    iget v8, p0, Lcom/jcraft/jsch/Session;->c2scipher_size:I

    move v9, v8

    :goto_3
    iget-object v8, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/jcraft/jsch/Session;->c2smac:Lcom/jcraft/jsch/MAC;

    invoke-interface {v8}, Lcom/jcraft/jsch/MAC;->getBlockSize()I

    move-result v8

    :goto_4
    invoke-virtual {p1, v10, v9, v8}, Lcom/jcraft/jsch/Packet;->shift(III)I

    move-result v4

    :cond_8
    iget-object v8, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v0

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v1

    int-to-long v8, p3

    sub-long/2addr v8, v2

    long-to-int p3, v8

    iget-wide v8, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    sub-long/2addr v8, v2

    iput-wide v8, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    const/4 v5, 0x1

    :cond_9
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v5, :cond_a

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session;->_write(Lcom/jcraft/jsch/Packet;)V

    if-eqz p3, :cond_3

    invoke-virtual {p1, v0, v1, v4, p3}, Lcom/jcraft/jsch/Packet;->unshift(BIII)V

    :cond_a
    monitor-enter p2

    :try_start_7
    iget-boolean v8, p0, Lcom/jcraft/jsch/Session;->in_kex:Z

    if-eqz v8, :cond_d

    monitor-exit p2

    goto/16 :goto_0

    const/4 v2, 0x6

    :catchall_2
    move-exception v8

    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v8

    :cond_b
    const/16 v8, 0x8

    move v9, v8

    goto :goto_3

    const/4 v6, 0x4

    :cond_c
    const/4 v8, 0x0

    goto :goto_4

    const/4 v3, 0x0

    :catchall_3
    move-exception v8

    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v8

    :cond_d
    :try_start_9
    iget-wide v8, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    int-to-long v10, p3

    cmp-long v8, v8, v10

    if-ltz v8, :cond_e

    iget-wide v8, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    int-to-long v10, p3

    sub-long/2addr v8, v10

    iput-wide v8, p2, Lcom/jcraft/jsch/Channel;->rwsize:J

    monitor-exit p2

    goto/16 :goto_2

    const/4 v3, 0x1

    :cond_e
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_0

    const/4 v7, 0x1
.end method
