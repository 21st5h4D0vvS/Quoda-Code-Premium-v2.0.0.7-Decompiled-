.class Lcom/henrythompson/quoda/EditorActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/EditorActivity;
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

    const/4 v0, 0x1

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorActivity$1;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public onKeyPress(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$1;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorActivity;->access$000(Lcom/henrythompson/quoda/EditorActivity;)Lcom/henrythompson/quoda/EditorPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$1;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorActivity;->access$000(Lcom/henrythompson/quoda/EditorActivity;)Lcom/henrythompson/quoda/EditorPanel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/EditorPanel;->onAdditionalKeyClick(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    :cond_0
    nop

    return-void

    const/4 v0, 0x2
.end method
