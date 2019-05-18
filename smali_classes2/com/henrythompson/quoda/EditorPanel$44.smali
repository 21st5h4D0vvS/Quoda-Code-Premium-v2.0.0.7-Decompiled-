.class Lcom/henrythompson/quoda/EditorPanel$44;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->showFindOverflowDropDown(Landroid/view/View;)V
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

    const/4 v0, 0x1

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$44;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    packed-switch p3, :pswitch_data_0

    const/4 v6, 0x5

    :goto_0
    nop

    return-void

    const/4 v3, 0x3

    const/4 v6, 0x4

    :pswitch_0
    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$44;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v3}, Lcom/henrythompson/quoda/EditorPanel;->access$2900(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v6, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$44;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const/4 v6, 0x5

    invoke-virtual {v3}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f01000e

    const/4 v6, 0x4

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$44;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v3}, Lcom/henrythompson/quoda/EditorPanel;->access$2900(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v6, 0x5

    new-instance v3, Lcom/henrythompson/quoda/EditorPanel$44$1;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/EditorPanel$44$1;-><init>(Lcom/henrythompson/quoda/EditorPanel$44;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    const/4 v4, 0x6

    const/4 v6, 0x2

    :cond_0
    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$44;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v3}, Lcom/henrythompson/quoda/EditorPanel;->access$2900(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$44;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const/4 v6, 0x6

    invoke-virtual {v3}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f01000d

    const/4 v6, 0x1

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    const/4 v6, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$44;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v3}, Lcom/henrythompson/quoda/EditorPanel;->access$2900(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    const/4 v5, 0x6

    const/4 v6, 0x5

    :pswitch_1
    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$44;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/EditorPanel;->onFindClick()V

    goto :goto_0

    const/4 v3, 0x0

    const/4 v6, 0x1

    :pswitch_2
    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$44;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v4}, Lcom/henrythompson/quoda/EditorPanel;->access$100(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v4

    const/4 v6, 0x4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/QuodaPreferences;->getRegexEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    const/4 v6, 0x1

    :cond_1
    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$44;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v4}, Lcom/henrythompson/quoda/EditorPanel;->access$100(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/henrythompson/quoda/QuodaPreferences;->setRegexEnabled(Z)V

    const/4 v6, 0x7

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$44;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v4, v3}, Lcom/henrythompson/quoda/EditorPanel;->find(Z)V

    goto/16 :goto_0

    const/4 v1, 0x3

    const/4 v6, 0x3

    :pswitch_3
    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$44;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v4}, Lcom/henrythompson/quoda/EditorPanel;->access$100(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4}, Lcom/henrythompson/quoda/QuodaPreferences;->getCaseSensitive()Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v3

    const/4 v6, 0x6

    :goto_1
    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$44;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v4}, Lcom/henrythompson/quoda/EditorPanel;->access$100(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/henrythompson/quoda/QuodaPreferences;->setCaseSensitive(Z)V

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$44;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v4, v3}, Lcom/henrythompson/quoda/EditorPanel;->find(Z)V

    goto/16 :goto_0

    const/4 v3, 0x4

    :cond_2
    move v1, v2

    const/4 v6, 0x3

    goto :goto_1

    const/4 v4, 0x3

    const/4 v6, 0x1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
