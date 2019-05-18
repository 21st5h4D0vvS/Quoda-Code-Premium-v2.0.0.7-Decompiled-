.class Lcom/henrythompson/quoda/EditorPanel$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->onActivityCreated(Landroid/os/Bundle;)V
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

    const/4 v0, 0x3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$14;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$14;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->updateGutter()V

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$14;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v0

    new-instance v1, Lcom/henrythompson/quoda/EditorPanel$14$1;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/EditorPanel$14$1;-><init>(Lcom/henrythompson/quoda/EditorPanel$14;)V

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/CodeView;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x7

    nop

    return-void

    const/4 v1, 0x5
.end method
