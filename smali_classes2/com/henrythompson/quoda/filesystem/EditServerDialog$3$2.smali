.class Lcom/henrythompson/quoda/filesystem/EditServerDialog$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    const/4 v0, 0x3

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3$2;->this$1:Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;

    iput-object p2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3$2;->val$browser:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x3

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3$2;->val$browser:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3$2;->this$1:Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;

    iget-object v1, v1, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    const v2, 0x7f0d01ae

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3$2;->val$browser:Lcom/henrythompson/quoda/FilebrowserFragment;

    const-string v1, "private_key_selector"

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->browseLastSavedLocation(Ljava/lang/String;)V

    const/4 v3, 0x7

    nop

    return-void

    const/4 v2, 0x4
.end method
