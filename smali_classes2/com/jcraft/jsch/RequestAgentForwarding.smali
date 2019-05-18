.class Lcom/jcraft/jsch/RequestAgentForwarding;
.super Lcom/jcraft/jsch/Request;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
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

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    const/4 v5, 0x4

    invoke-virtual {p0, v2}, Lcom/jcraft/jsch/RequestAgentForwarding;->setReply(Z)V

    const/4 v5, 0x2

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    const/4 v5, 0x6

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v5, 0x4

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v5, 0x6

    const/16 v4, 0x62

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v5, 0x5

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v5, 0x5

    const-string v4, "auth-agent-req@openssh.com"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/jcraft/jsch/RequestAgentForwarding;->waitForReply()Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v5, 0x7

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/RequestAgentForwarding;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v5, 0x1

    iput-boolean v3, p1, Lcom/jcraft/jsch/Session;->agent_forwarding:Z

    const/4 v5, 0x4

    nop

    return-void

    const/4 v2, 0x7
.end method
