.class public Lcom/henrythompson/quoda/filesystem/SFTPServer;
.super Lcom/henrythompson/quoda/filesystem/Server;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;
    }
.end annotation


# instance fields
.field private mAuthMethod:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

.field private mChannel:Lcom/jcraft/jsch/ChannelSftp;

.field private mJsch:Lcom/jcraft/jsch/JSch;

.field private mKeyPassphrase:Ljava/lang/String;

.field private mKeyPassphraseSaved:Z

.field private mKeyPath:Ljava/lang/String;

.field private mSession:Lcom/jcraft/jsch/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x1

    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    const/4 v2, 0x2

    nop

    return-void

    const/4 v1, 0x3
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/Server;-><init>()V

    const/4 v1, 0x2

    sget-object v0, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->PASSWORD:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mAuthMethod:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x4
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/filesystem/Server;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v0, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->PASSWORD:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mAuthMethod:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    const/4 v1, 0x6

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public canFilesWithSameNameExistInFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Z
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x7

    const/4 v0, 0x0

    return v0

    const/4 v1, 0x2
.end method

.method public connectAndLogIn()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;,
            Lcom/henrythompson/quoda/filesystem/FilesystemException;
        }
    .end annotation

    const/4 v9, 0x4

    const/4 v9, 0x7

    new-instance v5, Lcom/jcraft/jsch/JSch;

    invoke-direct {v5}, Lcom/jcraft/jsch/JSch;-><init>()V

    iput-object v5, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mJsch:Lcom/jcraft/jsch/JSch;

    const/4 v9, 0x6

    :try_start_0
    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mJsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {v5}, Lcom/jcraft/jsch/JSch;->removeAllIdentity()V
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v9, 0x7

    :try_start_1
    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mJsch:Lcom/jcraft/jsch/JSch;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getPort()I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/jcraft/jsch/JSch;->getSession(Ljava/lang/String;Ljava/lang/String;I)Lcom/jcraft/jsch/Session;

    move-result-object v5

    iput-object v5, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mSession:Lcom/jcraft/jsch/Session;

    const/4 v9, 0x7

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mSession:Lcom/jcraft/jsch/Session;

    const-string v6, "StrictHostKeyChecking"

    const-string v7, "no"

    invoke-virtual {v5, v6, v7}, Lcom/jcraft/jsch/Session;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mAuthMethod:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    sget-object v6, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->PASSWORD:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    if-ne v5, v6, :cond_2

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getPassword()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v9, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v9, 0x4

    new-instance v5, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    invoke-direct {v5, p0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v5
    :try_end_1
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v9, 0x5

    :catch_0
    move-exception v0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v9, 0x2

    new-instance v5, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create new JSch session due to JSchException with message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSchException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to connect to server: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSchException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    const/4 v9, 0x5

    :catch_1
    move-exception v0

    const/4 v9, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v9, 0x5

    new-instance v5, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to remove all identities because of JSchException with message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSchException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error applying login details: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSchException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    const/4 v9, 0x7

    :cond_0
    :try_start_2
    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mSession:Lcom/jcraft/jsch/Session;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/Session;->setPassword(Ljava/lang/String;)V

    const/4 v9, 0x3

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mSession:Lcom/jcraft/jsch/Session;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Session;->connect()V

    const/4 v9, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mSession:Lcom/jcraft/jsch/Session;

    const-string v6, "sftp"

    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/Session;->openChannel(Ljava/lang/String;)Lcom/jcraft/jsch/Channel;

    move-result-object v5

    check-cast v5, Lcom/jcraft/jsch/ChannelSftp;

    iput-object v5, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mChannel:Lcom/jcraft/jsch/ChannelSftp;

    const/4 v9, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mChannel:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v5}, Lcom/jcraft/jsch/ChannelSftp;->connect()V

    const/4 v9, 0x4

    nop

    return-void

    const/4 v9, 0x0

    const/4 v9, 0x5

    :cond_2
    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mAuthMethod:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    sget-object v6, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->KEY:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    if-ne v5, v6, :cond_1

    const/4 v9, 0x1

    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mKeyPath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v9, 0x5

    :cond_3
    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v9, 0x6

    new-instance v5, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v6, "Unable to create SFTP session as the Private Key file does not exist"

    const-string v7, "Private Key file does not exist!"

    invoke-direct {v5, v6, v7}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    const/4 v9, 0x2

    :cond_4
    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mJsch:Lcom/jcraft/jsch/JSch;

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mKeyPath:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/jcraft/jsch/KeyPair;->load(Lcom/jcraft/jsch/JSch;Ljava/lang/String;)Lcom/jcraft/jsch/KeyPair;

    move-result-object v3

    const/4 v9, 0x3

    invoke-virtual {v3}, Lcom/jcraft/jsch/KeyPair;->isEncrypted()Z

    move-result v1

    const/4 v9, 0x3

    if-eqz v1, :cond_7

    const/4 v9, 0x0

    const-string v5, "SFTPServer"

    const-string v6, "Key is encrypted"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getKeyPassphrase()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    const/4 v9, 0x3

    const-string v5, "SFTPServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Passphrase not null - it is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getKeyPassphrase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getKeyPassphrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/jcraft/jsch/KeyPair;->decrypt(Ljava/lang/String;)Z

    move-result v4

    const/4 v9, 0x5

    if-eqz v4, :cond_5

    const/4 v9, 0x4

    const-string v5, "SFTPServer"

    const-string v6, "Passphrase correct"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v9, 0x6

    :try_start_3
    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mJsch:Lcom/jcraft/jsch/JSch;

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mKeyPath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getKeyPassphrase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/jcraft/jsch/JSch;->addIdentity(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    const/4 v9, 0x6

    const/4 v9, 0x2

    :catch_2
    move-exception v0

    const/4 v9, 0x5

    :try_start_4
    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v9, 0x4

    new-instance v5, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v6, "JSchException when trying to apply key and passphrase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading private key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/jcraft/jsch/JSchException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    const/4 v9, 0x2

    :cond_5
    const-string v5, "SFTPServer"

    const-string v6, "Passphrase incorrect"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v9, 0x5

    new-instance v5, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    invoke-direct {v5, p0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v5

    const/4 v9, 0x2

    :cond_6
    const-string v5, "SFTPServer"

    const-string v6, "Passphrase null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v9, 0x5

    new-instance v5, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    invoke-direct {v5, p0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v5
    :try_end_4
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v9, 0x4

    :cond_7
    :try_start_5
    const-string v5, "SFTPServer"

    const-string v6, "Key is not encrypted"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mJsch:Lcom/jcraft/jsch/JSch;

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mKeyPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/jcraft/jsch/JSch;->addIdentity(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    const/4 v4, 0x7

    const/4 v9, 0x2

    :catch_3
    move-exception v0

    const/4 v9, 0x2

    :try_start_6
    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v9, 0x4

    new-instance v5, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    invoke-direct {v5, p0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v5
    :try_end_6
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_6 .. :try_end_6} :catch_0
.end method

.method public createNewFile(Ljava/util/ArrayList;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;Z)V
    .locals 9
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

    const/4 v8, 0x2

    const/4 v8, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->connectAndLogIn()V

    const/4 v8, 0x4

    new-instance v3, Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p4, v4}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v8, 0x0

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

    const/4 v8, 0x5

    invoke-virtual {v3, p3}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v8, 0x5

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->isDir()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v8, 0x7

    :try_start_0
    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mChannel:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/ChannelSftp;->mkdir(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v8, 0x4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x6

    nop

    return-void

    const/4 v3, 0x3

    const/4 v8, 0x6

    :catch_0
    move-exception v0

    const/4 v8, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v8, 0x2

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SftpException when creating blank FTP folder with message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create folder "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    const/4 v8, 0x7

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

    const/4 v8, 0x6

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v8, 0x1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 v8, 0x5

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v8, 0x3

    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v8, 0x3

    :try_start_3
    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mChannel:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/io/InputStream;Ljava/lang/String;I)V

    const/4 v8, 0x3

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v8, 0x7

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    const/4 v3, 0x2

    const/4 v8, 0x3

    :catch_1
    move-exception v0

    const/4 v8, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v8, 0x2

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException when creating local blank FTP file to upload with message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    const/4 v8, 0x4

    :catch_2
    move-exception v0

    const/4 v8, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v8, 0x0

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException when creating FileInputStream for local blank FTP file to upload with message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    const/4 v8, 0x6

    :catch_3
    move-exception v0

    const/4 v8, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v8, 0x1

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SftpException when creating blank FTP file with message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    const/4 v8, 0x0

    :catch_4
    move-exception v0

    const/4 v8, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v8, 0x1

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException when creating blank FTP file with message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method public getAuthenticationMethod()Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mAuthMethod:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getDefaultLocation()Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x4

    new-instance v1, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getInitialDirectory()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v4, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v4, 0x1

    return-object v1

    const/4 v4, 0x3
.end method

.method public getKeyPassphrase()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mKeyPassphrase:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x5
.end method

.method public getKeyPath()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mKeyPath:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x6
.end method

.method public getLastVisitedLocation(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 7

    const/4 v6, 0x3

    const/4 v6, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v6, 0x7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "defaultpath_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getUuid()Ljava/lang/String;

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

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getInitialDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v6, 0x4

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v6, 0x5

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v6, 0x0

    return-object v0

    const/4 v6, 0x3
.end method

.method public getParentFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 5

    const/4 v4, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->hasParent()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x7

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x6

    new-instance v1, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v4, 0x5

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v4, 0x1

    :goto_0
    return-object v1

    const/4 v4, 0x3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    const/4 v4, 0x2
.end method

.method public getProtocolPrefix()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x3

    const-string v0, "sftp://"

    return-object v0

    const/4 v1, 0x1
.end method

.method public isKeyPassphraseSaved()Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x7

    iget-boolean v0, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mKeyPassphraseSaved:Z

    return v0

    const/4 v0, 0x4
.end method

.method public listFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Ljava/util/ArrayList;
    .locals 11
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

    const/4 v10, 0x6

    const/4 v10, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->connectAndLogIn()V

    const/4 v10, 0x5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x1

    :try_start_0
    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mChannel:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jcraft/jsch/ChannelSftp;->ls(Ljava/lang/String;)Ljava/util/Vector;
    :try_end_0
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    const/4 v10, 0x6

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    const/4 v10, 0x2

    invoke-virtual {v3, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    const/4 v10, 0x0

    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getAttrs()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getFilename()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getFilename()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".."

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v10, 0x6

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    const/4 v4, 0x0

    const/4 v10, 0x3

    :catch_0
    move-exception v0

    const/4 v10, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v10, 0x7

    new-instance v6, Lcom/henrythompson/quoda/filesystem/FolderNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SftpException when listing files from SftpServer with message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Folder "

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

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/henrythompson/quoda/filesystem/FolderNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    const/4 v10, 0x1

    :cond_1
    new-instance v2, Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getAttrs()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z

    move-result v6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v10, 0x6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getFilename()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v10, 0x2

    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getFilename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v10, 0x7

    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;->getAttrs()Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/henrythompson/quoda/filesystem/FileObject;->setSize(J)V

    const/4 v10, 0x7

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    const/4 v0, 0x3

    const/4 v10, 0x5

    :cond_2
    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v10, 0x3

    return-object v4

    const/4 v1, 0x2
.end method

.method public logOutAndDisconnect()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mSession:Lcom/jcraft/jsch/Session;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mSession:Lcom/jcraft/jsch/Session;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Session;->disconnect()V

    const/4 v2, 0x4

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mChannel:Lcom/jcraft/jsch/ChannelSftp;

    if-eqz v0, :cond_1

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mChannel:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp;->disconnect()V

    const/4 v2, 0x0

    :cond_1
    iput-object v1, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mJsch:Lcom/jcraft/jsch/JSch;

    const/4 v2, 0x2

    iput-object v1, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mChannel:Lcom/jcraft/jsch/ChannelSftp;

    const/4 v2, 0x1

    iput-object v1, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mSession:Lcom/jcraft/jsch/Session;

    const/4 v2, 0x2

    nop

    return-void

    const/4 v2, 0x4
.end method

.method protected onServerConfigurationChanged()V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public openFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->connectAndLogIn()V

    const/4 v11, 0x3

    const/4 v2, 0x0

    const/4 v11, 0x6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/henrythompson/quoda/Directories;->DIRECTORY_DATA:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x5

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x7

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v11, 0x3

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    const/4 v11, 0x4

    :cond_0
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    const/4 v11, 0x3

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x6

    :try_start_1
    iget-object v7, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mChannel:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v11, 0x4

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x3

    if-eqz v5, :cond_1

    const/4 v11, 0x3

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v11, 0x3

    :cond_1
    :goto_0
    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v7

    const-string v8, "local"

    invoke-virtual {v7, v8}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;

    const/4 v11, 0x3

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v7, 0x0

    const-string v8, "local"

    invoke-direct {v4, v7, v8}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v11, 0x7

    invoke-virtual {v4, v2}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v11, 0x2

    invoke-virtual {v4, v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v11, 0x6

    invoke-virtual {v1, p1, v4, p3}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->openFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V

    const/4 v11, 0x3

    invoke-virtual {p1, p2}, Lcom/henrythompson/quoda/document/Document;->setFileObject(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v11, 0x2

    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lcom/henrythompson/quoda/document/Document;->setIsSaved(Z)V

    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    const/4 v11, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v11, 0x1

    nop

    return-void

    const/4 v9, 0x5

    const/4 v11, 0x3

    :catch_0
    move-exception v0

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v11, 0x4

    new-instance v7, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to open SFTP file due to local IOException with message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to open file from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    const/4 v11, 0x1

    :catch_1
    move-exception v0

    const/4 v11, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v11, 0x6

    new-instance v7, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v8, "Unable to retrieve file from SFTP"

    const-string v9, "Unable to retrieve file from server"

    invoke-direct {v7, v8, v9}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    const/4 v11, 0x2

    :catch_2
    move-exception v0

    const/4 v11, 0x0

    const-string v7, "SFTPServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to close FileOutputStream when opening file with message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    const/4 v4, 0x1
.end method

.method public requiresInternetConnection()Z
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    const/4 v0, 0x1

    return v0

    const/4 v0, 0x2
.end method

.method public saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    const/4 v10, 0x4

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->connectAndLogIn()V

    const/4 v10, 0x4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/henrythompson/quoda/Directories;->DIRECTORY_DATA:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x3

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x7

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v10, 0x5

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const/4 v10, 0x6

    :cond_0
    new-instance v4, Lcom/henrythompson/quoda/filesystem/FileObject;

    const-string v6, "local"

    invoke-direct {v4, v8, v6}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v10, 0x2

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v10, 0x6

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v10, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v6

    const-string v7, "local"

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v2

    check-cast v2, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;

    const/4 v10, 0x3

    invoke-virtual {v2, p1, v4}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v10, 0x0

    invoke-virtual {p1, p2}, Lcom/henrythompson/quoda/document/Document;->setFileObject(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v10, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/henrythompson/quoda/document/Document;->setIsSaved(Z)V

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x2

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x2

    :try_start_1
    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mChannel:Lcom/jcraft/jsch/ChannelSftp;

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v7, v8}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/io/InputStream;Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/jcraft/jsch/SftpException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v10, 0x3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v10, 0x6

    nop

    return-void

    const/4 v0, 0x5

    const/4 v10, 0x6

    :catch_0
    move-exception v0

    const/4 v10, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v10, 0x4

    new-instance v6, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to save FTP file as creating a FileInputStream for the local file copy threw a FileNotFoundException with message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to upload file to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    const/4 v10, 0x6

    :catch_1
    move-exception v0

    const/4 v10, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->logOutAndDisconnect()V

    const/4 v10, 0x4

    new-instance v6, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to save FTP file due to IOException when storing file with message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to upload file to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getDisplayName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6
.end method

.method public saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    const/4 v4, 0x6

    const/4 v4, 0x7

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v4, 0x0

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

    const/4 v4, 0x0

    invoke-virtual {v0, p3}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->setSize(J)V

    const/4 v4, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v4, 0x6

    nop

    return-void

    const/4 v1, 0x6
.end method

.method public setAuthenticationMethod(Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mAuthMethod:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setKeyPassphrase(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mKeyPassphrase:Ljava/lang/String;

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public setKeyPassphraseSaved(Z)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x4

    iput-boolean p1, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mKeyPassphraseSaved:Z

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public setKeyPath(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/SFTPServer;->mKeyPath:Ljava/lang/String;

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setLastVisitedLocation(Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v3, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultpath_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getUuid()Ljava/lang/String;

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

    const/4 v3, 0x3

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v3, 0x0

    nop

    return-void

    const/4 v3, 0x0
.end method

.method protected showLoginDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x4

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;-><init>(Landroid/content/Context;Lcom/henrythompson/quoda/filesystem/Server;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->show()Landroid/app/AlertDialog;

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public usesFilepaths()Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    const/4 v0, 0x1

    return v0

    const/4 v1, 0x5
.end method
