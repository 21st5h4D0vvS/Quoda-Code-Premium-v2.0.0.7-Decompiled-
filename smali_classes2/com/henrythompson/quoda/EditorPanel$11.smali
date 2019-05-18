.class Lcom/henrythompson/quoda/EditorPanel$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


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

    const/4 v0, 0x5

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$11;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$11;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$200(Lcom/henrythompson/quoda/EditorPanel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$11;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->find(Z)V

    const/4 v2, 0x4

    :cond_0
    nop

    return-void

    const/4 v2, 0x6
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x6
.end method
