.class Lcom/henrythompson/quoda/filesystem/EditServerDialog$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/filesystem/EditServerDialog;->performDelete()V
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

    const/4 v0, 0x3

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$11;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$11;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$100(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Lcom/henrythompson/quoda/filesystem/Server;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->deleteFilesystem(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$11;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$200(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$11;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$300(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$11;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$300(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$11;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$100(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Lcom/henrythompson/quoda/filesystem/Server;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;->onDelete(Lcom/henrythompson/quoda/filesystem/Server;)V

    const/4 v2, 0x3

    :cond_0
    nop

    return-void

    const/4 v2, 0x3
.end method
