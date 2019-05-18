.class Lcom/henrythompson/quoda/EditorPanel$36;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->reopenWithEncoding(Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;

.field final synthetic val$onAuthNeeded:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$36;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$36;->val$onAuthNeeded:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public onAuthNeededException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$36;->val$onAuthNeeded:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;

    invoke-interface {v0, p1, p2}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;->onAuthNeeded(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public onFilesystemException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FilesystemException;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$36;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$36;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v2, 0x7f0d009e

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x2

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FilesystemException;->getUserMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$36;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v2, 0x7f0d018c

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x5

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v3, 0x3

    nop

    return-void

    const/4 v3, 0x2
.end method

.method public onInternetRequiredAndUnavailable(Lcom/henrythompson/quoda/document/Document;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$36;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$36;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v2, 0x7f0d008a

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$36;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v2, 0x7f0d00f2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$36;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v2, 0x7f0d018c

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x6

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v3, 0x6

    nop

    return-void

    const/4 v3, 0x1
.end method

.method public onOpenFileFinished(Lcom/henrythompson/quoda/document/Document;)V
    .locals 7

    const/4 v6, 0x7

    const/4 v6, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$36;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/EditorPanel;->configureActionbar()V

    const/4 v6, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$36;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->refresh()V

    const/4 v6, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$36;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$36;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v2, 0x7f0d0180

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getEncoding()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/henrythompson/quoda/EditorPanel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->showToast(Ljava/lang/String;)V

    const/4 v6, 0x7

    nop

    return-void

    const/4 v2, 0x4
.end method

.method public onOpenFileStart(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public onSaveFileFinished(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public onSaveFileStart(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x4
.end method
