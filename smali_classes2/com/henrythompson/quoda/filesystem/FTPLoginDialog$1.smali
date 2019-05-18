.class Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$1;
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

.field final synthetic val$passwordBox:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$1;->this$0:Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;

    iput-object p2, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$1;->val$passwordBox:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v7, 0x2

    const/4 v7, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$1;->val$passwordBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v7, 0x5

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$1;->this$0:Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$1;->this$0:Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;

    invoke-static {v4}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->access$000(Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;)Lcom/henrythompson/quoda/filesystem/Server;

    move-result-object v4

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$1;->this$0:Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;

    invoke-static {v5}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->access$100(Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;)Ljava/lang/Runnable;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$1;->this$0:Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;

    invoke-static {v6}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->access$200(Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;-><init>(Landroid/content/Context;Lcom/henrythompson/quoda/filesystem/Server;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v7, 0x5

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->show()Landroid/app/AlertDialog;

    const/4 v7, 0x2

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v7, 0x5

    const/4 v7, 0x0

    :cond_1
    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$1;->val$passwordBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$1;->this$0:Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;

    invoke-static {v3}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->access$000(Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;)Lcom/henrythompson/quoda/filesystem/Server;

    move-result-object v3

    instance-of v3, v3, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    if-eqz v3, :cond_3

    const/4 v7, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$1;->this$0:Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;

    invoke-static {v3}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->access$000(Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;)Lcom/henrythompson/quoda/filesystem/Server;

    move-result-object v2

    check-cast v2, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    const/4 v7, 0x1

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getAuthenticationMethod()Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    move-result-object v3

    sget-object v4, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->KEY:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    if-ne v3, v4, :cond_2

    const/4 v7, 0x7

    invoke-virtual {v2, v1}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPassphrase(Ljava/lang/String;)V

    const/4 v7, 0x4

    :goto_1
    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$1;->this$0:Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;

    invoke-static {v3}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->access$100(Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v7, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$1;->this$0:Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;

    invoke-static {v3}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->access$100(Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    const/4 v4, 0x5

    const/4 v7, 0x1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setPassword(Ljava/lang/String;)V

    goto :goto_1

    const/4 v7, 0x5

    const/4 v7, 0x6

    :cond_3
    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$1;->this$0:Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;

    invoke-static {v3}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->access$000(Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;)Lcom/henrythompson/quoda/filesystem/Server;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/henrythompson/quoda/filesystem/Server;->setPassword(Ljava/lang/String;)V

    goto :goto_1

    const/4 v3, 0x5
.end method
