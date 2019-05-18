.class Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask$2;->this$1:Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask$2;->this$1:Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;

    iget-object v1, v1, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->mAuthException:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;->getFilesystem()Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/Server;->getPassword()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    new-instance v2, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask$2;->this$1:Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;

    iget-object v1, v1, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-direct {v2, v1, v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;-><init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog;Ljava/lang/String;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v4, 0x1

    nop

    return-void

    const/4 v0, 0x1
.end method
