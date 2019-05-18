.class public Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/FilebrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CreateNewFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAuthException:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

.field private mDefaultAuthorisedAction:Ljava/lang/Runnable;

.field private mFilesystemUuid:Ljava/lang/String;

.field private mFsException:Lcom/henrythompson/quoda/filesystem/FilesystemException;

.field private mIsDir:Z

.field private mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/henrythompson/quoda/FilebrowserFragment;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/FilebrowserFragment;Ljava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v1, 0x7

    new-instance v0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask$1;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask$1;-><init>(Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->mDefaultAuthorisedAction:Ljava/lang/Runnable;

    const/4 v1, 0x7

    iput-object p2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->mName:Ljava/lang/String;

    const/4 v1, 0x3

    iput-boolean p3, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->mIsDir:Z

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x7
.end method

.method static synthetic access$1400(Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x4

    iget-boolean v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->mIsDir:Z

    return v0

    const/4 v1, 0x5
.end method

.method static synthetic access$1500(Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->mName:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x5

    :try_start_0
    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v2}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$200(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getUuid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->mFilesystemUuid:Ljava/lang/String;

    const/4 v8, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v2}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$200(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v2

    iget-object v3, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v3}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$1100(Lcom/henrythompson/quoda/FilebrowserFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v4}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$100(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v4

    iget-object v5, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->mName:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->mIsDir:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/Filesystem;->createNewFile(Ljava/util/ArrayList;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;Z)V

    const/4 v8, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->mFilesystemUuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v3}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$200(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v8, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    iget-object v3, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v3}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$1100(Lcom/henrythompson/quoda/FilebrowserFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$900(Lcom/henrythompson/quoda/FilebrowserFragment;Ljava/util/ArrayList;)V

    const/4 v8, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v2}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$100(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/FileObject;->hasParent()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v2}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$1100(Lcom/henrythompson/quoda/FilebrowserFragment;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/henrythompson/quoda/FilebrowserFragment$UpFileObject;

    if-nez v2, :cond_0

    const/4 v8, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v2}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$1100(Lcom/henrythompson/quoda/FilebrowserFragment;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/henrythompson/quoda/FilebrowserFragment$UpFileObject;

    iget-object v5, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->mFilesystemUuid:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/henrythompson/quoda/FilebrowserFragment$UpFileObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v8, 0x2

    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/henrythompson/quoda/filesystem/FilesystemException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/henrythompson/quoda/filesystem/AuthNeededException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    const/4 v8, 0x4

    :goto_0
    return-object v2

    const/4 v0, 0x6

    const/4 v8, 0x1

    :catch_0
    move-exception v0

    const/4 v8, 0x7

    iput-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->mFsException:Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const/4 v8, 0x6

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    const/4 v8, 0x2

    const/4 v8, 0x4

    :catch_1
    move-exception v0

    const/4 v8, 0x1

    iput-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->mAuthException:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    const/4 v8, 0x2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    const/4 v7, 0x4

    const/4 v8, 0x1

    :catch_2
    move-exception v0

    const/4 v8, 0x5

    iget-boolean v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->mIsDir:Z

    if-eqz v2, :cond_1

    const/4 v8, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    const v3, 0x7f0d0179

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/FilebrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x5

    :goto_1
    new-instance v2, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v3, "Error creating new File or Folder"

    invoke-direct {v2, v3, v1}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->mFsException:Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const/4 v8, 0x5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    const/4 v4, 0x4

    const/4 v8, 0x3

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    const v3, 0x7f0d0177

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/FilebrowserFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    const/4 v7, 0x5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x6

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    const/4 v1, 0x5
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->mFilesystemUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$200(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v3, 0x7

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v2, 0x5

    const/4 v3, 0x2

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$1600(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/FilebrowserAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/FilebrowserAdapter;->notifyDataSetChanged()V

    goto :goto_0

    const/4 v3, 0x0

    const/4 v3, 0x3

    :cond_2
    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$800(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->mFsException:Lcom/henrythompson/quoda/filesystem/FilesystemException;

    if-eqz v0, :cond_3

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$800(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->mFsException:Lcom/henrythompson/quoda/filesystem/FilesystemException;

    invoke-interface {v0, v1}, Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;->onFilesystemException(Lcom/henrythompson/quoda/filesystem/FilesystemException;)V

    goto :goto_0

    const/4 v1, 0x3

    const/4 v3, 0x6

    :cond_3
    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->mAuthException:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    if-eqz v0, :cond_0

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$800(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->mAuthException:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->mDefaultAuthorisedAction:Ljava/lang/Runnable;

    invoke-interface {v0, v1, v2}, Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;->onAuthNeededException(Lcom/henrythompson/quoda/filesystem/AuthNeededException;Ljava/lang/Runnable;)V

    goto :goto_0

    const/4 v0, 0x0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->onPostExecute(Ljava/lang/Boolean;)V

    nop

    return-void

    const/4 v0, 0x5
.end method
