.class Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/FilebrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrowseParentFolderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mAuthException:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

.field private mDefaultAuthorisedAction:Ljava/lang/Runnable;

.field private mFilesystemUuid:Ljava/lang/String;

.field private mFsException:Lcom/henrythompson/quoda/filesystem/FilesystemException;

.field private mObject:Lcom/henrythompson/quoda/filesystem/FileObject;

.field private mParent:Lcom/henrythompson/quoda/filesystem/FileObject;

.field final synthetic this$0:Lcom/henrythompson/quoda/FilebrowserFragment;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/FilebrowserFragment;Lcom/henrythompson/quoda/filesystem/FileObject;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v1, 0x5

    new-instance v0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask$1;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask$1;-><init>(Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->mDefaultAuthorisedAction:Ljava/lang/Runnable;

    const/4 v1, 0x1

    iput-object p2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->mObject:Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v1, 0x3

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0

    const/4 v0, 0x2
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    const/4 v8, 0x1

    const/4 v8, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$200(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->mFilesystemUuid:Ljava/lang/String;

    const/4 v8, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$200(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->mObject:Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getParentFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->mParent:Lcom/henrythompson/quoda/filesystem/FileObject;
    :try_end_0
    .catch Lcom/henrythompson/quoda/filesystem/FilesystemException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/henrythompson/quoda/filesystem/AuthNeededException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v8, 0x5

    :goto_0
    const/4 v1, 0x0

    return-object v1

    const/4 v8, 0x1

    const/4 v8, 0x5

    :catch_0
    move-exception v0

    const/4 v8, 0x7

    iput-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->mFsException:Lcom/henrythompson/quoda/filesystem/FilesystemException;

    goto :goto_0

    const/4 v2, 0x4

    const/4 v8, 0x4

    :catch_1
    move-exception v0

    const/4 v8, 0x3

    iput-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->mAuthException:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    goto :goto_0

    const/4 v5, 0x5

    const/4 v8, 0x0

    :catch_2
    move-exception v0

    const/4 v8, 0x3

    new-instance v1, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v2, "Error getting parent folder"

    iget-object v3, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    const v4, 0x7f0d0181

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->mObject:Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/henrythompson/quoda/FilebrowserFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->mFsException:Lcom/henrythompson/quoda/filesystem/FilesystemException;

    goto :goto_0

    const/4 v2, 0x1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x3

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->onPostExecute(Ljava/lang/Void;)V

    nop

    return-void

    const/4 v0, 0x4
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->mFilesystemUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$200(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v1, 0x7

    const/4 v3, 0x3

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->mParent:Lcom/henrythompson/quoda/filesystem/FileObject;

    if-eqz v0, :cond_2

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->mParent:Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$600(Lcom/henrythompson/quoda/FilebrowserFragment;Lcom/henrythompson/quoda/filesystem/FileObject;)V

    goto :goto_0

    const/4 v0, 0x7

    const/4 v3, 0x7

    :cond_2
    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$800(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->mAuthException:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    if-eqz v0, :cond_3

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$800(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->mAuthException:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->mDefaultAuthorisedAction:Ljava/lang/Runnable;

    invoke-interface {v0, v1, v2}, Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;->onAuthNeededException(Lcom/henrythompson/quoda/filesystem/AuthNeededException;Ljava/lang/Runnable;)V

    goto :goto_0

    const/4 v2, 0x0

    const/4 v3, 0x5

    :cond_3
    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->mFsException:Lcom/henrythompson/quoda/filesystem/FilesystemException;

    if-eqz v0, :cond_0

    const/4 v3, 0x7

    const-string v0, "FilebrowserFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error going up one level with message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->mFsException:Lcom/henrythompson/quoda/filesystem/FilesystemException;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/FilesystemException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$800(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->mFsException:Lcom/henrythompson/quoda/filesystem/FilesystemException;

    invoke-interface {v0, v1}, Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;->onFilesystemException(Lcom/henrythompson/quoda/filesystem/FilesystemException;)V

    goto :goto_0

    const/4 v3, 0x7
.end method

.method protected onPreExecute()V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$BrowseParentFolderTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$700(Lcom/henrythompson/quoda/FilebrowserFragment;)V

    const/4 v1, 0x5

    nop

    return-void

    const/4 v0, 0x2
.end method
