.class Lcom/henrythompson/quoda/EditorPanel$42;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->onFindClick()V
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

    const/4 v0, 0x0

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$42;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$42;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v1}, Lcom/henrythompson/quoda/EditorPanel;->access$2900(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$42;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01000e

    const/4 v4, 0x1

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$42;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v1}, Lcom/henrythompson/quoda/EditorPanel;->access$200(Lcom/henrythompson/quoda/EditorPanel;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$42;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v1}, Lcom/henrythompson/quoda/EditorPanel;->access$200(Lcom/henrythompson/quoda/EditorPanel;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$42;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v1}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/CodeView;->clearFindResults()V

    const/4 v4, 0x0

    nop

    return-void

    const/4 v2, 0x3
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x7
.end method
