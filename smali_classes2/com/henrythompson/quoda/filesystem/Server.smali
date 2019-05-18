.class public abstract Lcom/henrythompson/quoda/filesystem/Server;
.super Lcom/henrythompson/quoda/filesystem/Filesystem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/filesystem/Server$ServerAuthActivityHandler;
    }
.end annotation


# static fields
.field private static final INTERNET_CONNECTION_PERMISSION_CODE:I = 0xdbced64


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mBaseURL:Ljava/lang/String;

.field private mInitialDirectory:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPasswordSaved:Z

.field private mPort:I

.field private mUsername:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/filesystem/Filesystem;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x7

    const-string v0, ""

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/Server;->mBaseURL:Ljava/lang/String;

    const/4 v1, 0x4

    const/16 v0, 0x15

    iput v0, p0, Lcom/henrythompson/quoda/filesystem/Server;->mPort:I

    const/4 v1, 0x4

    const-string v0, "/"

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/Server;->mInitialDirectory:Ljava/lang/String;

    const/4 v1, 0x5

    nop

    return-void

    const/4 v1, 0x6
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/filesystem/Filesystem;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    const-string v0, ""

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/Server;->mBaseURL:Ljava/lang/String;

    const/4 v1, 0x3

    const/16 v0, 0x15

    iput v0, p0, Lcom/henrythompson/quoda/filesystem/Server;->mPort:I

    const/4 v1, 0x2

    const-string v0, "/"

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/Server;->mInitialDirectory:Ljava/lang/String;

    const/4 v1, 0x3

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public final authorise(Lcom/henrythompson/quoda/IAuthHandlingActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v4, 0x7

    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/4 v4, 0x5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Activity provided was not an instance of an actual Activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    const/4 v4, 0x7

    check-cast v0, Landroid/app/Activity;

    const/4 v4, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.INTERNET"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v4, 0x5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    const/4 v4, 0x3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.INTERNET"

    aput-object v3, v1, v2

    const v2, 0xdbced64

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    const/4 v4, 0x2

    new-instance v1, Lcom/henrythompson/quoda/filesystem/Server$ServerAuthActivityHandler;

    invoke-direct {v1, p2, p3}, Lcom/henrythompson/quoda/filesystem/Server$ServerAuthActivityHandler;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-interface {p1, v1}, Lcom/henrythompson/quoda/IAuthHandlingActivity;->setAuthHandler(Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;)V

    const/4 v4, 0x7

    :cond_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/henrythompson/quoda/filesystem/Server;->showLoginDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v4, 0x0

    nop

    return-void

    const/4 v1, 0x7
.end method

.method protected abstract connectAndLogIn()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/Server;->mAddress:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x6
.end method

.method public getBaseURL()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/Server;->mBaseURL:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x5
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/Server;->mName:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x0
.end method

.method public getInitialDirectory()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/Server;->mInitialDirectory:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x3
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/Server;->mPassword:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x6
.end method

.method public getPort()I
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x0

    iget v0, p0, Lcom/henrythompson/quoda/filesystem/Server;->mPort:I

    return v0

    const/4 v0, 0x7
.end method

.method public final getUsername()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/Server;->mUsername:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x1
.end method

.method public isPasswordSaved()Z
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x4

    iget-boolean v0, p0, Lcom/henrythompson/quoda/filesystem/Server;->mPasswordSaved:Z

    return v0

    const/4 v0, 0x1
.end method

.method protected abstract logOutAndDisconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation
.end method

.method protected abstract onServerConfigurationChanged()V
.end method

.method public requiresQuodaPremium()Z
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x6

    const/4 v0, 0x1

    return v0

    const/4 v1, 0x1
.end method

.method public final setAddress(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x3

    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x3

    const/4 v2, 0x5

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v2, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/filesystem/Server;->mAddress:Ljava/lang/String;

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/Server;->onServerConfigurationChanged()V

    const/4 v2, 0x4

    nop

    return-void

    const/4 v1, 0x0

    const/4 v2, 0x6

    :cond_0
    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/Server;->mAddress:Ljava/lang/String;

    goto :goto_0

    const/4 v2, 0x1
.end method

.method public setBaseURL(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/Server;->mBaseURL:Ljava/lang/String;

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public final setDisplayName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/Server;->mName:Ljava/lang/String;

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public setInitialDirectory(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/Server;->mInitialDirectory:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/Server;->onServerConfigurationChanged()V

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/Server;->mPassword:Ljava/lang/String;

    const/4 v1, 0x3

    :goto_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/Server;->onServerConfigurationChanged()V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x4

    const/4 v1, 0x3

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/Server;->mPassword:Ljava/lang/String;

    goto :goto_0

    const/4 v0, 0x4
.end method

.method public setPasswordSaved(Z)Lcom/henrythompson/quoda/filesystem/Server;
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x7

    iput-boolean p1, p0, Lcom/henrythompson/quoda/filesystem/Server;->mPasswordSaved:Z

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/Server;->onServerConfigurationChanged()V

    const/4 v0, 0x4

    return-object p0

    const/4 v0, 0x7
.end method

.method public setPort(I)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x4

    iput p1, p0, Lcom/henrythompson/quoda/filesystem/Server;->mPort:I

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/Server;->onServerConfigurationChanged()V

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public final setUsername(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/Server;->mUsername:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/Server;->onServerConfigurationChanged()V

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x3
.end method

.method protected abstract showLoginDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end method
