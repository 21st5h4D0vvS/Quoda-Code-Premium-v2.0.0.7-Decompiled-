.class Lcom/henrythompson/quoda/FileBrowserPanel$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/FileBrowserPanel;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/FileBrowserPanel;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/FileBrowserPanel;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$6;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x5

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$6;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    iget-object v1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$6;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v1}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$400(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v1

    const-string v2, "local"

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/FileBrowserPanel;->setFilesystem(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    const/4 v3, 0x0

    nop

    return-void

    const/4 v2, 0x4
.end method
