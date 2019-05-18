.class Lcom/jcraft/jsch/RequestX11;
.super Lcom/jcraft/jsch/Request;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    const/4 v5, 0x0

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    const/4 v5, 0x3

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v5, 0x2

    const/16 v2, 0x62

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v5, 0x6

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v5, 0x0

    const-string v2, "x11-req"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/RequestX11;->waitForReply()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v5, 0x4

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v5, 0x5

    const-string v2, "MIT-MAGIC-COOKIE-1"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/jcraft/jsch/ChannelX11;->getFakedCookie(Lcom/jcraft/jsch/Session;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v5, 0x4

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v5, 0x3

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/RequestX11;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v5, 0x2

    iput-boolean v3, p1, Lcom/jcraft/jsch/Session;->x11_forwarding:Z

    const/4 v5, 0x3

    nop

    return-void

    const/4 v2, 0x6

    :cond_0
    move v2, v4

    const/4 v5, 0x5

    goto :goto_0

    const/4 v5, 0x2
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/ChannelX11;->cookie:[B

    const/4 v1, 0x5

    nop

    return-void

    const/4 v1, 0x2
.end method
