.class Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->onPostExecute(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask$2;->this$1:Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask$2;->this$1:Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;

    iget-object v0, v0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$800(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask$2;->this$1:Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;

    iget-object v0, v0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$800(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask$2;->this$1:Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;

    invoke-static {v1}, Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;->access$500(Lcom/henrythompson/quoda/FilebrowserFragment$ListDirectoryTask;)Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;->onFolderListed(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v2, 0x5

    :cond_0
    nop

    return-void

    const/4 v2, 0x4
.end method
