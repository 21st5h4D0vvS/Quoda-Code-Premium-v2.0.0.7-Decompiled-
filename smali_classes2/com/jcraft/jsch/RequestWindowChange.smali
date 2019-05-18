.class Lcom/jcraft/jsch/RequestWindowChange;
.super Lcom/jcraft/jsch/Request;


# instance fields
.field height_pixels:I

.field height_rows:I

.field width_columns:I

.field width_pixels:I


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    const/4 v1, 0x4

    const/16 v0, 0x50

    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->width_columns:I

    const/4 v1, 0x7

    const/16 v0, 0x18

    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->height_rows:I

    const/4 v1, 0x5

    const/16 v0, 0x280

    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->width_pixels:I

    const/4 v1, 0x7

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->height_pixels:I

    nop

    return-void

    const/4 v1, 0x1
.end method


# virtual methods
.method public request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x7

    const/4 v3, 0x3

    invoke-super {p0, p1, p2}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    const/4 v3, 0x5

    new-instance v0, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v0}, Lcom/jcraft/jsch/Buffer;-><init>()V

    const/4 v3, 0x4

    new-instance v1, Lcom/jcraft/jsch/Packet;

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    const/4 v3, 0x6

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v3, 0x4

    const/16 v2, 0x62

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v3, 0x6

    invoke-virtual {p2}, Lcom/jcraft/jsch/Channel;->getRecipient()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x7

    const-string v2, "window-change"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/jcraft/jsch/RequestWindowChange;->waitForReply()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v3, 0x6

    iget v2, p0, Lcom/jcraft/jsch/RequestWindowChange;->width_columns:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x5

    iget v2, p0, Lcom/jcraft/jsch/RequestWindowChange;->height_rows:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x6

    iget v2, p0, Lcom/jcraft/jsch/RequestWindowChange;->width_pixels:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x4

    iget v2, p0, Lcom/jcraft/jsch/RequestWindowChange;->height_pixels:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x2

    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/RequestWindowChange;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v3, 0x5

    nop

    return-void

    const/4 v3, 0x4

    const/4 v3, 0x4

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    const/4 v1, 0x7
.end method

.method setSize(IIII)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x0

    iput p1, p0, Lcom/jcraft/jsch/RequestWindowChange;->width_columns:I

    const/4 v0, 0x3

    iput p2, p0, Lcom/jcraft/jsch/RequestWindowChange;->height_rows:I

    const/4 v0, 0x5

    iput p3, p0, Lcom/jcraft/jsch/RequestWindowChange;->width_pixels:I

    const/4 v0, 0x1

    iput p4, p0, Lcom/jcraft/jsch/RequestWindowChange;->height_pixels:I

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x1
.end method
