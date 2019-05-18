.class Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mDocument:Lcom/henrythompson/quoda/document/Document;

.field private mEncoding:Ljava/lang/String;

.field private mException:Ljava/lang/Exception;

.field private mListener:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

.field private mLocation:Lcom/henrythompson/quoda/filesystem/FileObject;

.field private mNoInternetException:Z

.field private mUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;Lcom/henrythompson/quoda/filesystem/FileObject;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v1, 0x7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mNoInternetException:Z

    const/4 v1, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mUuid:Ljava/lang/String;

    const/4 v1, 0x3

    iput-object p2, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mDocument:Lcom/henrythompson/quoda/document/Document;

    const/4 v1, 0x4

    iput-object p3, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mEncoding:Ljava/lang/String;

    const/4 v1, 0x6

    iput-object p4, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mLocation:Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v1, 0x1

    iput-object p5, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mListener:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x4
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mUuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/Filesystem;->requiresInternetConnection()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/utils/Utils;->isConnectedToInternet()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v6, 0x1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mNoInternetException:Z

    const/4 v6, 0x0

    :goto_0
    return-object v5

    const/4 v6, 0x3

    const/4 v6, 0x0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mDocument:Lcom/henrythompson/quoda/document/Document;

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mLocation:Lcom/henrythompson/quoda/filesystem/FileObject;

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mEncoding:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/henrythompson/quoda/filesystem/Filesystem;->openFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/henrythompson/quoda/filesystem/FilesystemException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/henrythompson/quoda/filesystem/AuthNeededException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    const/4 v6, 0x6

    const/4 v6, 0x4

    :catch_0
    move-exception v0

    const/4 v6, 0x5

    :goto_1
    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mException:Ljava/lang/Exception;

    goto :goto_0

    const/4 v6, 0x4

    const/4 v6, 0x6

    :catch_1
    move-exception v0

    goto :goto_1

    const/4 v6, 0x3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->onPostExecute(Ljava/lang/String;)V

    nop

    return-void

    const/4 v0, 0x3
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mListener:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    if-eqz v0, :cond_0

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mException:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    if-eqz v0, :cond_1

    const/4 v3, 0x6

    const-string v0, "FileOpenSaveService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FilesystemException when opening file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mException:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mListener:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mDocument:Lcom/henrythompson/quoda/document/Document;

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mException:Ljava/lang/Exception;

    check-cast v0, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    invoke-interface {v1, v2, v0}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;->onFilesystemException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FilesystemException;)V

    const/4 v3, 0x5

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v3, 0x2

    const/4 v3, 0x7

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mException:Ljava/lang/Exception;

    instance-of v0, v0, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    if-eqz v0, :cond_0

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mListener:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mDocument:Lcom/henrythompson/quoda/document/Document;

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mException:Ljava/lang/Exception;

    check-cast v0, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    invoke-interface {v1, v2, v0}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;->onAuthNeededException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V

    goto :goto_0

    const/4 v1, 0x0

    const/4 v3, 0x2

    :cond_2
    iget-boolean v0, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mNoInternetException:Z

    if-eqz v0, :cond_3

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mListener:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mDocument:Lcom/henrythompson/quoda/document/Document;

    invoke-interface {v0, v1}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;->onInternetRequiredAndUnavailable(Lcom/henrythompson/quoda/document/Document;)V

    goto :goto_0

    const/4 v0, 0x5

    const/4 v3, 0x5

    :cond_3
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mListener:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mDocument:Lcom/henrythompson/quoda/document/Document;

    invoke-interface {v0, v1}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;->onOpenFileFinished(Lcom/henrythompson/quoda/document/Document;)V

    goto :goto_0

    const/4 v0, 0x5
.end method

.method protected onPreExecute()V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mListener:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mListener:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->mDocument:Lcom/henrythompson/quoda/document/Document;

    invoke-interface {v0, v1}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;->onOpenFileStart(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v2, 0x4

    :cond_0
    nop

    return-void

    const/4 v0, 0x3
.end method
