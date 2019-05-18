.class Lcom/henrythompson/quoda/EditorPanel$16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->onResume()V
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

    const/4 v0, 0x2

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$16;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$16;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->requestFocus()Z

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$16;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/EditorPanel;->updateDocumentSwitcher()V

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$16;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/EditorPanel;->configureActionbar()V

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$16;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->onAfterActivityResumed()V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x6
.end method
