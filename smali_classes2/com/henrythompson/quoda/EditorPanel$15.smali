.class Lcom/henrythompson/quoda/EditorPanel$15;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;


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

    const/4 v0, 0x3

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$15;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$15;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$1500(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->reset()V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v1, 0x0
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public onDrawerStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x3
.end method
