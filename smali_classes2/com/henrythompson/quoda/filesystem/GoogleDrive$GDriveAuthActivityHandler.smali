.class Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/filesystem/GoogleDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GDriveAuthActivityHandler"
.end annotation


# static fields
.field private static final REQUEST_AUTHORISE_GDRIVE:I = 0x3832

.field private static final REQUEST_CHOOSE_ACCOUNT:I = 0x9230


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mGoogleAccountName:Ljava/lang/String;

.field private mOnAuthorised:Ljava/lang/Runnable;

.field private mOnCancelled:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/henrythompson/quoda/filesystem/GoogleDrive;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/filesystem/GoogleDrive;Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->this$0:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object p2, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x6

    iput-object p3, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->mOnAuthorised:Ljava/lang/Runnable;

    const/4 v0, 0x7

    iput-object p4, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->mOnCancelled:Ljava/lang/Runnable;

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x4
.end method

.method static synthetic access$200(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->mGoogleAccountName:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x6
.end method

.method static synthetic access$400(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;)Ljava/lang/Runnable;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->mOnCancelled:Ljava/lang/Runnable;

    return-object v0

    const/4 v1, 0x4
.end method

.method static synthetic access$500(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;)Landroid/app/Activity;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->mActivity:Landroid/app/Activity;

    return-object v0

    const/4 v0, 0x6
.end method

.method static synthetic access$700(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;)Ljava/lang/Runnable;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->mOnAuthorised:Ljava/lang/Runnable;

    return-object v0

    const/4 v0, 0x2
.end method


# virtual methods
.method public beginAuthorisation()V
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->access$000()Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->newChooseAccountIntent()Landroid/content/Intent;

    move-result-object v1

    const v2, 0x9230

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v3, 0x4

    nop

    return-void

    const/4 v3, 0x6
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v0, -0x1

    const/4 v3, 0x5

    sparse-switch p1, :sswitch_data_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v3, 0x3

    const/4 v3, 0x6

    :sswitch_0
    if-ne p2, v0, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v3, 0x6

    const-string v0, "authAccount"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->mGoogleAccountName:Ljava/lang/String;

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->mGoogleAccountName:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->access$000()Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->mGoogleAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccountName(Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->this$0:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->access$100(Lcom/henrythompson/quoda/filesystem/GoogleDrive;)V

    const/4 v3, 0x4

    new-instance v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;-><init>(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;)V

    invoke-static {v0}, Lcom/henrythompson/quoda/QuodaApplication;->performOnBackgroundThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    goto :goto_0

    const/4 v0, 0x7

    const/4 v3, 0x7

    :cond_1
    const-string v0, "GoogleDriveAuthHandler"

    const-string v1, "Failed: Google account name was null when getting string extra."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->mOnCancelled:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->mOnCancelled:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    const/4 v3, 0x5

    const/4 v3, 0x1

    :cond_2
    const-string v0, "GoogleDriveAuthHandler"

    const-string v1, "Failed: Result was empty or not OK."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->mOnCancelled:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->mOnCancelled:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    const/4 v0, 0x6

    const/4 v3, 0x5

    :sswitch_1
    if-eq p2, v0, :cond_3

    const/4 v3, 0x7

    const-string v0, "GoogleDriveAuthHandler"

    const-string v1, "REQUEST_AUTHORISE_DRIVE found but result not OK."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->access$000()Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->newChooseAccountIntent()Landroid/content/Intent;

    move-result-object v1

    const v2, 0x9230

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    const/4 v3, 0x5

    const/4 v3, 0x6

    :cond_3
    const-string v0, "GoogleDriveAuthHandler"

    const-string v1, "Google Drive connection successfully added."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->access$000()Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->mGoogleAccountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccountName(Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->this$0:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->access$100(Lcom/henrythompson/quoda/filesystem/GoogleDrive;)V

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->this$0:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->mGoogleAccountName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->access$600(Lcom/henrythompson/quoda/filesystem/GoogleDrive;Ljava/lang/String;)V

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->mOnAuthorised:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->mOnAuthorised:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    const/4 v2, 0x2

    const/4 v3, 0x2

    nop

    :sswitch_data_0
    .sparse-switch
        0x3832 -> :sswitch_1
        0x9230 -> :sswitch_0
    .end sparse-switch
.end method

.method public onActivityResume()V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x1
.end method
