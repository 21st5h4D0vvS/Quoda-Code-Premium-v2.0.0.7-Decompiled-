.class public Lcom/jcraft/jsch/HostKey;
.super Ljava/lang/Object;


# static fields
.field protected static final GUESS:I = 0x0

.field public static final SSHDSS:I = 0x1

.field public static final SSHRSA:I = 0x2

.field static final UNKNOWN:I = 0x3

.field private static final sshdss:[B

.field private static final sshrsa:[B


# instance fields
.field protected comment:Ljava/lang/String;

.field protected host:Ljava/lang/String;

.field protected key:[B

.field protected marker:Ljava/lang/String;

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x2

    const-string v0, "ssh-dss"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/HostKey;->sshdss:[B

    const/4 v1, 0x4

    const-string v0, "ssh-rsa"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/HostKey;->sshrsa:[B

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    const/4 v1, 0x5

    nop

    return-void

    const/4 v1, 0x7
.end method

.method public constructor <init>(Ljava/lang/String;I[BLjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v6, 0x6

    const/4 v6, 0x2

    const-string v1, ""

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V

    const/4 v6, 0x5

    nop

    return-void

    const/4 v4, 0x2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v3, 0x2

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x3

    iput-object p1, p0, Lcom/jcraft/jsch/HostKey;->marker:Ljava/lang/String;

    const/4 v3, 0x7

    iput-object p2, p0, Lcom/jcraft/jsch/HostKey;->host:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez p3, :cond_2

    const/4 v3, 0x5

    aget-byte v0, p4, v2

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/jcraft/jsch/HostKey;->type:I

    const/4 v3, 0x6

    :goto_0
    iput-object p4, p0, Lcom/jcraft/jsch/HostKey;->key:[B

    const/4 v3, 0x3

    iput-object p5, p0, Lcom/jcraft/jsch/HostKey;->comment:Ljava/lang/String;

    const/4 v3, 0x7

    nop

    return-void

    const/4 v3, 0x1

    const/4 v3, 0x0

    :cond_0
    aget-byte v0, p4, v2

    const/16 v1, 0x72

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/jcraft/jsch/HostKey;->type:I

    goto :goto_0

    const/4 v1, 0x1

    const/4 v3, 0x5

    :cond_1
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "invalid key type"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0

    const/4 v3, 0x0

    :cond_2
    iput p3, p0, Lcom/jcraft/jsch/HostKey;->type:I

    goto :goto_0

    const/4 v0, 0x5
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v1, 0x7

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[B)V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x5
.end method

.method private isIncluded(Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x7

    const/4 v2, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->host:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v8, 0x6

    :goto_0
    if-ge v2, v6, :cond_0

    const/4 v8, 0x0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const/4 v8, 0x7

    const/4 v3, -0x1

    if-ne v7, v3, :cond_2

    const/4 v8, 0x5

    sub-int v3, v6, v2

    if-eq v5, v3, :cond_1

    const/4 v8, 0x4

    :cond_0
    :goto_1
    return v4

    const/4 v5, 0x4

    :cond_1
    move-object v3, p1

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    goto :goto_1

    const/4 v1, 0x3

    const/4 v8, 0x1

    :cond_2
    sub-int v3, v7, v2

    if-ne v5, v3, :cond_3

    move-object v3, p1

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3

    move v4, v1

    goto :goto_1

    const/4 v1, 0x3

    const/4 v8, 0x5

    :cond_3
    add-int/lit8 v2, v7, 0x1

    goto :goto_0

    const/4 v4, 0x5
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->comment:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x3
.end method

.method public getFingerPrint(Lcom/jcraft/jsch/JSch;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x5

    const/4 v7, 0x5

    const/4 v3, 0x0

    const/4 v7, 0x6

    :try_start_0
    const-string v4, "md5"

    invoke-static {v4}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

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

    const/4 v7, 0x0

    :goto_0
    iget-object v4, p0, Lcom/jcraft/jsch/HostKey;->key:[B

    invoke-static {v3, v4}, Lcom/jcraft/jsch/Util;->getFingerPrint(Lcom/jcraft/jsch/HASH;[B)Ljava/lang/String;

    move-result-object v4

    return-object v4

    const/4 v1, 0x0

    const/4 v7, 0x2

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

    const/4 v0, 0x4
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->host:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x1
.end method

.method public getKey()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x3

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->key:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/HostKey;->key:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/Util;->toBase64([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->marker:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x3

    iget v0, p0, Lcom/jcraft/jsch/HostKey;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/jcraft/jsch/HostKey;->sshdss:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    :goto_0
    return-object v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/HostKey;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/jcraft/jsch/HostKey;->sshrsa:[B

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    const/4 v1, 0x7

    const/4 v2, 0x5

    :cond_1
    const-string v0, "UNKNOWN"

    goto :goto_0

    const/4 v0, 0x1
.end method

.method isMatched(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x2

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/HostKey;->isIncluded(Ljava/lang/String;)Z

    move-result v0

    return v0

    const/4 v0, 0x2
.end method
