.class Lcom/henrythompson/quoda/FileBrowserPanel$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/FileBrowserPanel;->attachFilebrowserCloseListener()V
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

    const/4 v0, 0x3

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$9;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$9;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    iget-object v0, v0, Lcom/henrythompson/quoda/FileBrowserPanel;->mCloseListener:Lcom/henrythompson/quoda/FileBrowserPanel$OnCloseFileBrowserPanelListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$9;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    iget-object v0, v0, Lcom/henrythompson/quoda/FileBrowserPanel;->mCloseListener:Lcom/henrythompson/quoda/FileBrowserPanel$OnCloseFileBrowserPanelListener;

    invoke-interface {v0}, Lcom/henrythompson/quoda/FileBrowserPanel$OnCloseFileBrowserPanelListener;->onCloseFileBrowserPanel()V

    const/4 v1, 0x4

    :cond_0
    nop

    return-void

    const/4 v1, 0x0
.end method
