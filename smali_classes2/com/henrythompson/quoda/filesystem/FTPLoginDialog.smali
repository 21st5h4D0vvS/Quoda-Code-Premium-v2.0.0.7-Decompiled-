.class public Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;
.super Landroid/app/AlertDialog$Builder;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnCancelled:Ljava/lang/Runnable;

.field private mOnPasswordEntered:Ljava/lang/Runnable;

.field private mServer:Lcom/henrythompson/quoda/filesystem/Server;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/henrythompson/quoda/filesystem/Server;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x4

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->mContext:Landroid/content/Context;

    const/4 v0, 0x6

    iput-object p2, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    const/4 v0, 0x7

    iput-object p3, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->mOnPasswordEntered:Ljava/lang/Runnable;

    const/4 v0, 0x2

    iput-object p4, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->mOnCancelled:Ljava/lang/Runnable;

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x2
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;)Lcom/henrythompson/quoda/filesystem/Server;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    return-object v0

    const/4 v0, 0x1
.end method

.method static synthetic access$100(Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;)Ljava/lang/Runnable;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->mOnPasswordEntered:Ljava/lang/Runnable;

    return-object v0

    const/4 v1, 0x3
.end method

.method static synthetic access$200(Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;)Ljava/lang/Runnable;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->mOnCancelled:Ljava/lang/Runnable;

    return-object v0

    const/4 v1, 0x4
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x4

    const/4 v0, 0x0

    return-object v0

    const/4 v0, 0x7
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x6
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x5
.end method

.method public show()Landroid/app/AlertDialog;
    .locals 8

    const/4 v7, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    instance-of v3, v3, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    check-cast v3, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getAuthenticationMethod()Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    move-result-object v3

    sget-object v4, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->KEY:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    if-ne v3, v4, :cond_1

    const/4 v7, 0x7

    const v3, 0x7f0d01a9

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    check-cast v2, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    const/4 v7, 0x7

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->isKeyPassphraseSaved()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getKeyPassphrase()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v7, 0x6

    const v3, 0x7f0d01aa

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/filesystem/Server;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x1

    :goto_0
    new-instance v1, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x7

    const/16 v3, 0x80

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v7, 0x1

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v7, 0x5

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x7

    const v3, 0x7f0d018c

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$1;

    invoke-direct {v4, p0, v1}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$1;-><init>(Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;Landroid/widget/EditText;)V

    invoke-virtual {p0, v3, v4}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x1

    const v3, 0x7f0d002e

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$2;

    invoke-direct {v4, p0}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog$2;-><init>(Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;)V

    invoke-virtual {p0, v3, v4}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x0

    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v7, 0x2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v7, 0x7

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v7, 0x0

    return-object v0

    const/4 v6, 0x5

    const/4 v7, 0x5

    :cond_0
    const v3, 0x7f0d01ad

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/filesystem/Server;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    const/4 v2, 0x6

    const/4 v7, 0x4

    :cond_1
    const v3, 0x7f0d01ab

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/Server;->isPasswordSaved()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/Server;->getPassword()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v7, 0x6

    const v3, 0x7f0d01ac

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/filesystem/Server;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    const/4 v1, 0x0

    const/4 v7, 0x0

    :cond_2
    const v3, 0x7f0d01b5

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/filesystem/Server;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/filesystem/FTPLoginDialog;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    const/4 v2, 0x0
.end method
