.class Lcom/henrythompson/quoda/FileBrowserPanel$17$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/FileBrowserPanel$17;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/FileBrowserPanel$17;

.field final synthetic val$dropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/FileBrowserPanel$17;Lcom/henrythompson/quoda/filesystem/Dropbox;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17$3;->this$1:Lcom/henrythompson/quoda/FileBrowserPanel$17;

    iput-object p2, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17$3;->val$dropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17$3;->this$1:Lcom/henrythompson/quoda/FileBrowserPanel$17;

    iget-object v0, v0, Lcom/henrythompson/quoda/FileBrowserPanel$17;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$400(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17$3;->val$dropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->addCloudService(Lcom/henrythompson/quoda/filesystem/CloudService;)Z

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17$3;->this$1:Lcom/henrythompson/quoda/FileBrowserPanel$17;

    iget-object v0, v0, Lcom/henrythompson/quoda/FileBrowserPanel$17;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    iget-object v1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17$3;->val$dropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/FileBrowserPanel;->setFilesystem(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    const/4 v2, 0x0

    nop

    return-void

    const/4 v1, 0x5
.end method
