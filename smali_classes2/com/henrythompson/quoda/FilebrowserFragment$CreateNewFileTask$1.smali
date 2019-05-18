.class Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask$1;->this$1:Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask$1;->this$1:Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;

    invoke-static {v0}, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->access$1400(Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask$1;->this$1:Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;

    iget-object v0, v0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask$1;->this$1:Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;

    invoke-static {v1}, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->access$1500(Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->createNewFolder(Ljava/lang/String;)V

    const/4 v2, 0x4

    :goto_0
    nop

    return-void

    const/4 v1, 0x1

    const/4 v2, 0x7

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask$1;->this$1:Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;

    iget-object v0, v0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask$1;->this$1:Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;

    invoke-static {v1}, Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;->access$1500(Lcom/henrythompson/quoda/FilebrowserFragment$CreateNewFileTask;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->createNewFile(Ljava/lang/String;)V

    goto :goto_0

    const/4 v0, 0x6
.end method
