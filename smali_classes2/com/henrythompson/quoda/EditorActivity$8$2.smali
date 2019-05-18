.class Lcom/henrythompson/quoda/EditorActivity$8$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/EditorActivity$8;

.field final synthetic val$tutorialPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorActivity$8;Landroid/widget/PopupWindow;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorActivity$8$2;->this$1:Lcom/henrythompson/quoda/EditorActivity$8;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorActivity$8$2;->val$tutorialPopupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$8$2;->val$tutorialPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$8$2;->this$1:Lcom/henrythompson/quoda/EditorActivity$8;

    iget-object v0, v0, Lcom/henrythompson/quoda/EditorActivity$8;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorActivity;->access$600(Lcom/henrythompson/quoda/EditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$8$2;->this$1:Lcom/henrythompson/quoda/EditorActivity$8;

    iget-object v0, v0, Lcom/henrythompson/quoda/EditorActivity$8;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorActivity;->access$700(Lcom/henrythompson/quoda/EditorActivity;)V

    const/4 v1, 0x3

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v0, 0x7

    const/4 v1, 0x5

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$8$2;->this$1:Lcom/henrythompson/quoda/EditorActivity$8;

    iget-object v0, v0, Lcom/henrythompson/quoda/EditorActivity$8;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorActivity;->access$800(Lcom/henrythompson/quoda/EditorActivity;)Lcom/henrythompson/quoda/FileBrowserPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$8$2;->this$1:Lcom/henrythompson/quoda/EditorActivity$8;

    iget-object v0, v0, Lcom/henrythompson/quoda/EditorActivity$8;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorActivity;->access$800(Lcom/henrythompson/quoda/EditorActivity;)Lcom/henrythompson/quoda/FileBrowserPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/FileBrowserPanel;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$8$2;->this$1:Lcom/henrythompson/quoda/EditorActivity$8;

    iget-object v0, v0, Lcom/henrythompson/quoda/EditorActivity$8;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorActivity;->access$900(Lcom/henrythompson/quoda/EditorActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v0, 0x7

    const/4 v1, 0x5

    :catch_0
    move-exception v0

    goto :goto_0

    const/4 v1, 0x1
.end method
