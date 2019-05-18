.class Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;I)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$1;->this$0:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;

    iput p2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$1;->this$0:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;

    iget v2, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$1;->val$position:I

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$1;->this$0:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;

    invoke-static {v1}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->access$000(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;)Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$DocumentSwitcherListener;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$1;->this$0:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;

    invoke-static {v1}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;->access$000(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter;)Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$DocumentSwitcherListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherListItem;->getDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$DocumentSwitcherListener;->onDisplayDocumentClick(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v4, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v1

    const-string v2, "hide_document_switcher_drawer"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/henrythompson/quoda/DataController;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v4, 0x7

    :cond_0
    nop

    return-void

    const/4 v1, 0x1
.end method
