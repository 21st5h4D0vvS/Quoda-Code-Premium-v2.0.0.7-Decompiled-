.class Lcom/henrythompson/quoda/FileBrowserPanel$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/FileBrowserPanel;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    const/4 v0, 0x2

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$5;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/henrythompson/quoda/FileBrowserPanel$5$1;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/FileBrowserPanel$5$1;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel$5;)V

    const/4 v4, 0x3

    new-instance v1, Lcom/henrythompson/quoda/FileBrowserPanel$5$2;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/FileBrowserPanel$5$2;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel$5;)V

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel$5;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$100(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/FilebrowserFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/FilebrowserFragment;->getFilesystem()Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v2

    iget-object v3, p0, Lcom/henrythompson/quoda/FileBrowserPanel$5;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/FileBrowserPanel;->getAuthActivity()Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/henrythompson/quoda/filesystem/Filesystem;->authorise(Lcom/henrythompson/quoda/IAuthHandlingActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel$5;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$300(Lcom/henrythompson/quoda/FileBrowserPanel;)Landroid/widget/Button;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v4, 0x0

    nop

    return-void

    const/4 v0, 0x0
.end method
