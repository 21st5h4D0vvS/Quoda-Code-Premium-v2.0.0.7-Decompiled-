.class Lcom/henrythompson/quoda/EditorPanel$14$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/EditorPanel$14;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel$14;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$14$1;->this$1:Lcom/henrythompson/quoda/EditorPanel$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$14$1;->this$1:Lcom/henrythompson/quoda/EditorPanel$14;

    iget-object v0, v0, Lcom/henrythompson/quoda/EditorPanel$14;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$14$1;->this$1:Lcom/henrythompson/quoda/EditorPanel$14;

    iget-object v0, v0, Lcom/henrythompson/quoda/EditorPanel$14;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->refresh()V

    const/4 v1, 0x4

    :cond_0
    nop

    return-void

    const/4 v0, 0x0
.end method
