.class public Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;
.super Lcom/jcraft/jsch/UserAuth;


# static fields
.field private static final SSH_MSG_USERAUTH_GSSAPI_ERROR:I = 0x40

.field private static final SSH_MSG_USERAUTH_GSSAPI_ERRTOK:I = 0x41

.field private static final SSH_MSG_USERAUTH_GSSAPI_EXCHANGE_COMPLETE:I = 0x3f

.field private static final SSH_MSG_USERAUTH_GSSAPI_MIC:I = 0x42

.field private static final SSH_MSG_USERAUTH_GSSAPI_RESPONSE:I = 0x3c

.field private static final SSH_MSG_USERAUTH_GSSAPI_TOKEN:I = 0x3d

.field private static final supported_method:[Ljava/lang/String;

.field private static final supported_oid:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x6

    new-array v0, v3, [[B

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    sput-object v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->supported_oid:[[B

    const/4 v4, 0x3

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "gssapi-with-mic.krb5"

    aput-object v1, v0, v2

    sput-object v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->supported_method:[Ljava/lang/String;

    nop

    return-void

    const/4 v1, 0x6

    const/4 v4, 0x4

    :array_0
    .array-data 1
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0x12t
        0x1t
        0x2t
        0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public start(Lcom/jcraft/jsch/Session;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super/range {p0 .. p1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->username:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->packet:Lcom/jcraft/jsch/Packet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Packet;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    const/16 v19, 0x32

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    const-string v19, "ssh-connection"

    invoke-static/range {v19 .. v19}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    const-string v19, "gssapi-with-mic"

    invoke-static/range {v19 .. v19}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    sget-object v19, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->supported_oid:[[B

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v10, 0x0

    :goto_0
    sget-object v18, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->supported_oid:[[B

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    sget-object v19, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->supported_oid:[[B

    aget-object v19, v19, v10

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    const/4 v4, 0x2

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->packet:Lcom/jcraft/jsch/Packet;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v14, 0x0

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v6, v0, 0xff

    const/16 v18, 0x33

    move/from16 v0, v18

    if-ne v6, v0, :cond_2

    const/16 v18, 0x0

    :goto_2
    return v18

    const/4 v2, 0x2

    :cond_2
    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ne v6, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v13

    const/4 v10, 0x0

    :goto_3
    sget-object v18, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->supported_oid:[[B

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_3

    sget-object v18, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->supported_oid:[[B

    aget-object v18, v18, v10

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v18

    if-eqz v18, :cond_4

    sget-object v18, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->supported_method:[Ljava/lang/String;

    aget-object v14, v18, v10

    :cond_3
    if-nez v14, :cond_7

    const/16 v18, 0x0

    goto :goto_2

    const/4 v4, 0x0

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    const/4 v0, 0x3

    :cond_5
    const/16 v18, 0x35

    move/from16 v0, v18

    if-ne v6, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v11

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->userinfo:Lcom/jcraft/jsch/UserInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->userinfo:Lcom/jcraft/jsch/UserInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    const/4 v3, 0x4

    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_2

    const/4 v7, 0x6

    :cond_7
    const/4 v7, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jcraft/jsch/GSSContext;

    move-object/from16 v0, v18

    check-cast v0, Lcom/jcraft/jsch/GSSContext;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->username:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v7, v0, v1}, Lcom/jcraft/jsch/GSSContext;->create(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    :cond_8
    :goto_4
    invoke-interface {v7}, Lcom/jcraft/jsch/GSSContext;->isEstablished()Z

    move-result v18

    if-nez v18, :cond_d

    const/16 v18, 0x0

    :try_start_2
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v7, v0, v1, v2}, Lcom/jcraft/jsch/GSSContext;->init([BII)[B
    :try_end_2
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->packet:Lcom/jcraft/jsch/Packet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Packet;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    const/16 v19, 0x3d

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->packet:Lcom/jcraft/jsch/Packet;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    :cond_9
    invoke-interface {v7}, Lcom/jcraft/jsch/GSSContext;->isEstablished()Z

    move-result v18

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v6, v0, 0xff

    const/16 v18, 0x40

    move/from16 v0, v18

    if-ne v6, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v6, v0, 0xff

    :cond_a
    :goto_5
    const/16 v18, 0x33

    move/from16 v0, v18

    if-ne v6, v0, :cond_c

    const/16 v18, 0x0

    goto/16 :goto_2

    const/4 v0, 0x0

    :catch_0
    move-exception v8

    const/16 v18, 0x0

    goto/16 :goto_2

    const/4 v10, 0x0

    :catch_1
    move-exception v8

    const/16 v18, 0x0

    goto/16 :goto_2

    const/4 v0, 0x6

    :catch_2
    move-exception v8

    const/16 v18, 0x0

    goto/16 :goto_2

    const/4 v0, 0x5

    :cond_b
    const/16 v18, 0x41

    move/from16 v0, v18

    if-ne v6, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v6, v0, 0xff

    goto :goto_5

    const/4 v8, 0x6

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v17

    goto/16 :goto_4

    const/4 v9, 0x7

    :cond_d
    new-instance v12, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v12}, Lcom/jcraft/jsch/Buffer;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Session;->getSessionId()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/16 v18, 0x32

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    invoke-virtual {v12, v4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const-string v18, "ssh-connection"

    invoke-static/range {v18 .. v18}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const-string v18, "gssapi-with-mic"

    invoke-static/range {v18 .. v18}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v0, v12, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v12}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v7, v0, v1, v2}, Lcom/jcraft/jsch/GSSContext;->getMIC([BII)[B

    move-result-object v15

    if-nez v15, :cond_e

    const/16 v18, 0x0

    goto/16 :goto_2

    const/4 v8, 0x4

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->packet:Lcom/jcraft/jsch/Packet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Packet;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    const/16 v19, 0x42

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->packet:Lcom/jcraft/jsch/Packet;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    invoke-interface {v7}, Lcom/jcraft/jsch/GSSContext;->dispose()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v6, v0, 0xff

    const/16 v18, 0x34

    move/from16 v0, v18

    if-ne v6, v0, :cond_f

    const/16 v18, 0x1

    goto/16 :goto_2

    const/4 v0, 0x3

    :cond_f
    const/16 v18, 0x33

    move/from16 v0, v18

    if-ne v6, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthGSSAPIWithMIC;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v16

    if-eqz v16, :cond_10

    new-instance v18, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v9}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_2

    const/4 v2, 0x3
.end method
