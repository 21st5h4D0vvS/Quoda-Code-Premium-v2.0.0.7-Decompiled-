.class public final Lcom/henrythompson/quoda/DataController;
.super Ljava/lang/Object;


# static fields
.field public static final EVENT_ACTIVITY_ATTACHED:I = 0x8

.field public static final EVENT_ACTIVITY_REMOVED:I = 0x9

.field public static final EVENT_AFTER_DATA_MANAGER_LOADED:I = 0x6

.field public static final EVENT_AFTER_DISPLAYED_DOCUMENT_CHANGED:I = 0xb

.field public static final EVENT_AFTER_DOCUMENT_CACHED:I = 0x12

.field public static final EVENT_AFTER_DOCUMENT_CLOSED:I = 0xf

.field public static final EVENT_AFTER_DOCUMENT_TEXT_CHANGED:I = 0xd

.field public static final EVENT_AFTER_INITIAL_SETUP:I = 0x3

.field public static final EVENT_AFTER_THEME_CHANGED:I = 0x16

.field public static final EVENT_APP_PERMISSIONS_GRANTED:I = 0x25

.field public static final EVENT_BEFORE_DATA_MANAGER_LOADED:I = 0x5

.field public static final EVENT_BEFORE_DISPLAYED_DOCUMENT_CHANGED:I = 0xa

.field public static final EVENT_BEFORE_DOCUMENT_CACHED:I = 0x11

.field public static final EVENT_BEFORE_DOCUMENT_CLOSED:I = 0xe

.field public static final EVENT_BEFORE_DOCUMENT_TEXT_CHANGED:I = 0xc

.field public static final EVENT_BEFORE_INITIAL_SETUP:I = 0x2

.field public static final EVENT_BEFORE_THEME_CHANGED:I = 0x15

.field public static final EVENT_CRITICAL_ERROR:I = -0x1

.field public static final EVENT_DATA_INITIALIZED:I = 0x4

.field public static final EVENT_DATA_MANAGER_ADDED:I = 0x1

.field public static final EVENT_DATA_MANAGER_COORDINATOR_INITIALIZED:I = 0x0

.field public static final EVENT_DISPLAY_MESSAGE_TO_USER:I = 0x23

.field public static final EVENT_DISPLAY_TOAST_TO_USER:I = 0x24

.field public static final EVENT_DOCUMENT_LIST_CHANGED:I = 0x14

.field public static final EVENT_DOCUMENT_SAVED_STATUS_CHANGE:I = 0x2a

.field public static final EVENT_DOCUMENT_SELECTION_CHANGED:I = 0x19

.field public static final EVENT_DOCUMENT_SPANS_CHANGED:I = 0x13

.field public static final EVENT_DROPBOX_ACCOUNT_ADDED:I = 0x17

.field public static final EVENT_DROPBOX_ACCOUNT_DELETED:I = 0x18

.field public static final EVENT_EVERYTHING_LOADED:I = 0x7

.field public static final EVENT_FILE_OPEN_ERROR:I = 0x1e

.field public static final EVENT_FILE_OPEN_FINISH:I = 0x1d

.field public static final EVENT_FILE_OPEN_PROGRESS:I = 0x1c

.field public static final EVENT_FILE_OPEN_START:I = 0x1b

.field public static final EVENT_FILE_SAVE_ERROR:I = 0x29

.field public static final EVENT_FILE_SAVE_FINISH:I = 0x28

.field public static final EVENT_FILE_SAVE_PROGRESS:I = 0x27

.field public static final EVENT_FILE_SAVE_START:I = 0x26

.field public static final EVENT_GOOGLE_DRIVE_ACCOUNT_ADDED:I = 0x1f

.field public static final EVENT_GOOGLE_DRIVE_ACCOUNT_REMOVED:I = 0x20

.field public static final EVENT_LINE_BOOKMARKED_CHANGED:I = 0x10

.field public static final EVENT_REDO_STACK_CHANGED:I = 0x22

.field public static final EVENT_UNDO_STACK_CHANGED:I = 0x21

.field public static final EVENT_WORKSPACE_CHANGED:I = 0x1a

.field private static mInstance:Lcom/henrythompson/quoda/DataController;


# instance fields
.field private final mDataManagers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/DataManager;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/henrythompson/quoda/DataEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/DataController;->mDataManagers:Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/DataController;->mListeners:Ljava/util/List;

    const/4 v1, 0x3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/DataController;->mLoaded:Z

    const/4 v1, 0x2

    new-instance v0, Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/QuodaPreferences;-><init>(Lcom/henrythompson/quoda/DataController;)V

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/DataController;->addDataManager(Lcom/henrythompson/quoda/DataManager;)V

    const/4 v1, 0x0

    new-instance v0, Lcom/henrythompson/quoda/language/LanguagesManager;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/language/LanguagesManager;-><init>(Lcom/henrythompson/quoda/DataController;)V

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/DataController;->addDataManager(Lcom/henrythompson/quoda/DataManager;)V

    const/4 v1, 0x2

    new-instance v0, Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/document/DocumentsManager;-><init>(Lcom/henrythompson/quoda/DataController;)V

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/DataController;->addDataManager(Lcom/henrythompson/quoda/DataManager;)V

    const/4 v1, 0x1

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;-><init>(Lcom/henrythompson/quoda/DataController;)V

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/DataController;->addDataManager(Lcom/henrythompson/quoda/DataManager;)V

    const/4 v1, 0x2

    new-instance v0, Lcom/henrythompson/quoda/snippet/SnippetsManager;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/snippet/SnippetsManager;-><init>(Lcom/henrythompson/quoda/DataController;)V

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/DataController;->addDataManager(Lcom/henrythompson/quoda/DataManager;)V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public static final getInstance()Lcom/henrythompson/quoda/DataController;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    sget-object v0, Lcom/henrythompson/quoda/DataController;->mInstance:Lcom/henrythompson/quoda/DataController;

    return-object v0

    const/4 v1, 0x6
.end method

.method public static final declared-synchronized initialize()Lcom/henrythompson/quoda/DataController;
    .locals 5

    const/4 v4, 0x1

    const/4 v4, 0x2

    const-class v1, Lcom/henrythompson/quoda/DataController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/henrythompson/quoda/DataController;->mInstance:Lcom/henrythompson/quoda/DataController;

    if-nez v0, :cond_0

    const/4 v4, 0x2

    new-instance v0, Lcom/henrythompson/quoda/DataController;

    invoke-direct {v0}, Lcom/henrythompson/quoda/DataController;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/DataController;->mInstance:Lcom/henrythompson/quoda/DataController;

    const/4 v4, 0x3

    sget-object v0, Lcom/henrythompson/quoda/DataController;->mInstance:Lcom/henrythompson/quoda/DataController;

    const/4 v2, 0x0

    sget-object v3, Lcom/henrythompson/quoda/DataController;->mInstance:Lcom/henrythompson/quoda/DataController;

    invoke-virtual {v0, v2, v3}, Lcom/henrythompson/quoda/DataController;->sendEvent(ILjava/lang/Object;)V

    const/4 v4, 0x1

    :cond_0
    sget-object v0, Lcom/henrythompson/quoda/DataController;->mInstance:Lcom/henrythompson/quoda/DataController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    const/4 v0, 0x4

    const/4 v4, 0x7

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static showMessage(II)V
    .locals 4

    const/4 v3, 0x7

    const/4 v3, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/DataController;->showMessage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    nop

    return-void

    const/4 v1, 0x5
.end method

.method public static showMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x6

    const/4 v4, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/16 v1, 0x23

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/DataController;->sendEvent(I[Ljava/lang/Object;)V

    const/4 v4, 0x4

    nop

    return-void

    const/4 v2, 0x0
.end method


# virtual methods
.method public addDataManager(Lcom/henrythompson/quoda/DataManager;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/DataController;->mDataManagers:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/DataController;->getDataManager(Ljava/lang/Class;)Lcom/henrythompson/quoda/DataManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/DataController;->mDataManagers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x6

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/henrythompson/quoda/DataController;->sendEvent(ILjava/lang/Object;)V

    const/4 v2, 0x6

    :cond_0
    monitor-exit v1

    const/4 v2, 0x4

    nop

    return-void

    const/4 v2, 0x2

    const/4 v2, 0x6

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public attachListener(Lcom/henrythompson/quoda/DataEventListener;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/DataController;->mListeners:Ljava/util/List;

    monitor-enter v2

    const/4 v4, 0x7

    :try_start_0
    iget-object v1, p0, Lcom/henrythompson/quoda/DataController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/DataEventListener;

    const/4 v4, 0x6

    if-ne v0, p1, :cond_0

    const/4 v4, 0x6

    monitor-exit v2

    const/4 v4, 0x1

    :goto_0
    nop

    return-void

    const/4 v0, 0x0

    const/4 v4, 0x4

    :cond_1
    iget-object v1, p0, Lcom/henrythompson/quoda/DataController;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    monitor-exit v2

    goto :goto_0

    const/4 v3, 0x3

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDataManager(Ljava/lang/Class;)Lcom/henrythompson/quoda/DataManager;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/henrythompson/quoda/DataManager;",
            ">;)",
            "Lcom/henrythompson/quoda/DataManager;"
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/DataController;->mDataManagers:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v4, 0x4

    :try_start_0
    iget-object v1, p0, Lcom/henrythompson/quoda/DataController;->mDataManagers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/DataManager;

    const/4 v4, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x4

    monitor-exit v2

    const/4 v4, 0x1

    :goto_0
    return-object v0

    const/4 v1, 0x5

    :cond_1
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_0

    const/4 v2, 0x3

    const/4 v4, 0x4

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEverythingLoaded()Z
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/DataController;->mDataManagers:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v4, 0x3

    :try_start_0
    iget-object v1, p0, Lcom/henrythompson/quoda/DataController;->mDataManagers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/DataManager;

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/henrythompson/quoda/DataManager;->isLoaded()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v4, 0x1

    const/4 v1, 0x0

    monitor-exit v2

    const/4 v4, 0x5

    :goto_0
    return v1

    const/4 v1, 0x7

    :cond_1
    const/4 v1, 0x1

    monitor-exit v2

    goto :goto_0

    const/4 v1, 0x7

    const/4 v4, 0x1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isLoaded()Z
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x6

    iget-boolean v0, p0, Lcom/henrythompson/quoda/DataController;->mLoaded:Z

    return v0

    const/4 v1, 0x6
.end method

.method public load()V
    .locals 8

    const/4 v7, 0x2

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/henrythompson/quoda/DataController;->mDataManagers:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v7, 0x5

    :try_start_0
    iget-object v3, p0, Lcom/henrythompson/quoda/DataController;->mDataManagers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/DataManager;

    const/4 v7, 0x1

    const/4 v5, 0x5

    invoke-virtual {p0, v5, v1}, Lcom/henrythompson/quoda/DataController;->sendEvent(ILjava/lang/Object;)V

    const/4 v7, 0x3

    invoke-virtual {v1}, Lcom/henrythompson/quoda/DataManager;->load()V

    const/4 v7, 0x2

    const/4 v5, 0x6

    invoke-virtual {p0, v5, v1}, Lcom/henrythompson/quoda/DataController;->sendEvent(ILjava/lang/Object;)V

    const/4 v7, 0x2

    invoke-virtual {v1}, Lcom/henrythompson/quoda/DataManager;->isLoaded()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v7, 0x4

    const/4 v3, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The data manager "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed to call super.load() when loading its data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/henrythompson/quoda/DataController;->sendEvent(ILjava/lang/Object;)V

    const/4 v7, 0x2

    const-string v3, "DataController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Critical error: The data manager "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed to call super.load() when loading its data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    monitor-exit v4

    const/4 v7, 0x7

    :goto_1
    nop

    return-void

    const/4 v7, 0x2

    const/4 v7, 0x7

    :cond_1
    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/QuodaPreferences;->getInitialSetupHasRunBefore()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v7, 0x0

    const/4 v5, 0x2

    invoke-virtual {p0, v5, v1}, Lcom/henrythompson/quoda/DataController;->sendEvent(ILjava/lang/Object;)V

    const/4 v7, 0x6

    invoke-virtual {v1}, Lcom/henrythompson/quoda/DataManager;->onSetup()V

    const/4 v7, 0x1

    const/4 v5, 0x3

    invoke-virtual {p0, v5, v1}, Lcom/henrythompson/quoda/DataController;->sendEvent(ILjava/lang/Object;)V

    goto/16 :goto_0

    const/4 v1, 0x4

    const/4 v7, 0x1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    const/4 v7, 0x7

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/QuodaPreferences;->setInitialSetupDone()V

    const/4 v7, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/QuodaPreferences;->getAppVersionCode()I

    move-result v0

    const/4 v7, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getVersionCode()I

    move-result v2

    const/4 v7, 0x5

    if-ge v0, v2, :cond_3

    const/4 v7, 0x0

    const-string v3, "Version Upgrade"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Old version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; New version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x3

    const/4 v3, 0x1

    sput-boolean v3, Lcom/henrythompson/quoda/QuodaApplication;->IS_UPDATE:Z

    const/4 v7, 0x7

    iget-object v3, p0, Lcom/henrythompson/quoda/DataController;->mDataManagers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/DataManager;

    const/4 v7, 0x6

    invoke-virtual {v1, v0, v2}, Lcom/henrythompson/quoda/DataManager;->onUpgrade(II)V

    goto :goto_2

    const/4 v0, 0x3

    const/4 v7, 0x4

    :cond_3
    const-string v3, "Version Upgrade"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No version upgrade. App version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x4

    :cond_4
    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/henrythompson/quoda/QuodaPreferences;->setAppVersionCode(I)V

    const/4 v7, 0x7

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/henrythompson/quoda/DataController;->mLoaded:Z

    const/4 v7, 0x0

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v7, 0x3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    const/4 v7, 0x7
.end method

.method public onLowMemory()V
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/DataController;->mDataManagers:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/henrythompson/quoda/DataController;->mDataManagers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/DataManager;

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/henrythompson/quoda/DataManager;->onLowMemory()V

    goto :goto_0

    const/4 v3, 0x2

    const/4 v4, 0x7

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

    const/4 v4, 0x6

    nop

    return-void

    const/4 v4, 0x2
.end method

.method public removeListener(Lcom/henrythompson/quoda/DataEventListener;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/DataController;->mListeners:Ljava/util/List;

    monitor-enter v2

    const/4 v4, 0x6

    :try_start_0
    iget-object v1, p0, Lcom/henrythompson/quoda/DataController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/DataEventListener;

    const/4 v4, 0x7

    if-ne v0, p1, :cond_0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/DataController;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v4, 0x4

    monitor-exit v2

    const/4 v4, 0x2

    :goto_0
    nop

    return-void

    const/4 v1, 0x0

    const/4 v4, 0x4

    :cond_1
    monitor-exit v2

    goto :goto_0

    const/4 v0, 0x6

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendCommand(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/DataController;->mListeners:Ljava/util/List;

    monitor-enter v2

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/henrythompson/quoda/DataController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/DataEventListener;

    const/4 v4, 0x1

    invoke-interface {v0, p1, p2}, Lcom/henrythompson/quoda/DataEventListener;->onReceiveCommand(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x5

    monitor-exit v2

    const/4 v4, 0x7

    :goto_0
    nop

    return-void

    const/4 v0, 0x3

    const/4 v4, 0x7

    :cond_1
    monitor-exit v2

    goto :goto_0

    const/4 v4, 0x0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendEvent(I)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x7

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/henrythompson/quoda/DataController;->sendEvent(I[Ljava/lang/Object;)V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public sendEvent(ILjava/lang/Object;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/henrythompson/quoda/DataController;->sendEvent(I[Ljava/lang/Object;)V

    const/4 v2, 0x1

    nop

    return-void

    const/4 v2, 0x3
.end method

.method public sendEvent(I[Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/DataController;->mListeners:Ljava/util/List;

    monitor-enter v2

    const/4 v4, 0x3

    :try_start_0
    iget-object v1, p0, Lcom/henrythompson/quoda/DataController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/DataEventListener;

    const/4 v4, 0x6

    invoke-interface {v0, p1, p2}, Lcom/henrythompson/quoda/DataEventListener;->onReceiveEvent(I[Ljava/lang/Object;)V

    goto :goto_0

    const/4 v2, 0x7

    const/4 v4, 0x4

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

    const/4 v4, 0x3

    nop

    return-void

    const/4 v1, 0x0
.end method
