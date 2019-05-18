.class Lcom/henrythompson/quoda/FileBrowserPanel$2;
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

    const/4 v0, 0x0

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$2;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$2;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$100(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/FilebrowserFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->refresh()V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x7
.end method
