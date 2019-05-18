.class Lcom/henrythompson/quoda/EditorPanel$20;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->displaySubMenu(Landroid/view/SubMenu;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;

.field final synthetic val$submenu:Landroid/view/SubMenu;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;Landroid/view/SubMenu;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$20;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$20;->val$submenu:Landroid/view/SubMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$20;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$20;->val$submenu:Landroid/view/SubMenu;

    invoke-interface {v1, p3}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->access$500(Lcom/henrythompson/quoda/EditorPanel;I)Z

    const/4 v2, 0x2

    nop

    return-void

    const/4 v1, 0x0
.end method
