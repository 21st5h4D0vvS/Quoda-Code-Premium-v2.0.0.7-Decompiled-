.class public abstract Lcom/jcraft/jsch/KeyExchange;
.super Ljava/lang/Object;


# static fields
.field static final PROPOSAL_COMP_ALGS_CTOS:I = 0x6

.field static final PROPOSAL_COMP_ALGS_STOC:I = 0x7

.field static final PROPOSAL_ENC_ALGS_CTOS:I = 0x2

.field static final PROPOSAL_ENC_ALGS_STOC:I = 0x3

.field static final PROPOSAL_KEX_ALGS:I = 0x0

.field static final PROPOSAL_LANG_CTOS:I = 0x8

.field static final PROPOSAL_LANG_STOC:I = 0x9

.field static final PROPOSAL_MAC_ALGS_CTOS:I = 0x4

.field static final PROPOSAL_MAC_ALGS_STOC:I = 0x5

.field static final PROPOSAL_MAX:I = 0xa

.field static final PROPOSAL_SERVER_HOST_KEY_ALGS:I = 0x1

.field public static final STATE_END:I

.field static enc_c2s:Ljava/lang/String;

.field static enc_s2c:Ljava/lang/String;

.field static kex:Ljava/lang/String;

.field static lang_c2s:Ljava/lang/String;

.field static lang_s2c:Ljava/lang/String;

.field static mac_c2s:Ljava/lang/String;

.field static mac_s2c:Ljava/lang/String;

.field static server_host_key:Ljava/lang/String;


# instance fields
.field protected H:[B

.field protected K:[B

.field protected K_S:[B

.field protected session:Lcom/jcraft/jsch/Session;

.field protected sha:Lcom/jcraft/jsch/HASH;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x0

    const-string v0, "diffie-hellman-group1-sha1"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->kex:Ljava/lang/String;

    const/4 v1, 0x5

    const-string v0, "ssh-rsa,ssh-dss"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->server_host_key:Ljava/lang/String;

    const/4 v1, 0x4

    const-string v0, "blowfish-cbc"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->enc_c2s:Ljava/lang/String;

    const/4 v1, 0x4

    const-string v0, "blowfish-cbc"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->enc_s2c:Ljava/lang/String;

    const/4 v1, 0x7

    const-string v0, "hmac-md5"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->mac_c2s:Ljava/lang/String;

    const/4 v1, 0x6

    const-string v0, "hmac-md5"

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->mac_s2c:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v0, ""

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->lang_c2s:Ljava/lang/String;

    const/4 v1, 0x5

    const-string v0, ""

    sput-object v0, Lcom/jcraft/jsch/KeyExchange;->lang_s2c:Ljava/lang/String;

    nop

    return-void

    const/4 v1, 0x0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    const/4 v1, 0x2

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->sha:Lcom/jcraft/jsch/HASH;

    const/4 v1, 0x2

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->K:[B

    const/4 v1, 0x6

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->H:[B

    const/4 v1, 0x4

    iput-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    nop

    return-void

    const/4 v1, 0x6
.end method

.method protected static guess([B[B)[Ljava/lang/String;
    .locals 16

    const/16 v12, 0xa

    new-array v4, v12, [Ljava/lang/String;

    new-instance v10, Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    const/16 v12, 0x11

    invoke-virtual {v10, v12}, Lcom/jcraft/jsch/Buffer;->setOffSet(I)V

    new-instance v2, Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/jcraft/jsch/Buffer;-><init>([B)V

    const/16 v12, 0x11

    invoke-virtual {v2, v12}, Lcom/jcraft/jsch/Buffer;->setOffSet(I)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v5, 0x0

    :goto_0
    const/16 v12, 0xa

    if-ge v5, v12, :cond_0

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v12

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "kex: server: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v10}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v15

    invoke-static {v15}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    const/4 v2, 0x4

    :cond_0
    const/4 v5, 0x0

    :goto_1
    const/16 v12, 0xa

    if-ge v5, v12, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v12

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "kex: client: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v15

    invoke-static {v15}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    const/4 v5, 0x4

    :cond_1
    const/16 v12, 0x11

    invoke-virtual {v10, v12}, Lcom/jcraft/jsch/Buffer;->setOffSet(I)V

    const/16 v12, 0x11

    invoke-virtual {v2, v12}, Lcom/jcraft/jsch/Buffer;->setOffSet(I)V

    :cond_2
    const/4 v5, 0x0

    :goto_2
    const/16 v12, 0xa

    if-ge v5, v12, :cond_d

    invoke-virtual {v10}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v11

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    array-length v12, v3

    if-ge v6, v12, :cond_8

    :goto_4
    array-length v12, v3

    if-ge v6, v12, :cond_3

    aget-byte v12, v3, v6

    const/16 v13, 0x2c

    if-eq v12, v13, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    const/4 v10, 0x6

    :cond_3
    if-ne v7, v6, :cond_5

    const/4 v4, 0x0

    :cond_4
    :goto_5
    return-object v4

    const/4 v4, 0x5

    :cond_5
    sub-int v12, v6, v7

    invoke-static {v3, v7, v12}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_6
    array-length v12, v11

    if-ge v8, v12, :cond_b

    :goto_7
    array-length v12, v11

    if-ge v8, v12, :cond_6

    aget-byte v12, v11, v8

    const/16 v13, 0x2c

    if-eq v12, v13, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    const/4 v2, 0x2

    :cond_6
    if-ne v9, v8, :cond_7

    const/4 v4, 0x0

    goto :goto_5

    const/4 v4, 0x7

    :cond_7
    sub-int v12, v8, v9

    invoke-static {v11, v9, v12}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    aput-object v1, v4, v5

    :cond_8
    if-nez v6, :cond_c

    const-string v12, ""

    aput-object v12, v4, v5

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    const/4 v9, 0x2

    :cond_a
    add-int/lit8 v8, v8, 0x1

    move v9, v8

    goto :goto_6

    const/4 v14, 0x0

    :cond_b
    add-int/lit8 v6, v6, 0x1

    move v7, v6

    goto :goto_3

    const/4 v9, 0x7

    :cond_c
    aget-object v12, v4, v5

    if-nez v12, :cond_9

    const/4 v4, 0x0

    goto :goto_5

    const/4 v1, 0x5

    :cond_d
    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v12

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "kex: server->client "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const/4 v15, 0x3

    aget-object v15, v4, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const/4 v15, 0x5

    aget-object v15, v4, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const/4 v15, 0x7

    aget-object v15, v4, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v12

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string v15, "kex: client->server "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v15, v4, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const/4 v15, 0x4

    aget-object v15, v4, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const/4 v15, 0x6

    aget-object v15, v4, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    goto/16 :goto_5

    const/4 v10, 0x4
.end method


# virtual methods
.method public getFingerPrint()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x4

    :try_start_0
    iget-object v4, p0, Lcom/jcraft/jsch/KeyExchange;->session:Lcom/jcraft/jsch/Session;

    const-string v5, "md5"

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jcraft/jsch/HASH;

    move-object v0, v4

    check-cast v0, Lcom/jcraft/jsch/HASH;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x7

    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/KeyExchange;->getHostKey()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/jcraft/jsch/Util;->getFingerPrint(Lcom/jcraft/jsch/HASH;[B)Ljava/lang/String;

    move-result-object v4

    return-object v4

    const/4 v6, 0x6

    const/4 v7, 0x1

    :catch_0
    move-exception v2

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "getFingerPrint: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    const/4 v0, 0x6
.end method

.method getH()[B
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->H:[B

    return-object v0

    const/4 v0, 0x1
.end method

.method getHash()Lcom/jcraft/jsch/HASH;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->sha:Lcom/jcraft/jsch/HASH;

    return-object v0

    const/4 v1, 0x0
.end method

.method getHostKey()[B
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->K_S:[B

    return-object v0

    const/4 v1, 0x0
.end method

.method getK()[B
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/KeyExchange;->K:[B

    return-object v0

    const/4 v0, 0x5
.end method

.method public abstract getKeyType()Ljava/lang/String;
.end method

.method public abstract getState()I
.end method

.method public abstract init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract next(Lcom/jcraft/jsch/Buffer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected normalize([B)[B
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v4, 0x7

    array-length v1, p1

    if-le v1, v2, :cond_0

    aget-byte v1, p1, v3

    if-nez v1, :cond_0

    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    const/4 v4, 0x7

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    new-array v0, v1, [B

    const/4 v4, 0x2

    array-length v1, v0

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x6

    move-object p1, v0

    const/4 v4, 0x3

    :cond_0
    return-object p1

    const/4 v4, 0x3
.end method
