.class public Lcom/jcraft/jsch/KnownHosts;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/HostKeyRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/KnownHosts$HashedHostKey;
    }
.end annotation


# static fields
.field private static final _known_hosts:Ljava/lang/String; = "known_hosts"

.field private static final cr:[B

.field private static final space:[B


# instance fields
.field private hmacsha1:Lcom/jcraft/jsch/MAC;

.field private jsch:Lcom/jcraft/jsch/JSch;

.field private known_hosts:Ljava/lang/String;

.field private pool:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x4

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    sput-object v0, Lcom/jcraft/jsch/KnownHosts;->space:[B

    const/4 v3, 0x7

    const-string v0, "\n"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/KnownHosts;->cr:[B

    nop

    return-void

    const/4 v3, 0x2
.end method

.method constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x7

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->jsch:Lcom/jcraft/jsch/JSch;

    const/4 v1, 0x7

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->known_hosts:Ljava/lang/String;

    const/4 v1, 0x1

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    const/4 v1, 0x4

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->hmacsha1:Lcom/jcraft/jsch/MAC;

    const/4 v1, 0x6

    iput-object p1, p0, Lcom/jcraft/jsch/KnownHosts;->jsch:Lcom/jcraft/jsch/JSch;

    const/4 v1, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x3
.end method

.method static access$000(Lcom/jcraft/jsch/KnownHosts;)Lcom/jcraft/jsch/MAC;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/jcraft/jsch/KnownHosts;->getHMACSHA1()Lcom/jcraft/jsch/MAC;

    move-result-object v0

    return-object v0

    const/4 v0, 0x4
.end method

.method private addInvalidLine(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v3, 0x4

    new-instance v0, Lcom/jcraft/jsch/HostKey;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[B)V

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v3, 0x7

    nop

    return-void

    const/4 v0, 0x4
.end method

.method private deleteSubString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v6, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v6, 0x7

    :goto_0
    if-ge v2, v1, :cond_0

    const/4 v6, 0x4

    const/16 v4, 0x2c

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v6, 0x4

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    const/4 v6, 0x4

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sub-int v4, v1, v2

    if-ne v4, v0, :cond_1

    const/4 v6, 0x3

    if-ne v0, v1, :cond_4

    move v4, v5

    :goto_1
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x0

    :cond_1
    :goto_2
    return-object p1

    const/4 v3, 0x2

    const/4 v6, 0x4

    :cond_2
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v6, 0x2

    add-int/lit8 v2, v3, 0x1

    const/4 v6, 0x4

    goto :goto_0

    const/4 v2, 0x3

    const/4 v6, 0x4

    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    const/4 v6, 0x7

    const/4 v6, 0x3

    :cond_4
    sub-int v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    const/4 v6, 0x5
.end method

.method private declared-synchronized getHMACSHA1()Lcom/jcraft/jsch/MAC;
    .locals 6

    const/4 v5, 0x0

    const/4 v5, 0x3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts;->hmacsha1:Lcom/jcraft/jsch/MAC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v5, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts;->jsch:Lcom/jcraft/jsch/JSch;

    const-string v2, "hmac-sha1"

    invoke-static {v2}, Lcom/jcraft/jsch/JSch;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v5, 0x4

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/MAC;

    check-cast v2, Lcom/jcraft/jsch/MAC;

    iput-object v2, p0, Lcom/jcraft/jsch/KnownHosts;->hmacsha1:Lcom/jcraft/jsch/MAC;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v5, 0x5

    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/jcraft/jsch/KnownHosts;->hmacsha1:Lcom/jcraft/jsch/MAC;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    const/4 v3, 0x4

    const/4 v5, 0x3

    :catch_0
    move-exception v1

    const/4 v5, 0x4

    :try_start_3
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "hmacsha1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    const/4 v4, 0x1

    const/4 v5, 0x7

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getType([B)I
    .locals 4

    const/4 v3, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x7

    aget-byte v0, p1, v2

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v3, 0x0

    :goto_0
    return v0

    const/4 v0, 0x0

    const/4 v3, 0x4

    :cond_0
    aget-byte v0, p1, v2

    const/16 v1, 0x72

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    const/4 v3, 0x3

    const/4 v3, 0x4

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    const/4 v1, 0x4
.end method


# virtual methods
.method public add(Lcom/jcraft/jsch/HostKey;Lcom/jcraft/jsch/UserInfo;)V
    .locals 13

    iget v9, p1, Lcom/jcraft/jsch/HostKey;->type:I

    invoke-virtual {p1}, Lcom/jcraft/jsch/HostKey;->getHost()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p1, Lcom/jcraft/jsch/HostKey;->key:[B

    const/4 v5, 0x0

    iget-object v11, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    monitor-enter v11

    const/4 v7, 0x0

    :goto_0
    :try_start_0
    iget-object v10, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v7, v10, :cond_1

    iget-object v10, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v10, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jcraft/jsch/HostKey;

    move-object v0, v10

    check-cast v0, Lcom/jcraft/jsch/HostKey;

    move-object v5, v0

    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/HostKey;->isMatched(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget v10, v5, Lcom/jcraft/jsch/HostKey;->type:I

    if-ne v10, v9, :cond_0

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    const/4 v10, 0x3

    :cond_1
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, p1

    iget-object v10, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v10, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/KnownHosts;->getKnownHostsRepositoryID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    new-instance v4, Ljava/io/File;

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->checkTilde(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v3, 0x0

    if-eqz p2, :cond_3

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " does not exist.\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "Are you sure you want to create it?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v10}, Lcom/jcraft/jsch/UserInfo;->promptYesNo(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "The parent directory "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " does not exist.\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "Are you sure you want to create it?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v10}, Lcom/jcraft/jsch/UserInfo;->promptYesNo(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v10

    if-nez v10, :cond_5

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " has not been created."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v10}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    const/4 v3, 0x0

    :cond_3
    if-eqz v3, :cond_4

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/jcraft/jsch/KnownHosts;->sync(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_2
    nop

    return-void

    const/4 v8, 0x4

    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    :cond_5
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " has been succesfully created.\nPlease check its access permission."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p2, v10}, Lcom/jcraft/jsch/UserInfo;->showMessage(Ljava/lang/String;)V

    goto :goto_1

    const/4 v0, 0x3

    :catch_0
    move-exception v2

    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "sync known_hosts: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    const/4 v3, 0x1
.end method

.method public check(Ljava/lang/String;[B)I
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v8, 0x3

    if-nez p1, :cond_0

    move v5, v3

    const/4 v8, 0x0

    :goto_0
    return v5

    const/4 v8, 0x7

    const/4 v8, 0x0

    :cond_0
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/KnownHosts;->getType([B)I

    move-result v4

    const/4 v8, 0x6

    iget-object v6, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    monitor-enter v6

    const/4 v8, 0x5

    const/4 v2, 0x0

    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    const/4 v8, 0x2

    iget-object v5, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jcraft/jsch/HostKey;

    move-object v0, v5

    check-cast v0, Lcom/jcraft/jsch/HostKey;

    move-object v1, v0

    const/4 v8, 0x0

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/HostKey;->isMatched(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v1, Lcom/jcraft/jsch/HostKey;->type:I

    if-ne v5, v4, :cond_2

    const/4 v8, 0x2

    iget-object v5, v1, Lcom/jcraft/jsch/HostKey;->key:[B

    invoke-static {v5, p2}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v8, 0x0

    const/4 v5, 0x0

    monitor-exit v6

    goto :goto_0

    const/4 v0, 0x1

    const/4 v8, 0x3

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    const/4 v8, 0x4

    :cond_1
    const/4 v3, 0x2

    const/4 v8, 0x0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    const/4 v2, 0x0

    const/4 v8, 0x6

    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x4

    if-ne v3, v7, :cond_4

    const-string v5, "["

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "]:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-le v5, v7, :cond_4

    const/4 v8, 0x6

    const-string v5, "]:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lcom/jcraft/jsch/KnownHosts;->check(Ljava/lang/String;[B)I

    move-result v5

    goto :goto_0

    const/4 v7, 0x2

    :cond_4
    move v5, v3

    const/4 v8, 0x6

    goto :goto_0

    const/4 v0, 0x5
.end method

.method createHashedHostKey(Ljava/lang/String;[B)Lcom/jcraft/jsch/HostKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v1, 0x5

    const/4 v1, 0x1

    new-instance v0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;

    invoke-direct {v0, p0, p1, p2}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;-><init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;[B)V

    const/4 v1, 0x6

    invoke-virtual {v0}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->hash()V

    const/4 v1, 0x0

    return-object v0

    const/4 v1, 0x4
.end method

.method dump(Ljava/io/OutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x5

    const/4 v10, 0x1

    :try_start_0
    iget-object v9, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x3

    const/4 v5, 0x0

    :goto_0
    :try_start_1
    iget-object v8, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v5, v8, :cond_3

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v8, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jcraft/jsch/HostKey;

    move-object v0, v8

    check-cast v0, Lcom/jcraft/jsch/HostKey;

    move-object v3, v0

    const/4 v10, 0x1

    invoke-virtual {v3}, Lcom/jcraft/jsch/HostKey;->getMarker()Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x2

    invoke-virtual {v3}, Lcom/jcraft/jsch/HostKey;->getHost()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x4

    invoke-virtual {v3}, Lcom/jcraft/jsch/HostKey;->getType()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x6

    invoke-virtual {v3}, Lcom/jcraft/jsch/HostKey;->getComment()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x1

    const-string v8, "UNKNOWN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v10, 0x2

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    const/4 v10, 0x1

    sget-object v8, Lcom/jcraft/jsch/KnownHosts;->cr:[B

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    const/4 v10, 0x4

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    const/4 v5, 0x3

    const/4 v10, 0x1

    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v10, 0x3

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    const/4 v10, 0x6

    sget-object v8, Lcom/jcraft/jsch/KnownHosts;->space:[B

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    const/4 v10, 0x1

    :cond_1
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    const/4 v10, 0x5

    sget-object v8, Lcom/jcraft/jsch/KnownHosts;->space:[B

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    const/4 v10, 0x7

    invoke-static {v7}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    const/4 v10, 0x5

    sget-object v8, Lcom/jcraft/jsch/KnownHosts;->space:[B

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    const/4 v10, 0x7

    invoke-virtual {v3}, Lcom/jcraft/jsch/HostKey;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    const/4 v10, 0x1

    if-eqz v1, :cond_2

    const/4 v10, 0x3

    sget-object v8, Lcom/jcraft/jsch/KnownHosts;->space:[B

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    const/4 v10, 0x7

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    const/4 v10, 0x5

    :cond_2
    sget-object v8, Lcom/jcraft/jsch/KnownHosts;->cr:[B

    invoke-virtual {p1, v8}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1

    const/4 v3, 0x7

    const/4 v10, 0x5

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v10, 0x7

    :catch_0
    move-exception v2

    const/4 v10, 0x5

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v8, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/4 v10, 0x6

    :goto_2
    nop

    return-void

    const/4 v10, 0x0

    const/4 v10, 0x1

    :cond_3
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    const/4 v7, 0x0
.end method

.method public getHostKey()[Lcom/jcraft/jsch/HostKey;
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/jcraft/jsch/KnownHosts;->getHostKey(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;

    move-result-object v0

    return-object v0

    const/4 v2, 0x2
.end method

.method public getHostKey(Ljava/lang/String;Ljava/lang/String;)[Lcom/jcraft/jsch/HostKey;
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    iget-object v7, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    monitor-enter v7

    const/4 v9, 0x3

    const/4 v0, 0x0

    const/4 v9, 0x5

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v3, v6, :cond_3

    const/4 v9, 0x2

    iget-object v6, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/HostKey;

    const/4 v9, 0x7

    iget v6, v2, Lcom/jcraft/jsch/HostKey;->type:I

    if-ne v6, v8, :cond_1

    const/4 v9, 0x4

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    const/4 v3, 0x4

    const/4 v9, 0x4

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v2, p1}, Lcom/jcraft/jsch/HostKey;->isMatched(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {v2}, Lcom/jcraft/jsch/HostKey;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v9, 0x2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    const/4 v6, 0x4

    const/4 v9, 0x2

    :cond_3
    if-nez v0, :cond_4

    const/4 v1, 0x0

    monitor-exit v7

    const/4 v9, 0x3

    :goto_2
    return-object v1

    const/4 v6, 0x3

    const/4 v9, 0x6

    :cond_4
    new-array v1, v0, [Lcom/jcraft/jsch/HostKey;

    const/4 v9, 0x3

    const/4 v4, 0x0

    const/4 v9, 0x4

    const/4 v3, 0x0

    move v5, v4

    :goto_3
    iget-object v6, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v3, v6, :cond_7

    const/4 v9, 0x6

    iget-object v6, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/HostKey;

    const/4 v9, 0x1

    iget v6, v2, Lcom/jcraft/jsch/HostKey;->type:I

    if-ne v6, v8, :cond_5

    move v4, v5

    const/4 v9, 0x2

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    goto :goto_3

    const/4 v3, 0x7

    const/4 v9, 0x2

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {v2, p1}, Lcom/jcraft/jsch/HostKey;->isMatched(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz p2, :cond_6

    invoke-virtual {v2}, Lcom/jcraft/jsch/HostKey;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v9, 0x2

    :cond_6
    add-int/lit8 v4, v5, 0x1

    aput-object v2, v1, v5

    goto :goto_4

    const/4 v1, 0x5

    const/4 v9, 0x3

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    const/4 v9, 0x2

    :cond_7
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    const/4 v7, 0x7

    :cond_8
    move v4, v5

    goto :goto_4

    const/4 v6, 0x5
.end method

.method getKnownHostsFile()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->known_hosts:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x5
.end method

.method public getKnownHostsRepositoryID()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->known_hosts:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x6
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jcraft/jsch/KnownHosts;->remove(Ljava/lang/String;Ljava/lang/String;[B)V

    const/4 v1, 0x7

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public remove(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 8

    const/4 v7, 0x1

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    monitor-enter v6

    const/4 v7, 0x3

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jcraft/jsch/HostKey;

    move-object v0, v5

    check-cast v0, Lcom/jcraft/jsch/HostKey;

    move-object v1, v0

    const/4 v7, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/HostKey;->isMatched(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Lcom/jcraft/jsch/HostKey;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p3, :cond_0

    iget-object v5, v1, Lcom/jcraft/jsch/HostKey;->key:[B

    invoke-static {p3, v5}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v7, 0x7

    :cond_0
    invoke-virtual {v1}, Lcom/jcraft/jsch/HostKey;->getHost()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x5

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    instance-of v5, v1, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;

    if-eqz v5, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;->isHashed()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v7, 0x1

    :cond_1
    iget-object v5, p0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v5, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v7, 0x3

    :goto_1
    const/4 v4, 0x1

    const/4 v7, 0x5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    const/4 v0, 0x2

    const/4 v7, 0x0

    :cond_3
    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/KnownHosts;->deleteSubString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/jcraft/jsch/HostKey;->host:Ljava/lang/String;

    goto :goto_1

    const/4 v3, 0x6

    const/4 v7, 0x1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_4
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x3

    if-eqz v4, :cond_5

    const/4 v7, 0x6

    :try_start_2
    invoke-virtual {p0}, Lcom/jcraft/jsch/KnownHosts;->sync()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v7, 0x3

    :cond_5
    :goto_2
    nop

    return-void

    const/4 v3, 0x1

    const/4 v7, 0x2

    :catch_0
    move-exception v5

    goto :goto_2

    const/4 v2, 0x6
.end method

.method setKnownHosts(Ljava/io/InputStream;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V

    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v13, 0x0

    move-object/from16 v14, p1

    const/16 v18, 0x0

    const/16 v3, 0x400

    :try_start_0
    new-array v9, v3, [B

    const/4 v10, 0x0

    :goto_0
    const/4 v10, 0x0

    move v11, v10

    :cond_0
    :goto_1
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v16

    const/4 v3, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_1

    if-nez v11, :cond_2

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    if-eqz v13, :cond_27

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    const-string v7, "KnownHosts: invalid format"

    invoke-direct {v3, v7}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v12

    instance-of v3, v12, Lcom/jcraft/jsch/JSchException;

    if-eqz v3, :cond_25

    check-cast v12, Lcom/jcraft/jsch/JSchException;

    throw v12

    :cond_1
    const/16 v3, 0xd

    move/from16 v0, v16

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    move/from16 v0, v16

    if-ne v0, v3, :cond_4

    :cond_2
    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v0, v11, :cond_7

    :try_start_1
    aget-byte v15, v9, v16

    const/16 v3, 0x20

    if-eq v15, v3, :cond_3

    const/16 v3, 0x9

    if-ne v15, v3, :cond_6

    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    const/4 v1, 0x2

    :cond_4
    array-length v3, v9

    if-gt v3, v11, :cond_5

    const/16 v3, 0x2800

    if-gt v11, v3, :cond_2

    array-length v3, v9

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    move-object/from16 v19, v0

    const/4 v3, 0x0

    const/4 v7, 0x0

    array-length v0, v9

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v9, v3, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v9, v19

    :cond_5
    add-int/lit8 v10, v11, 0x1

    move/from16 v0, v16

    int-to-byte v3, v0

    aput-byte v3, v9, v11

    move v11, v10

    goto :goto_1

    const/4 v1, 0x6

    :cond_6
    const/16 v3, 0x23

    if-ne v15, v3, :cond_7

    const/4 v3, 0x0

    invoke-static {v9, v3, v11}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/jcraft/jsch/KnownHosts;->addInvalidLine(Ljava/lang/String;)V

    move v10, v11

    goto :goto_0

    const/4 v11, 0x3

    :cond_7
    move/from16 v0, v16

    if-lt v0, v11, :cond_8

    const/4 v3, 0x0

    invoke-static {v9, v3, v11}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/jcraft/jsch/KnownHosts;->addInvalidLine(Ljava/lang/String;)V

    move v10, v11

    goto/16 :goto_0

    const/4 v4, 0x1

    :cond_8
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    move/from16 v17, v16

    :goto_3
    move/from16 v0, v17

    if-ge v0, v11, :cond_2c

    add-int/lit8 v16, v17, 0x1

    aget-byte v15, v9, v17

    const/16 v3, 0x20

    if-eq v15, v3, :cond_9

    const/16 v3, 0x9

    if-ne v15, v3, :cond_b

    :cond_9
    :goto_4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v16

    if-ge v0, v11, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    const/4 v3, 0x0

    invoke-static {v9, v3, v11}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/jcraft/jsch/KnownHosts;->addInvalidLine(Ljava/lang/String;)V

    move v10, v11

    goto/16 :goto_0

    const/4 v7, 0x7

    :cond_b
    int-to-char v3, v15

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move/from16 v17, v16

    goto :goto_3

    const/4 v5, 0x2

    :cond_c
    :goto_5
    move/from16 v0, v16

    if-ge v0, v11, :cond_e

    aget-byte v15, v9, v16

    const/16 v3, 0x20

    if-eq v15, v3, :cond_d

    const/16 v3, 0x9

    if-ne v15, v3, :cond_e

    :cond_d
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    const/4 v7, 0x3

    :cond_e
    const-string v4, ""

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x40

    if-ne v3, v7, :cond_14

    move-object v4, v5

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    move/from16 v17, v16

    :goto_6
    move/from16 v0, v17

    if-ge v0, v11, :cond_2b

    add-int/lit8 v16, v17, 0x1

    aget-byte v15, v9, v17

    const/16 v3, 0x20

    if-eq v15, v3, :cond_f

    const/16 v3, 0x9

    if-ne v15, v3, :cond_11

    :cond_f
    :goto_7
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, v16

    if-ge v0, v11, :cond_10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_12

    :cond_10
    const/4 v3, 0x0

    invoke-static {v9, v3, v11}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/jcraft/jsch/KnownHosts;->addInvalidLine(Ljava/lang/String;)V

    move v10, v11

    goto/16 :goto_0

    const/4 v14, 0x4

    :cond_11
    int-to-char v3, v15

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move/from16 v17, v16

    goto :goto_6

    const/4 v12, 0x6

    :cond_12
    :goto_8
    move/from16 v0, v16

    if-ge v0, v11, :cond_14

    aget-byte v15, v9, v16

    const/16 v3, 0x20

    if-eq v15, v3, :cond_13

    const/16 v3, 0x9

    if-ne v15, v3, :cond_14

    :cond_13
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    const/4 v1, 0x4

    :cond_14
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v6, -0x1

    move/from16 v17, v16

    :goto_9
    move/from16 v0, v17

    if-ge v0, v11, :cond_2a

    add-int/lit8 v16, v17, 0x1

    aget-byte v15, v9, v17

    const/16 v3, 0x20

    if-eq v15, v3, :cond_15

    const/16 v3, 0x9

    if-ne v15, v3, :cond_16

    :cond_15
    :goto_a
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "ssh-dss"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v6, 0x1

    :goto_b
    move/from16 v0, v16

    if-lt v0, v11, :cond_19

    const/4 v3, 0x0

    invoke-static {v9, v3, v11}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/jcraft/jsch/KnownHosts;->addInvalidLine(Ljava/lang/String;)V

    move v10, v11

    goto/16 :goto_0

    const/4 v0, 0x4

    :cond_16
    int-to-char v3, v15

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move/from16 v17, v16

    goto :goto_9

    const/4 v9, 0x4

    :cond_17
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "ssh-rsa"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v6, 0x2

    goto :goto_b

    const/4 v11, 0x0

    :cond_18
    move/from16 v16, v11

    goto :goto_b

    const/4 v9, 0x5

    :cond_19
    :goto_c
    move/from16 v0, v16

    if-ge v0, v11, :cond_1b

    aget-byte v15, v9, v16

    const/16 v3, 0x20

    if-eq v15, v3, :cond_1a

    const/16 v3, 0x9

    if-ne v15, v3, :cond_1b

    :cond_1a
    add-int/lit8 v16, v16, 0x1

    goto :goto_c

    const/4 v13, 0x1

    :cond_1b
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    move/from16 v17, v16

    :goto_d
    move/from16 v0, v17

    if-ge v0, v11, :cond_29

    add-int/lit8 v16, v17, 0x1

    aget-byte v15, v9, v17

    const/16 v3, 0xd

    if-ne v15, v3, :cond_1c

    move/from16 v17, v16

    goto :goto_d

    const/4 v2, 0x7

    :cond_1c
    const/16 v3, 0xa

    if-ne v15, v3, :cond_1e

    :cond_1d
    :goto_e
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1f

    const/4 v3, 0x0

    invoke-static {v9, v3, v11}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/jcraft/jsch/KnownHosts;->addInvalidLine(Ljava/lang/String;)V

    move v10, v11

    goto/16 :goto_0

    const/4 v1, 0x6

    :cond_1e
    const/16 v3, 0x20

    if-eq v15, v3, :cond_1d

    const/16 v3, 0x9

    if-eq v15, v3, :cond_1d

    int-to-char v3, v15

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move/from16 v17, v16

    goto :goto_d

    const/4 v14, 0x6

    :cond_1f
    :goto_f
    move/from16 v0, v16

    if-ge v0, v11, :cond_21

    aget-byte v15, v9, v16

    const/16 v3, 0x20

    if-eq v15, v3, :cond_20

    const/16 v3, 0x9

    if-ne v15, v3, :cond_21

    :cond_20
    add-int/lit8 v16, v16, 0x1

    goto :goto_f

    const/4 v8, 0x3

    :cond_21
    const/4 v8, 0x0

    move/from16 v0, v16

    if-ge v0, v11, :cond_23

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    move/from16 v17, v16

    :goto_10
    move/from16 v0, v17

    if-ge v0, v11, :cond_28

    add-int/lit8 v16, v17, 0x1

    aget-byte v15, v9, v17

    const/16 v3, 0xd

    if-ne v15, v3, :cond_22

    move/from16 v17, v16

    goto :goto_10

    const/4 v9, 0x2

    :cond_22
    const/16 v3, 0xa

    if-ne v15, v3, :cond_24

    :goto_11
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_23
    const/4 v2, 0x0

    new-instance v2, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;

    invoke-static/range {v18 .. v18}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-static {v3, v7, v0}, Lcom/jcraft/jsch/Util;->fromBase64([BII)[B

    move-result-object v7

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/jcraft/jsch/KnownHosts$HashedHostKey;-><init>(Lcom/jcraft/jsch/KnownHosts;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jcraft/jsch/KnownHosts;->pool:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v10, v11

    goto/16 :goto_0

    const/4 v12, 0x5

    :cond_24
    int-to-char v3, v15

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v17, v16

    goto :goto_10

    const/4 v13, 0x7

    :cond_25
    instance-of v3, v12, Ljava/lang/Throwable;

    if-eqz v3, :cond_26

    new-instance v3, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v12}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_26
    new-instance v3, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_27
    nop

    return-void

    const/4 v4, 0x4

    :cond_28
    move/from16 v16, v17

    goto :goto_11

    const/4 v10, 0x5

    :cond_29
    move/from16 v16, v17

    goto/16 :goto_e

    const/4 v9, 0x3

    :cond_2a
    move/from16 v16, v17

    goto/16 :goto_a

    const/4 v7, 0x2

    :cond_2b
    move/from16 v16, v17

    goto/16 :goto_7

    const/4 v14, 0x0

    :cond_2c
    move/from16 v16, v17

    goto/16 :goto_4

    const/4 v8, 0x7
.end method

.method setKnownHosts(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v2, 0x4

    :try_start_0
    iput-object p1, p0, Lcom/jcraft/jsch/KnownHosts;->known_hosts:Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->checkTilde(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->setKnownHosts(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    nop

    return-void

    const/4 v2, 0x2

    const/4 v2, 0x3

    :catch_0
    move-exception v1

    goto :goto_0

    const/4 v2, 0x1
.end method

.method protected sync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->known_hosts:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/KnownHosts;->known_hosts:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->sync(Ljava/lang/String;)V

    const/4 v1, 0x7

    :cond_0
    nop

    return-void

    const/4 v1, 0x2
.end method

.method protected declared-synchronized sync(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v2, 0x1

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v2, 0x2

    :goto_0
    monitor-exit p0

    nop

    return-void

    const/4 v0, 0x3

    const/4 v2, 0x7

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-static {p1}, Lcom/jcraft/jsch/Util;->checkTilde(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x7

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/KnownHosts;->dump(Ljava/io/OutputStream;)V

    const/4 v2, 0x3

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    const/4 v1, 0x4

    const/4 v2, 0x1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
