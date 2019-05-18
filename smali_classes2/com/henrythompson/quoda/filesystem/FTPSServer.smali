.class public Lcom/henrythompson/quoda/filesystem/FTPSServer;
.super Lcom/henrythompson/quoda/filesystem/Server;


# instance fields
.field private mClient:Lorg/apache/commons/net/ftp/FTPSClient;

.field private mContext:Landroid/content/Context;

.field private mImplicit:Z

.field private mIsFirstListAttempt:Z


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    nop

    return-void

    const/4 v1, 0x6
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x3

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/filesystem/Server;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mIsFirstListAttempt:Z

    const/4 v1, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x6
.end method


# virtual methods
.method public canFilesWithSameNameExistInFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x7

    const/4 v0, 0x0

    return v0

    const/4 v1, 0x6
.end method

.method public connectAndLogIn()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    const/4 v14, 0x7

    const v13, 0x7f0d0184

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v14, 0x7

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    if-nez v3, :cond_0

    const/4 v14, 0x0

    new-instance v3, Lorg/apache/commons/net/ftp/FTPSClient;

    iget-boolean v4, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mImplicit:Z

    invoke-direct {v3, v4}, Lorg/apache/commons/net/ftp/FTPSClient;-><init>(Z)V

    iput-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    const/4 v14, 0x7

    :cond_0
    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPSClient;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v14, 0x1

    :cond_1
    nop

    return-void

    const/4 v6, 0x4

    const/4 v14, 0x4

    :cond_2
    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->getPassword()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v14, 0x0

    new-instance v3, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v3

    const/4 v14, 0x5

    :cond_3
    const-string v3, "FTPSServer"

    const-string v4, "Creating new instance of FTPSClient"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    const/4 v2, -0x1

    const/4 v14, 0x6

    :try_start_0
    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Lorg/apache/commons/net/ftp/FTPSClient;->setConnectTimeout(I)V

    const/4 v14, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->getPort()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/net/ftp/FTPSClient;->connect(Ljava/lang/String;I)V

    const/4 v14, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPSClient;->getReplyCode()I

    move-result v2

    const/4 v14, 0x5

    invoke-static {v2}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v14, 0x3

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    const/4 v14, 0x0

    new-instance v3, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v4, "Failed to connect to FTPS server"

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0184

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v14, 0x3

    :catch_0
    move-exception v0

    const/4 v14, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->logOutAndDisconnect()V

    const/4 v14, 0x3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    const/4 v14, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0183

    new-array v5, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x1

    :goto_0
    new-instance v3, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to connect to FTPS server due to SocketError with message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    const/4 v14, 0x5

    :cond_4
    const/4 v2, -0x1

    const/4 v14, 0x2

    :try_start_1
    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->getPassword()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/net/ftp/FTPSClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v14, 0x7

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    const/4 v14, 0x1

    new-instance v3, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v3
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v14, 0x0

    :catch_1
    move-exception v0

    const/4 v14, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->logOutAndDisconnect()V

    const/4 v14, 0x6

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    const/4 v14, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0183

    new-array v5, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x2

    :goto_1
    new-instance v3, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to connect to FTPS server due to IOError with message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    const/4 v14, 0x1

    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPSClient;->getReplyCode()I

    move-result v2

    const/4 v14, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPSClient;->enterLocalPassiveMode()V

    const/4 v14, 0x1

    invoke-static {v2}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v14, 0x5

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    const/4 v14, 0x4

    new-instance v3, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v3
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v14, 0x7

    :cond_6
    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mContext:Landroid/content/Context;

    new-array v4, v12, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-virtual {v3, v13, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    const/4 v1, 0x1

    const/4 v14, 0x5

    :cond_7
    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mContext:Landroid/content/Context;

    new-array v4, v12, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-virtual {v3, v13, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    const/4 v9, 0x7
.end method

.method public createNewFile(Ljava/util/ArrayList;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            ">;",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->connectAndLogIn()V

    new-instance v3, Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p4, v4}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->isDir()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/net/ftp/FTPSClient;->makeDirectory(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v5, "Failed to create FTPS folder"

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0179

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->logOutAndDisconnect()V

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException when creating blank FTPS folder with message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0179

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/henrythompson/quoda/Directories;->DIRECTORY_DATA:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lorg/apache/commons/net/ftp/FTPSClient;->storeFile(Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v5, "Failed to create FTPS file"

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0177

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->logOutAndDisconnect()V

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException when creating blank FTPS file with message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0177

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    :catch_2
    move-exception v0

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException when creating local blank FTPS file to upload with message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0177

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    :catch_3
    move-exception v0

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException when creating FileInputStream for local blank FTPS file to upload with message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0177

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->logOutAndDisconnect()V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    return-void

    const/4 v9, 0x2
.end method

.method public getDefaultLocation()Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 5

    const/4 v4, 0x2

    const/4 v4, 0x5

    new-instance v1, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->getInitialDirectory()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x7

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v4, 0x4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v4, 0x6

    return-object v1

    const/4 v1, 0x6
.end method

.method public getLastVisitedLocation(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 7

    const/4 v6, 0x0

    const/4 v6, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v6, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "defaultpath_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->getInitialDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x7

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v6, 0x5

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v6, 0x7

    return-object v0

    const/4 v5, 0x7
.end method

.method public getParentFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 7

    const/4 v6, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->hasParent()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v6, 0x7

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const/4 v6, 0x6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x6

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v6, 0x5

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v6, 0x7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v6, 0x4

    :goto_0
    return-object v0

    const/4 v1, 0x6

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v2, 0x3
.end method

.method public getProtocolPrefix()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    const-string v0, "ftps://"

    return-object v0

    const/4 v0, 0x4
.end method

.method public isImplicit()Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mImplicit:Z

    return v0

    const/4 v0, 0x2
.end method

.method public listFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->connectAndLogIn()V

    :try_start_0
    iget-object v8, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/commons/net/ftp/FTPSClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    iget-object v8, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    invoke-virtual {v8}, Lorg/apache/commons/net/ftp/FTPSClient;->getReplyCode()I

    move-result v8

    const/16 v9, 0x226

    if-ne v8, v9, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Directory "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " does not exist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/henrythompson/quoda/filesystem/FolderNotFoundException;

    invoke-direct {v8, v1, v1}, Lcom/henrythompson/quoda/filesystem/FolderNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->logOutAndDisconnect()V

    iget-boolean v8, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mIsFirstListAttempt:Z

    if-eqz v8, :cond_2

    iput-boolean v7, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mIsFirstListAttempt:Z

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->listFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_0
    return-object v3

    const/4 v13, 0x0

    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/commons/net/ftp/FTPSClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v8, v4

    :goto_1
    if-ge v7, v8, :cond_5

    aget-object v2, v4, v7

    new-instance v5, Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v9

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->getUuid()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPFile;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".."

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    const/4 v6, 0x0

    :cond_2
    iput-boolean v12, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mIsFirstListAttempt:Z

    new-instance v8, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to list directory due to IOException with message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mContext:Landroid/content/Context;

    const v11, 0x7f0d017c

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v9, v7}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    :cond_3
    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v6, "/"

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPFile;->getSize()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/henrythompson/quoda/filesystem/FileObject;->setSize(J)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    const/4 v4, 0x3

    :cond_5
    iput-boolean v12, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mIsFirstListAttempt:Z

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->logOutAndDisconnect()V

    goto/16 :goto_0

    const/4 v9, 0x1
.end method

.method public logOutAndDisconnect()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    :try_start_0
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPSClient;->logout()Z

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPSClient;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x4

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    const/4 v1, 0x0

    :cond_0
    nop

    return-void

    const/4 v0, 0x6

    const/4 v1, 0x6

    :catch_0
    move-exception v0

    goto :goto_0

    const/4 v0, 0x2
.end method

.method protected onServerConfigurationChanged()V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->logOutAndDisconnect()V

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public openFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->connectAndLogIn()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/henrythompson/quoda/Directories;->DIRECTORY_DATA:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_0
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Lorg/apache/commons/net/ftp/FTPSClient;->retrieveFile(Ljava/lang/String;Ljava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_0
    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v9

    const-string v10, "local"

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v4

    check-cast v4, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;

    new-instance v7, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v9, 0x0

    const-string v10, "local"

    invoke-direct {v7, v9, v10}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v7, v5}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v7, v1}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->openFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Lcom/henrythompson/quoda/document/Document;->setFileObject(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/henrythompson/quoda/document/Document;->setIsSaved(Z)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->logOutAndDisconnect()V

    nop

    return-void

    const/4 v7, 0x5

    :catch_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->logOutAndDisconnect()V

    new-instance v9, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to open FTPS file due to local IOException with message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mContext:Landroid/content/Context;

    const v12, 0x7f0d00f7

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    :catch_1
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->logOutAndDisconnect()V

    new-instance v9, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v10, "Unable to retrieve file from FTPS"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mContext:Landroid/content/Context;

    const v12, 0x7f0d00f7

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    :catch_2
    move-exception v2

    const-string v9, "FTPSServer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to close FileOutputStream when opening file with message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    const/4 v8, 0x5
.end method

.method public requiresInternetConnection()Z
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x4

    const/4 v0, 0x1

    return v0

    const/4 v0, 0x2
.end method

.method public saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->connectAndLogIn()V

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/henrythompson/quoda/Directories;->DIRECTORY_DATA:Ljava/io/File;

    const-string v9, "temp"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1, v5}, Lcom/henrythompson/quoda/utils/Utils;->encodeDocumentToDiskFormat(Lcom/henrythompson/quoda/document/Document;Ljava/io/OutputStream;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v8, Ljava/io/File;

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    iget-object v8, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/commons/net/ftp/FTPSClient;->changeWorkingDirectory(Ljava/lang/String;)Z

    iget-object v8, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    invoke-virtual {v8}, Lorg/apache/commons/net/ftp/FTPSClient;->getReplyCode()I

    move-result v8

    const/16 v9, 0x226

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mContext:Landroid/content/Context;

    const v9, 0x7f0d024e

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->logOutAndDisconnect()V

    new-instance v8, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    invoke-direct {v8, v1, v1}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catch_0
    move-exception v0

    move-object v2, v3

    move-object v4, v5

    :goto_0
    :try_start_3
    new-instance v8, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to upload file to Dropbox because of Exception with message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mContext:Landroid/content/Context;

    const v11, 0x7f0d00fc

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v8

    :goto_1
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_2
    :goto_3
    throw v8

    :cond_3
    :try_start_6
    iget-object v8, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mClient:Lorg/apache/commons/net/ftp/FTPSClient;

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v3}, Lorg/apache/commons/net/ftp/FTPSClient;->storeFile(Ljava/lang/String;Ljava/io/InputStream;)Z

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Lcom/henrythompson/quoda/document/Document;->setIsSaved(Z)V

    invoke-virtual {p1, p2}, Lcom/henrythompson/quoda/document/Document;->setFileObject(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/henrythompson/quoda/language/LanguagesManager;->getFileAssociations()Lcom/henrythompson/quoda/language/FileAssociations;

    move-result-object v8

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/henrythompson/quoda/language/FileAssociations;->getLanguageForFilename(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_4
    :goto_4
    if-eqz v5, :cond_5

    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_5
    :goto_5
    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->logOutAndDisconnect()V

    nop

    return-void

    const/4 v8, 0x0

    :catch_1
    move-exception v0

    const-string v8, "DropboxFilesystem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to close in input stream when saving due to IOException:\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    const/4 v3, 0x4

    :catch_2
    move-exception v0

    const-string v8, "DropboxFilesystem"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to close output stream when saving due to IOException:\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    const/4 v8, 0x4

    :catch_3
    move-exception v0

    const-string v9, "DropboxFilesystem"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to close in input stream when saving due to IOException:\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    const/4 v3, 0x4

    :catch_4
    move-exception v0

    const-string v9, "DropboxFilesystem"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to close output stream when saving due to IOException:\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    const/4 v1, 0x6

    :catchall_1
    move-exception v8

    move-object v4, v5

    goto/16 :goto_1

    const/4 v6, 0x7

    :catchall_2
    move-exception v8

    move-object v2, v3

    move-object v4, v5

    goto/16 :goto_1

    const/4 v12, 0x6

    :catch_5
    move-exception v0

    goto/16 :goto_0

    const/4 v6, 0x3

    :catch_6
    move-exception v0

    move-object v4, v5

    goto/16 :goto_0

    const/4 v2, 0x7
.end method

.method public saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    const/4 v4, 0x3

    const/4 v4, 0x5

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v4, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v0, p3}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->setSize(J)V

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v4, 0x0

    nop

    return-void

    const/4 v1, 0x1
.end method

.method public setIsImplicit(Z)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x4

    iput-boolean p1, p0, Lcom/henrythompson/quoda/filesystem/FTPSServer;->mImplicit:Z

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setLastVisitedLocation(Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x5

    const/4 v3, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v3, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultpath_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v3, 0x6

    nop

    return-void

    const/4 v2, 0x2
.end method

.method protected showLoginDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;-><init>(Landroid/content/Context;Lcom/henrythompson/quoda/filesystem/Server;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v1, 0x6

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->show()Landroid/app/AlertDialog;

    const/4 v1, 0x4

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public usesFilepaths()Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x2

    const/4 v0, 0x1

    return v0

    const/4 v0, 0x3
.end method
