.class public Lcom/henrythompson/quoda/filesystem/ServersDatabaseHandler;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static final AUTH_KEY:Ljava/lang/String; = "auth_key"

.field private static final AUTH_PASSWORD:Ljava/lang/String; = "auth_password"

.field private static final DATABASE_NAME:Ljava/lang/String; = "servers_database"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final KEY_ADDRESS:Ljava/lang/String; = "address"

.field private static final KEY_BASE_URL:Ljava/lang/String; = "base_url"

.field private static final KEY_ID:Ljava/lang/String; = "uuid"

.field private static final KEY_INITIAL_DIR:Ljava/lang/String; = "initial_directory"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_PASSWORD:Ljava/lang/String; = "password"

.field private static final KEY_PORT:Ljava/lang/String; = "port"

.field private static final KEY_SFTP_AUTHENTICATION_METHOD:Ljava/lang/String; = "sftp_auth_method"

.field private static final KEY_SFTP_KEY_PATH:Ljava/lang/String; = "sftp_key_path"

.field private static final KEY_SFTP_PASSPHRASE:Ljava/lang/String; = "sftp_passphrase"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_USERNAME:Ljava/lang/String; = "username"

.field private static final TABLE_SERVERS:Ljava/lang/String; = "servers"

.field private static final TYPE_FTP:Ljava/lang/String; = "ftp"

.field private static final TYPE_FTPES:Ljava/lang/String; = "ftpes"

.field private static final TYPE_FTPS:Ljava/lang/String; = "ftps"

.field private static final TYPE_SFTP:Ljava/lang/String; = "sftp"


# direct methods
.method constructor <init>()V
    .locals 5

    const/4 v4, 0x4

    const/4 v4, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "servers_database"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 v4, 0x0

    nop

    return-void

    const/4 v1, 0x5
.end method


# virtual methods
.method public addServer(Lcom/henrythompson/quoda/filesystem/Server;)V
    .locals 8

    const/4 v7, 0x5

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/ServersDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v7, 0x2

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/4 v7, 0x4

    instance-of v5, p1, Lcom/henrythompson/quoda/filesystem/FTPServer;

    if-eqz v5, :cond_2

    const/4 v7, 0x1

    const-string v3, "ftp"

    const/4 v7, 0x3

    :goto_0
    const-string v5, "uuid"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x5

    const-string v5, "type"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x4

    const-string v5, "name"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x7

    const-string v5, "address"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    const-string v5, "username"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x5

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->isPasswordSaved()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v7, 0x4

    const-string v5, "password"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x5

    :goto_1
    const-string v5, "port"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getPort()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v7, 0x1

    const-string v5, "initial_directory"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getInitialDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x2

    const-string v5, "base_url"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getBaseURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    instance-of v5, p1, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    if-eqz v5, :cond_0

    move-object v2, p1

    const/4 v7, 0x7

    check-cast v2, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    const/4 v7, 0x6

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getAuthenticationMethod()Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    move-result-object v5

    sget-object v6, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->PASSWORD:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    if-ne v5, v6, :cond_6

    const-string v0, "auth_password"

    const/4 v7, 0x3

    :goto_2
    const-string v5, "sftp_auth_method"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x3

    const-string v5, "sftp_key_path"

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getKeyPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->isKeyPassphraseSaved()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v7, 0x0

    const-string v5, "sftp_passphrase"

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getKeyPassphrase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x7

    :cond_0
    :goto_3
    const-string v5, "servers"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v7, 0x3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v7, 0x7

    :cond_1
    nop

    return-void

    const/4 v0, 0x4

    const/4 v7, 0x1

    :cond_2
    instance-of v5, p1, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    if-eqz v5, :cond_4

    move-object v5, p1

    const/4 v7, 0x4

    check-cast v5, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->isImplicit()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v7, 0x6

    const-string v3, "ftps"

    goto/16 :goto_0

    const/4 v0, 0x2

    const/4 v7, 0x6

    :cond_3
    const-string v3, "ftpes"

    goto/16 :goto_0

    const/4 v1, 0x0

    const/4 v7, 0x0

    :cond_4
    instance-of v5, p1, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    if-eqz v5, :cond_1

    const/4 v7, 0x0

    const-string v3, "sftp"

    goto/16 :goto_0

    const/4 v5, 0x4

    const/4 v7, 0x4

    :cond_5
    const-string v5, "password"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_1

    const/4 v5, 0x2

    const/4 v7, 0x1

    :cond_6
    const-string v0, "auth_key"

    goto :goto_2

    const/4 v7, 0x4

    const/4 v7, 0x6

    :cond_7
    const-string v5, "sftp_passphrase"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_3

    const/4 v4, 0x3
.end method

.method public deleteServer(Lcom/henrythompson/quoda/filesystem/Server;)V
    .locals 7

    const/4 v6, 0x6

    const/4 v6, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/ServersDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v6, 0x6

    const-string v1, "servers"

    const-string v2, "uuid = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x3

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v6, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v6, 0x1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v6, 0x5

    nop

    return-void

    const/4 v5, 0x5
.end method

.method public getAllServers()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/Server;",
            ">;"
        }
    .end annotation

    const/4 v14, 0x6

    const/4 v14, 0x6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    const-string v6, "SELECT  * FROM servers"

    const/4 v14, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/ServersDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v14, 0x1

    const/4 v12, 0x0

    invoke-virtual {v2, v6, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v14, 0x4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v14, 0x4

    :cond_0
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x2

    const/4 v12, 0x1

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x4

    const-string v12, "ftp"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const/4 v14, 0x2

    new-instance v7, Lcom/henrythompson/quoda/filesystem/FTPServer;

    invoke-direct {v7, v11}, Lcom/henrythompson/quoda/filesystem/FTPServer;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x0

    :goto_0
    const/4 v12, 0x2

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/henrythompson/quoda/filesystem/Server;->setDisplayName(Ljava/lang/String;)V

    const/4 v14, 0x7

    const/4 v12, 0x3

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/henrythompson/quoda/filesystem/Server;->setUsername(Ljava/lang/String;)V

    const/4 v14, 0x4

    const/4 v12, 0x4

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_9

    const/4 v14, 0x2

    :cond_1
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lcom/henrythompson/quoda/filesystem/Server;->setPasswordSaved(Z)Lcom/henrythompson/quoda/filesystem/Server;

    const/4 v14, 0x1

    :goto_1
    const/4 v12, 0x5

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/henrythompson/quoda/filesystem/Server;->setAddress(Ljava/lang/String;)V

    const/4 v14, 0x7

    const/4 v12, 0x6

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/henrythompson/quoda/filesystem/Server;->setBaseURL(Ljava/lang/String;)V

    const/4 v14, 0x5

    const/4 v12, 0x7

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-virtual {v7, v12}, Lcom/henrythompson/quoda/filesystem/Server;->setPort(I)V

    const/4 v14, 0x5

    const/16 v12, 0x8

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/henrythompson/quoda/filesystem/Server;->setInitialDirectory(Ljava/lang/String;)V

    const/4 v14, 0x7

    instance-of v12, v7, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    if-eqz v12, :cond_3

    move-object v9, v7

    const/4 v14, 0x3

    check-cast v9, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    const/4 v14, 0x4

    const/16 v12, 0x9

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "auth_password"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v14, 0x2

    sget-object v0, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->PASSWORD:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    const/4 v14, 0x7

    :goto_2
    invoke-virtual {v9, v0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setAuthenticationMethod(Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;)V

    const/4 v14, 0x6

    const/16 v12, 0xa

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPath(Ljava/lang/String;)V

    const/4 v14, 0x0

    const/16 v12, 0xb

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x5

    invoke-virtual {v9, v4}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPassphrase(Ljava/lang/String;)V

    const/4 v14, 0x6

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_b

    const/4 v14, 0x4

    :cond_2
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPassphraseSaved(Z)V

    const/4 v14, 0x5

    :cond_3
    :goto_3
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x6

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_0

    const/4 v14, 0x3

    :cond_5
    return-object v8

    const/4 v8, 0x0

    const/4 v14, 0x3

    :cond_6
    const-string v12, "ftps"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "ftpes"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v14, 0x4

    :cond_7
    const-string v12, "ftps"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v14, 0x4

    new-instance v7, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    invoke-direct {v7, v11}, Lcom/henrythompson/quoda/filesystem/FTPSServer;-><init>(Ljava/lang/String;)V

    move-object v12, v7

    const/4 v14, 0x5

    check-cast v12, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    invoke-virtual {v12, v3}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->setIsImplicit(Z)V

    goto/16 :goto_0

    const/4 v4, 0x3

    const/4 v14, 0x2

    :cond_8
    const-string v12, "sftp"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v14, 0x5

    new-instance v7, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    invoke-direct {v7, v11}, Lcom/henrythompson/quoda/filesystem/SFTPServer;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    const/4 v1, 0x7

    const/4 v14, 0x1

    :cond_9
    invoke-virtual {v7, v5}, Lcom/henrythompson/quoda/filesystem/Server;->setPassword(Ljava/lang/String;)V

    const/4 v14, 0x1

    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Lcom/henrythompson/quoda/filesystem/Server;->setPasswordSaved(Z)Lcom/henrythompson/quoda/filesystem/Server;

    goto/16 :goto_1

    const/4 v5, 0x2

    const/4 v14, 0x0

    :cond_a
    sget-object v0, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->KEY:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    goto :goto_2

    const/4 v5, 0x7

    const/4 v14, 0x2

    :cond_b
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPassphraseSaved(Z)V

    goto :goto_3

    const/4 v13, 0x6
.end method

.method public getServer(I)Lcom/henrythompson/quoda/filesystem/Server;
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/filesystem/ServersDatabaseHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "servers"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "uuid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "username"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "password"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "address"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "base_url"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "port"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "initial_directory"

    aput-object v4, v2, v3

    const-string v3, "uuid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v1, "ftp"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v12, Lcom/henrythompson/quoda/filesystem/FTPServer;

    invoke-direct {v12, v15}, Lcom/henrythompson/quoda/filesystem/FTPServer;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/henrythompson/quoda/filesystem/Server;->setDisplayName(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/henrythompson/quoda/filesystem/Server;->setUsername(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/henrythompson/quoda/filesystem/Server;->setPassword(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/henrythompson/quoda/filesystem/Server;->getPassword()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v12}, Lcom/henrythompson/quoda/filesystem/Server;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/henrythompson/quoda/filesystem/Server;->setPasswordSaved(Z)Lcom/henrythompson/quoda/filesystem/Server;

    :goto_1
    const/4 v1, 0x5

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/henrythompson/quoda/filesystem/Server;->setAddress(Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/henrythompson/quoda/filesystem/Server;->setBaseURL(Ljava/lang/String;)V

    const/4 v1, 0x7

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/henrythompson/quoda/filesystem/Server;->setPort(I)V

    const/16 v1, 0x8

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/henrythompson/quoda/filesystem/Server;->setInitialDirectory(Ljava/lang/String;)V

    instance-of v1, v12, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    if-eqz v1, :cond_3

    move-object v13, v12

    check-cast v13, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    const/16 v1, 0x9

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auth_password"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v9, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->PASSWORD:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    :goto_2
    invoke-virtual {v13, v9}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setAuthenticationMethod(Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;)V

    const/16 v1, 0xa

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPath(Ljava/lang/String;)V

    const/16 v1, 0xb

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPassphrase(Ljava/lang/String;)V

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPassphraseSaved(Z)V

    :cond_3
    :goto_3
    return-object v12

    const/4 v8, 0x3

    :cond_4
    const-string v1, "ftps"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v12, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    invoke-direct {v12, v15}, Lcom/henrythompson/quoda/filesystem/FTPSServer;-><init>(Ljava/lang/String;)V

    move-object v1, v12

    check-cast v1, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->setIsImplicit(Z)V

    goto/16 :goto_0

    const/4 v3, 0x3

    :cond_5
    const-string v1, "ftpes"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v12, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    invoke-direct {v12, v15}, Lcom/henrythompson/quoda/filesystem/FTPSServer;-><init>(Ljava/lang/String;)V

    move-object v1, v12

    check-cast v1, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->setIsImplicit(Z)V

    goto/16 :goto_0

    const/4 v9, 0x4

    :cond_6
    const-string v1, "sftp"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v12, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    invoke-direct {v12, v15}, Lcom/henrythompson/quoda/filesystem/SFTPServer;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    const/4 v0, 0x6

    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    const/4 v11, 0x2

    :cond_8
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lcom/henrythompson/quoda/filesystem/Server;->setPasswordSaved(Z)Lcom/henrythompson/quoda/filesystem/Server;

    goto/16 :goto_1

    const/4 v7, 0x0

    :cond_9
    sget-object v9, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->KEY:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    goto :goto_2

    const/4 v13, 0x0

    :cond_a
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPassphraseSaved(Z)V

    goto :goto_3

    const/4 v10, 0x3
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x4

    const-string v0, "CREATE TABLE servers(uuid TEXT PRIMARY KEY,type TEXT,name TEXT,username TEXT,password TEXT,address TEXT,base_url TEXT,port INTEGER, initial_directory TEXT,sftp_auth_method TEXT,sftp_key_path TEXT,sftp_passphrase TEXT)"

    const/4 v1, 0x3

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    const/4 v4, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    if-gt p2, v3, :cond_0

    const/4 v4, 0x5

    const-string v0, "ALTER TABLE servers ADD COLUMN sftp_auth_method TEXT"

    const/4 v4, 0x7

    const-string v1, "ALTER TABLE servers ADD COLUMN sftp_key_path TEXT"

    const/4 v4, 0x3

    const-string v2, "ALTER TABLE servers ADD COLUMN sftp_passphrase TEXT"

    const/4 v4, 0x0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_0
    nop

    return-void

    const/4 v1, 0x1
.end method

.method public updateAllServers(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/Server;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v3, 0x6

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/filesystem/Server;

    const/4 v3, 0x1

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/filesystem/ServersDatabaseHandler;->updateServer(Lcom/henrythompson/quoda/filesystem/Server;)V

    goto :goto_0

    const/4 v3, 0x4

    const/4 v3, 0x7

    :cond_0
    nop

    return-void

    const/4 v1, 0x3
.end method

.method public updateServer(Lcom/henrythompson/quoda/filesystem/Server;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v10, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/ServersDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v10, 0x5

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const/4 v10, 0x3

    instance-of v5, p1, Lcom/henrythompson/quoda/filesystem/FTPServer;

    if-eqz v5, :cond_2

    const/4 v10, 0x0

    const-string v3, "ftp"

    const/4 v10, 0x4

    :goto_0
    const-string v5, "uuid"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x4

    const-string v5, "type"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x5

    const-string v5, "name"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x5

    const-string v5, "address"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    const-string v5, "username"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getUsername()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x6

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->isPasswordSaved()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v10, 0x5

    const-string v5, "password"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x4

    :goto_1
    const-string v5, "port"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getPort()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v10, 0x7

    const-string v5, "initial_directory"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getInitialDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x2

    const-string v5, "base_url"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getBaseURL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x4

    instance-of v5, p1, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    if-eqz v5, :cond_0

    move-object v2, p1

    const/4 v10, 0x5

    check-cast v2, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    const/4 v10, 0x3

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getAuthenticationMethod()Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    move-result-object v5

    sget-object v6, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->PASSWORD:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    if-ne v5, v6, :cond_6

    const-string v0, "auth_password"

    const/4 v10, 0x7

    :goto_2
    const-string v5, "sftp_auth_method"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x5

    const-string v5, "sftp_key_path"

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getKeyPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->isKeyPassphraseSaved()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v10, 0x4

    const-string v5, "sftp_passphrase"

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getKeyPassphrase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x6

    :cond_0
    :goto_3
    const-string v5, "servers"

    const-string v6, "uuid = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v10, 0x3

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getUuid()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v10, 0x5

    invoke-virtual {v1, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v10, 0x4

    :cond_1
    nop

    return-void

    const/4 v9, 0x4

    const/4 v10, 0x5

    :cond_2
    instance-of v5, p1, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    if-eqz v5, :cond_4

    move-object v5, p1

    const/4 v10, 0x1

    check-cast v5, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->isImplicit()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v3, "ftps"

    :goto_4
    goto/16 :goto_0

    const/4 v1, 0x5

    :cond_3
    const-string v3, "ftpes"

    goto :goto_4

    const/4 v9, 0x0

    const/4 v10, 0x6

    :cond_4
    instance-of v5, p1, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    if-eqz v5, :cond_1

    const/4 v10, 0x4

    const-string v3, "sftp"

    goto/16 :goto_0

    const/4 v6, 0x1

    const/4 v10, 0x6

    :cond_5
    const-string v5, "password"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    const/4 v4, 0x6

    const/4 v10, 0x0

    :cond_6
    const-string v0, "auth_key"

    goto :goto_2

    const/4 v1, 0x6

    const/4 v10, 0x0

    :cond_7
    const-string v5, "sftp_passphrase"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_3

    const/4 v10, 0x1
.end method
