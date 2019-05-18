.class Lcom/henrythompson/quoda/filesystem/EditServerDialog$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;

.field final synthetic val$browser:Lcom/henrythompson/quoda/FilebrowserFragment;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;Lcom/henrythompson/quoda/FilebrowserFragment;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3$1;->this$1:Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;

    iput-object p2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3$1;->val$browser:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public onAuthNeededException(Lcom/henrythompson/quoda/filesystem/AuthNeededException;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public onFileSelected(Lcom/henrythompson/quoda/filesystem/FileObject;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3$1;->this$1:Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;

    iget-object v0, v0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$400(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3$1;->val$browser:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->dismiss()V

    const/4 v2, 0x6

    nop

    return-void

    const/4 v2, 0x4
.end method

.method public onFilesystemException(Lcom/henrythompson/quoda/filesystem/FilesystemException;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3$1;->this$1:Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;

    iget-object v1, v1, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3$1;->this$1:Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;

    iget-object v1, v1, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    const v2, 0x7f0d00eb

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3$1;->this$1:Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;

    iget-object v1, v1, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    const v2, 0x7f0d0244

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x3

    const v1, 0x7f0d018c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x6

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v3, 0x4

    nop

    return-void

    const/4 v3, 0x4
.end method

.method public onFolderListStart(Lcom/henrythompson/quoda/filesystem/FileObject;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public onFolderListed(Lcom/henrythompson/quoda/filesystem/FileObject;)V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3$1;->val$browser:Lcom/henrythompson/quoda/FilebrowserFragment;

    const-string v1, "private_key_selector"

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->saveLocation(Ljava/lang/String;)V

    const/4 v2, 0x0

    nop

    return-void

    const/4 v2, 0x7
.end method
