.class public Lcom/henrythompson/quoda/filesystem/EditServerDialog;
.super Landroid/app/AlertDialog$Builder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;,
        Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAddress:Landroid/widget/EditText;

.field private mAllowDeleteOption:Z

.field private mAuthenticationOptions:Landroid/widget/Spinner;

.field private mBaseUrl:Landroid/widget/EditText;

.field private mCreatingNewServer:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mInitialFolder:Landroid/widget/EditText;

.field mInitialSelectionFinished:Z

.field private mListener:Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;

.field private mName:Landroid/widget/EditText;

.field private mOnBrowseClickListener:Landroid/view/View$OnClickListener;

.field private mPassword:Landroid/widget/EditText;

.field private mPasswordOptions:Landroid/widget/Spinner;

.field private mPort:Landroid/widget/EditText;

.field private mPrivateKeyBrowse:Landroid/widget/Button;

.field private mPrivateKeyOptions:Landroid/widget/Spinner;

.field private mPrivateKeyPassphrase:Landroid/widget/EditText;

.field private mPrivateKeyPath:Landroid/widget/EditText;

.field private mServer:Lcom/henrythompson/quoda/filesystem/Server;

.field private mServerType:Landroid/widget/Spinner;

.field private mUsername:Landroid/widget/EditText;

.field private onAuthMethodSelectionChangedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private onPassphraseOptionsChangedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private onPasswordSelectionChangedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private onServerTypeSelectionChangedListener:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x7

    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mCreatingNewServer:Z

    const/4 v2, 0x2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mInitialSelectionFinished:Z

    const/4 v2, 0x7

    new-instance v0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$3;-><init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mOnBrowseClickListener:Landroid/view/View$OnClickListener;

    const/4 v2, 0x5

    new-instance v0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$4;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$4;-><init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->onPasswordSelectionChangedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v2, 0x3

    new-instance v0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$5;-><init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->onAuthMethodSelectionChangedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v2, 0x0

    new-instance v0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$6;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$6;-><init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->onServerTypeSelectionChangedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v2, 0x5

    new-instance v0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$7;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$7;-><init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->onPassphraseOptionsChangedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v2, 0x3

    if-nez p1, :cond_0

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Supplied activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    const/4 v2, 0x2

    :cond_0
    instance-of v0, p1, Lcom/henrythompson/quoda/IAuthHandlingActivity;

    if-nez v0, :cond_1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity provided was not an auth handling activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    const/4 v2, 0x6

    :cond_1
    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x7

    iput-boolean p2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAllowDeleteOption:Z

    const/4 v2, 0x1

    nop

    return-void

    const/4 v1, 0x2
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/app/Activity;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mActivity:Landroid/app/Activity;

    return-object v0

    const/4 v1, 0x0
.end method

.method static synthetic access$100(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Lcom/henrythompson/quoda/filesystem/Server;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    return-object v0

    const/4 v1, 0x4
.end method

.method static synthetic access$1000(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->onSftpSelected()V

    nop

    return-void

    const/4 v0, 0x3
.end method

.method static synthetic access$1100(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->onFtpSelected()V

    nop

    return-void

    const/4 v0, 0x4
.end method

.method static synthetic access$1200(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->performSave()V

    nop

    return-void

    const/4 v0, 0x5
.end method

.method static synthetic access$1300(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->performTest()V

    nop

    return-void

    const/4 v0, 0x3
.end method

.method static synthetic access$1400(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Z
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x6

    iget-boolean v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAllowDeleteOption:Z

    return v0

    const/4 v0, 0x2
.end method

.method static synthetic access$1500(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->performDelete()V

    nop

    return-void

    const/4 v0, 0x3
.end method

.method static synthetic access$1600(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/Spinner;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServerType:Landroid/widget/Spinner;

    return-object v0

    const/4 v1, 0x0
.end method

.method static synthetic access$1700(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/Spinner;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAuthenticationOptions:Landroid/widget/Spinner;

    return-object v0

    const/4 v1, 0x2
.end method

.method static synthetic access$1800(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mName:Landroid/widget/EditText;

    return-object v0

    const/4 v1, 0x4
.end method

.method static synthetic access$1900(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAddress:Landroid/widget/EditText;

    return-object v0

    const/4 v1, 0x4
.end method

.method static synthetic access$200(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/app/AlertDialog;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mDialog:Landroid/app/AlertDialog;

    return-object v0

    const/4 v0, 0x7
.end method

.method static synthetic access$2000(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mUsername:Landroid/widget/EditText;

    return-object v0

    const/4 v1, 0x1
.end method

.method static synthetic access$2100(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPort:Landroid/widget/EditText;

    return-object v0

    const/4 v1, 0x6
.end method

.method static synthetic access$2200(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mBaseUrl:Landroid/widget/EditText;

    return-object v0

    const/4 v0, 0x4
.end method

.method static synthetic access$2300(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mInitialFolder:Landroid/widget/EditText;

    return-object v0

    const/4 v1, 0x7
.end method

.method static synthetic access$300(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mListener:Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;

    return-object v0

    const/4 v0, 0x3
.end method

.method static synthetic access$400(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyPath:Landroid/widget/EditText;

    return-object v0

    const/4 v0, 0x6
.end method

.method static synthetic access$500(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPassword:Landroid/widget/EditText;

    return-object v0

    const/4 v1, 0x5
.end method

.method static synthetic access$600(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/Spinner;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPasswordOptions:Landroid/widget/Spinner;

    return-object v0

    const/4 v0, 0x2
.end method

.method static synthetic access$700(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/Button;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyBrowse:Landroid/widget/Button;

    return-object v0

    const/4 v1, 0x0
.end method

.method static synthetic access$800(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/Spinner;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyOptions:Landroid/widget/Spinner;

    return-object v0

    const/4 v1, 0x4
.end method

.method static synthetic access$900(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/widget/EditText;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyPassphrase:Landroid/widget/EditText;

    return-object v0

    const/4 v0, 0x1
.end method

.method private getPort()I
    .locals 5

    const/4 v4, 0x6

    const/16 v2, 0x15

    const/4 v4, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPort:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v4, 0x3

    :goto_0
    return v2

    const/4 v3, 0x7

    const/4 v4, 0x6

    :cond_0
    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPort:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    const/4 v0, 0x6

    const/4 v4, 0x6

    :catch_0
    move-exception v0

    const/4 v4, 0x7

    goto :goto_0

    const/4 v4, 0x6
.end method

.method private getServerWithName(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Server;
    .locals 5

    const/4 v4, 0x4

    const/4 v4, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->list()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v4, 0x7

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/filesystem/Filesystem;

    const/4 v4, 0x0

    instance-of v2, v1, Lcom/henrythompson/quoda/filesystem/Server;

    if-eqz v2, :cond_0

    move-object v2, v1

    const/4 v4, 0x5

    check-cast v2, Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/Server;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    check-cast v1, Lcom/henrythompson/quoda/filesystem/Server;

    const/4 v4, 0x1

    :goto_0
    return-object v1

    const/4 v0, 0x3

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    const/4 v4, 0x1
.end method

.method private onFtpSelected()V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPort:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "22"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPort:Landroid/widget/EditText;

    const-string v1, "21"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x5

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAuthenticationOptions:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyPath:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyOptions:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyPassphrase:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyBrowse:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPasswordOptions:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPasswordOptions:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v4, 0x5

    :goto_0
    nop

    return-void

    const/4 v4, 0x3

    const/4 v4, 0x3

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    const/4 v2, 0x4
.end method

.method private onSftpSelected()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/16 v2, 0x8

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPort:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPort:Landroid/widget/EditText;

    const-string v1, "22"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x5

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAuthenticationOptions:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAuthenticationOptions:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyPath:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyOptions:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyPassphrase:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPasswordOptions:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPasswordOptions:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v4, 0x5

    :goto_0
    nop

    return-void

    const/4 v0, 0x0

    const/4 v4, 0x0

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    const/4 v0, 0x3

    const/4 v4, 0x6

    :cond_2
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyPath:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPasswordOptions:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyOptions:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyOptions:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyPassphrase:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    const/4 v0, 0x5

    const/4 v4, 0x0

    :cond_3
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyPassphrase:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0

    const/4 v3, 0x4
.end method

.method private performDelete()V
    .locals 6

    const/4 v5, 0x7

    const/4 v5, 0x3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x6

    const v1, 0x7f0d0079

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x4

    const v1, 0x7f0d0078

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/filesystem/Server;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x1

    const v1, 0x7f0d006c

    new-instance v2, Lcom/henrythompson/quoda/filesystem/EditServerDialog$11;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$11;-><init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x2

    const v1, 0x7f0d002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x2

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v5, 0x7

    nop

    return-void

    const/4 v5, 0x7
.end method

.method private performSave()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->requiredFieldsCompleted()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v10, 0x6

    const v4, 0x7f0d012a

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->showToast(Ljava/lang/String;)V

    const/4 v10, 0x3

    :goto_0
    nop

    return-void

    const/4 v7, 0x0

    const/4 v10, 0x1

    :cond_0
    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mName:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x3

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getServerWithName(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Server;

    move-result-object v2

    const/4 v10, 0x3

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/Server;->getUuid()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/filesystem/Server;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v10, 0x0

    :cond_1
    const v4, 0x7f0d0226

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/filesystem/Server;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->showToast(Ljava/lang/String;)V

    goto :goto_0

    const/4 v10, 0x3

    const/4 v10, 0x1

    :cond_2
    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    if-nez v4, :cond_6

    move v0, v5

    const/4 v10, 0x6

    :goto_1
    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServerType:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    const/4 v10, 0x5

    if-eqz v0, :cond_b

    const/4 v10, 0x4

    if-nez v3, :cond_7

    const/4 v10, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v4

    const-class v7, Lcom/henrythompson/quoda/filesystem/FTPServer;

    invoke-virtual {v4, v7}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->createServer(Ljava/lang/Class;)Lcom/henrythompson/quoda/filesystem/Server;

    move-result-object v4

    iput-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    const/4 v10, 0x7

    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    iget-object v7, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAddress:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/henrythompson/quoda/filesystem/Server;->setAddress(Ljava/lang/String;)V

    const/4 v10, 0x6

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    iget-object v7, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mBaseUrl:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/henrythompson/quoda/filesystem/Server;->setBaseURL(Ljava/lang/String;)V

    const/4 v10, 0x7

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    iget-object v7, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mInitialFolder:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/henrythompson/quoda/filesystem/Server;->setInitialDirectory(Ljava/lang/String;)V

    const/4 v10, 0x6

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    iget-object v7, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mName:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/henrythompson/quoda/filesystem/Server;->setDisplayName(Ljava/lang/String;)V

    const/4 v10, 0x3

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getPort()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/henrythompson/quoda/filesystem/Server;->setPort(I)V

    const/4 v10, 0x6

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    iget-object v7, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/henrythompson/quoda/filesystem/Server;->setUsername(Ljava/lang/String;)V

    const/4 v10, 0x1

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPasswordOptions:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_11

    const/4 v10, 0x7

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v4, v6}, Lcom/henrythompson/quoda/filesystem/Server;->setPasswordSaved(Z)Lcom/henrythompson/quoda/filesystem/Server;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/filesystem/Server;->setPassword(Ljava/lang/String;)V

    const/4 v10, 0x7

    :goto_3
    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    instance-of v4, v4, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    if-eqz v4, :cond_4

    const/4 v10, 0x3

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    check-cast v4, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    invoke-direct {p0, v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->saveSftpSpecificFields(Lcom/henrythompson/quoda/filesystem/SFTPServer;)V

    const/4 v10, 0x7

    :cond_4
    if-eqz v0, :cond_12

    const/4 v10, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v4

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->addServer(Lcom/henrythompson/quoda/filesystem/Server;)V

    const/4 v10, 0x6

    :goto_4
    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mListener:Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;

    if-eqz v4, :cond_5

    const/4 v10, 0x1

    if-eqz v0, :cond_13

    const/4 v10, 0x5

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mListener:Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-interface {v4, v5}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;->onAddServerComplete(Lcom/henrythompson/quoda/filesystem/Server;)V

    const/4 v10, 0x1

    :cond_5
    :goto_5
    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    const/4 v8, 0x1

    :cond_6
    move v0, v6

    const/4 v10, 0x0

    goto/16 :goto_1

    const/4 v0, 0x1

    const/4 v10, 0x5

    :cond_7
    if-eq v3, v5, :cond_8

    if-ne v3, v8, :cond_a

    const/4 v10, 0x6

    :cond_8
    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v4

    const-class v7, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    invoke-virtual {v4, v7}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->createServer(Ljava/lang/Class;)Lcom/henrythompson/quoda/filesystem/Server;

    move-result-object v4

    iput-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    const/4 v10, 0x3

    if-ne v3, v5, :cond_9

    const/4 v10, 0x3

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    check-cast v4, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->setIsImplicit(Z)V

    goto/16 :goto_2

    const/4 v7, 0x6

    const/4 v10, 0x5

    :cond_9
    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    check-cast v4, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    invoke-virtual {v4, v6}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->setIsImplicit(Z)V

    goto/16 :goto_2

    const/4 v5, 0x0

    const/4 v10, 0x4

    :cond_a
    if-ne v3, v9, :cond_3

    const/4 v10, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v4

    const-class v7, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    invoke-virtual {v4, v7}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->createServer(Ljava/lang/Class;)Lcom/henrythompson/quoda/filesystem/Server;

    move-result-object v4

    iput-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    goto/16 :goto_2

    const/4 v3, 0x6

    const/4 v10, 0x7

    :cond_b
    if-nez v3, :cond_c

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    instance-of v4, v4, Lcom/henrythompson/quoda/filesystem/FTPServer;

    if-nez v4, :cond_c

    const/4 v10, 0x3

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FTPServer;

    iget-object v7, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/filesystem/Server;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/henrythompson/quoda/filesystem/FTPServer;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    goto/16 :goto_2

    const/4 v4, 0x6

    const/4 v10, 0x3

    :cond_c
    if-eq v3, v5, :cond_d

    if-ne v3, v8, :cond_10

    const/4 v10, 0x2

    :cond_d
    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    instance-of v4, v4, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    if-nez v4, :cond_e

    const/4 v10, 0x3

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    iget-object v7, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/filesystem/Server;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/henrythompson/quoda/filesystem/FTPSServer;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    const/4 v10, 0x2

    :cond_e
    if-ne v3, v5, :cond_f

    const/4 v10, 0x7

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    check-cast v4, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->setIsImplicit(Z)V

    goto/16 :goto_2

    const/4 v9, 0x7

    const/4 v10, 0x1

    :cond_f
    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    check-cast v4, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    invoke-virtual {v4, v6}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->setIsImplicit(Z)V

    goto/16 :goto_2

    const/4 v6, 0x4

    const/4 v10, 0x6

    :cond_10
    if-ne v3, v9, :cond_3

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    instance-of v4, v4, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    if-nez v4, :cond_3

    const/4 v10, 0x1

    new-instance v4, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    iget-object v7, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/filesystem/Server;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/henrythompson/quoda/filesystem/SFTPServer;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    goto/16 :goto_2

    const/4 v7, 0x5

    const/4 v10, 0x1

    :cond_11
    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/filesystem/Server;->setPasswordSaved(Z)Lcom/henrythompson/quoda/filesystem/Server;

    move-result-object v4

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/filesystem/Server;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_3

    const/4 v6, 0x1

    const/4 v10, 0x5

    :cond_12
    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v4

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->updateServer(Lcom/henrythompson/quoda/filesystem/Server;)V

    goto/16 :goto_4

    const/4 v8, 0x0

    const/4 v10, 0x7

    :cond_13
    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mListener:Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-interface {v4, v5}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;->onEditServerComplete(Lcom/henrythompson/quoda/filesystem/Server;)V

    goto/16 :goto_5

    const/4 v5, 0x5
.end method

.method private performTest()V
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/utils/Utils;->isConnectedToInternet()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v8, 0x6

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    const v6, 0x7f0d00eb

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x7

    const v6, 0x7f0d00f2

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x2

    const v6, 0x7f0d018c

    invoke-virtual {v1, v6, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x2

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v8, 0x3

    :goto_0
    nop

    return-void

    const/4 v3, 0x3

    const/4 v8, 0x4

    :cond_0
    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAddress:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mUsername:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPort:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v8, 0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    if-ltz v3, :cond_2

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x3

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_1

    const/4 v8, 0x7

    new-instance v6, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;

    invoke-direct {v6, p0, v2}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;-><init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog;Ljava/lang/String;)V

    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v5, [Ljava/lang/Void;

    invoke-virtual {v6, v7, v5}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    const/4 v0, 0x4

    const/4 v8, 0x4

    :cond_1
    new-instance v6, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;

    invoke-direct {v6, p0, v2}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;-><init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog;Ljava/lang/String;)V

    check-cast v5, [Ljava/lang/Void;

    invoke-virtual {v6, v5}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    const/4 v7, 0x0

    const/4 v8, 0x2

    :cond_2
    const v5, 0x7f0d012a

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->showToast(Ljava/lang/String;)V

    goto :goto_0

    const/4 v5, 0x6
.end method

.method private requiredFieldsCompleted()Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mName:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAddress:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAddress:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mUsername:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mUsername:Landroid/widget/EditText;

    const/4 v1, 0x7

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPasswordOptions:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPasswordOptions:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x3

    :goto_0
    return v0

    const/4 v0, 0x2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x2
.end method

.method private saveSftpSpecificFields(Lcom/henrythompson/quoda/filesystem/SFTPServer;)V
    .locals 3

    const/4 v2, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAuthenticationOptions:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    sget-object v0, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->PASSWORD:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    invoke-virtual {p1, v0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setAuthenticationMethod(Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;)V

    const/4 v2, 0x5

    invoke-virtual {p1, v1}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPassphrase(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p1, v1}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPath(Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_0
    nop

    return-void

    const/4 v0, 0x3

    const/4 v2, 0x2

    :cond_0
    sget-object v0, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->KEY:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    invoke-virtual {p1, v0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setAuthenticationMethod(Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;)V

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyPath:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPath(Ljava/lang/String;)V

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyOptions:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x6

    invoke-virtual {p1, v1}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPassphrase(Ljava/lang/String;)V

    const/4 v2, 0x5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPassphraseSaved(Z)V

    goto :goto_0

    const/4 v2, 0x2

    const/4 v2, 0x4

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyPassphrase:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPassphrase(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->setKeyPassphraseSaved(Z)V

    goto :goto_0

    const/4 v1, 0x7
.end method

.method private setButtonListeners(Landroid/widget/ScrollView;)V
    .locals 6

    const/4 v5, 0x7

    const/4 v5, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v5, 0x3

    new-instance v3, Lcom/henrythompson/quoda/filesystem/EditServerDialog$8;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$8;-><init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v5, 0x7

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    const/4 v5, 0x4

    new-instance v3, Lcom/henrythompson/quoda/filesystem/EditServerDialog$9;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$9;-><init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v5, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v5, 0x1

    new-instance v3, Lcom/henrythompson/quoda/filesystem/EditServerDialog$10;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$10;-><init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v5, 0x5

    nop

    return-void

    const/4 v4, 0x2
.end method

.method private setLayout()Landroid/widget/ScrollView;
    .locals 5

    const/4 v4, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mCreatingNewServer:Z

    const/4 v4, 0x3

    iget-boolean v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mCreatingNewServer:Z

    if-eqz v1, :cond_2

    const/4 v4, 0x4

    const v1, 0x7f0d0028

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x1

    :goto_1
    const v1, 0x7f0d01a2

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x7

    const v1, 0x7f0d0237

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x2

    iget-boolean v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAllowDeleteOption:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    if-eqz v1, :cond_3

    const/4 v4, 0x2

    const v1, 0x7f0d006c

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/henrythompson/quoda/filesystem/EditServerDialog$1;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$1;-><init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V

    invoke-virtual {p0, v1, v2}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x2

    :cond_0
    :goto_2
    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const/4 v4, 0x2

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x1

    return-object v0

    const/4 v4, 0x4

    const/4 v4, 0x6

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    const/4 v3, 0x5

    const/4 v4, 0x7

    :cond_2
    const v1, 0x7f0d00c6

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    const/4 v2, 0x1

    const/4 v4, 0x3

    :cond_3
    iget-boolean v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAllowDeleteOption:Z

    if-nez v1, :cond_0

    const/4 v4, 0x1

    const v1, 0x7f0d002e

    new-instance v2, Lcom/henrythompson/quoda/filesystem/EditServerDialog$2;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$2;-><init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V

    invoke-virtual {p0, v1, v2}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    const/4 v1, 0x7
.end method

.method private updateInformation(Landroid/widget/ScrollView;)V
    .locals 14

    const/4 v13, 0x4

    const/4 v13, 0x3

    const v11, 0x7f08008e

    invoke-virtual {p1, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    iput-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServerType:Landroid/widget/Spinner;

    const/4 v13, 0x3

    const v11, 0x7f08008d

    invoke-virtual {p1, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    iput-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPasswordOptions:Landroid/widget/Spinner;

    const/4 v13, 0x1

    const v11, 0x7f080088

    invoke-virtual {p1, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    iput-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAuthenticationOptions:Landroid/widget/Spinner;

    const/4 v13, 0x2

    const v11, 0x7f080085

    invoke-virtual {p1, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mName:Landroid/widget/EditText;

    const/4 v13, 0x4

    const v11, 0x7f080082

    invoke-virtual {p1, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAddress:Landroid/widget/EditText;

    const/4 v13, 0x7

    const v11, 0x7f08008f

    invoke-virtual {p1, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mUsername:Landroid/widget/EditText;

    const/4 v13, 0x6

    const v11, 0x7f080087

    invoke-virtual {p1, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPassword:Landroid/widget/EditText;

    const/4 v13, 0x7

    const v11, 0x7f08008c

    invoke-virtual {p1, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    iput-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyOptions:Landroid/widget/Spinner;

    const/4 v13, 0x1

    const v11, 0x7f080086

    invoke-virtual {p1, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyPassphrase:Landroid/widget/EditText;

    const/4 v13, 0x3

    const v11, 0x7f080083

    invoke-virtual {p1, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mBaseUrl:Landroid/widget/EditText;

    const/4 v13, 0x1

    const v11, 0x7f080084

    invoke-virtual {p1, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mInitialFolder:Landroid/widget/EditText;

    const/4 v13, 0x4

    const v11, 0x7f080089

    invoke-virtual {p1, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPort:Landroid/widget/EditText;

    const/4 v13, 0x4

    const v11, 0x7f08008a

    invoke-virtual {p1, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyPath:Landroid/widget/EditText;

    const/4 v13, 0x4

    const v11, 0x7f08008b

    invoke-virtual {p1, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    iput-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyBrowse:Landroid/widget/Button;

    const/4 v13, 0x0

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f02000c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x2

    new-instance v10, Landroid/widget/ArrayAdapter;

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mActivity:Landroid/app/Activity;

    const v12, 0x1090008

    invoke-direct {v10, v11, v12, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v13, 0x7

    const v11, 0x1090009

    invoke-virtual {v10, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const/4 v13, 0x6

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServerType:Landroid/widget/Spinner;

    invoke-virtual {v11, v10}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v13, 0x1

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f02000b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x6

    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mActivity:Landroid/app/Activity;

    const v12, 0x1090008

    invoke-direct {v5, v11, v12, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v13, 0x0

    const v11, 0x1090009

    invoke-virtual {v5, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const/4 v13, 0x1

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPasswordOptions:Landroid/widget/Spinner;

    invoke-virtual {v11, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v13, 0x7

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020009

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v13, 0x6

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mActivity:Landroid/app/Activity;

    const v12, 0x1090008

    invoke-direct {v0, v11, v12, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v13, 0x0

    const v11, 0x1090009

    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const/4 v13, 0x5

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAuthenticationOptions:Landroid/widget/Spinner;

    invoke-virtual {v11, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v13, 0x0

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f02000a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x7

    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mActivity:Landroid/app/Activity;

    const v12, 0x1090008

    invoke-direct {v3, v11, v12, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v13, 0x7

    const v11, 0x1090009

    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const/4 v13, 0x5

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyOptions:Landroid/widget/Spinner;

    invoke-virtual {v11, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v13, 0x1

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyBrowse:Landroid/widget/Button;

    iget-object v12, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mOnBrowseClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v13, 0x5

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    if-eqz v11, :cond_0

    const/4 v13, 0x5

    const/4 v7, 0x0

    const/4 v13, 0x1

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    instance-of v11, v11, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    if-eqz v11, :cond_3

    const/4 v13, 0x5

    iget-object v8, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    check-cast v8, Lcom/henrythompson/quoda/filesystem/SFTPServer;

    const/4 v13, 0x5

    const/4 v7, 0x3

    const/4 v13, 0x6

    invoke-virtual {v8}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getAuthenticationMethod()Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    move-result-object v1

    const/4 v13, 0x0

    sget-object v11, Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;->PASSWORD:Lcom/henrythompson/quoda/filesystem/SFTPServer$AuthenticationMethod;

    if-ne v1, v11, :cond_1

    const/4 v13, 0x1

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAuthenticationOptions:Landroid/widget/Spinner;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v13, 0x2

    :goto_0
    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyPath:Landroid/widget/EditText;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getKeyPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v13, 0x3

    invoke-virtual {v8}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->isKeyPassphraseSaved()Z

    move-result v11

    if-nez v11, :cond_2

    const/4 v13, 0x0

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyPassphrase:Landroid/widget/EditText;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v13, 0x1

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyOptions:Landroid/widget/Spinner;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v13, 0x4

    :goto_1
    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->onSftpSelected()V

    const/4 v13, 0x3

    :goto_2
    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServerType:Landroid/widget/Spinner;

    invoke-virtual {v11, v7}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v13, 0x7

    iget-object v12, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPasswordOptions:Landroid/widget/Spinner;

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/filesystem/Server;->isPasswordSaved()Z

    move-result v11

    if-nez v11, :cond_7

    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v12, v11}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v13, 0x0

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mName:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/filesystem/Server;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v13, 0x3

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAddress:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/filesystem/Server;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v13, 0x1

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mUsername:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/filesystem/Server;->getUsername()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v13, 0x4

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPassword:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/filesystem/Server;->getPassword()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v13, 0x2

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mBaseUrl:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/filesystem/Server;->getBaseURL()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v13, 0x6

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mInitialFolder:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/filesystem/Server;->getInitialDirectory()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v13, 0x4

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPort:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v12}, Lcom/henrythompson/quoda/filesystem/Server;->getPort()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v13, 0x3

    :cond_0
    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPasswordOptions:Landroid/widget/Spinner;

    invoke-virtual {v11}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v11

    if-nez v11, :cond_8

    const/4 v13, 0x5

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPassword:Landroid/widget/EditText;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v13, 0x7

    :goto_4
    nop

    return-void

    const/4 v3, 0x1

    const/4 v13, 0x4

    :cond_1
    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAuthenticationOptions:Landroid/widget/Spinner;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    const/4 v1, 0x4

    const/4 v13, 0x6

    :cond_2
    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyPassphrase:Landroid/widget/EditText;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/filesystem/SFTPServer;->getKeyPassphrase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v13, 0x4

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyOptions:Landroid/widget/Spinner;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_1

    const/4 v5, 0x1

    const/4 v13, 0x1

    :cond_3
    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    instance-of v11, v11, Lcom/henrythompson/quoda/filesystem/FTPServer;

    if-eqz v11, :cond_5

    const/4 v13, 0x5

    const/4 v7, 0x0

    const/4 v13, 0x0

    :cond_4
    :goto_5
    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->onFtpSelected()V

    goto/16 :goto_2

    const/4 v1, 0x2

    const/4 v13, 0x1

    :cond_5
    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    instance-of v11, v11, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    if-eqz v11, :cond_4

    const/4 v13, 0x0

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    check-cast v11, Lcom/henrythompson/quoda/filesystem/FTPSServer;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/filesystem/FTPSServer;->isImplicit()Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v13, 0x1

    const/4 v7, 0x1

    goto :goto_5

    const/4 v1, 0x0

    const/4 v13, 0x7

    :cond_6
    const/4 v7, 0x2

    goto :goto_5

    const/4 v7, 0x2

    const/4 v13, 0x7

    :cond_7
    const/4 v11, 0x1

    goto/16 :goto_3

    const/4 v11, 0x4

    const/4 v13, 0x3

    :cond_8
    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPassword:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_4

    const/4 v4, 0x7
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x5
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x7
.end method

.method public setListener(Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;)Lcom/henrythompson/quoda/filesystem/EditServerDialog;
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mListener:Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;

    const/4 v0, 0x1

    return-object p0

    const/4 v0, 0x6
.end method

.method public setServer(Lcom/henrythompson/quoda/filesystem/Server;)Lcom/henrythompson/quoda/filesystem/EditServerDialog;
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServer:Lcom/henrythompson/quoda/filesystem/Server;

    const/4 v0, 0x6

    return-object p0

    const/4 v0, 0x5
.end method

.method public show()Landroid/app/AlertDialog;
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mCreatingNewServer:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->isNewOrOldPremiumSubscriber()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v4, 0x5

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/henrythompson/quoda/UpgradeActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x5

    const-string v2, "trigger"

    const-string v3, "server"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v4, 0x4

    const/4 v2, 0x0

    const/4 v4, 0x5

    :goto_0
    return-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->setLayout()Landroid/widget/ScrollView;

    move-result-object v1

    const/4 v4, 0x4

    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v4, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    const/4 v4, 0x0

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->updateInformation(Landroid/widget/ScrollView;)V

    const/4 v4, 0x4

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->setButtonListeners(Landroid/widget/ScrollView;)V

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPasswordOptions:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->onPasswordSelectionChangedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 v4, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mPrivateKeyOptions:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->onPassphraseOptionsChangedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 v4, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mServerType:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->onServerTypeSelectionChangedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mAuthenticationOptions:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->onAuthMethodSelectionChangedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0

    const/4 v1, 0x1
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x1

    nop

    return-void

    const/4 v2, 0x3
.end method
