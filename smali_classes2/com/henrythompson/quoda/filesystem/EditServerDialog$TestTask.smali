.class Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/filesystem/EditServerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mAuthException:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

.field mDialog:Landroid/app/ProgressDialog;

.field mPassword:Ljava/lang/String;

.field final synthetic this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x5

    iput-object p2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->mPassword:Ljava/lang/String;

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x7
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    const v6, 0x7f0d01b1

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->publishProgress([Ljava/lang/Object;)V

    const/4 v9, 0x4

    const/4 v2, 0x0

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$1600(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v9, 0x5

    if-nez v1, :cond_2

    const/4 v9, 0x7

    new-instance v2, Lcom/henrythompson/quoda/filesystem/FTPServer;

    invoke-direct {v2}, Lcom/henrythompson/quoda/filesystem/FTPServer;-><init>()V

    const/4 v9, 0x1

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$1800(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/henrythompson/quoda/filesystem/Server;->setDisplayName(Ljava/lang/String;)V

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$1900(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/henrythompson/quoda/filesystem/Server;->setAddress(Ljava/lang/String;)V

    const/4 v9, 0x3

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$2000(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/henrythompson/quoda/filesystem/Server;->setUsername(Ljava/lang/String;)V

    const/4 v9, 0x3

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$600(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_8

    const/4 v9, 0x7

    invoke-virtual {v2, v8}, Lcom/henrythompson/quoda/filesystem/Server;->setPasswordSaved(Z)Lcom/henrythompson/quoda/filesystem/Server;

    const/4 v9, 0x1

    :goto_1
    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->mPassword:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->mPassword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->mPassword:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/henrythompson/quoda/filesystem/Server;->setPassword(Ljava/lang/String;)V

    const/4 v9, 0x0

    :cond_1
    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$2100(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/henrythompson/quoda/filesystem/Server;->setPort(I)V

    const/4 v9, 0x2

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$2200(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/henrythompson/quoda/filesystem/Server;->setBaseURL(Ljava/lang/String;)V

    const/4 v9, 0x2

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$2300(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/henrythompson/quoda/filesystem/Server;->setInitialDirectory(Ljava/lang/String;)V

    const/4 v9, 0x6

    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    const v6, 0x7f0d01af

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->publishProgress([Ljava/lang/Object;)V

    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/Server;->connectAndLogIn()V
    :try_end_0
    .catch Lcom/henrythompson/quoda/filesystem/FilesystemException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/henrythompson/quoda/filesystem/AuthNeededException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x4

    :try_start_1
    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/Server;->logOutAndDisconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const/4 v9, 0x2

    :goto_2
    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    const v5, 0x7f0d01b3

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    return-object v4

    const/4 v6, 0x2

    const/4 v9, 0x6

    :cond_2
    if-ne v1, v7, :cond_3

    const/4 v9, 0x6

    new-instance v2, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    invoke-direct {v2}, Lcom/henrythompson/quoda/filesystem/FTPSServer;-><init>()V

    move-object v4, v2

    const/4 v9, 0x5

    check-cast v4, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    invoke-virtual {v4, v7}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->setIsImplicit(Z)V

    goto/16 :goto_0

    const/4 v2, 0x6

    const/4 v9, 0x2

    :cond_3
    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    const/4 v9, 0x3

    new-instance v2, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    invoke-direct {v2}, Lcom/henrythompson/quoda/filesystem/FTPSServer;-><init>()V

    move-object v4, v2

    const/4 v9, 0x2

    check-cast v4, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    invoke-virtual {v4, v8}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->setIsImplicit(Z)V

    goto/16 :goto_0

    const/4 v4, 0x6

    const/4 v9, 0x2

    :cond_4
    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    const/4 v9, 0x2

    new-instance v2, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    invoke-direct {v2}, Lcom/henrythompson/quoda/filesystem/SFTPServer;-><init>()V

    move-object v3, v2

    const/4 v9, 0x6

    check-cast v3, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    const/4 v9, 0x3

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$1700(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_5

    const/4 v9, 0x5

    sget-object v4, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->PASSWORD:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setAuthenticationMethod(Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;)V

    goto/16 :goto_0

    const/4 v6, 0x6

    const/4 v9, 0x4

    :cond_5
    sget-object v4, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->KEY:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setAuthenticationMethod(Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;)V

    const/4 v9, 0x6

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$400(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPath(Ljava/lang/String;)V

    const/4 v9, 0x7

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$800(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_6

    const/4 v9, 0x1

    invoke-virtual {v3, v8}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPassphraseSaved(Z)V

    goto/16 :goto_0

    const/4 v2, 0x2

    const/4 v9, 0x6

    :cond_6
    invoke-virtual {v3, v7}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPassphraseSaved(Z)V

    const/4 v9, 0x6

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$800(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/Spinner;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-ne v4, v7, :cond_7

    const/4 v9, 0x7

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$900(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPassphrase(Ljava/lang/String;)V

    goto/16 :goto_0

    const/4 v8, 0x2

    const/4 v9, 0x5

    :cond_7
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPassphrase(Ljava/lang/String;)V

    goto/16 :goto_0

    const/4 v1, 0x0

    const/4 v9, 0x4

    :cond_8
    invoke-virtual {v2, v7}, Lcom/henrythompson/quoda/filesystem/Server;->setPasswordSaved(Z)Lcom/henrythompson/quoda/filesystem/Server;

    goto/16 :goto_1

    const/4 v3, 0x4

    const/4 v9, 0x3

    :catch_0
    move-exception v0

    const/4 v9, 0x0

    :try_start_2
    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FilesystemException;->getUserMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    const/4 v9, 0x1

    :try_start_3
    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/Server;->logOutAndDisconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    const/4 v5, 0x6

    const/4 v9, 0x3

    :catch_1
    move-exception v5

    goto/16 :goto_3

    const/4 v8, 0x2

    const/4 v9, 0x2

    :catch_2
    move-exception v0

    const/4 v9, 0x5

    :try_start_4
    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->mAuthException:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    const/4 v9, 0x6

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    const v5, 0x7f0d01b0

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    const/4 v9, 0x6

    :try_start_5
    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/Server;->logOutAndDisconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    const/4 v3, 0x0

    const/4 v9, 0x3

    :catch_3
    move-exception v5

    goto/16 :goto_3

    const/4 v4, 0x7

    const/4 v9, 0x4

    :catchall_0
    move-exception v4

    const/4 v9, 0x1

    :try_start_6
    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/Server;->logOutAndDisconnect()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    const/4 v9, 0x0

    :goto_4
    throw v4

    const/4 v9, 0x5

    :catch_4
    move-exception v4

    goto/16 :goto_2

    const/4 v3, 0x5

    :catch_5
    move-exception v5

    goto :goto_4

    const/4 v9, 0x2
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->onPostExecute(Ljava/lang/String;)V

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v5, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->mAuthException:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v2}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$600(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v2}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$000(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/IAuthHandlingActivity;

    const/4 v5, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->mAuthException:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;->getFilesystem()Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v2

    new-instance v3, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask$2;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask$2;-><init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;)V

    invoke-virtual {v2, v0, v3, v4}, Lcom/henrythompson/quoda/filesystem/Filesystem;->authorise(Lcom/henrythompson/quoda/IAuthHandlingActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v5, 0x2

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v1, 0x4

    const/4 v5, 0x1

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v2}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$000(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    const v2, 0x7f0d01b2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x0

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x1

    const v2, 0x7f0d018c

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x3

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    const/4 v2, 0x4
.end method

.method public onPreExecute()V
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x3

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$000(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    const v2, 0x7f0d01b4

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    const v2, 0x7f0d01a8

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    const v3, 0x7f0d002e

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask$1;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask$1;-><init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const/4 v4, 0x2

    nop

    return-void

    const/4 v2, 0x6
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x6

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->onProgressUpdate([Ljava/lang/String;)V

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x7

    const/4 v1, 0x0

    aget-object v0, p1, v1

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v2, 0x5

    nop

    return-void

    const/4 v0, 0x4
.end method
