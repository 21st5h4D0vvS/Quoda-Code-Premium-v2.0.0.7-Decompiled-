.class public Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$StandardFilesystemOperationListener;,
        Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;,
        Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;,
        Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$SaveFileAsTask;,
        Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$SaveFileTask;,
        Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public static openFile(Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;Lcom/henrythompson/quoda/filesystem/FileObject;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;)V
    .locals 11

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilesystemUuid()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;-><init>(Ljava/lang/String;Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;Lcom/henrythompson/quoda/filesystem/FileObject;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;)V

    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocumentCount()I

    move-result v6

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v6, :cond_1

    invoke-virtual {v7, v9}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocument(I)Lcom/henrythompson/quoda/document/Document;

    move-result-object v10

    invoke-virtual {v7, v9}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocument(I)Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getFileObject()Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v8

    if-eq p0, v10, :cond_0

    invoke-virtual {p2, v8}, Lcom/henrythompson/quoda/filesystem/FileObject;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v7, v9}, Lcom/henrythompson/quoda/document/DocumentsManager;->displayDocument(I)Z

    :goto_1
    nop

    return-void

    const/4 v5, 0x2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    const/4 v2, 0x0

    :cond_1
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OpenFileTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    const/4 v8, 0x1
.end method

.method public static saveAll(Landroid/support/v4/app/FragmentActivity;)V
    .locals 6

    const/4 v5, 0x7

    const/4 v5, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v0

    const/4 v5, 0x5

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocumentCount()I

    move-result v2

    const/4 v5, 0x7

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    const/4 v5, 0x3

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, p0}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;->saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;Landroid/app/Activity;)V

    const/4 v5, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v4, 0x4

    const/4 v5, 0x6

    :cond_0
    nop

    return-void

    const/4 v1, 0x0
.end method

.method public static saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$SaveFileAsTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$SaveFileAsTask;-><init>(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;)V

    const/4 v3, 0x2

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$SaveFileAsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v3, 0x2

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public static saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x7

    invoke-static {p0}, Lcom/henrythompson/quoda/utils/Utils;->documentHasFilepath(Lcom/henrythompson/quoda/document/Document;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$SaveFileTask;

    invoke-direct {v0, p0, p1}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$SaveFileTask;-><init>(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;)V

    const/4 v3, 0x4

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$SaveFileTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v3, 0x6

    :goto_0
    nop

    return-void

    const/4 v2, 0x3

    const/4 v3, 0x3

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;->saveFileAs(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;Landroid/app/Activity;)V

    goto :goto_0

    const/4 v2, 0x7
.end method

.method public static saveFile(Ljava/lang/String;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocumentById(Ljava/lang/String;)Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, p1, p2, p3, p4}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;->saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;Landroid/app/Activity;)V

    const/4 v2, 0x5

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public static saveFile(Ljava/lang/String;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;Landroid/support/v4/app/FragmentActivity;)V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocumentById(Ljava/lang/String;)Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v0, p1, p2}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;->saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;Landroid/app/Activity;)V

    const/4 v2, 0x7

    nop

    return-void

    const/4 v2, 0x7
.end method

.method public static saveFileAs(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;Landroid/app/Activity;)V
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x6

    sget-boolean v3, Lcom/henrythompson/quoda/QuodaApplication;->IS_TABLET:Z

    if-eqz v3, :cond_0

    instance-of v3, p2, Landroid/support/v4/app/FragmentActivity;

    if-eqz v3, :cond_0

    move-object v2, p2

    const/4 v6, 0x4

    check-cast v2, Landroid/support/v4/app/FragmentActivity;

    const/4 v6, 0x1

    const-string v3, "save_as"

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/Document;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v5, v4, v5}, Lcom/henrythompson/quoda/FileBrowserPanel;->newInstance(Ljava/lang/String;ILjava/lang/String;Z)Lcom/henrythompson/quoda/FileBrowserPanel;

    move-result-object v0

    const/4 v6, 0x5

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "save_as"

    invoke-virtual {v0, v3, v4}, Lcom/henrythompson/quoda/FileBrowserPanel;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/4 v6, 0x7

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/FileBrowserPanel;->setFilesystemOperationListener(Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;)V

    const/4 v6, 0x5

    :goto_0
    nop

    return-void

    const/4 v4, 0x6

    const/4 v6, 0x5

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/henrythompson/quoda/FilebrowserActivity;

    invoke-direct {v1, p2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v6, 0x3

    const-string v3, "document_uuid"

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/Document;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, 0x1

    invoke-virtual {p2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    const/4 v5, 0x0
.end method

.method public static showSaveDialog(Lcom/henrythompson/quoda/document/Document;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/support/v4/app/FragmentActivity;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v6, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    const v2, 0x7f0d00ce

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x2

    const v2, 0x7f0d00cd

    invoke-virtual {p3, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x5

    const v2, 0x7f0d0251

    new-instance v3, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$1;

    invoke-direct {v3, p0, p4, p3}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$1;-><init>(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x0

    const v2, 0x7f0d0189

    new-instance v3, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$2;

    invoke-direct {v3, p1}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x2

    const v2, 0x7f0d002e

    new-instance v3, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$3;

    invoke-direct {v3, p2}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$3;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x7

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v6, 0x2

    nop

    return-void

    const/4 v2, 0x3
.end method
