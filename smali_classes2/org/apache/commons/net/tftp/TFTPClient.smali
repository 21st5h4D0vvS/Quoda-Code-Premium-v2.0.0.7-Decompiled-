.class public Lorg/apache/commons/net/tftp/TFTPClient;
.super Lorg/apache/commons/net/tftp/TFTP;
.source "TFTPClient.java"


# static fields
.field public static final DEFAULT_MAX_TIMEOUTS:I = 0x5


# instance fields
.field private __maxTimeouts:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/apache/commons/net/tftp/TFTP;-><init>()V

    .line 75
    const/4 v0, 0x5

    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    .line 76
    return-void
.end method


# virtual methods
.method public getMaxTimeouts()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;)I
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/lang/String;I)I
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;)I
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I

    move-result v0

    return v0
.end method

.method public receiveFile(Ljava/lang/String;ILjava/io/OutputStream;Ljava/net/InetAddress;I)I
    .locals 21
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "output"    # Ljava/io/OutputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v14, 0x0

    .line 131
    .local v14, "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    new-instance v4, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    const/16 v17, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, v17

    invoke-direct {v4, v0, v1, v2}, Lorg/apache/commons/net/tftp/TFTPAckPacket;-><init>(Ljava/net/InetAddress;II)V

    .line 133
    .local v4, "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->beginBufferedOps()V

    .line 135
    const/4 v6, 0x0

    .local v6, "bytesRead":I
    move v11, v6

    .local v11, "hostPort":I
    move v12, v6

    .local v12, "lastBlock":I
    move v8, v6

    .line 136
    .local v8, "dataLength":I
    const/4 v5, 0x1

    .line 138
    .local v5, "block":I
    if-nez p2, :cond_0

    .line 139
    new-instance v13, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lorg/apache/commons/net/io/FromNetASCIIOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local p3    # "output":Ljava/io/OutputStream;
    .local v13, "output":Ljava/io/OutputStream;
    move-object/from16 p3, v13

    .line 141
    .end local v13    # "output":Ljava/io/OutputStream;
    .restart local p3    # "output":Ljava/io/OutputStream;
    :cond_0
    new-instance v15, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;

    move-object/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v15, v0, v1, v2, v3}, Lorg/apache/commons/net/tftp/TFTPReadRequestPacket;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    .line 147
    .local v15, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 152
    :cond_2
    const/16 v16, 0x0

    .line 153
    .local v16, "timeouts":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 157
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v14

    .line 187
    :cond_4
    if-nez v12, :cond_5

    .line 189
    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v11

    .line 190
    invoke-virtual {v4, v11}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setPort(I)V

    .line 191
    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v17

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 193
    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object p4

    .line 194
    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 195
    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 201
    :cond_5
    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v17

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v17

    move/from16 v0, v17

    if-ne v0, v11, :cond_9

    .line 205
    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 255
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 256
    new-instance v17, Ljava/io/IOException;

    const-string v18, "Received unexpected packet type."

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 160
    :catch_0
    move-exception v9

    .line 162
    .local v9, "e":Ljava/net/SocketException;
    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    .line 164
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 165
    new-instance v17, Ljava/io/IOException;

    const-string v18, "Connection timed out."

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 169
    .end local v9    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v9

    .line 171
    .local v9, "e":Ljava/io/InterruptedIOException;
    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    .line 173
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 174
    new-instance v17, Ljava/io/IOException;

    const-string v18, "Connection timed out."

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 178
    .end local v9    # "e":Ljava/io/InterruptedIOException;
    :catch_2
    move-exception v9

    .line 180
    .local v9, "e":Lorg/apache/commons/net/tftp/TFTPPacketException;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 181
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Bad packet: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Lorg/apache/commons/net/tftp/TFTPPacketException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .end local v9    # "e":Lorg/apache/commons/net/tftp/TFTPPacketException;
    :pswitch_1
    move-object v10, v14

    .line 208
    check-cast v10, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    .line 209
    .local v10, "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 210
    new-instance v17, Ljava/io/IOException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error code "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getError()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " received: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v10}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .end local v10    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :pswitch_2
    move-object v7, v14

    .line 213
    check-cast v7, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    .line 214
    .local v7, "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getDataLength()I

    move-result v8

    .line 216
    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getBlockNumber()I

    move-result v12

    .line 218
    if-ne v12, v5, :cond_7

    .line 222
    :try_start_1
    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getData()[B

    move-result-object v17

    invoke-virtual {v7}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->getDataOffset()I

    move-result v18

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 234
    add-int/lit8 v5, v5, 0x1

    .line 235
    const v17, 0xffff

    move/from16 v0, v17

    if-le v5, v0, :cond_6

    .line 238
    const/4 v5, 0x0

    .line 274
    :cond_6
    invoke-virtual {v4, v12}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->setBlockNumber(I)V

    .line 275
    move-object v15, v4

    .line 276
    add-int/2addr v6, v8

    .line 279
    .end local v7    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :goto_0
    const/16 v17, 0x200

    move/from16 v0, v17

    if-eq v8, v0, :cond_1

    .line 281
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 284
    return v6

    .line 225
    .restart local v7    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :catch_3
    move-exception v9

    .line 227
    .local v9, "e":Ljava/io/IOException;
    new-instance v10, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    const/16 v17, 0x3

    const-string v18, "File write failed."

    move-object/from16 v0, p4

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v10, v0, v11, v1, v2}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 230
    .restart local v10    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 231
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 232
    throw v9

    .line 245
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->discardPackets()V

    .line 247
    if-nez v5, :cond_8

    const v17, 0xffff

    :goto_1
    move/from16 v0, v17

    if-ne v12, v0, :cond_2

    goto :goto_0

    :cond_8
    add-int/lit8 v17, v5, -0x1

    goto :goto_1

    .line 261
    .end local v7    # "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    :cond_9
    new-instance v10, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v17

    invoke-virtual {v14}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v18

    const/16 v19, 0x5

    const-string v20, "Unexpected host or port."

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v10, v0, v1, v2, v3}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 265
    .restart local v10    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    .line 608
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/lang/String;I)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "hostname"    # Ljava/lang/String;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    invoke-static {p4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    .line 570
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 588
    const/16 v5, 0x45

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/net/tftp/TFTPClient;->sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V

    .line 589
    return-void
.end method

.method public sendFile(Ljava/lang/String;ILjava/io/InputStream;Ljava/net/InetAddress;I)V
    .locals 28
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "input"    # Ljava/io/InputStream;
    .param p4, "host"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    const/16 v24, 0x0

    .line 373
    .local v24, "received":Lorg/apache/commons/net/tftp/TFTPPacket;
    new-instance v5, Lorg/apache/commons/net/tftp/TFTPDataPacket;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/net/tftp/TFTPDataPacket;-><init>(Ljava/net/InetAddress;II[BII)V

    .line 377
    .local v5, "data":Lorg/apache/commons/net/tftp/TFTPDataPacket;
    const/16 v20, 0x1

    .line 379
    .local v20, "justStarted":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->beginBufferedOps()V

    .line 381
    const/16 v27, 0x0

    .local v27, "totalThisPacket":I
    move/from16 v14, v27

    .local v14, "bytesRead":I
    move/from16 v18, v27

    .local v18, "hostPort":I
    move/from16 v22, v27

    .local v22, "lastBlock":I
    move/from16 v15, v27

    .line 382
    .local v15, "dataLength":I
    const/4 v13, 0x0

    .line 383
    .local v13, "block":I
    const/16 v21, 0x0

    .line 385
    .local v21, "lastAckWait":Z
    if-nez p2, :cond_0

    .line 386
    new-instance v19, Lorg/apache/commons/net/io/ToNetASCIIInputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/commons/net/io/ToNetASCIIInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p3    # "input":Ljava/io/InputStream;
    .local v19, "input":Ljava/io/InputStream;
    move-object/from16 p3, v19

    .line 388
    .end local v19    # "input":Ljava/io/InputStream;
    .restart local p3    # "input":Ljava/io/InputStream;
    :cond_0
    new-instance v25, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;

    move-object/from16 v0, v25

    move-object/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/net/tftp/TFTPWriteRequestPacket;-><init>(Ljava/net/InetAddress;ILjava/lang/String;I)V

    .line 396
    .local v25, "sent":Lorg/apache/commons/net/tftp/TFTPPacket;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    .line 404
    :cond_2
    const/16 v26, 0x0

    .line 405
    .local v26, "timeouts":I
    :cond_3
    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    move/from16 v0, v26

    if-ge v0, v6, :cond_4

    .line 409
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedReceive()Lorg/apache/commons/net/tftp/TFTPPacket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/commons/net/tftp/TFTPPacketException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v24

    .line 439
    :cond_4
    if-eqz v20, :cond_5

    .line 441
    const/16 v20, 0x0

    .line 442
    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v18

    .line 443
    move/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setPort(I)V

    .line 444
    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 446
    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object p4

    .line 447
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 448
    move-object/from16 v0, v25

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/tftp/TFTPPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 454
    :cond_5
    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v6

    move/from16 v0, v18

    if-ne v6, v0, :cond_9

    .line 458
    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 498
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 499
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Received unexpected packet type."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 412
    :catch_0
    move-exception v16

    .line 414
    .local v16, "e":Ljava/net/SocketException;
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    move/from16 v0, v26

    if-lt v0, v6, :cond_3

    .line 416
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 417
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Connection timed out."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 421
    .end local v16    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v16

    .line 423
    .local v16, "e":Ljava/io/InterruptedIOException;
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    move/from16 v0, v26

    if-lt v0, v6, :cond_3

    .line 425
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 426
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Connection timed out."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 430
    .end local v16    # "e":Ljava/io/InterruptedIOException;
    :catch_2
    move-exception v16

    .line 432
    .local v16, "e":Lorg/apache/commons/net/tftp/TFTPPacketException;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 433
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad packet: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/net/tftp/TFTPPacketException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v16    # "e":Lorg/apache/commons/net/tftp/TFTPPacketException;
    :pswitch_0
    move-object/from16 v17, v24

    .line 461
    check-cast v17, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    .line 462
    .local v17, "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 463
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getError()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v17    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    :pswitch_1
    move-object/from16 v12, v24

    .line 466
    check-cast v12, Lorg/apache/commons/net/tftp/TFTPAckPacket;

    .line 468
    .local v12, "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    invoke-virtual {v12}, Lorg/apache/commons/net/tftp/TFTPAckPacket;->getBlockNumber()I

    move-result v22

    .line 470
    move/from16 v0, v22

    if-ne v0, v13, :cond_7

    .line 472
    add-int/lit8 v13, v13, 0x1

    .line 473
    const v6, 0xffff

    if-le v13, v6, :cond_6

    .line 476
    const/4 v13, 0x0

    .line 478
    :cond_6
    if-eqz v21, :cond_a

    .line 544
    .end local v12    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->endBufferedOps()V

    .line 545
    return-void

    .line 488
    .restart local v12    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/tftp/TFTPClient;->discardPackets()V

    .line 490
    if-nez v13, :cond_8

    const v6, 0xffff

    :goto_1
    move/from16 v0, v22

    if-ne v0, v6, :cond_2

    .line 539
    .end local v12    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    :goto_2
    if-gtz v27, :cond_1

    if-nez v21, :cond_1

    goto :goto_0

    .line 490
    .restart local v12    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    :cond_8
    add-int/lit8 v6, v13, -0x1

    goto :goto_1

    .line 504
    .end local v12    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    :cond_9
    new-instance v17, Lorg/apache/commons/net/tftp/TFTPErrorPacket;

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/net/tftp/TFTPPacket;->getPort()I

    move-result v7

    const/4 v8, 0x5

    const-string v9, "Unexpected host or port."

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7, v8, v9}, Lorg/apache/commons/net/tftp/TFTPErrorPacket;-><init>(Ljava/net/InetAddress;IILjava/lang/String;)V

    .line 508
    .restart local v17    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/tftp/TFTPClient;->bufferedSend(Lorg/apache/commons/net/tftp/TFTPPacket;)V

    goto :goto_2

    .line 520
    .end local v17    # "error":Lorg/apache/commons/net/tftp/TFTPErrorPacket;
    .restart local v12    # "ack":Lorg/apache/commons/net/tftp/TFTPAckPacket;
    :cond_a
    const/16 v15, 0x200

    .line 521
    const/16 v23, 0x4

    .line 522
    .local v23, "offset":I
    const/16 v27, 0x0

    .line 524
    :goto_3
    if-lez v15, :cond_b

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    if-lez v14, :cond_b

    .line 526
    add-int v23, v23, v14

    .line 527
    sub-int/2addr v15, v14

    .line 528
    add-int v27, v27, v14

    goto :goto_3

    .line 531
    :cond_b
    const/16 v6, 0x200

    move/from16 v0, v27

    if-ge v0, v6, :cond_c

    .line 533
    const/16 v21, 0x1

    .line 535
    :cond_c
    invoke-virtual {v5, v13}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setBlockNumber(I)V

    .line 536
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/net/tftp/TFTPClient;->_sendBuffer:[B

    const/4 v7, 0x4

    move/from16 v0, v27

    invoke-virtual {v5, v6, v7, v0}, Lorg/apache/commons/net/tftp/TFTPDataPacket;->setData([BII)V

    .line 537
    move-object/from16 v25, v5

    goto :goto_2

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMaxTimeouts(I)V
    .locals 1
    .param p1, "numTimeouts"    # I

    .prologue
    const/4 v0, 0x1

    .line 90
    if-ge p1, v0, :cond_0

    .line 91
    iput v0, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    iput p1, p0, Lorg/apache/commons/net/tftp/TFTPClient;->__maxTimeouts:I

    goto :goto_0
.end method
