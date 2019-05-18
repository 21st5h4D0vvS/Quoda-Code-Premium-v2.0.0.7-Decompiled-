.class Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;->this$1:Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    const/4 v4, 0x6

    :try_start_0
    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;->this$1:Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;

    invoke-static {v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->access$200(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;->this$1:Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;

    invoke-static {v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->access$200(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v4, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->access$300()Lcom/google/api/services/drive/Drive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/drive/Drive$Files;->list()Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/services/drive/Drive$Files$List;->setMaxResults(Ljava/lang/Integer;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/api/services/drive/Drive$Files$List;->execute()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;->this$1:Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;

    iget-object v1, v1, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->this$0:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;->this$1:Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;

    invoke-static {v2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->access$200(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->access$600(Lcom/henrythompson/quoda/filesystem/GoogleDrive;Ljava/lang/String;)V

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;->this$1:Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;

    invoke-static {v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->access$700(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;->this$1:Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;

    invoke-static {v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->access$500(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1$2;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1$2;-><init>(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v4, 0x5

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v2, 0x2

    const/4 v4, 0x7

    :cond_1
    :try_start_1
    const-string v1, "GoogleDriveAuthHandler"

    const-string v2, "Failed: Google account name was null when listing files."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;->this$1:Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;

    invoke-static {v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->access$400(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v4, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;->this$1:Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;

    invoke-static {v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->access$400(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    const/4 v4, 0x1

    const/4 v4, 0x3

    :catch_0
    move-exception v0

    const/4 v4, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;->this$1:Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;

    invoke-static {v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->access$500(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x3832

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    const/4 v0, 0x6

    const/4 v4, 0x4

    :catch_1
    move-exception v0

    const/4 v4, 0x3

    const-string v1, "GoogleDriveAuthHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception listing files as auth test. Message:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;->this$1:Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;

    invoke-static {v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->access$400(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v4, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;->this$1:Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;

    invoke-static {v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->access$500(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1$1;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1$1;-><init>(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    const/4 v2, 0x6
.end method
