.class Lcom/henrythompson/quoda/EditorPanel$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/EditorPanel;
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

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$300(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/EditorPanel;->displayOverflowDropDown()V

    const/4 v2, 0x1

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v0, 0x3

    const/4 v2, 0x0

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$400(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v1, 0x7f0800f0

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->access$500(Lcom/henrythompson/quoda/EditorPanel;I)Z

    goto :goto_0

    const/4 v0, 0x3

    const/4 v2, 0x6

    :cond_2
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$600(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_3

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v1, 0x7f0800e7

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->access$500(Lcom/henrythompson/quoda/EditorPanel;I)Z

    goto :goto_0

    const/4 v1, 0x7

    const/4 v2, 0x3

    :cond_3
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$700(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_4

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v1, 0x7f0800fa

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->access$500(Lcom/henrythompson/quoda/EditorPanel;I)Z

    goto :goto_0

    const/4 v0, 0x6

    const/4 v2, 0x3

    :cond_4
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$800(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_5

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v1, 0x7f080101

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->access$500(Lcom/henrythompson/quoda/EditorPanel;I)Z

    goto :goto_0

    const/4 v0, 0x6

    const/4 v2, 0x7

    :cond_5
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$900(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v1, 0x7f0800fc

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->access$500(Lcom/henrythompson/quoda/EditorPanel;I)Z

    goto :goto_0

    const/4 v2, 0x7

    const/4 v2, 0x6

    :cond_6
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$1000(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_7

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/EditorPanel;->onUndoClick(Landroid/view/View;)V

    goto :goto_0

    const/4 v2, 0x6

    const/4 v2, 0x4

    :cond_7
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$1100(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_8

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/EditorPanel;->onRedoClick(Landroid/view/View;)V

    goto/16 :goto_0

    const/4 v0, 0x6

    const/4 v2, 0x5

    :cond_8
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$1200(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_9

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/EditorPanel;->saveFile()V

    goto/16 :goto_0

    const/4 v0, 0x2

    const/4 v2, 0x0

    :cond_9
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$1300(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$12;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$100(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/QuodaPreferences;->setFilebrowserPanelVisible(Z)V

    goto/16 :goto_0

    const/4 v0, 0x7
.end method
