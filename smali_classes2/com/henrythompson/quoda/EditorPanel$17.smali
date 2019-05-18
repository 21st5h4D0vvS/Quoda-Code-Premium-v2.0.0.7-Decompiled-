.class Lcom/henrythompson/quoda/EditorPanel$17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->onReceiveEvent(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;

.field final synthetic val$data:[Ljava/lang/Object;

.field final synthetic val$eventCode:I


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput p2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->val$eventCode:I

    iput-object p3, p0, Lcom/henrythompson/quoda/EditorPanel$17;->val$data:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x6

    const/16 v3, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->val$eventCode:I

    packed-switch v2, :pswitch_data_0

    const/4 v7, 0x1

    :cond_0
    :goto_0
    :pswitch_0
    nop

    return-void

    const/4 v3, 0x2

    const/4 v7, 0x0

    :pswitch_1
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/CodeView;->BeforeDisplayedDocumentChanged()V

    const/4 v7, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/EditorPanel;->access$1600(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/ScrollerWidget;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/henrythompson/quoda/ScrollerWidget;->setState(I)V

    const/4 v7, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/EditorPanel;->access$1400(Lcom/henrythompson/quoda/EditorPanel;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    const/4 v7, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/EditorPanel;->access$1400(Lcom/henrythompson/quoda/EditorPanel;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    const/4 v5, 0x1

    const/4 v7, 0x2

    :pswitch_2
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/CodeView;->AfterDisplayedDocumentChanged()V

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/EditorPanel;->updateDocumentSwitcher()V

    const/4 v7, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/CodeView;->clearFindResults()V

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/EditorPanel;->access$200(Lcom/henrythompson/quoda/EditorPanel;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v7, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v2, v6}, Lcom/henrythompson/quoda/EditorPanel;->find(Z)V

    const/4 v7, 0x6

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/EditorPanel;->configureActionbar()V

    goto :goto_0

    const/4 v1, 0x1

    const/4 v7, 0x5

    :pswitch_3
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/CodeView;->onDocumentSpansUpdated()V

    goto :goto_0

    const/4 v2, 0x0

    const/4 v7, 0x7

    :pswitch_4
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/CodeView;->refresh()V

    goto :goto_0

    const/4 v1, 0x3

    const/4 v7, 0x5

    :pswitch_5
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/EditorPanel;->updateDocumentSwitcher()V

    goto/16 :goto_0

    const/4 v2, 0x4

    const/4 v7, 0x1

    :pswitch_6
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/CodeView;->invalidate()V

    goto/16 :goto_0

    const/4 v6, 0x7

    const/4 v7, 0x6

    :pswitch_7
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/EditorPanel;->access$1700(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/RelativeLayout;

    move-result-object v2

    new-instance v3, Lcom/henrythompson/quoda/EditorPanel$17$1;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/EditorPanel$17$1;-><init>(Lcom/henrythompson/quoda/EditorPanel$17;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    const/4 v4, 0x1

    const/4 v7, 0x2

    :pswitch_8
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/EditorPanel;->access$1800(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    const/4 v1, 0x7

    const/4 v7, 0x1

    :pswitch_9
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->val$data:[Ljava/lang/Object;

    aget-object v2, v2, v6

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    const/4 v7, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->val$data:[Ljava/lang/Object;

    aget-object v1, v2, v6

    check-cast v1, Ljava/lang/Integer;

    const/4 v7, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/EditorPanel;->access$1800(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    const/4 v0, 0x6

    const/4 v7, 0x4

    :pswitch_a
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/EditorPanel;->access$1800(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v7, 0x1

    const-string v0, ""

    const/4 v7, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->val$data:[Ljava/lang/Object;

    aget-object v2, v2, v6

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    const/4 v7, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->val$data:[Ljava/lang/Object;

    aget-object v0, v2, v6

    check-cast v0, Ljava/lang/String;

    const/4 v7, 0x7

    :cond_2
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v4, 0x7f0d00f7

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/henrythompson/quoda/EditorPanel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/EditorPanel;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    const/4 v0, 0x5

    const/4 v7, 0x7

    :pswitch_b
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/EditorPanel;->access$1800(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ProgressBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    const/4 v0, 0x3

    const/4 v7, 0x2

    :pswitch_c
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/EditorPanel;->access$1900(Lcom/henrythompson/quoda/EditorPanel;)V

    goto/16 :goto_0

    const/4 v6, 0x4

    const/4 v7, 0x3

    :pswitch_d
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$17;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/EditorPanel;->updateDocumentSwitcher()V

    goto/16 :goto_0

    const/4 v3, 0x2

    const/4 v7, 0x5

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method
