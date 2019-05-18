.class public Lcom/henrythompson/quoda/filesystem/FilesystemsManager;
.super Lcom/henrythompson/quoda/DataManager;


# instance fields
.field private mFilesystems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/Filesystem;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilesystemsLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/DataController;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x5

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/DataManager;-><init>(Lcom/henrythompson/quoda/DataController;)V

    const/4 v1, 0x6

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystemsLock:Ljava/lang/Object;

    const/4 v1, 0x0

    nop

    return-void

    const/4 v1, 0x1
.end method

.method public static getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const-class v1, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/DataController;->getDataManager(Ljava/lang/Class;)Lcom/henrythompson/quoda/DataManager;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    return-object v0

    const/4 v0, 0x3
.end method

.method private loadCloudServices()V
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x6

    new-instance v0, Lcom/henrythompson/quoda/filesystem/Dropbox;

    invoke-direct {v0}, Lcom/henrythompson/quoda/filesystem/Dropbox;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/Dropbox;->accountLinked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :cond_0
    new-instance v1, Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    invoke-direct {v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->accountLinked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x4

    :cond_1
    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->sortList()V

    const/4 v3, 0x3

    nop

    return-void

    const/4 v1, 0x7
.end method

.method private loadLocalFilesystem()V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x2

    new-instance v0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;

    invoke-direct {v0}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;-><init>()V

    const/4 v2, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->sortList()V

    const/4 v2, 0x5

    nop

    return-void

    const/4 v0, 0x6
.end method

.method private loadServers()V
    .locals 4

    const/4 v3, 0x0

    const/4 v3, 0x1

    new-instance v1, Lcom/henrythompson/quoda/filesystem/ServersDatabaseHandler;

    invoke-direct {v1}, Lcom/henrythompson/quoda/filesystem/ServersDatabaseHandler;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/ServersDatabaseHandler;->getAllServers()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->sortList()V

    const/4 v3, 0x3

    nop

    return-void

    const/4 v1, 0x1
.end method

.method private sortList()V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystems:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/filesystem/FilesystemsManager$1;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager$1;-><init>(Lcom/henrythompson/quoda/filesystem/FilesystemsManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x7

    nop

    return-void

    const/4 v1, 0x1
.end method


# virtual methods
.method public addCloudService(Lcom/henrythompson/quoda/filesystem/CloudService;)Z
    .locals 5
    .param p1    # Lcom/henrythompson/quoda/filesystem/CloudService;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x5

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/filesystem/Filesystem;

    const/4 v4, 0x5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x5

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    return v1

    const/4 v3, 0x1

    const/4 v4, 0x3

    :cond_1
    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->sortList()V

    const/4 v4, 0x3

    const/4 v1, 0x1

    goto :goto_0

    const/4 v4, 0x4
.end method

.method public addServer(Lcom/henrythompson/quoda/filesystem/Server;)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    new-instance v0, Lcom/henrythompson/quoda/filesystem/ServersDatabaseHandler;

    invoke-direct {v0}, Lcom/henrythompson/quoda/filesystem/ServersDatabaseHandler;-><init>()V

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/filesystem/ServersDatabaseHandler;->addServer(Lcom/henrythompson/quoda/filesystem/Server;)V

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->sortList()V

    const/4 v1, 0x5

    :cond_0
    nop

    return-void

    const/4 v0, 0x0
.end method

.method public createCloudServiceInstance(Ljava/lang/Class;)Lcom/henrythompson/quoda/filesystem/CloudService;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/henrythompson/quoda/filesystem/CloudService;",
            ">;)",
            "Lcom/henrythompson/quoda/filesystem/CloudService;"
        }
    .end annotation

    const/4 v1, 0x7

    const/4 v1, 0x0

    const-class v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x5

    new-instance v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    invoke-direct {v0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;-><init>()V

    const/4 v1, 0x3

    :goto_0
    return-object v0

    const/4 v1, 0x1

    const/4 v1, 0x3

    :cond_0
    const-class v0, Lcom/henrythompson/quoda/filesystem/Dropbox;

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    new-instance v0, Lcom/henrythompson/quoda/filesystem/Dropbox;

    invoke-direct {v0}, Lcom/henrythompson/quoda/filesystem/Dropbox;-><init>()V

    goto :goto_0

    const/4 v1, 0x5

    const/4 v1, 0x6

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x4
.end method

.method public createServer(Ljava/lang/Class;)Lcom/henrythompson/quoda/filesystem/Server;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/henrythompson/quoda/filesystem/Server;",
            ">;)",
            "Lcom/henrythompson/quoda/filesystem/Server;"
        }
    .end annotation

    const/4 v1, 0x5

    const/4 v1, 0x5

    const-class v0, Lcom/henrythompson/quoda/filesystem/FTPServer;

    if-ne p1, v0, :cond_0

    const/4 v1, 0x6

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FTPServer;

    invoke-direct {v0}, Lcom/henrythompson/quoda/filesystem/FTPServer;-><init>()V

    const/4 v1, 0x3

    :goto_0
    return-object v0

    const/4 v0, 0x1

    const/4 v1, 0x3

    :cond_0
    const-class v0, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    if-ne p1, v0, :cond_1

    const/4 v1, 0x0

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    invoke-direct {v0}, Lcom/henrythompson/quoda/filesystem/FTPSServer;-><init>()V

    goto :goto_0

    const/4 v0, 0x4

    const/4 v1, 0x7

    :cond_1
    const-class v0, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    if-ne p1, v0, :cond_2

    const/4 v1, 0x0

    new-instance v0, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    invoke-direct {v0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;-><init>()V

    goto :goto_0

    const/4 v0, 0x6

    const/4 v1, 0x2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x0
.end method

.method public deleteFilesystem(Lcom/henrythompson/quoda/filesystem/Filesystem;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v4, 0x7

    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;

    if-nez v2, :cond_2

    const/4 v4, 0x3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/filesystem/Filesystem;

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v4, 0x5

    instance-of v2, p1, Lcom/henrythompson/quoda/filesystem/CloudService;

    if-eqz v2, :cond_1

    move-object v2, p1

    const/4 v4, 0x6

    check-cast v2, Lcom/henrythompson/quoda/filesystem/CloudService;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/CloudService;->deleteAccount()V

    const/4 v4, 0x2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v3, 0x6

    const/4 v4, 0x5

    :cond_1
    instance-of v2, p1, Lcom/henrythompson/quoda/filesystem/Server;

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    new-instance v3, Lcom/henrythompson/quoda/filesystem/ServersDatabaseHandler;

    invoke-direct {v3}, Lcom/henrythompson/quoda/filesystem/ServersDatabaseHandler;-><init>()V

    move-object v2, p1

    check-cast v2, Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v3, v2}, Lcom/henrythompson/quoda/filesystem/ServersDatabaseHandler;->deleteServer(Lcom/henrythompson/quoda/filesystem/Server;)V

    goto :goto_1

    const/4 v3, 0x4

    const/4 v4, 0x3

    :cond_2
    nop

    return-void

    const/4 v3, 0x4
.end method

.method public getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;
    .locals 5

    const/4 v4, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystemsLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v4, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystems:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const/4 v4, 0x6

    const-string v1, "FilesystemsManager"

    const-string v3, "Filesystem was unloaded during getFilesystem(String) call"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->load()V

    const/4 v4, 0x2

    :cond_0
    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/filesystem/Filesystem;

    const/4 v4, 0x5

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x6

    monitor-exit v2

    const/4 v4, 0x0

    :goto_0
    return-object v0

    const/4 v0, 0x7

    :cond_2
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_0

    const/4 v0, 0x4

    const/4 v4, 0x0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public list()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/Filesystem;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystems:Ljava/util/ArrayList;

    return-object v0

    const/4 v0, 0x0
.end method

.method public load()V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystemsLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x7

    :try_start_0
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v2, 0x5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystems:Ljava/util/ArrayList;

    const/4 v2, 0x7

    :goto_0
    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->loadLocalFilesystem()V

    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->loadCloudServices()V

    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->loadServers()V

    const/4 v2, 0x3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->setLoaded(Z)V

    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->sortList()V

    const/4 v2, 0x3

    monitor-exit v1

    const/4 v2, 0x3

    nop

    return-void

    const/4 v0, 0x2

    const/4 v2, 0x2

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    const/4 v0, 0x7

    const/4 v2, 0x2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public onUpgrade(II)V
    .locals 5

    const/4 v4, 0x3

    const/4 v4, 0x5

    const/16 v2, 0x38

    if-gt p1, v2, :cond_0

    const/4 v4, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x0

    const-string v2, "dropbox"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v4, 0x2

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v4, 0x1

    :cond_0
    nop

    return-void

    const/4 v4, 0x3
.end method

.method public receiveEvent(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public updateServer(Lcom/henrythompson/quoda/filesystem/Server;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/filesystem/Filesystem;

    const/4 v4, 0x5

    instance-of v2, v0, Lcom/henrythompson/quoda/filesystem/Server;

    if-eqz v2, :cond_0

    const/4 v4, 0x7

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->mFilesystems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x0

    new-instance v1, Lcom/henrythompson/quoda/filesystem/ServersDatabaseHandler;

    invoke-direct {v1}, Lcom/henrythompson/quoda/filesystem/ServersDatabaseHandler;-><init>()V

    invoke-virtual {v1, p1}, Lcom/henrythompson/quoda/filesystem/ServersDatabaseHandler;->updateServer(Lcom/henrythompson/quoda/filesystem/Server;)V

    const/4 v4, 0x6

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->sortList()V

    const/4 v4, 0x0

    :cond_1
    nop

    return-void

    const/4 v2, 0x1
.end method
