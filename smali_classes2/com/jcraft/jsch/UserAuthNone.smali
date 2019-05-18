.class Lcom/jcraft/jsch/UserAuthNone;
.super Lcom/jcraft/jsch/UserAuth;


# static fields
.field private static final SSH_MSG_SERVICE_ACCEPT:I = 0x6


# instance fields
.field private methods:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/jcraft/jsch/UserAuth;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->methods:Ljava/lang/String;

    nop

    return-void

    const/4 v1, 0x1
.end method


# virtual methods
.method getMethods()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/UserAuthNone;->methods:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x5
.end method

.method public start(Lcom/jcraft/jsch/Session;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v12, 0x4

    invoke-super {p0, p1}, Lcom/jcraft/jsch/UserAuth;->start(Lcom/jcraft/jsch/Session;)Z

    const/4 v12, 0x7

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v10}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v12, 0x5

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v12, 0x2

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v11, "ssh-userauth"

    invoke-static {v11}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v12, 0x5

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v10}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v12, 0x2

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v10

    invoke-interface {v10, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v12, 0x3

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v10

    const-string v11, "SSH_MSG_SERVICE_REQUEST sent"

    invoke-interface {v10, v8, v11}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    const/4 v12, 0x4

    :cond_0
    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v10}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v10

    iput-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v12, 0x7

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v10}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v2

    const/4 v12, 0x6

    const/4 v10, 0x6

    if-ne v2, v10, :cond_2

    move v7, v8

    const/4 v12, 0x1

    :goto_0
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v10

    invoke-interface {v10, v8}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v12, 0x2

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v10

    const-string v11, "SSH_MSG_SERVICE_ACCEPT received"

    invoke-interface {v10, v8, v11}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    const/4 v12, 0x2

    :cond_1
    if-nez v7, :cond_3

    const/4 v12, 0x1

    :goto_1
    return v9

    const/4 v6, 0x4

    :cond_2
    move v7, v9

    const/4 v12, 0x2

    goto :goto_0

    const/4 v8, 0x5

    const/4 v12, 0x7

    :cond_3
    const/4 v1, 0x0

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->username:Ljava/lang/String;

    invoke-static {v10}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v12, 0x4

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v10}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v12, 0x6

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v11, 0x32

    invoke-virtual {v10, v11}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v12, 0x2

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v10, v1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v12, 0x3

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v11, "ssh-connection"

    invoke-static {v11}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v12, 0x7

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    const-string v11, "none"

    invoke-static {v11}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v12, 0x5

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v10}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v12, 0x6

    :cond_4
    :goto_2
    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, v10}, Lcom/jcraft/jsch/Session;->read(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/Buffer;

    move-result-object v10

    iput-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v10}, Lcom/jcraft/jsch/Buffer;->getCommand()B

    move-result v10

    and-int/lit16 v2, v10, 0xff

    const/4 v12, 0x7

    const/16 v10, 0x34

    if-ne v2, v10, :cond_5

    move v9, v8

    const/4 v12, 0x5

    goto :goto_1

    const/4 v3, 0x7

    const/4 v12, 0x3

    :cond_5
    const/16 v10, 0x35

    if-ne v2, v10, :cond_6

    const/4 v12, 0x1

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v10}, Lcom/jcraft/jsch/Buffer;->getInt()I

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v10}, Lcom/jcraft/jsch/Buffer;->getByte()I

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v10}, Lcom/jcraft/jsch/Buffer;->getByte()I

    const/4 v12, 0x5

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v10}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    const/4 v12, 0x6

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v10}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v4

    const/4 v12, 0x0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x5

    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->userinfo:Lcom/jcraft/jsch/UserInfo;

    if-eqz v10, :cond_4

    const/4 v12, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/jcraft/jsch/UserAuthNone;->userinfo:Lcom/jcraft/jsch/UserInfo;

    invoke-interface {v10, v5}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    const/4 v4, 0x2

    const/4 v12, 0x1

    :catch_0
    move-exception v10

    goto :goto_2

    const/4 v12, 0x2

    const/4 v12, 0x1

    :cond_6
    const/16 v8, 0x33

    if-ne v2, v8, :cond_7

    const/4 v12, 0x2

    iget-object v8, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getInt()I

    iget-object v8, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getByte()I

    iget-object v8, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getByte()I

    const/4 v12, 0x6

    iget-object v8, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    const/4 v12, 0x7

    iget-object v8, p0, Lcom/jcraft/jsch/UserAuthNone;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v6

    const/4 v12, 0x5

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/jcraft/jsch/UserAuthNone;->methods:Ljava/lang/String;

    goto/16 :goto_1

    const/4 v0, 0x7

    const/4 v12, 0x6

    :cond_7
    new-instance v8, Lcom/jcraft/jsch/JSchException;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "USERAUTH fail ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v8
.end method
