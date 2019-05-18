.class Lcom/henrythompson/quoda/EditorPanel$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/FileBrowserPanel$OnCloseFileBrowserPanelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$13;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public onCloseFileBrowserPanel()V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$13;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$1400(Lcom/henrythompson/quoda/EditorPanel;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    const/4 v2, 0x2

    nop

    return-void

    const/4 v1, 0x3
.end method
