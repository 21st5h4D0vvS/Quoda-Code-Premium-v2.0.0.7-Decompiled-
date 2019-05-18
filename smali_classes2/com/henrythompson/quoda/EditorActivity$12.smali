.class Lcom/henrythompson/quoda/EditorActivity$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorActivity;->tutorialFilesystems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorActivity;

.field final synthetic val$tutorialPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorActivity;Landroid/widget/PopupWindow;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorActivity$12;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorActivity$12;->val$tutorialPopupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    :try_start_0
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$12;->val$tutorialPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$12;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorActivity;->access$1100(Lcom/henrythompson/quoda/EditorActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    :goto_0
    nop

    return-void

    const/4 v0, 0x7

    const/4 v1, 0x5

    :catch_0
    move-exception v0

    goto :goto_0

    const/4 v1, 0x5
.end method
