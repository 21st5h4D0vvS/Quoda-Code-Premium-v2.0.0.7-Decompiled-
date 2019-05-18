.class Lcom/jcraft/jsch/ChannelAgentForwarding;
.super Lcom/jcraft/jsch/Channel;


# static fields
.field private static final LOCAL_MAXIMUM_PACKET_SIZE:I = 0x4000

.field private static final LOCAL_WINDOW_SIZE_MAX:I = 0x20000


# instance fields
.field private final SSH2_AGENTC_ADD_IDENTITY:B

.field private final SSH2_AGENTC_REMOVE_ALL_IDENTITIES:B

.field private final SSH2_AGENTC_REMOVE_IDENTITY:B

.field private final SSH2_AGENTC_REQUEST_IDENTITIES:B

.field private final SSH2_AGENTC_SIGN_REQUEST:B

.field private final SSH2_AGENT_FAILURE:B

.field private final SSH2_AGENT_IDENTITIES_ANSWER:B

.field private final SSH2_AGENT_SIGN_RESPONSE:B

.field private final SSH_AGENTC_ADD_RSA_IDENTITY:B

.field private final SSH_AGENTC_REMOVE_ALL_RSA_IDENTITIES:B

.field private final SSH_AGENTC_REMOVE_RSA_IDENTITY:B

.field private final SSH_AGENTC_REQUEST_RSA_IDENTITIES:B

.field private final SSH_AGENTC_RSA_CHALLENGE:B

.field private final SSH_AGENT_FAILURE:B

.field private final SSH_AGENT_RSA_IDENTITIES_ANSWER:B

.field private final SSH_AGENT_RSA_RESPONSE:B

.field private final SSH_AGENT_SUCCESS:B

.field init:Z

.field private mbuf:Lcom/jcraft/jsch/Buffer;

.field private packet:Lcom/jcraft/jsch/Packet;

.field private rbuf:Lcom/jcraft/jsch/Buffer;

.field private wbuf:Lcom/jcraft/jsch/Buffer;


# direct methods
.method constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/high16 v3, 0x20000

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/jcraft/jsch/Channel;-><init>()V

    const/4 v4, 0x4

    iput-byte v2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH_AGENTC_REQUEST_RSA_IDENTITIES:B

    const/4 v4, 0x5

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH_AGENT_RSA_IDENTITIES_ANSWER:B

    const/4 v4, 0x7

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH_AGENTC_RSA_CHALLENGE:B

    const/4 v4, 0x6

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH_AGENT_RSA_RESPONSE:B

    const/4 v4, 0x4

    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH_AGENT_FAILURE:B

    const/4 v4, 0x5

    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH_AGENT_SUCCESS:B

    const/4 v4, 0x3

    const/4 v0, 0x7

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH_AGENTC_ADD_RSA_IDENTITY:B

    const/4 v4, 0x4

    const/16 v0, 0x8

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH_AGENTC_REMOVE_RSA_IDENTITY:B

    const/4 v4, 0x0

    const/16 v0, 0x9

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH_AGENTC_REMOVE_ALL_RSA_IDENTITIES:B

    const/4 v4, 0x0

    const/16 v0, 0xb

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH2_AGENTC_REQUEST_IDENTITIES:B

    const/4 v4, 0x4

    const/16 v0, 0xc

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH2_AGENT_IDENTITIES_ANSWER:B

    const/4 v4, 0x7

    const/16 v0, 0xd

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH2_AGENTC_SIGN_REQUEST:B

    const/4 v4, 0x2

    const/16 v0, 0xe

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH2_AGENT_SIGN_RESPONSE:B

    const/4 v4, 0x5

    const/16 v0, 0x11

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH2_AGENTC_ADD_IDENTITY:B

    const/4 v4, 0x4

    const/16 v0, 0x12

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH2_AGENTC_REMOVE_IDENTITY:B

    const/4 v4, 0x3

    const/16 v0, 0x13

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH2_AGENTC_REMOVE_ALL_IDENTITIES:B

    const/4 v4, 0x4

    const/16 v0, 0x1e

    iput-byte v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->SSH2_AGENT_FAILURE:B

    const/4 v4, 0x6

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->init:Z

    const/4 v4, 0x4

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    const/4 v4, 0x7

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->wbuf:Lcom/jcraft/jsch/Buffer;

    const/4 v4, 0x3

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->packet:Lcom/jcraft/jsch/Packet;

    const/4 v4, 0x4

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    const/4 v4, 0x4

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/ChannelAgentForwarding;->setLocalWindowSizeMax(I)V

    const/4 v4, 0x7

    invoke-virtual {p0, v3}, Lcom/jcraft/jsch/ChannelAgentForwarding;->setLocalWindowSize(I)V

    const/4 v4, 0x1

    const/16 v0, 0x4000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->setLocalPacketSize(I)V

    const/4 v4, 0x3

    const-string v0, "auth-agent@openssh.com"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->type:[B

    const/4 v4, 0x0

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Buffer;->reset()V

    const/4 v4, 0x5

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    const/4 v4, 0x3

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->connected:Z

    const/4 v4, 0x0

    nop

    return-void

    const/4 v0, 0x2
.end method

.method private send([B)V
    .locals 4

    const/4 v3, 0x7

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->wbuf:Lcom/jcraft/jsch/Buffer;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->wbuf:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->recipient:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->wbuf:Lcom/jcraft/jsch/Buffer;

    array-length v1, p1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->wbuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v3, 0x7

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->packet:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x6

    :goto_0
    nop

    return-void

    const/4 v2, 0x6

    const/4 v3, 0x4

    :catch_0
    move-exception v0

    goto :goto_0

    const/4 v1, 0x1
.end method


# virtual methods
.method eof_remote()V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x7

    invoke-super {p0}, Lcom/jcraft/jsch/Channel;->eof_remote()V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->eof()V

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public run()V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x5

    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->sendOpenConfirmation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    :goto_0
    nop

    return-void

    const/4 v1, 0x1

    const/4 v2, 0x0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelAgentForwarding;->close:Z

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->disconnect()V

    goto :goto_0

    const/4 v2, 0x1
.end method

.method write([BII)V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->packet:Lcom/jcraft/jsch/Packet;

    move-object/from16 v28, v0

    if-nez v28, :cond_0

    new-instance v28, Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rmpsize:I

    move/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/ChannelAgentForwarding;->wbuf:Lcom/jcraft/jsch/Buffer;

    new-instance v28, Lcom/jcraft/jsch/Packet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->wbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    invoke-direct/range {v28 .. v29}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/ChannelAgentForwarding;->packet:Lcom/jcraft/jsch/Packet;

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/jcraft/jsch/Buffer;->shift()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    move/from16 v29, v0

    add-int v29, v29, p3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->s:I

    move/from16 v28, v0

    add-int v28, v28, p3

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v19

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/jcraft/jsch/Buffer;->putByte([BII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v28

    move/from16 v0, v18

    move/from16 v1, v28

    if-le v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->s:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x4

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/jcraft/jsch/Buffer;->s:I

    :goto_0
    nop

    return-void

    const/4 v4, 0x7

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v26

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/jcraft/jsch/ChannelAgentForwarding;->getSession()Lcom/jcraft/jsch/Session;
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    invoke-virtual {v7}, Lcom/jcraft/jsch/Session;->getIdentityRepository()Lcom/jcraft/jsch/IdentityRepository;

    move-result-object v17

    invoke-virtual {v7}, Lcom/jcraft/jsch/Session;->getUserInfo()Lcom/jcraft/jsch/UserInfo;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/jcraft/jsch/Buffer;->reset()V

    const/16 v28, 0xb

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    const/16 v29, 0xc

    invoke-virtual/range {v28 .. v29}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    invoke-interface/range {v17 .. v17}, Lcom/jcraft/jsch/IdentityRepository;->getIdentities()Ljava/util/Vector;

    move-result-object v15

    monitor-enter v15

    const/4 v9, 0x0

    const/4 v14, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v14, v0, :cond_4

    invoke-virtual {v15, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/jcraft/jsch/Identity;

    move-object/from16 v0, v28

    check-cast v0, Lcom/jcraft/jsch/Identity;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v28

    if-eqz v28, :cond_3

    add-int/lit8 v9, v9, 0x1

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    const/4 v2, 0x4

    :catch_0
    move-exception v11

    new-instance v28, Ljava/io/IOException;

    invoke-virtual {v11}, Lcom/jcraft/jsch/JSchException;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v28

    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v14, 0x0

    :goto_2
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v14, v0, :cond_6

    invoke-virtual {v15, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/jcraft/jsch/Identity;

    move-object/from16 v0, v28

    check-cast v0, Lcom/jcraft/jsch/Identity;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object v21

    if-nez v21, :cond_5

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    const/4 v13, 0x1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    sget-object v29, Lcom/jcraft/jsch/Util;->empty:[B

    invoke-virtual/range {v28 .. v29}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    goto :goto_3

    const/4 v13, 0x6

    :catchall_0
    move-exception v28

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v28

    :cond_6
    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelAgentForwarding;->send([B)V

    goto/16 :goto_0

    const/4 v11, 0x4

    :cond_7
    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    goto :goto_4

    const/4 v2, 0x4

    :cond_8
    const/16 v28, 0xd

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v12

    invoke-interface/range {v17 .. v17}, Lcom/jcraft/jsch/IdentityRepository;->getIdentities()Ljava/util/Vector;

    move-result-object v15

    const/16 v16, 0x0

    monitor-enter v15

    const/4 v14, 0x0

    :goto_5
    :try_start_4
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v28

    move/from16 v0, v28

    if-ge v14, v0, :cond_d

    invoke-virtual {v15, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/jcraft/jsch/Identity;

    move-object/from16 v0, v28

    check-cast v0, Lcom/jcraft/jsch/Identity;

    move-object v5, v0

    invoke-interface {v5}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object v28

    if-nez v28, :cond_a

    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    const/4 v4, 0x2

    :cond_a
    invoke-interface {v5}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v8, v0}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v28

    if-eqz v28, :cond_9

    invoke-interface {v5}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v28

    if-eqz v28, :cond_c

    if-eqz v27, :cond_9

    :cond_b
    invoke-interface {v5}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v28

    if-eqz v28, :cond_c

    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    const-string v29, "Passphrase for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-interface {v5}, Lcom/jcraft/jsch/Identity;->getName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Lcom/jcraft/jsch/UserInfo;->promptPassphrase(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_f

    :cond_c
    :goto_6
    invoke-interface {v5}, Lcom/jcraft/jsch/Identity;->isEncrypted()Z

    move-result v28

    if-nez v28, :cond_9

    move-object/from16 v16, v5

    :cond_d
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v24, 0x0

    if-eqz v16, :cond_e

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Lcom/jcraft/jsch/Identity;->getSignature([B)[B

    move-result-object v24

    :cond_e
    if-nez v24, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    const/16 v29, 0x1e

    invoke-virtual/range {v28 .. v29}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    goto/16 :goto_4

    const/4 v0, 0x5

    :cond_f
    :try_start_5
    invoke-interface/range {v27 .. v27}, Lcom/jcraft/jsch/UserInfo;->getPassphrase()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v20

    :try_start_6
    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Lcom/jcraft/jsch/Identity;->setPassphrase([B)Z
    :try_end_6
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v28

    if-eqz v28, :cond_b

    goto :goto_6

    const/4 v10, 0x7

    :catch_1
    move-exception v11

    goto :goto_6

    const/4 v14, 0x0

    :catchall_1
    move-exception v28

    :try_start_7
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v28

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    const/16 v29, 0xe

    invoke-virtual/range {v28 .. v29}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    goto/16 :goto_4

    const/4 v10, 0x2

    :cond_11
    const/16 v28, 0x12

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v8

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lcom/jcraft/jsch/IdentityRepository;->remove([B)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    const/16 v29, 0x6

    invoke-virtual/range {v28 .. v29}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    goto/16 :goto_4

    const/4 v2, 0x1

    :cond_12
    const/16 v28, 0x9

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    const/16 v29, 0x6

    invoke-virtual/range {v28 .. v29}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    goto/16 :goto_4

    const/4 v3, 0x1

    :cond_13
    const/16 v28, 0x13

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    invoke-interface/range {v17 .. v17}, Lcom/jcraft/jsch/IdentityRepository;->removeAll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    const/16 v29, 0x6

    invoke-virtual/range {v28 .. v29}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    goto/16 :goto_4

    const/4 v13, 0x0

    :cond_14
    const/16 v28, 0x11

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v13

    new-array v0, v13, [B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/IdentityRepository;->add([B)Z

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    if-eqz v23, :cond_15

    const/16 v28, 0x6

    :goto_7
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    goto/16 :goto_4

    const/4 v1, 0x7

    :cond_15
    const/16 v28, 0x5

    goto :goto_7

    const/4 v1, 0x4

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->rbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    invoke-virtual/range {v28 .. v29}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelAgentForwarding;->mbuf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v28, v0

    const/16 v29, 0x5

    invoke-virtual/range {v28 .. v29}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    goto/16 :goto_4

    const/4 v7, 0x7
.end method
