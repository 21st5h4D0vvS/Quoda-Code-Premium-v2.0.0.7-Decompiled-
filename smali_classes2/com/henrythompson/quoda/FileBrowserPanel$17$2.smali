.class Lcom/henrythompson/quoda/FileBrowserPanel$17$2;
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


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/FileBrowserPanel$17;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17$2;->this$1:Lcom/henrythompson/quoda/FileBrowserPanel$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17$2;->this$1:Lcom/henrythompson/quoda/FileBrowserPanel$17;

    iget-object v0, v0, Lcom/henrythompson/quoda/FileBrowserPanel$17;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/FileBrowserPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d00ed

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v3, 0x5

    nop

    return-void

    const/4 v3, 0x4
.end method
