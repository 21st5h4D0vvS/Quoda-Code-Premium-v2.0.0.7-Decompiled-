.class Lcom/jcraft/jsch/Util;
.super Ljava/lang/Object;


# static fields
.field private static final b64:[B

.field private static chars:[Ljava/lang/String;

.field static final empty:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v3, 0x5

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Util;->b64:[B

    const/4 v3, 0x6

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "3"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "4"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "f"

    aput-object v2, v0, v1

    sput-object v0, Lcom/jcraft/jsch/Util;->chars:[Ljava/lang/String;

    const/4 v3, 0x5

    const-string v0, ""

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/Util;->empty:[B

    nop

    return-void

    const/4 v1, 0x6
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method

.method static array_equals([B[B)Z
    .locals 6

    const/4 v5, 0x7

    const/4 v2, 0x0

    const/4 v5, 0x0

    array-length v0, p0

    const/4 v5, 0x6

    array-length v3, p1

    if-eq v0, v3, :cond_1

    const/4 v5, 0x3

    :cond_0
    :goto_0
    return v2

    const/4 v3, 0x0

    const/4 v5, 0x5

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget-byte v3, p0, v1

    aget-byte v4, p1, v1

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    const/4 v0, 0x6

    const/4 v5, 0x7

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    const/4 v5, 0x2
.end method

.method static byte2str([B)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/4 v3, 0x6

    const/4 v0, 0x0

    array-length v1, p0

    const-string v2, "UTF-8"

    invoke-static {p0, v0, v1, v2}, Lcom/jcraft/jsch/Util;->byte2str([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x0
.end method

.method static byte2str([BII)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x3

    const-string v0, "UTF-8"

    invoke-static {p0, p1, p2, v0}, Lcom/jcraft/jsch/Util;->byte2str([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x7
.end method

.method static byte2str([BIILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x4

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    :goto_0
    return-object v1

    const/4 v0, 0x1

    const/4 v2, 0x1

    :catch_0
    move-exception v0

    const/4 v2, 0x2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0

    const/4 v0, 0x6
.end method

.method static byte2str([BLjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x4

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/jcraft/jsch/Util;->byte2str([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x6
.end method

.method static bzero([B)V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x6

    if-nez p0, :cond_1

    const/4 v2, 0x5

    :cond_0
    nop

    return-void

    const/4 v0, 0x7

    const/4 v2, 0x3

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x0

    aput-byte v1, p0, v0

    const/4 v2, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v1, 0x0
.end method

.method static checkTilde(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x2

    const-string v0, "~"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    :try_start_0
    const-string v0, "~"

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    const/4 v2, 0x7

    :cond_0
    :goto_0
    return-object p0

    const/4 v2, 0x5

    const/4 v2, 0x7

    :catch_0
    move-exception v0

    goto :goto_0

    const/4 v1, 0x3
.end method

.method static createSocket(Ljava/lang/String;II)Ljava/net/Socket;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v5, 0x0

    if-nez p2, :cond_1

    :try_start_0
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5, p0, p1}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v5

    :goto_0
    return-object v6

    const/4 v4, 0x6

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    instance-of v9, v2, Ljava/lang/Throwable;

    if-eqz v9, :cond_0

    new-instance v9, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v9, v4, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_0
    new-instance v9, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v9, v4}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    move-object v0, p0

    move v1, p1

    new-array v7, v9, [Ljava/net/Socket;

    new-array v3, v9, [Ljava/lang/Exception;

    const-string v4, ""

    new-instance v8, Ljava/lang/Thread;

    new-instance v9, Lcom/jcraft/jsch/Util$1;

    invoke-direct {v9, v7, v0, v1, v3}, Lcom/jcraft/jsch/Util$1;-><init>([Ljava/net/Socket;Ljava/lang/String;I[Ljava/lang/Exception;)V

    invoke-direct {v8, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Opening Socket "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    int-to-long v10, p2

    :try_start_1
    invoke-virtual {v8, v10, v11}, Ljava/lang/Thread;->join(J)V

    const-string v4, "timeout: "
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    aget-object v9, v7, v12

    if-eqz v9, :cond_2

    aget-object v9, v7, v12

    invoke-virtual {v9}, Ljava/net/Socket;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_2

    aget-object v5, v7, v12

    move-object v6, v5

    goto :goto_0

    const/4 v6, 0x0

    :cond_2
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "socket is not established"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aget-object v9, v3, v12

    if-eqz v9, :cond_3

    aget-object v9, v3, v12

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V

    const/4 v8, 0x0

    new-instance v9, Lcom/jcraft/jsch/JSchException;

    invoke-direct {v9, v4}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v9

    :catch_1
    move-exception v9

    goto :goto_1

    const/4 v2, 0x0
.end method

.method static diffString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x4

    const/4 v6, 0x2

    const-string v4, ","

    invoke-static {p0, v4}, Lcom/jcraft/jsch/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v2, 0x0

    const/4 v6, 0x7

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_3

    const/4 v6, 0x1

    const/4 v1, 0x0

    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_1

    const/4 v6, 0x6

    aget-object v4, v3, v0

    aget-object v5, p1, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v6, 0x7

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v2, 0x3

    const/4 v6, 0x5

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    const/4 v5, 0x7

    const/4 v6, 0x3

    :cond_1
    if-nez v2, :cond_2

    aget-object v2, v3, v0

    goto :goto_2

    const/4 v0, 0x2

    const/4 v6, 0x0

    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    const/4 v4, 0x3

    const/4 v6, 0x6

    :cond_3
    return-object v2

    const/4 v3, 0x4
.end method

.method static fromBase64([BII)[B
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x3d

    const/4 v7, 0x0

    const/4 v9, 0x7

    new-array v1, p2, [B

    const/4 v9, 0x7

    const/4 v3, 0x0

    const/4 v9, 0x6

    move v2, p1

    :goto_0
    add-int v4, p1, p2

    if-ge v2, v4, :cond_0

    const/4 v9, 0x6

    aget-byte v4, p0, v2

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->val(B)B

    move-result v4

    shl-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->val(B)B

    move-result v5

    and-int/lit8 v5, v5, 0x30

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v9, 0x1

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    if-ne v4, v8, :cond_1

    add-int/lit8 v3, v3, 0x1

    const/4 v9, 0x6

    :cond_0
    :goto_1
    new-array v0, v3, [B

    const/4 v9, 0x1

    invoke-static {v1, v7, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x6

    return-object v0

    const/4 v0, 0x1

    const/4 v9, 0x7

    :cond_1
    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->val(B)B

    move-result v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v2, 0x2

    aget-byte v6, p0, v6

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->val(B)B

    move-result v6

    and-int/lit8 v6, v6, 0x3c

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/4 v9, 0x4

    add-int/lit8 v4, v2, 0x3

    aget-byte v4, p0, v4

    if-ne v4, v8, :cond_2

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    const/4 v2, 0x6

    const/4 v9, 0x1

    :cond_2
    add-int/lit8 v4, v3, 0x2

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->val(B)B

    move-result v5

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x6

    add-int/lit8 v6, v2, 0x3

    aget-byte v6, p0, v6

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->val(B)B

    move-result v6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/4 v9, 0x1

    add-int/lit8 v3, v3, 0x3

    const/4 v9, 0x0

    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    const/4 v2, 0x6
.end method

.method static fromFile(Ljava/lang/String;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x7

    const/4 v8, 0x1

    invoke-static {p0}, Lcom/jcraft/jsch/Util;->checkTilde(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v8, 0x7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x6

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v5, v6

    new-array v4, v5, [B

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x4

    :goto_0
    array-length v5, v4

    sub-int/2addr v5, v3

    invoke-virtual {v1, v4, v3, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    const/4 v8, 0x3

    if-gtz v2, :cond_1

    const/4 v8, 0x3

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    const/4 v8, 0x4

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_0
    return-object v4

    const/4 v4, 0x2

    const/4 v8, 0x7

    :cond_1
    add-int/2addr v3, v2

    const/4 v8, 0x4

    goto :goto_0

    const/4 v6, 0x5

    const/4 v8, 0x1

    :catchall_0
    move-exception v5

    if-eqz v1, :cond_2

    const/4 v8, 0x1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_2
    throw v5
.end method

.method static getFingerPrint(Lcom/jcraft/jsch/HASH;[B)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x6

    const/4 v7, 0x5

    :try_start_0
    invoke-interface {p0}, Lcom/jcraft/jsch/HASH;->init()V

    const/4 v7, 0x3

    const/4 v5, 0x0

    array-length v6, p1

    invoke-interface {p0, p1, v5, v6}, Lcom/jcraft/jsch/HASH;->update([BII)V

    const/4 v7, 0x7

    invoke-interface {p0}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v2

    const/4 v7, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v7, 0x7

    const/4 v3, 0x0

    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_1

    const/4 v7, 0x0

    aget-byte v5, v2, v3

    and-int/lit16 v0, v5, 0xff

    const/4 v7, 0x3

    sget-object v5, Lcom/jcraft/jsch/Util;->chars:[Ljava/lang/String;

    ushr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v7, 0x2

    sget-object v5, Lcom/jcraft/jsch/Util;->chars:[Ljava/lang/String;

    and-int/lit8 v6, v0, 0xf

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v7, 0x2

    add-int/lit8 v5, v3, 0x1

    array-length v6, v2

    if-ge v5, v6, :cond_0

    const/4 v7, 0x3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v7, 0x7

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    const/4 v7, 0x7

    const/4 v7, 0x0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    const/4 v7, 0x1

    :goto_1
    return-object v5

    const/4 v2, 0x1

    const/4 v7, 0x6

    :catch_0
    move-exception v1

    const/4 v7, 0x7

    const-string v5, "???"

    goto :goto_1

    const/4 v2, 0x4
.end method

.method private static glob([BI[BI)Z
    .locals 10

    const/4 v9, 0x3

    const/4 v9, 0x2

    array-length v6, p0

    const/4 v9, 0x7

    if-nez v6, :cond_0

    const/4 v9, 0x4

    const/4 v5, 0x0

    const/4 v9, 0x6

    :goto_0
    return v5

    const/4 v7, 0x0

    const/4 v9, 0x1

    :cond_0
    array-length v4, p2

    const/4 v9, 0x0

    move v1, p1

    const/4 v9, 0x5

    move v3, p3

    const/4 v9, 0x0

    :cond_1
    :goto_1
    if-ge v1, v6, :cond_14

    if-ge v3, v4, :cond_14

    const/4 v9, 0x6

    aget-byte v7, p0, v1

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_4

    const/4 v9, 0x1

    add-int/lit8 v7, v1, 0x1

    if-ne v7, v6, :cond_2

    const/4 v9, 0x5

    const/4 v5, 0x0

    goto :goto_0

    const/4 v7, 0x2

    const/4 v9, 0x0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x6

    aget-byte v7, p0, v1

    aget-byte v8, p2, v3

    if-eq v7, v8, :cond_3

    const/4 v9, 0x2

    const/4 v5, 0x0

    goto :goto_0

    const/4 v6, 0x2

    const/4 v9, 0x1

    :cond_3
    aget-byte v7, p0, v1

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->skipUTF8Char(B)I

    move-result v7

    add-int/2addr v1, v7

    const/4 v9, 0x1

    aget-byte v7, p2, v3

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->skipUTF8Char(B)I

    move-result v7

    add-int/2addr v3, v7

    const/4 v9, 0x4

    goto :goto_1

    const/4 v3, 0x1

    const/4 v9, 0x6

    :cond_4
    aget-byte v7, p0, v1

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_10

    const/4 v9, 0x6

    :goto_2
    if-ge v1, v6, :cond_5

    const/4 v9, 0x1

    aget-byte v7, p0, v1

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_5

    const/4 v9, 0x2

    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x1

    goto :goto_2

    const/4 v3, 0x4

    const/4 v9, 0x3

    :cond_5
    if-ne v6, v1, :cond_6

    const/4 v9, 0x2

    const/4 v5, 0x1

    goto :goto_0

    const/4 v4, 0x7

    const/4 v9, 0x5

    :cond_6
    aget-byte v0, p0, v1

    const/4 v9, 0x6

    const/16 v7, 0x3f

    if-ne v0, v7, :cond_9

    const/4 v9, 0x5

    :goto_3
    if-ge v3, v4, :cond_8

    const/4 v9, 0x7

    invoke-static {p0, v1, p2, v3}, Lcom/jcraft/jsch/Util;->glob([BI[BI)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v9, 0x7

    const/4 v5, 0x1

    goto :goto_0

    const/4 v9, 0x2

    const/4 v9, 0x1

    :cond_7
    aget-byte v7, p2, v3

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->skipUTF8Char(B)I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_3

    const/4 v9, 0x5

    const/4 v9, 0x0

    :cond_8
    const/4 v5, 0x0

    goto :goto_0

    const/4 v6, 0x0

    const/4 v9, 0x7

    :cond_9
    const/16 v7, 0x5c

    if-ne v0, v7, :cond_e

    const/4 v9, 0x3

    add-int/lit8 v7, v1, 0x1

    if-ne v7, v6, :cond_a

    const/4 v9, 0x4

    const/4 v5, 0x0

    goto/16 :goto_0

    const/4 v8, 0x3

    const/4 v9, 0x7

    :cond_a
    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x1

    aget-byte v0, p0, v1

    const/4 v9, 0x5

    :goto_4
    if-ge v3, v4, :cond_c

    const/4 v9, 0x4

    aget-byte v7, p2, v3

    if-ne v0, v7, :cond_b

    const/4 v9, 0x2

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->skipUTF8Char(B)I

    move-result v7

    add-int/2addr v7, v1

    aget-byte v8, p2, v3

    invoke-static {v8}, Lcom/jcraft/jsch/Util;->skipUTF8Char(B)I

    move-result v8

    add-int/2addr v8, v3

    invoke-static {p0, v7, p2, v8}, Lcom/jcraft/jsch/Util;->glob([BI[BI)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v9, 0x1

    const/4 v5, 0x1

    goto/16 :goto_0

    const/4 v6, 0x3

    const/4 v9, 0x4

    :cond_b
    aget-byte v7, p2, v3

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->skipUTF8Char(B)I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_4

    const/4 v0, 0x3

    const/4 v9, 0x1

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_0

    const/4 v2, 0x6

    const/4 v9, 0x3

    :cond_d
    aget-byte v7, p2, v3

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->skipUTF8Char(B)I

    move-result v7

    add-int/2addr v3, v7

    const/4 v9, 0x6

    :cond_e
    if-ge v3, v4, :cond_f

    const/4 v9, 0x0

    aget-byte v7, p2, v3

    if-ne v0, v7, :cond_d

    const/4 v9, 0x1

    invoke-static {p0, v1, p2, v3}, Lcom/jcraft/jsch/Util;->glob([BI[BI)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v9, 0x2

    const/4 v5, 0x1

    goto/16 :goto_0

    const/4 v3, 0x0

    const/4 v9, 0x4

    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_0

    const/4 v7, 0x3

    const/4 v9, 0x5

    :cond_10
    aget-byte v7, p0, v1

    const/16 v8, 0x3f

    if-ne v7, v8, :cond_11

    const/4 v9, 0x6

    add-int/lit8 v1, v1, 0x1

    const/4 v9, 0x3

    aget-byte v7, p2, v3

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->skipUTF8Char(B)I

    move-result v7

    add-int/2addr v3, v7

    const/4 v9, 0x5

    goto/16 :goto_1

    const/4 v5, 0x7

    const/4 v9, 0x1

    :cond_11
    aget-byte v7, p0, v1

    aget-byte v8, p2, v3

    if-eq v7, v8, :cond_12

    const/4 v9, 0x6

    const/4 v5, 0x0

    goto/16 :goto_0

    const/4 v4, 0x5

    const/4 v9, 0x4

    :cond_12
    aget-byte v7, p0, v1

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->skipUTF8Char(B)I

    move-result v7

    add-int/2addr v1, v7

    const/4 v9, 0x1

    aget-byte v7, p2, v3

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->skipUTF8Char(B)I

    move-result v7

    add-int/2addr v3, v7

    const/4 v9, 0x1

    if-lt v3, v4, :cond_1

    const/4 v9, 0x4

    if-lt v1, v6, :cond_13

    const/4 v9, 0x5

    const/4 v5, 0x1

    goto/16 :goto_0

    const/4 v8, 0x6

    const/4 v9, 0x5

    :cond_13
    aget-byte v7, p0, v1

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_1

    const/4 v9, 0x1

    :cond_14
    if-ne v1, v6, :cond_15

    if-ne v3, v4, :cond_15

    const/4 v9, 0x7

    const/4 v5, 0x1

    goto/16 :goto_0

    const/4 v2, 0x6

    const/4 v9, 0x6

    :cond_15
    if-lt v3, v4, :cond_16

    aget-byte v7, p0, v1

    const/16 v8, 0x2a

    if-ne v7, v8, :cond_16

    const/4 v9, 0x3

    const/4 v5, 0x1

    move v2, v1

    const/4 v9, 0x4

    :goto_5
    if-ge v2, v6, :cond_18

    const/4 v9, 0x2

    add-int/lit8 v1, v2, 0x1

    aget-byte v7, p0, v2

    const/16 v8, 0x2a

    if-eq v7, v8, :cond_17

    const/4 v9, 0x6

    const/4 v5, 0x0

    const/4 v9, 0x0

    goto/16 :goto_0

    const/4 v6, 0x7

    const/4 v9, 0x5

    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_0

    const/4 v8, 0x2

    :cond_17
    move v2, v1

    goto :goto_5

    const/4 v9, 0x3

    :cond_18
    move v1, v2

    goto/16 :goto_0

    const/4 v6, 0x2
.end method

.method static glob([B[B)Z
    .locals 2

    const/4 v1, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, p1, v0}, Lcom/jcraft/jsch/Util;->glob0([BI[BI)Z

    move-result v0

    return v0

    const/4 v1, 0x6
.end method

.method private static glob0([BI[BI)Z
    .locals 5

    const/4 v4, 0x6

    const/16 v3, 0x2e

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x2

    array-length v2, p2

    if-lez v2, :cond_2

    aget-byte v2, p2, v1

    if-ne v2, v3, :cond_2

    const/4 v4, 0x7

    array-length v2, p0

    if-lez v2, :cond_1

    aget-byte v2, p0, v1

    if-ne v2, v3, :cond_1

    const/4 v4, 0x0

    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v0

    const/4 v3, 0x3

    const/4 v4, 0x7

    :cond_0
    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p3, 0x1

    invoke-static {p0, v0, p2, v1}, Lcom/jcraft/jsch/Util;->glob([BI[BI)Z

    move-result v0

    goto :goto_0

    const/4 v0, 0x3

    :cond_1
    move v0, v1

    const/4 v4, 0x0

    goto :goto_0

    const/4 v4, 0x3

    const/4 v4, 0x3

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/jcraft/jsch/Util;->glob([BI[BI)Z

    move-result v0

    goto :goto_0

    const/4 v1, 0x1
.end method

.method static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x5

    const/16 v10, 0x3f

    const/16 v9, 0x2a

    const/16 v8, 0x5c

    const/4 v11, 0x6

    invoke-static {p0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v11, 0x2

    const/4 v3, 0x0

    const/4 v11, 0x3

    const/4 v4, 0x0

    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_2

    const/4 v11, 0x5

    aget-byte v2, v0, v4

    const/4 v11, 0x0

    if-eq v2, v8, :cond_0

    if-eq v2, v10, :cond_0

    if-ne v2, v9, :cond_1

    const/4 v11, 0x5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    const/4 v11, 0x0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    const/4 v8, 0x4

    const/4 v11, 0x0

    :cond_2
    if-nez v3, :cond_3

    const/4 v11, 0x7

    :goto_1
    return-object p0

    const/4 v7, 0x4

    const/4 v11, 0x0

    :cond_3
    array-length v7, v0

    add-int/2addr v7, v3

    new-array v1, v7, [B

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    array-length v7, v0

    if-ge v4, v7, :cond_6

    const/4 v11, 0x1

    aget-byte v2, v0, v4

    const/4 v11, 0x5

    if-eq v2, v8, :cond_4

    if-eq v2, v10, :cond_4

    if-ne v2, v9, :cond_5

    const/4 v11, 0x5

    :cond_4
    add-int/lit8 v6, v5, 0x1

    aput-byte v8, v1, v5

    move v5, v6

    const/4 v11, 0x5

    :cond_5
    add-int/lit8 v6, v5, 0x1

    aput-byte v2, v1, v5

    const/4 v11, 0x0

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_2

    const/4 v2, 0x0

    const/4 v11, 0x4

    :cond_6
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    const/4 v4, 0x5
.end method

.method private static skipUTF8Char(B)I
    .locals 4

    const/4 v3, 0x6

    const/4 v0, 0x1

    const/4 v3, 0x0

    and-int/lit16 v1, p0, 0x80

    int-to-byte v1, v1

    if-nez v1, :cond_1

    const/4 v3, 0x5

    :cond_0
    :goto_0
    return v0

    const/4 v3, 0x2

    const/4 v3, 0x5

    :cond_1
    and-int/lit16 v1, p0, 0xe0

    int-to-byte v1, v1

    const/16 v2, -0x40

    if-ne v1, v2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    const/4 v0, 0x5

    const/4 v3, 0x3

    :cond_2
    and-int/lit16 v1, p0, 0xf0

    int-to-byte v1, v1

    const/16 v2, -0x20

    if-ne v1, v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    const/4 v2, 0x5
.end method

.method static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x4

    const/4 v7, 0x0

    if-nez p0, :cond_1

    const/4 v7, 0x6

    const/4 v4, 0x0

    const/4 v7, 0x2

    :cond_0
    return-object v4

    const/4 v6, 0x2

    const/4 v7, 0x0

    :cond_1
    invoke-static {p0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v7, 0x1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x3

    :goto_0
    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v7, 0x4

    if-ltz v3, :cond_2

    const/4 v7, 0x1

    sub-int v6, v3, v5

    invoke-static {v1, v5, v6}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v7, 0x4

    add-int/lit8 v5, v3, 0x1

    const/4 v7, 0x2

    goto :goto_0

    const/4 v3, 0x0

    const/4 v7, 0x4

    :cond_2
    array-length v6, v1

    sub-int/2addr v6, v5

    invoke-static {v1, v5, v6}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v7, 0x2

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v4, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_0

    const/4 v7, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    check-cast v6, Ljava/lang/String;

    aput-object v6, v4, v2

    const/4 v7, 0x3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    const/4 v3, 0x5
.end method

.method static str2byte(Ljava/lang/String;)[B
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    const/4 v0, 0x4
.end method

.method static str2byte(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x7

    if-nez p0, :cond_0

    const/4 v2, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x2

    :goto_0
    return-object v1

    const/4 v2, 0x1

    const/4 v2, 0x4

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    const/4 v2, 0x3

    const/4 v2, 0x6

    :catch_0
    move-exception v0

    const/4 v2, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0

    const/4 v0, 0x2
.end method

.method static toBase64([BII)[B
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x3d

    const/4 v11, 0x1

    mul-int/lit8 v7, p2, 0x2

    new-array v6, v7, [B

    const/4 v11, 0x2

    div-int/lit8 v7, p2, 0x3

    mul-int/lit8 v7, v7, 0x3

    add-int v1, v7, p1

    const/4 v11, 0x7

    const/4 v2, 0x0

    const/4 v11, 0x2

    move v4, p1

    move v3, v2

    :goto_0
    if-ge v4, v1, :cond_0

    const/4 v11, 0x5

    aget-byte v7, p0, v4

    ushr-int/lit8 v7, v7, 0x2

    and-int/lit8 v5, v7, 0x3f

    const/4 v11, 0x0

    add-int/lit8 v2, v3, 0x1

    sget-object v7, Lcom/jcraft/jsch/Util;->b64:[B

    aget-byte v7, v7, v5

    aput-byte v7, v6, v3

    const/4 v11, 0x3

    aget-byte v7, p0, v4

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v4, 0x1

    aget-byte v8, p0, v8

    ushr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    or-int v5, v7, v8

    const/4 v11, 0x2

    add-int/lit8 v3, v2, 0x1

    sget-object v7, Lcom/jcraft/jsch/Util;->b64:[B

    aget-byte v7, v7, v5

    aput-byte v7, v6, v2

    const/4 v11, 0x4

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v4, 0x2

    aget-byte v8, p0, v8

    ushr-int/lit8 v8, v8, 0x6

    and-int/lit8 v8, v8, 0x3

    or-int v5, v7, v8

    const/4 v11, 0x6

    add-int/lit8 v2, v3, 0x1

    sget-object v7, Lcom/jcraft/jsch/Util;->b64:[B

    aget-byte v7, v7, v5

    aput-byte v7, v6, v3

    const/4 v11, 0x4

    add-int/lit8 v7, v4, 0x2

    aget-byte v7, p0, v7

    and-int/lit8 v5, v7, 0x3f

    const/4 v11, 0x4

    add-int/lit8 v3, v2, 0x1

    sget-object v7, Lcom/jcraft/jsch/Util;->b64:[B

    aget-byte v7, v7, v5

    aput-byte v7, v6, v2

    const/4 v11, 0x2

    add-int/lit8 v4, v4, 0x3

    goto :goto_0

    const/4 v4, 0x5

    const/4 v11, 0x4

    :cond_0
    add-int v7, p1, p2

    sub-int v1, v7, v1

    const/4 v11, 0x1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_1

    const/4 v11, 0x2

    aget-byte v7, p0, v4

    ushr-int/lit8 v7, v7, 0x2

    and-int/lit8 v5, v7, 0x3f

    const/4 v11, 0x2

    add-int/lit8 v2, v3, 0x1

    sget-object v7, Lcom/jcraft/jsch/Util;->b64:[B

    aget-byte v7, v7, v5

    aput-byte v7, v6, v3

    const/4 v11, 0x3

    aget-byte v7, p0, v4

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v5, v7, 0x3f

    const/4 v11, 0x4

    add-int/lit8 v3, v2, 0x1

    sget-object v7, Lcom/jcraft/jsch/Util;->b64:[B

    aget-byte v7, v7, v5

    aput-byte v7, v6, v2

    const/4 v11, 0x4

    add-int/lit8 v2, v3, 0x1

    aput-byte v9, v6, v3

    const/4 v11, 0x0

    add-int/lit8 v3, v2, 0x1

    aput-byte v9, v6, v2

    move v2, v3

    const/4 v11, 0x2

    :goto_1
    new-array v0, v2, [B

    const/4 v11, 0x7

    invoke-static {v6, v10, v0, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x1

    return-object v0

    const/4 v2, 0x2

    const/4 v11, 0x2

    :cond_1
    const/4 v7, 0x2

    if-ne v1, v7, :cond_2

    const/4 v11, 0x7

    aget-byte v7, p0, v4

    ushr-int/lit8 v7, v7, 0x2

    and-int/lit8 v5, v7, 0x3f

    const/4 v11, 0x2

    add-int/lit8 v2, v3, 0x1

    sget-object v7, Lcom/jcraft/jsch/Util;->b64:[B

    aget-byte v7, v7, v5

    aput-byte v7, v6, v3

    const/4 v11, 0x5

    aget-byte v7, p0, v4

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v4, 0x1

    aget-byte v8, p0, v8

    ushr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    or-int v5, v7, v8

    const/4 v11, 0x4

    add-int/lit8 v3, v2, 0x1

    sget-object v7, Lcom/jcraft/jsch/Util;->b64:[B

    aget-byte v7, v7, v5

    aput-byte v7, v6, v2

    const/4 v11, 0x6

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x2

    and-int/lit8 v5, v7, 0x3f

    const/4 v11, 0x2

    add-int/lit8 v2, v3, 0x1

    sget-object v7, Lcom/jcraft/jsch/Util;->b64:[B

    aget-byte v7, v7, v5

    aput-byte v7, v6, v3

    const/4 v11, 0x6

    add-int/lit8 v3, v2, 0x1

    aput-byte v9, v6, v2

    :cond_2
    move v2, v3

    goto :goto_1

    const/4 v0, 0x7
.end method

.method static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v4, 0x2

    invoke-static {p0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v4, 0x5

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->unquote([B)[B

    move-result-object v0

    const/4 v4, 0x6

    array-length v2, v1

    array-length v3, v0

    if-ne v2, v3, :cond_0

    const/4 v4, 0x7

    :goto_0
    return-object p0

    const/4 v2, 0x2

    :cond_0
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    const/4 v2, 0x6
.end method

.method static unquote([B)[B
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x6

    array-length v2, p0

    const/4 v7, 0x4

    const/4 v1, 0x0

    const/4 v7, 0x5

    :goto_0
    if-ge v1, v2, :cond_0

    const/4 v7, 0x7

    aget-byte v3, p0, v1

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_2

    const/4 v7, 0x3

    add-int/lit8 v3, v1, 0x1

    if-ne v3, v2, :cond_1

    const/4 v7, 0x3

    :cond_0
    array-length v3, p0

    if-ne v2, v3, :cond_3

    const/4 v7, 0x0

    :goto_1
    return-object p0

    const/4 v7, 0x4

    const/4 v7, 0x4

    :cond_1
    add-int/lit8 v3, v1, 0x1

    array-length v4, p0

    add-int/lit8 v5, v1, 0x1

    sub-int/2addr v4, v5

    invoke-static {p0, v3, p0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    add-int/lit8 v2, v2, -0x1

    const/4 v7, 0x4

    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x7

    goto :goto_0

    const/4 v2, 0x6

    const/4 v7, 0x5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v0, 0x0

    const/4 v7, 0x7

    :cond_3
    new-array v0, v2, [B

    const/4 v7, 0x0

    invoke-static {p0, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    const/4 v7, 0x5

    goto :goto_1

    const/4 v0, 0x6
.end method

.method private static val(B)B
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/16 v2, 0x3d

    if-ne p0, v2, :cond_1

    const/4 v3, 0x2

    :cond_0
    :goto_0
    return v1

    const/4 v3, 0x1

    const/4 v3, 0x5

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/jcraft/jsch/Util;->b64:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    const/4 v3, 0x2

    sget-object v2, Lcom/jcraft/jsch/Util;->b64:[B

    aget-byte v2, v2, v0

    if-ne p0, v2, :cond_2

    int-to-byte v1, v0

    goto :goto_0

    const/4 v3, 0x3

    const/4 v3, 0x0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    const/4 v2, 0x0
.end method
