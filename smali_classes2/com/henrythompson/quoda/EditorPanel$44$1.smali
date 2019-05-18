.class Lcom/henrythompson/quoda/EditorPanel$44$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel$44;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/EditorPanel$44;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel$44;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$44$1;->this$1:Lcom/henrythompson/quoda/EditorPanel$44;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$44$1;->this$1:Lcom/henrythompson/quoda/EditorPanel$44;

    iget-object v0, v0, Lcom/henrythompson/quoda/EditorPanel$44;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$2900(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v2, 0x4

    nop

    return-void

    const/4 v1, 0x7
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x0
.end method
