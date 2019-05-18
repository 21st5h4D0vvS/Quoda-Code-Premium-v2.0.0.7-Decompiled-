.class public Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/FilebrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListDirectoryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/henrythompson/quoda/filesystem/FileObject;",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/henrythompson/quoda/filesystem/FileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mAuthException:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

.field private mErrorRecoveryAction:Ljava/lang/Runnable;

.field private mFilesystemUuid:Ljava/lang/String;

.field private mFolderBeingListed:Lcom/henrythompson/quoda/filesystem/FileObject;

.field private mFsException:Lcom/henrythompson/quoda/filesystem/FilesystemException;

.field final synthetic this$0:Lcom/henrythompson/quoda/FilebrowserFragment;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/FilebrowserFragment;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v1, 0x4

    new-instance v0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask$1;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask$1;-><init>(Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mErrorRecoveryAction:Ljava/lang/Runnable;

    nop

    return-void

    const/4 v0, 0x3
.end method

.method static synthetic access$500(Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;)Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mFolderBeingListed:Lcom/henrythompson/quoda/filesystem/FileObject;

    return-object v0

    const/4 v0, 0x2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x3

    check-cast p1, [Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->doInBackground([Lcom/henrythompson/quoda/filesystem/FileObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    const/4 v0, 0x4
.end method

.method protected varargs doInBackground([Lcom/henrythompson/quoda/filesystem/FileObject;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    aget-object v3, p1, v9

    iput-object v3, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mFolderBeingListed:Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v10, 0x1

    iget-object v3, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mFolderBeingListed:Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilesystemUuid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mFilesystemUuid:Ljava/lang/String;

    const/4 v10, 0x4

    :try_start_0
    iget-object v3, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v3}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$200(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v3

    iget-object v4, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mFolderBeingListed:Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/filesystem/Filesystem;->listFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v10, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mFilesystemUuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v4}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$200(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    const/4 v10, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v3, v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$900(Lcom/henrythompson/quoda/FilebrowserFragment;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/henrythompson/quoda/filesystem/FilesystemException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/henrythompson/quoda/filesystem/AuthNeededException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v10, 0x6

    :cond_0
    :goto_0
    return-object v1

    const/4 v0, 0x7

    const/4 v10, 0x4

    :catch_0
    move-exception v0

    const/4 v10, 0x3

    iput-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mFsException:Lcom/henrythompson/quoda/filesystem/FilesystemException;

    move-object v1, v2

    const/4 v10, 0x7

    goto :goto_0

    const/4 v4, 0x1

    const/4 v10, 0x7

    :catch_1
    move-exception v0

    const/4 v10, 0x5

    iput-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mAuthException:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    move-object v1, v2

    const/4 v10, 0x3

    goto :goto_0

    const/4 v9, 0x4

    const/4 v10, 0x6

    :catch_2
    move-exception v0

    const/4 v10, 0x7

    new-instance v3, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v4, "Error listing directory"

    const/4 v10, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d017c

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mFolderBeingListed:Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mFsException:Lcom/henrythompson/quoda/filesystem/FilesystemException;

    move-object v1, v2

    const/4 v10, 0x4

    goto :goto_0

    const/4 v9, 0x1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x4

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->onPostExecute(Ljava/util/ArrayList;)V

    nop

    return-void

    const/4 v0, 0x5
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mFilesystemUuid:Ljava/lang/String;

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v2}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$200(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v4, 0x1

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v2, 0x4

    const/4 v4, 0x3

    :cond_1
    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$1000(Lcom/henrythompson/quoda/FilebrowserFragment;)V

    const/4 v4, 0x0

    if-eqz p1, :cond_3

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mFolderBeingListed:Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$102(Lcom/henrythompson/quoda/FilebrowserFragment;Lcom/henrythompson/quoda/filesystem/FileObject;)Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v1, p1}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$1102(Lcom/henrythompson/quoda/FilebrowserFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$1200(Lcom/henrythompson/quoda/FilebrowserFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v2}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$100(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$100(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/FileObject;->hasParent()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x7

    const/4 v1, 0x0

    new-instance v2, Lcom/henrythompson/quoda/FilebrowserFragment$UpFileObject;

    iget-object v3, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v3}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$100(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilesystemUuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/henrythompson/quoda/FilebrowserFragment$UpFileObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v4, 0x6

    :cond_2
    new-instance v0, Lcom/henrythompson/quoda/FilebrowserAdapter;

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v2}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$1100(Lcom/henrythompson/quoda/FilebrowserFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/henrythompson/quoda/FilebrowserAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$1300(Lcom/henrythompson/quoda/FilebrowserFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$1300(Lcom/henrythompson/quoda/FilebrowserFragment;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask$2;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask$2;-><init>(Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    const/4 v4, 0x6

    const/4 v4, 0x1

    :cond_3
    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$800(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mAuthException:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    if-eqz v1, :cond_4

    const/4 v4, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$800(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mAuthException:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    iget-object v3, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mErrorRecoveryAction:Ljava/lang/Runnable;

    invoke-interface {v1, v2, v3}, Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;->onAuthNeededException(Lcom/henrythompson/quoda/filesystem/AuthNeededException;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    const/4 v0, 0x2

    const/4 v4, 0x3

    :cond_4
    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mFsException:Lcom/henrythompson/quoda/filesystem/FilesystemException;

    if-eqz v1, :cond_0

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mFsException:Lcom/henrythompson/quoda/filesystem/FilesystemException;

    instance-of v1, v1, Lcom/henrythompson/quoda/filesystem/FolderNotFoundException;

    if-eqz v1, :cond_5

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mFolderBeingListed:Lcom/henrythompson/quoda/filesystem/FileObject;

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v2}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$200(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getDefaultLocation()Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/FileObject;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$800(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mFsException:Lcom/henrythompson/quoda/filesystem/FilesystemException;

    invoke-interface {v1, v2}, Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;->onFilesystemException(Lcom/henrythompson/quoda/filesystem/FilesystemException;)V

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v2}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$200(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getDefaultLocation()Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$600(Lcom/henrythompson/quoda/FilebrowserFragment;Lcom/henrythompson/quoda/filesystem/FileObject;)V

    goto/16 :goto_0

    const/4 v4, 0x6

    const/4 v4, 0x4

    :cond_5
    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$800(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mFsException:Lcom/henrythompson/quoda/filesystem/FilesystemException;

    invoke-interface {v1, v2}, Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;->onFilesystemException(Lcom/henrythompson/quoda/filesystem/FilesystemException;)V

    const/4 v4, 0x6

    const-string v1, "FilebrowserFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mFsException:Lcom/henrythompson/quoda/filesystem/FilesystemException;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FilesystemException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    const/4 v4, 0x0
.end method

.method protected onPreExecute()V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$700(Lcom/henrythompson/quoda/FilebrowserFragment;)V

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$800(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$800(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->mFolderBeingListed:Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-interface {v0, v1}, Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;->onFolderListStart(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v2, 0x7

    :cond_0
    nop

    return-void

    const/4 v1, 0x2
.end method
