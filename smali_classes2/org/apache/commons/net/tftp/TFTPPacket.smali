.class public abstract Lorg/apache/commons/net/tftp/TFTPPacket;
.super Ljava/lang/Object;
.source "TFTPPacket.java"


# static fields
.field public static final ACKNOWLEDGEMENT:I = 0x4

.field public static final DATA:I = 0x3

.field public static final ERROR:I = 0x5

.field static final MIN_PACKET_SIZE:I = 0x4

.field public static final READ_REQUEST:I = 0x1

.field public static final SEGMENT_SIZE:I = 0x200

.field public static final WRITE_REQUEST:I = 0x2


# instance fields
.field _address:Ljava/net/InetAddress;

.field _port:I

.field _type:I


# direct methods
.method constructor <init>(ILjava/net/InetAddress;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "address"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_type:I

    .line 172
    iput-object p2, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_address:Ljava/net/InetAddress;

    .line 173
    iput p3, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_port:I

    .line 174
    return-void
.end method

.method public static final newTFTPPacket(Ljava/net/DatagramPacket;)Lorg/apache/commons/net/tftp/TFTPPacket;
    .locals 4
    .param p0, "datagram"    # Ljava/net/DatagramPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/tftp/TFTPPacketException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 130
    .local v1, "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 131
    new-instance v2, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v3, "Bad packet. Datagram data length is too short."

    invoke-direct {v2, v3}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    .line 136
    .local v0, "data":[B
    const/4 v2, 0x1

    aget-byte v2, v0, v2

    packed-switch v2, :pswitch_data_0

    .line 154
    new-instance v2, Lorg/apache/commons/net/tftp/TFTPPacketException;

    const-string v3, "Bad packet.  Invalid TFTP operator code."

    invoke-direct {v2, v3}, Lorg/apache/commons/net/tftp/TFTPPacketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :pswitch_0
    new-instance v1, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;

    .end local v1    # "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    invoke-direct {v1, p0}, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;-><init>(Ljava/net/DatagramPacket;)V

    .line 158
    .restart local v1    # "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    :goto_0
    return-object v1

    .line 142
    :pswitch_1
    new-instance v1, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;

    .end local v1    # "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    invoke-direct {v1, p0}, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;-><init>(Ljava/net/DatagramPacket;)V

    .line 143
    .restart local v1    # "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto :goto_0

    .line 145
    :pswitch_2
    new-instance v1, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    .end local v1    # "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    invoke-direct {v1, p0}, Lorg/apache/commons/net/tftp/TFTPDataPacket;-><init>(Ljava/net/DatagramPacket;)V

    .line 146
    .restart local v1    # "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto :goto_0

    .line 148
    :pswitch_3
    new-instance v1, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    .end local v1    # "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    invoke-direct {v1, p0}, Lorg/apache/commons/net/tftp/TFTPAckPacket;-><init>(Ljava/net/DatagramPacket;)V

    .line 149
    .restart local v1    # "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto :goto_0

    .line 151
    :pswitch_4
    new-instance v1, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    .end local v1    # "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    invoke-direct {v1, p0}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/DatagramPacket;)V

    .line 152
    .restart local v1    # "packet":Lorg/apache/commons/net/tftp/TFTPPacket;
    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method abstract _newDatagram(Ljava/net/DatagramPacket;[B)Ljava/net/DatagramPacket;
.end method

.method public final getAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public final getPort()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_port:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_type:I

    return v0
.end method

.method public abstract newDatagram()Ljava/net/DatagramPacket;
.end method

.method public final setAddress(Ljava/net/InetAddress;)V
    .locals 0
    .param p1, "address"    # Ljava/net/InetAddress;

    .prologue
    .line 244
    iput-object p1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_address:Ljava/net/InetAddress;

    .line 245
    return-void
.end method

.method public final setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 238
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPPacket;->_port:I

    .line 239
    return-void
.end method
