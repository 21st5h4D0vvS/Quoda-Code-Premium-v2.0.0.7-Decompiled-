.class Lcom/henrythompson/quoda/filesystem/Dropbox$DropboxAuthActivityHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/filesystem/Dropbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropboxAuthActivityHandler"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;

.field private mOnAuthorised:Ljava/lang/Runnable;

.field private mOnCancelled:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/henrythompson/quoda/filesystem/Dropbox;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/filesystem/Dropbox;Lcom/henrythompson/quoda/filesystem/Dropbox;Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/Dropbox$DropboxAuthActivityHandler;->this$0:Lcom/henrythompson/quoda/filesystem/Dropbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput-object p4, p0, Lcom/henrythompson/quoda/filesystem/Dropbox$DropboxAuthActivityHandler;->mOnAuthorised:Ljava/lang/Runnable;

    const/4 v0, 0x3

    iput-object p5, p0, Lcom/henrythompson/quoda/filesystem/Dropbox$DropboxAuthActivityHandler;->mOnCancelled:Ljava/lang/Runnable;

    const/4 v0, 0x3

    iput-object p3, p0, Lcom/henrythompson/quoda/filesystem/Dropbox$DropboxAuthActivityHandler;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x4

    iput-object p2, p0, Lcom/henrythompson/quoda/filesystem/Dropbox$DropboxAuthActivityHandler;->mDropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public onActivityResume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v4, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->isNewOrOldPremiumSubscriber()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v4, 0x7

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/Dropbox$DropboxAuthActivityHandler;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/henrythompson/quoda/UpgradeActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x5

    const-string v2, "trigger"

    const-string v3, "dropbox"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/Dropbox$DropboxAuthActivityHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v4, 0x3

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v1, 0x3

    const/4 v4, 0x1

    :cond_1
    invoke-static {}, Lcom/dropbox/core/android/Auth;->getOAuth2Token()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    if-eqz v0, :cond_2

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/Dropbox$DropboxAuthActivityHandler;->this$0:Lcom/henrythompson/quoda/filesystem/Dropbox;

    invoke-static {v2, v0}, Lcom/henrythompson/quoda/filesystem/Dropbox;->access$000(Lcom/henrythompson/quoda/filesystem/Dropbox;Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/Dropbox$DropboxAuthActivityHandler;->mDropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->addCloudService(Lcom/henrythompson/quoda/filesystem/CloudService;)Z

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/Dropbox$DropboxAuthActivityHandler;->mOnAuthorised:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/Dropbox$DropboxAuthActivityHandler;->mOnAuthorised:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    const/4 v3, 0x6

    const/4 v4, 0x6

    :cond_2
    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/Dropbox$DropboxAuthActivityHandler;->mOnCancelled:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/Dropbox$DropboxAuthActivityHandler;->mOnCancelled:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    const/4 v0, 0x5
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x5
.end method
