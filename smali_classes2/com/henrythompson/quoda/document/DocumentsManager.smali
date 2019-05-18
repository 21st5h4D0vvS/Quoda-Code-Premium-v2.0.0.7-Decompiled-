.class public final Lcom/henrythompson/quoda/document/DocumentsManager;
.super Lcom/henrythompson/quoda/DataManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "Documents Manager"

.field private static mAutoCacher:Landroid/os/Handler;

.field private static mCacheHandler:Lcom/henrythompson/quoda/document/CacheHandler;

.field private static mDocuments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/document/Document;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoHandleCaching:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/document/DocumentsManager;->mAutoCacher:Landroid/os/Handler;

    nop

    return-void

    const/4 v1, 0x3
.end method

.method public constructor <init>(Lcom/henrythompson/quoda/DataController;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/DataManager;-><init>(Lcom/henrythompson/quoda/DataController;)V

    const/4 v1, 0x6

    new-instance v0, Lcom/henrythompson/quoda/document/DocumentsManager$4;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/document/DocumentsManager$4;-><init>(Lcom/henrythompson/quoda/document/DocumentsManager;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/document/DocumentsManager;->mAutoHandleCaching:Ljava/lang/Runnable;

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x7
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/document/DocumentsManager;I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x1
.end method

.method static synthetic access$100(Lcom/henrythompson/quoda/document/DocumentsManager;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->initializeCacheHandler()V

    nop

    return-void

    const/4 v0, 0x6
.end method

.method static synthetic access$200()Lcom/henrythompson/quoda/document/CacheHandler;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    sget-object v0, Lcom/henrythompson/quoda/document/DocumentsManager;->mCacheHandler:Lcom/henrythompson/quoda/document/CacheHandler;

    return-object v0

    const/4 v1, 0x1
.end method

.method static synthetic access$300(Lcom/henrythompson/quoda/document/DocumentsManager;)Ljava/lang/Runnable;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/document/DocumentsManager;->mAutoHandleCaching:Ljava/lang/Runnable;

    return-object v0

    const/4 v1, 0x1
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    sget-object v0, Lcom/henrythompson/quoda/document/DocumentsManager;->mAutoCacher:Landroid/os/Handler;

    return-object v0

    const/4 v1, 0x5
.end method

.method public static getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const-class v1, Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/DataController;->getDataManager(Ljava/lang/Class;)Lcom/henrythompson/quoda/DataManager;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/document/DocumentsManager;

    return-object v0

    const/4 v1, 0x0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    const/4 v2, 0x2
.end method

.method private initializeCacheHandler()V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x3

    sget-object v0, Lcom/henrythompson/quoda/document/DocumentsManager;->mCacheHandler:Lcom/henrythompson/quoda/document/CacheHandler;

    if-nez v0, :cond_0

    const/4 v1, 0x2

    new-instance v0, Lcom/henrythompson/quoda/document/CacheHandler;

    invoke-direct {v0}, Lcom/henrythompson/quoda/document/CacheHandler;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/document/DocumentsManager;->mCacheHandler:Lcom/henrythompson/quoda/document/CacheHandler;

    const/4 v1, 0x7

    :cond_0
    nop

    return-void

    const/4 v1, 0x1
.end method

.method private performCloseDocument(Lcom/henrythompson/quoda/document/Document;)I
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x1

    const/4 v10, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->initializeCacheHandler()V

    const/4 v10, 0x2

    sget-object v1, Lcom/henrythompson/quoda/document/DocumentsManager;->mCacheHandler:Lcom/henrythompson/quoda/document/CacheHandler;

    invoke-virtual {v1, p1}, Lcom/henrythompson/quoda/document/CacheHandler;->deleteDocument(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v10, 0x3

    sget-object v9, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    monitor-enter v9

    const/4 v10, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getIndexForDocument(Lcom/henrythompson/quoda/document/Document;)I

    move-result v8

    const/4 v10, 0x1

    sget-object v1, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v10, 0x2

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v1, 0x0

    const-string v2, "local"

    invoke-direct {v4, v1, v2}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v10, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0067

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v10, 0x0

    new-instance v0, Lcom/henrythompson/quoda/document/Document;

    const/4 v1, 0x1

    const-string v2, "UTF-8"

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v3

    const-string v5, "unknown"

    invoke-virtual {v3, v5}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/henrythompson/quoda/document/Document;-><init>(ILjava/lang/String;Lcom/henrythompson/quoda/language/Language;Lcom/henrythompson/quoda/filesystem/FileObject;ZI)V

    const/4 v10, 0x6

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->addAndDisplayDocument(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v10, 0x2

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->setDocumentsFrozen(Z)V

    const/4 v10, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocumentIndex()I

    move-result v7

    const/4 v10, 0x1

    sget-object v1, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    if-ne v7, v8, :cond_1

    const/4 v10, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocumentCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt v8, v1, :cond_2

    const/4 v10, 0x3

    invoke-virtual {p0, v8}, Lcom/henrythompson/quoda/document/DocumentsManager;->displayDocument(I)Z

    const/4 v10, 0x4

    :cond_1
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->setDocumentsFrozen(Z)V

    const/4 v10, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocumentIndex()I

    move-result v1

    monitor-exit v9

    return v1

    const/4 v4, 0x4

    const/4 v10, 0x7

    :cond_2
    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocumentCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->displayDocument(I)Z

    goto :goto_0

    const/4 v10, 0x5

    const/4 v10, 0x7

    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setOneDocumentAsDisplayed()V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x6

    sget-object v1, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x7

    sget-object v0, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->displayDocument(I)Z

    const/4 v2, 0x1

    :cond_0
    monitor-exit v1

    const/4 v2, 0x1

    nop

    return-void

    const/4 v0, 0x6

    const/4 v2, 0x3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sortDocuments()V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x5

    sget-object v0, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/document/DocumentsManager$1;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/document/DocumentsManager$1;-><init>(Lcom/henrythompson/quoda/document/DocumentsManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x7

    nop

    return-void

    const/4 v2, 0x3
.end method


# virtual methods
.method public addAndDisplayDocument(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x4

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/document/DocumentsManager;->addDocument(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->sortDocuments()V

    const/4 v0, 0x2

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/document/DocumentsManager;->displayDocument(Lcom/henrythompson/quoda/document/Document;)Z

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public addDocument(Lcom/henrythompson/quoda/document/Document;)V
    .locals 4

    const/4 v3, 0x7

    const/4 v3, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->initializeCacheHandler()V

    const/4 v3, 0x0

    sget-object v1, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    const/4 v3, 0x5

    :try_start_0
    sget-object v0, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    :cond_0
    sget-object v0, Lcom/henrythompson/quoda/document/DocumentsManager;->mCacheHandler:Lcom/henrythompson/quoda/document/CacheHandler;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/document/CacheHandler;->addDocument(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->sortDocuments()V

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->setOneDocumentAsDisplayed()V

    const/4 v3, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/16 v2, 0x14

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v3, 0x0

    monitor-exit v1

    const/4 v3, 0x6

    nop

    return-void

    const/4 v1, 0x1

    const/4 v3, 0x3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized cacheDisplayedDocument()V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->initializeCacheHandler()V

    const/4 v2, 0x4

    sget-object v0, Lcom/henrythompson/quoda/document/DocumentsManager;->mCacheHandler:Lcom/henrythompson/quoda/document/CacheHandler;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/CacheHandler;->updateDocument(Lcom/henrythompson/quoda/document/Document;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x5

    monitor-exit p0

    nop

    return-void

    const/4 v1, 0x4

    const/4 v2, 0x7

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cacheDocument(Lcom/henrythompson/quoda/document/Document;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->initializeCacheHandler()V

    const/4 v1, 0x1

    sget-object v0, Lcom/henrythompson/quoda/document/DocumentsManager;->mCacheHandler:Lcom/henrythompson/quoda/document/CacheHandler;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/document/CacheHandler;->updateDocument(Lcom/henrythompson/quoda/document/Document;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    monitor-exit p0

    nop

    return-void

    const/4 v0, 0x0

    const/4 v1, 0x4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeDocument(I)I
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x0

    sget-object v1, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/document/DocumentsManager;->indexIsValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocumentIndex()I

    move-result v0

    monitor-exit v1

    const/4 v2, 0x7

    :goto_0
    return v0

    const/4 v0, 0x4

    const/4 v2, 0x2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocument(I)Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->closeDocument(Lcom/henrythompson/quoda/document/Document;)I

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocumentIndex()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    const/4 v1, 0x7

    const/4 v2, 0x3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeDocument(Lcom/henrythompson/quoda/document/Document;)I
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x1

    sget-object v2, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v3, 0x5

    const/16 v1, 0xe

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->sendEvent(I)V

    const/4 v3, 0x4

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/document/DocumentsManager;->performCloseDocument(Lcom/henrythompson/quoda/document/Document;)I

    move-result v0

    const/4 v3, 0x6

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->sendEvent(I)V

    const/4 v3, 0x5

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->isDisplayed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x6

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->displayDocument(I)Z

    const/4 v3, 0x0

    :cond_0
    monitor-exit v2

    return v0

    const/4 v3, 0x3

    const/4 v3, 0x3

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public closeDocumentConfirmIfNotSaved(Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;Lcom/henrythompson/quoda/document/Document;)V
    .locals 5

    const/4 v4, 0x6

    const/4 v4, 0x2

    new-instance v0, Lcom/henrythompson/quoda/document/DocumentsManager$2;

    invoke-direct {v0, p0, p1}, Lcom/henrythompson/quoda/document/DocumentsManager$2;-><init>(Lcom/henrythompson/quoda/document/DocumentsManager;Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;)V

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/henrythompson/quoda/document/Document;->getIsSaved()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, p2}, Lcom/henrythompson/quoda/document/DocumentsManager;->closeDocument(Lcom/henrythompson/quoda/document/Document;)I

    const/4 v4, 0x6

    :goto_0
    nop

    return-void

    const/4 v3, 0x2

    const/4 v4, 0x6

    :cond_0
    new-instance v1, Lcom/henrythompson/quoda/document/DocumentsManager$3;

    invoke-direct {v1, p0, p2}, Lcom/henrythompson/quoda/document/DocumentsManager$3;-><init>(Lcom/henrythompson/quoda/document/DocumentsManager;Lcom/henrythompson/quoda/document/Document;)V

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$StandardFilesystemOperationListener;

    invoke-direct {v3, p1, v0}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$StandardFilesystemOperationListener;-><init>(Landroid/app/Activity;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;)V

    invoke-static {p2, v1, v2, p1, v3}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;->showSaveDialog(Lcom/henrythompson/quoda/document/Document;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/support/v4/app/FragmentActivity;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;)V

    goto :goto_0

    const/4 v0, 0x7
.end method

.method public displayDocument(I)Z
    .locals 9

    const/4 v8, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->initializeCacheHandler()V

    const/4 v8, 0x2

    sget-object v5, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    monitor-enter v5

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/document/DocumentsManager;->indexIsValid(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v8, 0x2

    monitor-exit v5

    const/4 v8, 0x3

    :goto_0
    return v3

    const/4 v3, 0x6

    const/4 v8, 0x4

    :cond_0
    const/4 v2, 0x0

    const/4 v8, 0x7

    sget-object v6, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/document/Document;

    const/4 v8, 0x5

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->isDisplayed()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v8, 0x5

    move-object v2, v0

    const/4 v8, 0x0

    :cond_2
    sget-object v6, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/document/Document;

    const/4 v8, 0x2

    if-ne v1, v2, :cond_3

    const/4 v8, 0x2

    monitor-exit v5

    goto :goto_0

    const/4 v2, 0x2

    const/4 v8, 0x4

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    const/4 v8, 0x1

    :cond_3
    const/16 v3, 0xa

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/document/DocumentsManager;->sendEvent(I)V

    const/4 v8, 0x7

    if-eqz v2, :cond_4

    const/4 v8, 0x6

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/document/Document;->setIsDisplayed(Z)V

    const/4 v8, 0x6

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/document/DocumentsManager;->setDocumentsFrozen(Z)V

    const/4 v8, 0x0

    sget-object v3, Lcom/henrythompson/quoda/document/DocumentsManager;->mCacheHandler:Lcom/henrythompson/quoda/document/CacheHandler;

    invoke-virtual {v3, v2}, Lcom/henrythompson/quoda/document/CacheHandler;->updateDocument(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v8, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/document/DocumentsManager;->setDocumentsFrozen(Z)V

    const/4 v8, 0x5

    :cond_4
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/document/Document;->setIsDisplayed(Z)V

    const/4 v8, 0x5

    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/document/DocumentsManager;->sendEvent(I)V

    const/4 v8, 0x7

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    const/4 v8, 0x7

    goto :goto_0

    const/4 v5, 0x7
.end method

.method public displayDocument(Lcom/henrythompson/quoda/document/Document;)Z
    .locals 6

    const/4 v5, 0x5

    const/4 v5, 0x2

    sget-object v3, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v5, 0x7

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getIndexForDocument(Lcom/henrythompson/quoda/document/Document;)I

    move-result v1

    const/4 v5, 0x0

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->indexIsValid(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v5, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v2

    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v5, 0x6

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->displayDocument(I)Z

    move-result v0

    const/4 v5, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v2

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v5, 0x2

    monitor-exit v3

    const/4 v5, 0x5

    :goto_0
    return v0

    const/4 v4, 0x0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v3

    goto :goto_0

    const/4 v3, 0x4

    const/4 v5, 0x2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;
    .locals 5

    const/4 v4, 0x1

    const/4 v4, 0x0

    sget-object v2, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v4, 0x7

    :try_start_0
    sget-object v1, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v4, 0x6

    const/4 v0, 0x0

    monitor-exit v2

    const/4 v4, 0x1

    :goto_0
    return-object v0

    const/4 v0, 0x0

    const/4 v4, 0x3

    :cond_0
    sget-object v1, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/document/Document;

    const/4 v4, 0x6

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->isDisplayed()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x5

    monitor-exit v2

    goto :goto_0

    const/4 v2, 0x2

    const/4 v4, 0x2

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    const/4 v4, 0x4

    :cond_2
    :try_start_1
    sget-object v1, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/document/Document;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/document/Document;->setIsDisplayed(Z)V

    const/4 v4, 0x3

    sget-object v1, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/document/Document;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto :goto_0

    const/4 v2, 0x4
.end method

.method public getDisplayedDocumentIndex()I
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x5

    sget-object v0, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    const/4 v2, 0x6
.end method

.method public declared-synchronized getDocument(I)Lcom/henrythompson/quoda/document/Document;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v2, 0x2

    const/4 v2, 0x6

    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/document/DocumentsManager;->indexIsValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    sget-object v0, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/document/Document;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x3

    :goto_0
    monitor-exit p0

    return-object v0

    const/4 v2, 0x3

    const/4 v2, 0x2

    :cond_0
    :try_start_2
    monitor-exit v1

    const/4 v2, 0x3

    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x4

    const/4 v2, 0x3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDocumentById(Ljava/lang/String;)Lcom/henrythompson/quoda/document/Document;
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x7

    monitor-enter p0

    if-nez p1, :cond_0

    move-object v0, v1

    const/4 v4, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    const/4 v4, 0x6

    const/4 v4, 0x5

    :cond_0
    :try_start_0
    sget-object v2, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/document/Document;

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    const/4 v2, 0x4

    :cond_2
    move-object v0, v1

    const/4 v4, 0x2

    goto :goto_0

    const/4 v1, 0x7

    const/4 v4, 0x4

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getDocumentCount()I
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x2

    sget-object v1, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v2, 0x6

    :try_start_0
    sget-object v0, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    sget-object v0, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1

    const/4 v2, 0x1

    :goto_0
    return v0

    const/4 v1, 0x6

    const/4 v2, 0x4

    :cond_0
    monitor-exit v1

    const/4 v2, 0x2

    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x5

    const/4 v2, 0x0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIndexForDocument(Lcom/henrythompson/quoda/document/Document;)I
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x6

    sget-object v1, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1

    return v0

    const/4 v0, 0x1

    const/4 v2, 0x2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public indexIsValid(I)Z
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x2

    sget-object v1, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    const/4 v1, 0x0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v2, 0x4

    const/4 v2, 0x3

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public load()V
    .locals 7

    const/4 v6, 0x2

    const/4 v6, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->initializeCacheHandler()V

    const/4 v6, 0x7

    sget-object v2, Lcom/henrythompson/quoda/document/DocumentsManager;->mAutoCacher:Landroid/os/Handler;

    iget-object v3, p0, Lcom/henrythompson/quoda/document/DocumentsManager;->mAutoHandleCaching:Ljava/lang/Runnable;

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v6, 0x6

    sget-object v2, Lcom/henrythompson/quoda/document/DocumentsManager;->mCacheHandler:Lcom/henrythompson/quoda/document/CacheHandler;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/CacheHandler;->getUnloadedDocuments()Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v6, 0x6

    sget-object v2, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v6, 0x4

    sget-object v2, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/henrythompson/quoda/document/Document;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/document/Document;->setIsDisplayed(Z)V

    const/4 v6, 0x0

    :cond_0
    const-string v2, "Documents Manager"

    const-string v3, "No document was selected after documents were loaded up! This might be a sign of an error!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    :cond_1
    invoke-direct {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->sortDocuments()V

    const/4 v6, 0x1

    invoke-super {p0}, Lcom/henrythompson/quoda/DataManager;->load()V

    const/4 v6, 0x2

    nop

    return-void

    const/4 v6, 0x2

    const/4 v6, 0x7

    :cond_2
    sget-object v2, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/document/Document;

    const/4 v6, 0x0

    :try_start_0
    sget-object v3, Lcom/henrythompson/quoda/document/DocumentsManager;->mCacheHandler:Lcom/henrythompson/quoda/document/CacheHandler;

    invoke-virtual {v3, v0}, Lcom/henrythompson/quoda/document/CacheHandler;->loadDocument(Lcom/henrythompson/quoda/document/Document;)V
    :try_end_0
    .catch Lcom/henrythompson/quoda/document/QuodaCacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v6, 0x3

    const/4 v6, 0x5

    :catch_0
    move-exception v1

    const/4 v6, 0x1

    const-string v3, "DocumentsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An error occured when uncaching the contents of the document with UUID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getUUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/QuodaCacheException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    const/4 v0, 0x7
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public onSetup()V
    .locals 5

    const/4 v4, 0x6

    const/4 v4, 0x2

    const/4 v0, -0x1

    const v1, 0x7f0d0250

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/henrythompson/quoda/NewFileCreator;->createNewFile(ILjava/lang/String;ZLandroid/content/Context;)V

    const/4 v4, 0x2

    nop

    return-void

    const/4 v2, 0x3
.end method

.method public receiveEvent(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public setDocuments(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/document/Document;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x3

    const/4 v4, 0x0

    sget-object v3, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    monitor-enter v3

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x6

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/document/Document;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->isDisplayed()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x5

    :cond_0
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->sendEvent(I)V

    const/4 v4, 0x6

    sput-object p1, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    const/4 v4, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->setOneDocumentAsDisplayed()V

    const/4 v4, 0x6

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->sendEvent(I)V

    const/4 v4, 0x6

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->sortDocuments()V

    const/4 v4, 0x4

    nop

    return-void

    const/4 v4, 0x3

    const/4 v4, 0x4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v1, 0x3

    const/4 v4, 0x1

    :cond_2
    :try_start_1
    sget-object v2, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    const/4 v0, 0x2

    const/4 v4, 0x2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setDocumentsFrozen(Z)V
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x7

    sget-object v2, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v4, 0x4

    :try_start_0
    sget-object v1, Lcom/henrythompson/quoda/document/DocumentsManager;->mDocuments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/document/Document;

    const/4 v4, 0x6

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/document/Document;->setFrozen(Z)V

    goto :goto_0

    const/4 v4, 0x4

    const/4 v4, 0x5

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x5

    nop

    return-void

    const/4 v4, 0x0
.end method
