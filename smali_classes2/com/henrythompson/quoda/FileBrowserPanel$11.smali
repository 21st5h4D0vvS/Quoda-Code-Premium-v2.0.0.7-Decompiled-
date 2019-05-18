.class Lcom/henrythompson/quoda/FileBrowserPanel$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/FileBrowserPanel;->onFileSelectedOpen(Lcom/henrythompson/quoda/filesystem/FileObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/FileBrowserPanel;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/FileBrowserPanel;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public onAuthNeededException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/4 v8, 0x5

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    const v3, 0x7f0d00f7

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v8, 0x7

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/henrythompson/quoda/FileBrowserPanel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    const v3, 0x7f0d00ee

    const/4 v8, 0x3

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/FileBrowserPanel;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v8, 0x2

    const/16 v2, 0x23

    invoke-virtual {v0, v2, v1}, Lcom/henrythompson/quoda/DataController;->sendEvent(I[Ljava/lang/Object;)V

    const/4 v8, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$700(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v8, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$700(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;->onAuthNeededException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V

    const/4 v8, 0x1

    :cond_0
    nop

    return-void

    const/4 v4, 0x4
.end method

.method public onFilesystemException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FilesystemException;)V
    .locals 6

    const/4 v5, 0x5

    const/4 v5, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/4 v5, 0x2

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    const v4, 0x7f0d00f7

    const/4 v5, 0x1

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/FileBrowserPanel;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FilesystemException;->getUserMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v5, 0x3

    const/16 v2, 0x23

    invoke-virtual {v0, v2, v1}, Lcom/henrythompson/quoda/DataController;->sendEvent(I[Ljava/lang/Object;)V

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$700(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v5, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$700(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;->onFilesystemException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FilesystemException;)V

    const/4 v5, 0x1

    :cond_0
    nop

    return-void

    const/4 v0, 0x2
.end method

.method public onInternetRequiredAndUnavailable(Lcom/henrythompson/quoda/document/Document;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/4 v5, 0x4

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    const v4, 0x7f0d00f7

    const/4 v5, 0x3

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/FileBrowserPanel;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    const v4, 0x7f0d00f2

    const/4 v5, 0x4

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/FileBrowserPanel;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v5, 0x6

    const/16 v2, 0x23

    invoke-virtual {v0, v2, v1}, Lcom/henrythompson/quoda/DataController;->sendEvent(I[Ljava/lang/Object;)V

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$700(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v5, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$700(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;->onInternetRequiredAndUnavailable(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v5, 0x7

    :cond_0
    nop

    return-void

    const/4 v0, 0x2
.end method

.method public onOpenFileFinished(Lcom/henrythompson/quoda/document/Document;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v7, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/document/DocumentsManager;->addAndDisplayDocument(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v7, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/16 v1, 0x24

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    const v3, 0x7f0d0107

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/henrythompson/quoda/FileBrowserPanel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/DataController;->sendEvent(ILjava/lang/Object;)V

    const/4 v7, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$700(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v7, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$700(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;->onOpenFileFinished(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v7, 0x2

    :cond_0
    nop

    return-void

    const/4 v7, 0x5
.end method

.method public onOpenFileStart(Lcom/henrythompson/quoda/document/Document;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$700(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$700(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;->onOpenFileStart(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v1, 0x3

    :cond_0
    nop

    return-void

    const/4 v1, 0x5
.end method

.method public onSaveFileFinished(Lcom/henrythompson/quoda/document/Document;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$700(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$700(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;->onSaveFileFinished(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v1, 0x1

    :cond_0
    nop

    return-void

    const/4 v0, 0x5
.end method

.method public onSaveFileStart(Lcom/henrythompson/quoda/document/Document;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$700(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$11;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$700(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;->onSaveFileStart(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v1, 0x4

    :cond_0
    nop

    return-void

    const/4 v0, 0x4
.end method
