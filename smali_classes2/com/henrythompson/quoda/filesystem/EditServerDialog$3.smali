.class Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/filesystem/EditServerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v6, 0x2

    new-instance v0, Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-direct {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;-><init>()V

    const/4 v6, 0x4

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$000(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/FragmentActivity;

    const/4 v6, 0x7

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v6, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v4

    const-string v5, "local"

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v1

    const/4 v6, 0x3

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->setFilesystem(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    const/4 v6, 0x7

    new-instance v4, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3$1;

    invoke-direct {v4, p0, v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3$1;-><init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;Lcom/henrythompson/quoda/FilebrowserFragment;)V

    invoke-virtual {v0, v4}, Lcom/henrythompson/quoda/FilebrowserFragment;->setListener(Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;)V

    const/4 v6, 0x3

    const-string v4, "private_key_selector"

    invoke-virtual {v0, v2, v4}, Lcom/henrythompson/quoda/FilebrowserFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/4 v6, 0x1

    new-instance v4, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3$2;

    invoke-direct {v4, p0, v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3$2;-><init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;Lcom/henrythompson/quoda/FilebrowserFragment;)V

    invoke-virtual {v0, v4}, Lcom/henrythompson/quoda/FilebrowserFragment;->runOnSetupComplete(Ljava/lang/Runnable;)V

    const/4 v6, 0x3

    nop

    return-void

    const/4 v5, 0x0
.end method
