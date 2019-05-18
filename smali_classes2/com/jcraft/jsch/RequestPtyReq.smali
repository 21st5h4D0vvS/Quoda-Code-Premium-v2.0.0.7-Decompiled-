.class Lcom/jcraft/jsch/RequestPtyReq;
.super Lcom/jcraft/jsch/Request;


# instance fields
.field private tcol:I

.field private terminal_mode:[B

.field private thp:I

.field private trow:I

.field private ttype:Ljava/lang/String;

.field private twp:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    const/4 v1, 0x6

    const-string v0, "vt100"

    iput-object v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->ttype:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v0, 0x50

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->tcol:I

    const/4 v1, 0x1

    const/16 v0, 0x18

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->trow:I

    const/4 v1, 0x5

    const/16 v0, 0x280

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->twp:I

    const/4 v1, 0x2

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->thp:I

    const/4 v1, 0x7

    sget-object v0, Lcom/jcraft/jsch/Util;->empty:[B

    iput-object v0, p0, Lcom/jcraft/jsch/RequestPtyReq;->terminal_mode:[B

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    const/4 v3, 0x4

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    const/4 v3, 0x4

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v3, 0x7

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v3, 0x1

    const/16 v2, 0x62

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v3, 0x7

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x1

    const-string v2, "pty-req"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/jcraft/jsch/RequestPtyReq;->waitForReply()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v3, 0x3

    iget-object v2, p0, Lcom/jcraft/jsch/RequestPtyReq;->ttype:Ljava/lang/String;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v3, 0x0

    iget v2, p0, Lcom/jcraft/jsch/RequestPtyReq;->tcol:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x4

    iget v2, p0, Lcom/jcraft/jsch/RequestPtyReq;->trow:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x4

    iget v2, p0, Lcom/jcraft/jsch/RequestPtyReq;->twp:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x0

    iget v2, p0, Lcom/jcraft/jsch/RequestPtyReq;->thp:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/RequestPtyReq;->terminal_mode:[B

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v3, 0x5

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/RequestPtyReq;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v3, 0x1

    nop

    return-void

    const/4 v3, 0x6

    const/4 v3, 0x2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    const/4 v3, 0x4
.end method

.method setCode(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x0
.end method

.method setTSize(IIII)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x4

    iput p1, p0, Lcom/jcraft/jsch/RequestPtyReq;->tcol:I

    const/4 v0, 0x2

    iput p2, p0, Lcom/jcraft/jsch/RequestPtyReq;->trow:I

    const/4 v0, 0x4

    iput p3, p0, Lcom/jcraft/jsch/RequestPtyReq;->twp:I

    const/4 v0, 0x4

    iput p4, p0, Lcom/jcraft/jsch/RequestPtyReq;->thp:I

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x3
.end method

.method setTType(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/jcraft/jsch/RequestPtyReq;->ttype:Ljava/lang/String;

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x6
.end method

.method setTerminalMode([B)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/jcraft/jsch/RequestPtyReq;->terminal_mode:[B

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x4
.end method
