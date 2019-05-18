.class Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->show()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$2;->this$0:Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$2;->this$0:Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->access$200(Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$2;->this$0:Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->access$200(Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x1

    :cond_0
    nop

    return-void

    const/4 v0, 0x7
.end method
