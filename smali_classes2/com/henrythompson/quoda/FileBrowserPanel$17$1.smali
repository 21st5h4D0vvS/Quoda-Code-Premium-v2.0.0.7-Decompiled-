.class Lcom/henrythompson/quoda/FileBrowserPanel$17$1;
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

.field final synthetic val$drive:Lcom/henrythompson/quoda/filesystem/GoogleDrive;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/FileBrowserPanel$17;Lcom/henrythompson/quoda/filesystem/GoogleDrive;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17$1;->this$1:Lcom/henrythompson/quoda/FileBrowserPanel$17;

    iput-object p2, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17$1;->val$drive:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17$1;->this$1:Lcom/henrythompson/quoda/FileBrowserPanel$17;

    iget-object v0, v0, Lcom/henrythompson/quoda/FileBrowserPanel$17;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$400(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17$1;->val$drive:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->addCloudService(Lcom/henrythompson/quoda/filesystem/CloudService;)Z

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17$1;->this$1:Lcom/henrythompson/quoda/FileBrowserPanel$17;

    iget-object v0, v0, Lcom/henrythompson/quoda/FileBrowserPanel$17;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    iget-object v1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17$1;->val$drive:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/FileBrowserPanel;->setFilesystem(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    const/4 v2, 0x6

    nop

    return-void

    const/4 v2, 0x5
.end method
