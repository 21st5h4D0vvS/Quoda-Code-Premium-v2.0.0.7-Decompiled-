.class Lcom/henrythompson/quoda/PreviewFragment$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/PreviewFragment;->showSourceDropdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/PreviewFragment;

.field final synthetic val$pw:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/PreviewFragment;Landroid/widget/PopupWindow;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/PreviewFragment$7;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    iput-object p2, p0, Lcom/henrythompson/quoda/PreviewFragment$7;->val$pw:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
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

    const/4 v2, 0x3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment$7;->val$pw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v2, 0x3

    packed-switch p3, :pswitch_data_0

    const/4 v2, 0x4

    :goto_0
    nop

    return-void

    const/4 v0, 0x3

    const/4 v2, 0x0

    :pswitch_0
    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment$7;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/PreviewFragment;->access$300(Lcom/henrythompson/quoda/PreviewFragment;I)V

    goto :goto_0

    const/4 v1, 0x5

    const/4 v2, 0x5

    :pswitch_1
    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment$7;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/PreviewFragment;->access$300(Lcom/henrythompson/quoda/PreviewFragment;I)V

    goto :goto_0

    const/4 v0, 0x0

    const/4 v2, 0x2

    :pswitch_2
    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment$7;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/PreviewFragment;->access$300(Lcom/henrythompson/quoda/PreviewFragment;I)V

    goto :goto_0

    const/4 v0, 0x4

    const/4 v2, 0x3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
