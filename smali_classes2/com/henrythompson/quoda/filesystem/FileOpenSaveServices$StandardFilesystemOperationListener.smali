.class public Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$StandardFilesystemOperationListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StandardFilesystemOperationListener"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mOnAuthNeeded:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x7

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$StandardFilesystemOperationListener;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x4

    iput-object p2, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$StandardFilesystemOperationListener;->mOnAuthNeeded:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public onAuthNeededException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$StandardFilesystemOperationListener;->mOnAuthNeeded:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;

    invoke-interface {v0, p1, p2}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;->onAuthNeeded(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public onFilesystemException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FilesystemException;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v5, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/4 v5, 0x6

    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$StandardFilesystemOperationListener;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0d00eb

    const/4 v5, 0x5

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FilesystemException;->getUserMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v5, 0x6

    const/16 v2, 0x23

    invoke-virtual {v0, v2, v1}, Lcom/henrythompson/quoda/DataController;->sendEvent(I[Ljava/lang/Object;)V

    const/4 v5, 0x2

    nop

    return-void

    const/4 v4, 0x3
.end method

.method public onInternetRequiredAndUnavailable(Lcom/henrythompson/quoda/document/Document;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$StandardFilesystemOperationListener;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d00f7

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v7, 0x7

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$StandardFilesystemOperationListener;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d00f2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v7, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2, v0}, Lcom/henrythompson/quoda/DataController;->sendEvent(I[Ljava/lang/Object;)V

    const/4 v7, 0x3

    nop

    return-void

    const/4 v4, 0x5
.end method

.method public onOpenFileFinished(Lcom/henrythompson/quoda/document/Document;)V
    .locals 8

    const/4 v7, 0x7

    const/4 v7, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/16 v1, 0x24

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$StandardFilesystemOperationListener;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0d017f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/DataController;->sendEvent(ILjava/lang/Object;)V

    const/4 v7, 0x5

    nop

    return-void

    const/4 v2, 0x2
.end method

.method public onOpenFileStart(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public onSaveFileFinished(Lcom/henrythompson/quoda/document/Document;)V
    .locals 8

    const/4 v7, 0x6

    const/4 v7, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/16 v1, 0x24

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$StandardFilesystemOperationListener;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0d0182

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/DataController;->sendEvent(ILjava/lang/Object;)V

    const/4 v7, 0x5

    nop

    return-void

    const/4 v6, 0x0
.end method

.method public onSaveFileStart(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x1
.end method
