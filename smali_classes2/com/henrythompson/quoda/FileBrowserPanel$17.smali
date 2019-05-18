.class Lcom/henrythompson/quoda/FileBrowserPanel$17;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/FileBrowserPanel;->onFilesystemsSpinnerClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

.field final synthetic val$fsUuids:Ljava/util/List;

.field final synthetic val$pw:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/FileBrowserPanel;Ljava/util/List;Landroid/widget/PopupWindow;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17;->val$fsUuids:Ljava/util/List;

    iput-object p3, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17;->val$pw:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v7, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v7}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$400(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v8

    iget-object v7, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17;->val$fsUuids:Ljava/util/List;

    invoke-interface {v7, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v7, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-virtual {v7, v3}, Lcom/henrythompson/quoda/FileBrowserPanel;->setFilesystem(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17;->val$pw:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->dismiss()V

    nop

    return-void

    const/4 v3, 0x2

    :cond_1
    iget-object v7, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17;->val$fsUuids:Ljava/util/List;

    invoke-interface {v7, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "addgdrive"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v7}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$400(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v7

    const-class v8, Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    invoke-virtual {v7, v8}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->createCloudServiceInstance(Ljava/lang/Class;)Lcom/henrythompson/quoda/filesystem/CloudService;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    new-instance v6, Lcom/henrythompson/quoda/FileBrowserPanel$17$1;

    invoke-direct {v6, p0, v1}, Lcom/henrythompson/quoda/FileBrowserPanel$17$1;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel$17;Lcom/henrythompson/quoda/filesystem/GoogleDrive;)V

    new-instance v5, Lcom/henrythompson/quoda/FileBrowserPanel$17$2;

    invoke-direct {v5, p0}, Lcom/henrythompson/quoda/FileBrowserPanel$17$2;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel$17;)V

    iget-object v7, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/FileBrowserPanel;->getAuthActivity()Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

    move-result-object v7

    invoke-virtual {v1, v7, v6, v5}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->authorise(Lcom/henrythompson/quoda/IAuthHandlingActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    const/4 v1, 0x7

    :cond_2
    const-string v7, "adddropbox"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v7}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$400(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v7

    const-class v8, Lcom/henrythompson/quoda/filesystem/Dropbox;

    invoke-virtual {v7, v8}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->createCloudServiceInstance(Ljava/lang/Class;)Lcom/henrythompson/quoda/filesystem/CloudService;

    move-result-object v2

    check-cast v2, Lcom/henrythompson/quoda/filesystem/Dropbox;

    new-instance v6, Lcom/henrythompson/quoda/FileBrowserPanel$17$3;

    invoke-direct {v6, p0, v2}, Lcom/henrythompson/quoda/FileBrowserPanel$17$3;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel$17;Lcom/henrythompson/quoda/filesystem/Dropbox;)V

    new-instance v5, Lcom/henrythompson/quoda/FileBrowserPanel$17$4;

    invoke-direct {v5, p0}, Lcom/henrythompson/quoda/FileBrowserPanel$17$4;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel$17;)V

    iget-object v7, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/FileBrowserPanel;->getAuthActivity()Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

    move-result-object v7

    invoke-virtual {v2, v7, v6, v5}, Lcom/henrythompson/quoda/filesystem/Dropbox;->authorise(Lcom/henrythompson/quoda/IAuthHandlingActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    const/4 v9, 0x4

    :cond_3
    const-string v7, "addserver"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v4, Lcom/henrythompson/quoda/FileBrowserPanel$17$5;

    invoke-direct {v4, p0}, Lcom/henrythompson/quoda/FileBrowserPanel$17$5;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel$17;)V

    new-instance v7, Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    iget-object v8, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/FileBrowserPanel;->getAuthActivity()Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {v7, v4}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->setListener(Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;)Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    const/4 v7, 0x0
.end method
