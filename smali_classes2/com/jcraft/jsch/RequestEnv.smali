.class Lcom/jcraft/jsch/RequestEnv;
.super Lcom/jcraft/jsch/Request;


# instance fields
.field name:[B

.field value:[B


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    const/4 v2, 0x7

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/jcraft/jsch/RequestEnv;->name:[B

    const/4 v2, 0x0

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/jcraft/jsch/RequestEnv;->value:[B

    nop

    return-void

    const/4 v1, 0x2
.end method


# virtual methods
.method public request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v3, 0x2

    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    const/4 v3, 0x1

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    const/4 v3, 0x7

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v3, 0x2

    const/16 v2, 0x62

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v3, 0x7

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x6

    const-string v2, "env"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/jcraft/jsch/RequestEnv;->waitForReply()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v3, 0x3

    iget-object v2, p0, Lcom/jcraft/jsch/RequestEnv;->name:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v3, 0x2

    iget-object v2, p0, Lcom/jcraft/jsch/RequestEnv;->value:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v3, 0x0

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/RequestEnv;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v3, 0x1

    nop

    return-void

    const/4 v0, 0x7

    const/4 v3, 0x2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    const/4 v1, 0x6
.end method

.method setEnv([B[B)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/jcraft/jsch/RequestEnv;->name:[B

    const/4 v0, 0x6

    iput-object p2, p0, Lcom/jcraft/jsch/RequestEnv;->value:[B

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x5
.end method
