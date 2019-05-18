.class Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask$1;->this$1:Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public onAuthNeededException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public onFilesystemException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FilesystemException;)V
    .locals 4

    const/4 v3, 0x5

    const/4 v3, 0x7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask$1;->this$1:Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;

    iget-object v1, v1, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    const v1, 0x7f0d00eb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x3

    const v1, 0x7f0d0230

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x3

    const v1, 0x7f0d00c1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x7

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v3, 0x4

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public onInternetRequiredAndUnavailable(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public onOpenFileFinished(Lcom/henrythompson/quoda/document/Document;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask$1;->this$1:Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;

    iget-object v1, v1, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mUrl:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/henrythompson/quoda/document/Document;->setBaseURL(Ljava/lang/String;)V

    const/4 v3, 0x3

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v1, 0x0

    const-string v2, "local"

    invoke-direct {v0, v1, v2}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v3, 0x1

    const-string v1, "source.html"

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask$1;->this$1:Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;

    iget-object v1, v1, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v1, p1}, Lcom/henrythompson/quoda/document/DocumentsManager;->addAndDisplayDocument(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v3, 0x2

    nop

    return-void

    const/4 v3, 0x4
.end method

.method public onOpenFileStart(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public onSaveFileFinished(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public onSaveFileStart(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x1
.end method
