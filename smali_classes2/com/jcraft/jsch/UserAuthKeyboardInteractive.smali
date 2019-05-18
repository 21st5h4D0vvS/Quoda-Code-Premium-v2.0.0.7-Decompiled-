.class Lcom/jcraft/jsch/UserAuthKeyboardInteractive;
.super Lcom/jcraft/jsch/UserAuth;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public start(Lcom/jcraft/jsch/Session;)Z
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super/range {p0 .. p1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->userinfo:Lcom/jcraft/jsch/UserInfo;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->userinfo:Lcom/jcraft/jsch/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/jcraft/jsch/UIKeyboardInteractive;

    move/from16 v23, v0

    if-nez v23, :cond_0

    const/16 v23, 0x0

    :goto_0
    return v23

    const/4 v11, 0x0

    :cond_0
    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->username:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string v24, "@"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->host:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jsch/Session;->port:I

    move/from16 v23, v0

    const/16 v24, 0x16

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jsch/Session;->port:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/jcraft/jsch/Session;->password:[B

    move-object/from16 v21, v0

    const/4 v11, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->username:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v10

    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jsch/Session;->auth_failures:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jsch/Session;->max_auth_tries:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_3

    const/16 v23, 0x0

    goto :goto_0

    const/4 v10, 0x3

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->packet:Lcom/jcraft/jsch/Packet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Packet;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    const/16 v24, 0x32

    invoke-virtual/range {v23 .. v24}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    const-string v24, "ssh-connection"

    invoke-static/range {v24 .. v24}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    const-string v24, "keyboard-interactive"

    invoke-static/range {v24 .. v24}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    sget-object v24, Lcom/jcraft/jsch/Util;->empty:[B

    invoke-virtual/range {v23 .. v24}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    sget-object v24, Lcom/jcraft/jsch/Util;->empty:[B

    invoke-virtual/range {v23 .. v24}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->packet:Lcom/jcraft/jsch/Packet;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v13, 0x1

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v23

    move/from16 v0, v23

    and-int/lit16 v12, v0, 0xff

    const/16 v23, 0x34

    move/from16 v0, v23

    if-ne v12, v0, :cond_5

    const/16 v23, 0x1

    goto/16 :goto_0

    const/4 v5, 0x4

    :cond_5
    const/16 v23, 0x35

    move/from16 v0, v23

    if-ne v12, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v16

    invoke-static {v8}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->userinfo:Lcom/jcraft/jsch/UserInfo;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->userinfo:Lcom/jcraft/jsch/UserInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    goto :goto_1

    const/4 v2, 0x6

    :cond_6
    const/16 v23, 0x33

    move/from16 v0, v23

    if-ne v12, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v20

    if-eqz v20, :cond_7

    new-instance v23, Lcom/jcraft/jsch/JSchPartialAuthException;

    invoke-static {v14}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/jcraft/jsch/JSchPartialAuthException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_7
    if-eqz v13, :cond_8

    const/16 v23, 0x0

    goto/16 :goto_0

    const/4 v5, 0x2

    :cond_8
    move-object/from16 v0, p1

    iget v0, v0, Lcom/jcraft/jsch/Session;->auth_failures:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p1

    iput v0, v1, Lcom/jcraft/jsch/Session;->auth_failures:I

    if-eqz v11, :cond_2

    new-instance v23, Lcom/jcraft/jsch/JSchAuthCancelException;

    const-string v24, "keyboard-interactive"

    invoke-direct/range {v23 .. v24}, Lcom/jcraft/jsch/JSchAuthCancelException;-><init>(Ljava/lang/String;)V

    throw v23

    :cond_9
    const/16 v23, 0x3c

    move/from16 v0, v23

    if-ne v12, v0, :cond_14

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v19

    move/from16 v0, v19

    new-array v6, v0, [Ljava/lang/String;

    move/from16 v0, v19

    new-array v7, v0, [Z

    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v15, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v6, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v23

    if-eqz v23, :cond_a

    const/16 v23, 0x1

    :goto_3
    aput-boolean v23, v7, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    const/4 v13, 0x0

    :cond_a
    const/16 v23, 0x0

    goto :goto_3

    const/4 v10, 0x3

    :cond_b
    const/16 v22, 0x0

    check-cast v22, [[B

    if-eqz v21, :cond_e

    array-length v0, v6

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    const/16 v23, 0x0

    aget-boolean v23, v7, v23

    if-nez v23, :cond_e

    const/16 v23, 0x0

    aget-object v23, v6, v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    const-string v24, "password:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    if-ltz v23, :cond_e

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [[B

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v21, v22, v23

    const/16 v21, 0x0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->packet:Lcom/jcraft/jsch/Packet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/jcraft/jsch/Packet;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    const/16 v24, 0x3d

    invoke-virtual/range {v23 .. v24}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    if-lez v19, :cond_13

    if-eqz v22, :cond_d

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v19

    move/from16 v1, v23

    if-eq v0, v1, :cond_13

    :cond_d
    if-nez v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v15, 0x0

    :goto_4
    move/from16 v0, v19

    if-ge v15, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    sget-object v24, Lcom/jcraft/jsch/Util;->empty:[B

    invoke-virtual/range {v23 .. v24}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    const/4 v12, 0x4

    :cond_e
    if-gtz v19, :cond_f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v23

    if-gtz v23, :cond_f

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v23

    if-lez v23, :cond_c

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->userinfo:Lcom/jcraft/jsch/UserInfo;

    move-object/from16 v23, v0

    if-eqz v23, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->userinfo:Lcom/jcraft/jsch/UserInfo;

    check-cast v2, Lcom/jcraft/jsch/UIKeyboardInteractive;

    invoke-interface/range {v2 .. v7}, Lcom/jcraft/jsch/UIKeyboardInteractive;->promptKeyboardInteractive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Z)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_c

    array-length v0, v9

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [[B

    move-object/from16 v22, v0

    const/4 v15, 0x0

    :goto_5
    array-length v0, v9

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v15, v0, :cond_c

    aget-object v23, v9, v15

    invoke-static/range {v23 .. v23}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v23

    aput-object v23, v22, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    const/4 v10, 0x5

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    :cond_11
    if-nez v22, :cond_12

    const/4 v11, 0x1

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->packet:Lcom/jcraft/jsch/Packet;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    goto/16 :goto_1

    const/4 v14, 0x3

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v15, 0x0

    :goto_6
    move/from16 v0, v19

    if-ge v15, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/UserAuthKeyboardInteractive;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v23, v0

    aget-object v24, v22, v15

    invoke-virtual/range {v23 .. v24}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    const/4 v10, 0x4

    :cond_14
    const/16 v23, 0x0

    goto/16 :goto_0

    const/4 v3, 0x2
.end method
