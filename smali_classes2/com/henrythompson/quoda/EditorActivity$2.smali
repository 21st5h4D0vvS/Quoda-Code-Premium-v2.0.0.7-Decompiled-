.class Lcom/henrythompson/quoda/EditorActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorActivity;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorActivity;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorActivity$2;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$2;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorActivity;->access$000(Lcom/henrythompson/quoda/EditorActivity;)Lcom/henrythompson/quoda/EditorPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$2;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/EditorActivity;->softKeyboardVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$2;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorActivity;->access$000(Lcom/henrythompson/quoda/EditorActivity;)Lcom/henrythompson/quoda/EditorPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/EditorPanel;->onSoftKeyboardShown()V

    const/4 v1, 0x0

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v0, 0x3

    const/4 v1, 0x5

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$2;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorActivity;->access$000(Lcom/henrythompson/quoda/EditorActivity;)Lcom/henrythompson/quoda/EditorPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/EditorPanel;->onSoftKeyboardHidden()V

    goto :goto_0

    const/4 v0, 0x7
.end method
