.class public Lcom/henrythompson/quoda/FilebrowserFragment;
.super Landroid/support/v4/app/DialogFragment;

# interfaces
.implements Lcom/henrythompson/quoda/DataEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/FilebrowserFragment$UpFileObject;,
        Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;,
        Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;,
        Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;,
        Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;
    }
.end annotation


# instance fields
.field private mAddressBar:Landroid/widget/TextView;

.field private mCurrentDirectory:Lcom/henrythompson/quoda/filesystem/FileObject;

.field private mDirectoryListings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            ">;"
        }
    .end annotation
.end field

.field private mFAB:Lcom/melnykov/fab/FloatingActionButton;

.field private mFilesystem:Lcom/henrythompson/quoda/filesystem/Filesystem;

.field private mIsLoaded:Z

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

.field private mLoadingAnimation:Landroid/widget/ProgressBar;

.field private mRunWhenLoaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x6

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v1, 0x7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mIsLoaded:Z

    nop

    return-void

    const/4 v1, 0x5
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/FilebrowserFragment;I)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x3

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/FilebrowserFragment;->onListItemClicked(I)V

    nop

    return-void

    const/4 v0, 0x4
.end method

.method static synthetic access$100(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mCurrentDirectory:Lcom/henrythompson/quoda/filesystem/FileObject;

    return-object v0

    const/4 v1, 0x0
.end method

.method static synthetic access$1000(Lcom/henrythompson/quoda/FilebrowserFragment;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->hideLoadingAnimation()V

    nop

    return-void

    const/4 v0, 0x3
.end method

.method static synthetic access$102(Lcom/henrythompson/quoda/FilebrowserFragment;Lcom/henrythompson/quoda/filesystem/FileObject;)Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mCurrentDirectory:Lcom/henrythompson/quoda/filesystem/FileObject;

    return-object p1

    const/4 v0, 0x0
.end method

.method static synthetic access$1100(Lcom/henrythompson/quoda/FilebrowserFragment;)Ljava/util/ArrayList;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mDirectoryListings:Ljava/util/ArrayList;

    return-object v0

    const/4 v0, 0x5
.end method

.method static synthetic access$1102(Lcom/henrythompson/quoda/FilebrowserFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mDirectoryListings:Ljava/util/ArrayList;

    return-object p1

    const/4 v0, 0x1
.end method

.method static synthetic access$1200(Lcom/henrythompson/quoda/FilebrowserFragment;)Landroid/widget/TextView;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mAddressBar:Landroid/widget/TextView;

    return-object v0

    const/4 v0, 0x6
.end method

.method static synthetic access$1300(Lcom/henrythompson/quoda/FilebrowserFragment;)Landroid/widget/ListView;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mListView:Landroid/widget/ListView;

    return-object v0

    const/4 v0, 0x0
.end method

.method static synthetic access$1600(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/FilebrowserAdapter;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->getAdapter()Lcom/henrythompson/quoda/FilebrowserAdapter;

    move-result-object v0

    return-object v0

    const/4 v1, 0x5
.end method

.method static synthetic access$1700(Lcom/henrythompson/quoda/FilebrowserFragment;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->upOneLevel()V

    nop

    return-void

    const/4 v0, 0x5
.end method

.method static synthetic access$200(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/Filesystem;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mFilesystem:Lcom/henrythompson/quoda/filesystem/Filesystem;

    return-object v0

    const/4 v1, 0x7
.end method

.method static synthetic access$300(Lcom/henrythompson/quoda/FilebrowserFragment;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x7

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/FilebrowserFragment;->showFileAlreadyExistsDialog(Ljava/lang/String;)V

    nop

    return-void

    const/4 v0, 0x7
.end method

.method static synthetic access$400(Lcom/henrythompson/quoda/FilebrowserFragment;Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x6

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/FilebrowserFragment;->onAddressBarPathEntered(Landroid/widget/EditText;)V

    nop

    return-void

    const/4 v0, 0x6
.end method

.method static synthetic access$600(Lcom/henrythompson/quoda/FilebrowserFragment;Lcom/henrythompson/quoda/filesystem/FileObject;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x4

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/FilebrowserFragment;->listDirectory(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    nop

    return-void

    const/4 v0, 0x5
.end method

.method static synthetic access$700(Lcom/henrythompson/quoda/FilebrowserFragment;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->showLoadingAnimation()V

    nop

    return-void

    const/4 v0, 0x6
.end method

.method static synthetic access$800(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mListener:Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

    return-object v0

    const/4 v1, 0x6
.end method

.method static synthetic access$900(Lcom/henrythompson/quoda/FilebrowserFragment;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x4

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/FilebrowserFragment;->sortItems(Ljava/util/ArrayList;)V

    nop

    return-void

    const/4 v0, 0x5
.end method

.method private checkInternetAndDisplayError()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mFilesystem:Lcom/henrythompson/quoda/filesystem/Filesystem;

    if-nez v2, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v1

    const/4 v3, 0x0

    const/4 v3, 0x3

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mFilesystem:Lcom/henrythompson/quoda/filesystem/Filesystem;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/Filesystem;->requiresInternetConnection()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/henrythompson/quoda/utils/Utils;->isConnectedToInternet()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mListener:Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const v1, 0x7f0d0133

    const/4 v3, 0x3

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d00f2

    const/4 v3, 0x2

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/FilebrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mListener:Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

    invoke-interface {v1, v0}, Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;->onFilesystemException(Lcom/henrythompson/quoda/filesystem/FilesystemException;)V

    const/4 v3, 0x3

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    const/4 v3, 0x4
.end method

.method private getAdapter()Lcom/henrythompson/quoda/FilebrowserAdapter;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/FilebrowserAdapter;

    const/4 v1, 0x1

    :goto_0
    return-object v0

    const/4 v1, 0x1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x0
.end method

.method private hideLoadingAnimation()V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mLoadingAnimation:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    const/4 v2, 0x3

    nop

    return-void

    const/4 v1, 0x5
.end method

.method private listDirectory(Lcom/henrythompson/quoda/filesystem/FileObject;)V
    .locals 5

    const/4 v4, 0x6

    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->checkInternetAndDisplayError()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mCurrentDirectory:Lcom/henrythompson/quoda/filesystem/FileObject;

    if-nez v0, :cond_0

    const/4 v4, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mCurrentDirectory:Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v4, 0x5

    :cond_0
    new-instance v0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;-><init>(Lcom/henrythompson/quoda/FilebrowserFragment;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v4, 0x3

    :cond_1
    nop

    return-void

    const/4 v1, 0x5
.end method

.method private onAddressBarPathEntered(Landroid/widget/EditText;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mFilesystem:Lcom/henrythompson/quoda/filesystem/Filesystem;

    invoke-virtual {v2, v1}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getDirectoryFileObjectForPath(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v0

    const/4 v3, 0x2

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->listDirectory(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v3, 0x2

    nop

    return-void

    const/4 v3, 0x0
.end method

.method private onListItemClicked(I)V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mDirectoryListings:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v2, 0x7

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->isDir()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->isContainerFile()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x6

    :cond_0
    instance-of v1, v0, Lcom/henrythompson/quoda/FilebrowserFragment$UpFileObject;

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->upOneLevel()V

    const/4 v2, 0x4

    :cond_1
    :goto_0
    nop

    return-void

    const/4 v1, 0x2

    const/4 v2, 0x6

    :cond_2
    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->listDirectory(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    goto :goto_0

    const/4 v1, 0x6

    const/4 v2, 0x3

    :cond_3
    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mListener:Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mListener:Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

    invoke-interface {v1, v0}, Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;->onFileSelected(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    goto :goto_0

    const/4 v2, 0x0
.end method

.method private showFileAlreadyExistsDialog(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x4

    const v1, 0x7f0d008c

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/henrythompson/quoda/FilebrowserFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x7

    const v1, 0x7f0d008b

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/henrythompson/quoda/FilebrowserFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x6

    const v1, 0x7f0d018c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x2

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v5, 0x1

    nop

    return-void

    const/4 v3, 0x3
.end method

.method private showLoadingAnimation()V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mLoadingAnimation:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    const/4 v2, 0x2

    nop

    return-void

    const/4 v0, 0x6
.end method

.method private sortItems(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    new-instance v0, Lcom/henrythompson/quoda/FilebrowserFragment$9;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/FilebrowserFragment$9;-><init>(Lcom/henrythompson/quoda/FilebrowserFragment;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x7

    :cond_0
    nop

    return-void

    const/4 v0, 0x4
.end method

.method private upOneLevel()V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mCurrentDirectory:Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->browseParentLocation(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v1, 0x7

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public browseLastSavedLocation(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mFilesystem:Lcom/henrythompson/quoda/filesystem/Filesystem;

    if-eqz v1, :cond_0

    const/4 v2, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mFilesystem:Lcom/henrythompson/quoda/filesystem/Filesystem;

    invoke-virtual {v1, p1}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getLastVisitedLocation(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->listDirectory(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v2, 0x2

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v2, 0x2

    const/4 v2, 0x0

    :cond_1
    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mFilesystem:Lcom/henrythompson/quoda/filesystem/Filesystem;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getDefaultLocation()Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->listDirectory(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    goto :goto_0

    const/4 v1, 0x3
.end method

.method public browseParentLocation(Lcom/henrythompson/quoda/filesystem/FileObject;)V
    .locals 6

    const/4 v5, 0x6

    const/4 v5, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->checkInternetAndDisplayError()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x6

    new-instance v1, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;

    invoke-direct {v1, p0, p1}, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;-><init>(Lcom/henrythompson/quoda/FilebrowserFragment;Lcom/henrythompson/quoda/filesystem/FileObject;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Void;

    const/4 v4, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v5, 0x0

    :cond_0
    nop

    return-void

    const/4 v2, 0x1
.end method

.method public createNewFile(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->checkInternetAndDisplayError()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    const/4 v4, 0x0

    new-instance v1, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;

    invoke-direct {v1, p0, p1, v3}, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;-><init>(Lcom/henrythompson/quoda/FilebrowserFragment;Ljava/lang/String;Z)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v4, 0x5

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v1, 0x6

    const/4 v4, 0x3

    :cond_1
    new-instance v1, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;

    invoke-direct {v1, p0, p1, v3}, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;-><init>(Lcom/henrythompson/quoda/FilebrowserFragment;Ljava/lang/String;Z)V

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    const/4 v1, 0x7
.end method

.method public createNewFolder(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x7

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->checkInternetAndDisplayError()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x5

    new-instance v0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;-><init>(Lcom/henrythompson/quoda/FilebrowserFragment;Ljava/lang/String;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v3, 0x7

    :cond_0
    nop

    return-void

    const/4 v3, 0x5
.end method

.method public getCurrentFolder()Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mCurrentDirectory:Lcom/henrythompson/quoda/filesystem/FileObject;

    return-object v0

    const/4 v1, 0x3
.end method

.method public getFilesystem()Lcom/henrythompson/quoda/filesystem/Filesystem;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mFilesystem:Lcom/henrythompson/quoda/filesystem/Filesystem;

    return-object v0

    const/4 v1, 0x6
.end method

.method public isFileWithNameListed(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mDirectoryListings:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    const/4 v4, 0x3

    :cond_0
    :goto_0
    return v1

    const/4 v4, 0x4

    const/4 v4, 0x5

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mDirectoryListings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v4, 0x7

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->isDir()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x3

    const/4 v1, 0x1

    goto :goto_0

    const/4 v3, 0x6
.end method

.method public isFolderWithNameListed(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mDirectoryListings:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    const/4 v4, 0x7

    :cond_0
    :goto_0
    return v1

    const/4 v3, 0x7

    const/4 v4, 0x6

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mDirectoryListings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v4, 0x6

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->isDir()Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, v0, Lcom/henrythompson/quoda/FilebrowserFragment$UpFileObject;

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x4

    const/4 v1, 0x1

    goto :goto_0

    const/4 v3, 0x4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const v2, 0x7f0a0034

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v6, 0x6

    const v2, 0x7f0800be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x4

    const v2, 0x7f0800bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mAddressBar:Landroid/widget/TextView;

    const/4 v6, 0x4

    const v2, 0x7f0800bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mLoadingAnimation:Landroid/widget/ProgressBar;

    const/4 v6, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/henrythompson/quoda/FilebrowserFragment$1;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/FilebrowserFragment$1;-><init>(Lcom/henrythompson/quoda/FilebrowserFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v6, 0x2

    const v2, 0x7f0800bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/melnykov/fab/FloatingActionButton;

    iput-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mFAB:Lcom/melnykov/fab/FloatingActionButton;

    const/4 v6, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mFAB:Lcom/melnykov/fab/FloatingActionButton;

    iget-object v3, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v5}, Lcom/melnykov/fab/FloatingActionButton;->attachToListView(Landroid/widget/AbsListView;Lcom/melnykov/fab/ScrollDirectionListener;)V

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mFAB:Lcom/melnykov/fab/FloatingActionButton;

    new-instance v3, Lcom/henrythompson/quoda/FilebrowserFragment$2;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/FilebrowserFragment$2;-><init>(Lcom/henrythompson/quoda/FilebrowserFragment;)V

    invoke-virtual {v2, v3}, Lcom/melnykov/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mAddressBar:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 v6, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mRunWhenLoaded:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    const/4 v6, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mRunWhenLoaded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    const/4 v6, 0x4

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    const/4 v6, 0x7

    const/4 v6, 0x1

    :cond_0
    iput-object v5, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mRunWhenLoaded:Ljava/util/ArrayList;

    const/4 v6, 0x5

    iput-boolean v4, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mIsLoaded:Z

    const/4 v6, 0x6

    :cond_1
    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/henrythompson/quoda/DataController;->attachListener(Lcom/henrythompson/quoda/DataEventListener;)V

    const/4 v6, 0x3

    return-object v1

    const/4 v4, 0x5
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x4

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    const/4 v1, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/henrythompson/quoda/DataController;->removeListener(Lcom/henrythompson/quoda/DataEventListener;)V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public onReceiveCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    const/4 v0, 0x0

    return v0

    const/4 v0, 0x4
.end method

.method public onReceiveEvent(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x5

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    nop

    return-void

    const/4 v0, 0x2

    const/4 v0, 0x2

    :pswitch_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->refresh()V

    goto :goto_0

    const/4 v0, 0x6

    const/4 v0, 0x4

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch
.end method

.method public refresh()V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mCurrentDirectory:Lcom/henrythompson/quoda/filesystem/FileObject;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mFilesystem:Lcom/henrythompson/quoda/filesystem/Filesystem;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getDefaultLocation()Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mCurrentDirectory:Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mCurrentDirectory:Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->listDirectory(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x7
.end method

.method public runOnSetupComplete(Ljava/lang/Runnable;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mIsLoaded:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    :goto_0
    nop

    return-void

    const/4 v1, 0x1

    const/4 v1, 0x7

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mRunWhenLoaded:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const/4 v1, 0x5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mRunWhenLoaded:Ljava/util/ArrayList;

    const/4 v1, 0x5

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mRunWhenLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v0, 0x0
.end method

.method public saveLocation(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mCurrentDirectory:Lcom/henrythompson/quoda/filesystem/FileObject;

    if-eqz v1, :cond_0

    const/4 v2, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mCurrentDirectory:Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilesystem()Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    const/4 v2, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mCurrentDirectory:Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {v0, v1, p1}, Lcom/henrythompson/quoda/filesystem/Filesystem;->setLastVisitedLocation(Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V

    const/4 v2, 0x2

    :cond_0
    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setFilesystem(Lcom/henrythompson/quoda/filesystem/Filesystem;)V
    .locals 4

    const/4 v3, 0x6

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mFilesystem:Lcom/henrythompson/quoda/filesystem/Filesystem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mFilesystem:Lcom/henrythompson/quoda/filesystem/Filesystem;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v3, 0x7

    :cond_0
    iput-object p1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mFilesystem:Lcom/henrythompson/quoda/filesystem/Filesystem;

    const/4 v3, 0x4

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mCurrentDirectory:Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mDirectoryListings:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mDirectoryListings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :cond_2
    invoke-direct {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->getAdapter()Lcom/henrythompson/quoda/FilebrowserAdapter;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    const/4 v3, 0x5

    invoke-virtual {v0}, Lcom/henrythompson/quoda/FilebrowserAdapter;->notifyDataSetChanged()V

    const/4 v3, 0x0

    :cond_3
    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mAddressBar:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    const/4 v3, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mAddressBar:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x4

    :cond_4
    nop

    return-void

    const/4 v2, 0x2
.end method

.method public setListener(Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mListener:Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public showAddressBar()V
    .locals 8

    const/4 v7, 0x2

    const v6, 0x7f0d006d

    const/4 v7, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x2

    const v4, 0x7f0d006e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x5

    new-instance v3, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x2

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x0

    const v4, 0x7f0d010a

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(I)V

    const/4 v7, 0x2

    iget-object v4, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mCurrentDirectory:Lcom/henrythompson/quoda/filesystem/FileObject;

    if-eqz v4, :cond_0

    const/4 v7, 0x7

    iget-object v4, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mCurrentDirectory:Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x4

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x7

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/4 v7, 0x6

    invoke-virtual {v3}, Landroid/widget/EditText;->selectAll()V

    const/4 v7, 0x0

    invoke-virtual {p0, v6}, Lcom/henrythompson/quoda/FilebrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x42

    invoke-virtual {v3, v4, v5}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    const/4 v7, 0x4

    invoke-virtual {p0, v6}, Lcom/henrythompson/quoda/FilebrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/henrythompson/quoda/FilebrowserFragment$7;

    invoke-direct {v5, p0, v3}, Lcom/henrythompson/quoda/FilebrowserFragment$7;-><init>(Lcom/henrythompson/quoda/FilebrowserFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x1

    const v4, 0x7f0d002e

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x7

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    const/4 v7, 0x6

    new-instance v4, Lcom/henrythompson/quoda/FilebrowserFragment$8;

    invoke-direct {v4, p0, v3, v2}, Lcom/henrythompson/quoda/FilebrowserFragment$8;-><init>(Lcom/henrythompson/quoda/FilebrowserFragment;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 v7, 0x6

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v7, 0x6

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v7, 0x6

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    const/4 v7, 0x6

    nop

    return-void

    const/4 v4, 0x6

    const/4 v7, 0x4

    :cond_0
    const-string v1, "/"

    goto :goto_0

    const/4 v4, 0x5
.end method

.method public showNewFileDialog()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x0

    const v5, 0x7f0d0065

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mDirectoryListings:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    const/4 v7, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    const v3, 0x7f0d0099

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x4

    const v3, 0x7f0d0098

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x5

    const v3, 0x7f0d018c

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x7

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v3, 0x1

    const/4 v7, 0x1

    :cond_1
    invoke-direct {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->checkInternetAndDisplayError()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v7, 0x6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x4

    const v3, 0x7f0d0187

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x7

    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x4

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/4 v7, 0x4

    const v3, 0x7f0d0109

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    const/4 v7, 0x5

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/FilebrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x42

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    const/4 v7, 0x6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x2

    new-instance v3, Lcom/henrythompson/quoda/FilebrowserFragment$3;

    invoke-direct {v3, p0, v2}, Lcom/henrythompson/quoda/FilebrowserFragment$3;-><init>(Lcom/henrythompson/quoda/FilebrowserFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x2

    const v3, 0x7f0d002e

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x4

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v7, 0x5

    new-instance v3, Lcom/henrythompson/quoda/FilebrowserFragment$4;

    invoke-direct {v3, p0, v2, v1}, Lcom/henrythompson/quoda/FilebrowserFragment$4;-><init>(Lcom/henrythompson/quoda/FilebrowserFragment;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 v7, 0x1

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v7, 0x5

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v7, 0x2

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    const/4 v0, 0x3
.end method

.method public showNewFolderDialog()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const v5, 0x7f0d0065

    const/4 v7, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/FilebrowserFragment;->mDirectoryListings:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    const/4 v7, 0x4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x6

    const v3, 0x7f0d009d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x6

    const v3, 0x7f0d009c

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x0

    const v3, 0x7f0d018c

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x4

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v4, 0x7

    const/4 v7, 0x2

    :cond_1
    invoke-direct {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->checkInternetAndDisplayError()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v7, 0x7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x6

    const v3, 0x7f0d0188

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x7

    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x6

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    const/4 v7, 0x3

    const v3, 0x7f0d012e

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    const/4 v7, 0x4

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/FilebrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x42

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    const/4 v7, 0x7

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x6

    new-instance v3, Lcom/henrythompson/quoda/FilebrowserFragment$5;

    invoke-direct {v3, p0, v2}, Lcom/henrythompson/quoda/FilebrowserFragment$5;-><init>(Lcom/henrythompson/quoda/FilebrowserFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x2

    const v3, 0x7f0d002e

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x2

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v7, 0x6

    new-instance v3, Lcom/henrythompson/quoda/FilebrowserFragment$6;

    invoke-direct {v3, p0, v2, v1}, Lcom/henrythompson/quoda/FilebrowserFragment$6;-><init>(Lcom/henrythompson/quoda/FilebrowserFragment;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 v7, 0x7

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v7, 0x1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v7, 0x2

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    const/4 v7, 0x1
.end method
