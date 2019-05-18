.class Lcom/henrythompson/quoda/EditorActivity$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorActivity$5;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentlyShownDialog:Landroid/app/Dialog;

.field final synthetic this$1:Lcom/henrythompson/quoda/EditorActivity$5;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorActivity$5;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method

.method static synthetic access$200(Lcom/henrythompson/quoda/EditorActivity$5$1;Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x6

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/EditorActivity$5$1;->saveNext(Lcom/henrythompson/quoda/document/Document;)V

    nop

    return-void

    const/4 v0, 0x2
.end method

.method static synthetic access$300(Lcom/henrythompson/quoda/EditorActivity$5$1;Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x6

    invoke-direct {p0, p1, p2}, Lcom/henrythompson/quoda/EditorActivity$5$1;->showErrorMessage(Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;)V

    nop

    return-void

    const/4 v0, 0x1
.end method

.method private saveNext(Lcom/henrythompson/quoda/document/Document;)V
    .locals 6

    const/4 v5, 0x7

    const/4 v5, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->mCurrentlyShownDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->mCurrentlyShownDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    const/4 v5, 0x1

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->mCurrentlyShownDialog:Landroid/app/Dialog;

    const/4 v5, 0x4

    :cond_0
    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getUUID()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x5

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget v3, v3, Lcom/henrythompson/quoda/EditorActivity$5;->val$listedDocumentsCount:I

    if-ge v1, v3, :cond_1

    const/4 v5, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget-object v3, v3, Lcom/henrythompson/quoda/EditorActivity$5;->val$documentUuids:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v5, 0x1

    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x2

    :goto_1
    iget-object v3, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget v3, v3, Lcom/henrythompson/quoda/EditorActivity$5;->val$listedDocumentsCount:I

    if-ge v1, v3, :cond_3

    const/4 v5, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget-object v3, v3, Lcom/henrythompson/quoda/EditorActivity$5;->val$shouldSave:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_2

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget-object v3, v3, Lcom/henrythompson/quoda/EditorActivity$5;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    iget-object v4, v3, Lcom/henrythompson/quoda/EditorActivity;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget-object v3, v3, Lcom/henrythompson/quoda/EditorActivity$5;->val$documentUuids:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocumentById(Ljava/lang/String;)Lcom/henrythompson/quoda/document/Document;

    move-result-object v2

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget-object v3, v3, Lcom/henrythompson/quoda/EditorActivity$5;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-static {v2, p0, v3}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;->saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;Landroid/app/Activity;)V

    const/4 v5, 0x1

    :cond_1
    nop

    return-void

    const/4 v2, 0x3

    const/4 v5, 0x3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    const/4 v2, 0x7

    const/4 v5, 0x4

    :cond_3
    iget-object v3, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget-object v3, v3, Lcom/henrythompson/quoda/EditorActivity$5;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-static {v3}, Lcom/henrythompson/quoda/EditorActivity;->access$401(Lcom/henrythompson/quoda/EditorActivity;)V

    const/4 v5, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v1, 0x0
.end method

.method private showErrorMessage(Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->mCurrentlyShownDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    const/4 v7, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->mCurrentlyShownDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v7, 0x3

    iput-object v6, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->mCurrentlyShownDialog:Landroid/app/Dialog;

    const/4 v7, 0x2

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget-object v1, v1, Lcom/henrythompson/quoda/EditorActivity$5;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget-object v1, v1, Lcom/henrythompson/quoda/EditorActivity$5;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    const v2, 0x7f0d00aa

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/henrythompson/quoda/EditorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x1

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget-object v1, v1, Lcom/henrythompson/quoda/EditorActivity$5;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    const v2, 0x7f0d0064

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/henrythompson/quoda/EditorActivity$5$1$3;

    invoke-direct {v2, p0, p1}, Lcom/henrythompson/quoda/EditorActivity$5$1$3;-><init>(Lcom/henrythompson/quoda/EditorActivity$5$1;Lcom/henrythompson/quoda/document/Document;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget-object v1, v1, Lcom/henrythompson/quoda/EditorActivity$5;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    const v2, 0x7f0d002e

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x6

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->mCurrentlyShownDialog:Landroid/app/Dialog;

    const/4 v7, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->mCurrentlyShownDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const/4 v7, 0x0

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public onAuthNeededException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v4, 0x0

    move-object v2, p0

    const/4 v4, 0x4

    new-instance v1, Lcom/henrythompson/quoda/EditorActivity$5$1$1;

    invoke-direct {v1, p0, p1, v2}, Lcom/henrythompson/quoda/EditorActivity$5$1$1;-><init>(Lcom/henrythompson/quoda/EditorActivity$5$1;Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;)V

    const/4 v4, 0x2

    new-instance v0, Lcom/henrythompson/quoda/EditorActivity$5$1$2;

    invoke-direct {v0, p0, p1}, Lcom/henrythompson/quoda/EditorActivity$5$1$2;-><init>(Lcom/henrythompson/quoda/EditorActivity$5$1;Lcom/henrythompson/quoda/document/Document;)V

    const/4 v4, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget-object v3, v3, Lcom/henrythompson/quoda/EditorActivity$5;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-virtual {p2, v3, v1, v0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;->runAuthorisation(Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v4, 0x7

    nop

    return-void

    const/4 v1, 0x0
.end method

.method public onFilesystemException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FilesystemException;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x4

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FilesystemException;->getUserMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/henrythompson/quoda/EditorActivity$5$1;->showErrorMessage(Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;)V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v1, 0x4
.end method

.method public onInternetRequiredAndUnavailable(Lcom/henrythompson/quoda/document/Document;)V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget-object v0, v0, Lcom/henrythompson/quoda/EditorActivity$5;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f0d00f2

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/henrythompson/quoda/EditorActivity$5$1;->showErrorMessage(Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;)V

    const/4 v2, 0x6

    nop

    return-void

    const/4 v1, 0x3
.end method

.method public onOpenFileFinished(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public onOpenFileStart(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public onSaveFileFinished(Lcom/henrythompson/quoda/document/Document;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->mCurrentlyShownDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->mCurrentlyShownDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v1, 0x4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->mCurrentlyShownDialog:Landroid/app/Dialog;

    const/4 v1, 0x5

    :cond_0
    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/document/DocumentsManager;->cacheDocument(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v1, 0x4

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/EditorActivity$5$1;->saveNext(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public onSaveFileStart(Lcom/henrythompson/quoda/document/Document;)V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->mCurrentlyShownDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    const/4 v7, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->mCurrentlyShownDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v7, 0x4

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget-object v1, v1, Lcom/henrythompson/quoda/EditorActivity$5;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget-object v1, v1, Lcom/henrythompson/quoda/EditorActivity$5;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    const v2, 0x7f0d00ae

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/henrythompson/quoda/EditorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget-object v1, v1, Lcom/henrythompson/quoda/EditorActivity$5;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    const v2, 0x7f0d00ad

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/henrythompson/quoda/EditorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x2

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->mCurrentlyShownDialog:Landroid/app/Dialog;

    const/4 v7, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1;->mCurrentlyShownDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const/4 v7, 0x0

    nop

    return-void

    const/4 v6, 0x4
.end method
