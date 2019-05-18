.class public Lcom/jcraft/jsch/ProxySOCKS4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Proxy;


# static fields
.field private static DEFAULTPORT:I


# instance fields
.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private passwd:Ljava/lang/String;

.field private proxy_host:Ljava/lang/String;

.field private proxy_port:I

.field private socket:Ljava/net/Socket;

.field private user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    const/16 v0, 0x438

    sput v0, Lcom/jcraft/jsch/ProxySOCKS4;->DEFAULTPORT:I

    nop

    return-void

    const/4 v1, 0x1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x5

    const/16 v2, 0x3a

    const/4 v4, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x5

    sget v1, Lcom/jcraft/jsch/ProxySOCKS4;->DEFAULTPORT:I

    const/4 v4, 0x0

    move-object v0, p1

    const/4 v4, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x3a

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v4, 0x1

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->proxy_host:Ljava/lang/String;

    const/4 v4, 0x1

    iput v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->proxy_port:I

    const/4 v4, 0x2

    nop

    return-void

    const/4 v3, 0x4

    const/4 v4, 0x7

    :catch_0
    move-exception v2

    goto :goto_0

    const/4 v4, 0x1
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->proxy_host:Ljava/lang/String;

    const/4 v0, 0x6

    iput p2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->proxy_port:I

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public static getDefaultPort()I
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x3

    sget v0, Lcom/jcraft/jsch/ProxySOCKS4;->DEFAULTPORT:I

    return v0

    const/4 v1, 0x1
.end method


# virtual methods
.method public close()V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v2, 0x4

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v2, 0x3

    :cond_1
    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x5

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->in:Ljava/io/InputStream;

    const/4 v2, 0x4

    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->out:Ljava/io/OutputStream;

    const/4 v2, 0x5

    iput-object v1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    const/4 v2, 0x6

    nop

    return-void

    const/4 v2, 0x7

    const/4 v2, 0x3

    :catch_0
    move-exception v0

    goto :goto_0

    const/4 v0, 0x0
.end method

.method public connect(Lcom/jcraft/jsch/SocketFactory;Ljava/lang/String;II)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    if-nez p1, :cond_1

    :try_start_0
    iget-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->proxy_host:Ljava/lang/String;

    iget v13, p0, Lcom/jcraft/jsch/ProxySOCKS4;->proxy_port:I

    move/from16 v0, p4

    invoke-static {v12, v13, v0}, Lcom/jcraft/jsch/Util;->createSocket(Ljava/lang/String;II)Ljava/net/Socket;

    move-result-object v12

    iput-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    iget-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    invoke-virtual {v12}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    iput-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->in:Ljava/io/InputStream;

    iget-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    invoke-virtual {v12}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    iput-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->out:Ljava/io/OutputStream;

    :goto_0
    if-lez p4, :cond_0

    iget-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_0
    iget-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/16 v12, 0x400

    new-array v2, v12, [B

    const/4 v6, 0x0

    const/4 v6, 0x0

    add-int/lit8 v7, v6, 0x1

    const/4 v12, 0x4

    aput-byte v12, v2, v6

    add-int/lit8 v6, v7, 0x1

    const/4 v12, 0x1

    aput-byte v12, v2, v7

    add-int/lit8 v7, v6, 0x1

    ushr-int/lit8 v12, p3, 0x8

    int-to-byte v12, v12

    aput-byte v12, v2, v6

    add-int/lit8 v6, v7, 0x1

    move/from16 v0, p3

    and-int/lit16 v12, v0, 0xff

    int-to-byte v12, v12

    aput-byte v12, v2, v7
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static/range {p2 .. p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    const/4 v5, 0x0

    move v7, v6

    :goto_1
    :try_start_2
    array-length v12, v3
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-ge v5, v12, :cond_3

    add-int/lit8 v6, v7, 0x1

    :try_start_3
    aget-byte v12, v3, v5

    aput-byte v12, v2, v7
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v5, v5, 0x1

    move v7, v6

    goto :goto_1

    const/4 v2, 0x1

    :cond_1
    :try_start_4
    iget-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->proxy_host:Ljava/lang/String;

    iget v13, p0, Lcom/jcraft/jsch/ProxySOCKS4;->proxy_port:I

    move-object/from16 v0, p1

    invoke-interface {v0, v12, v13}, Lcom/jcraft/jsch/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v12

    iput-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    iget-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/jcraft/jsch/SocketFactory;->getInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v12

    iput-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->in:Ljava/io/InputStream;

    iget-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lcom/jcraft/jsch/SocketFactory;->getOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v12

    iput-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->out:Ljava/io/OutputStream;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    const/4 v9, 0x4

    :catch_0
    move-exception v4

    throw v4

    :catch_1
    move-exception v11

    :goto_2
    :try_start_5
    new-instance v12, Lcom/jcraft/jsch/JSchException;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "ProxySOCKS4: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v11}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v11}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v4

    :try_start_6
    iget-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    invoke-virtual {v12}, Ljava/net/Socket;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_3
    new-instance v12, Lcom/jcraft/jsch/JSchException;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "ProxySOCKS4: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_3
    :try_start_7
    iget-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->user:Ljava/lang/String;

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->user:Ljava/lang/String;

    invoke-static {v12}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v12

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/jcraft/jsch/ProxySOCKS4;->user:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v12, v13, v2, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->user:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int v6, v7, v12

    move v7, v6

    :cond_4
    add-int/lit8 v6, v7, 0x1

    const/4 v12, 0x0

    aput-byte v12, v2, v7

    iget-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->out:Ljava/io/OutputStream;

    const/4 v13, 0x0

    invoke-virtual {v12, v2, v13, v6}, Ljava/io/OutputStream;->write([BII)V

    const/16 v8, 0x8

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v8, :cond_6

    iget-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->in:Ljava/io/InputStream;

    sub-int v13, v8, v10

    invoke-virtual {v12, v2, v10, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gtz v5, :cond_5

    new-instance v12, Lcom/jcraft/jsch/JSchException;

    const-string v13, "ProxySOCKS4: stream is closed"

    invoke-direct {v12, v13}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_5
    add-int/2addr v10, v5

    goto :goto_4

    const/4 v8, 0x5

    :cond_6
    const/4 v12, 0x0

    aget-byte v12, v2, v12

    if-eqz v12, :cond_7

    new-instance v12, Lcom/jcraft/jsch/JSchException;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "ProxySOCKS4: server returns VN "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v2, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_7
    const/4 v12, 0x1

    aget-byte v12, v2, v12
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    const/16 v13, 0x5a

    if-eq v12, v13, :cond_8

    :try_start_8
    iget-object v12, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    invoke-virtual {v12}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_5
    :try_start_9
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "ProxySOCKS4: server returns CD "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const/4 v13, 0x1

    aget-byte v13, v2, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v12, v9}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :cond_8
    nop

    return-void

    const/4 v0, 0x2

    :catch_3
    move-exception v12

    goto/16 :goto_3

    const/4 v4, 0x2

    :catch_4
    move-exception v12

    goto :goto_5

    const/4 v2, 0x6

    :catch_5
    move-exception v11

    move v6, v7

    goto/16 :goto_2

    const/4 v3, 0x6
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->in:Ljava/io/InputStream;

    return-object v0

    const/4 v0, 0x5
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->out:Ljava/io/OutputStream;

    return-object v0

    const/4 v0, 0x7
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/ProxySOCKS4;->socket:Ljava/net/Socket;

    return-object v0

    const/4 v1, 0x2
.end method

.method public setUserPasswd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/ProxySOCKS4;->user:Ljava/lang/String;

    const/4 v0, 0x4

    iput-object p2, p0, Lcom/jcraft/jsch/ProxySOCKS4;->passwd:Ljava/lang/String;

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x3
.end method
