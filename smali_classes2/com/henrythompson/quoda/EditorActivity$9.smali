.class Lcom/henrythompson/quoda/EditorActivity$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorActivity;->tutorialSpecialKeys()V
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

    const/4 v0, 0x2

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorActivity$9;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorActivity$9;->val$tutorialPopupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$9;->val$tutorialPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x1
.end method
