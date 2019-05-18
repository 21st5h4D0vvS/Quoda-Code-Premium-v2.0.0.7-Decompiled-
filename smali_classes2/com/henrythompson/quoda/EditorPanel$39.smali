.class Lcom/henrythompson/quoda/EditorPanel$39;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->showBookmarksDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;

.field final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$39;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$39;->val$items:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    const/4 v9, 0x7

    const/4 v9, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$39;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    const/4 v9, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$39;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v3}, Lcom/henrythompson/quoda/EditorPanel;->access$2500(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v3

    const/4 v9, 0x1

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/henrythompson/quoda/document/Document;->getIndexForStartOfLine(I)I

    move-result v2

    const/4 v9, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$39;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v3}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/henrythompson/quoda/CodeView;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x6

    :goto_0
    nop

    return-void

    const/4 v9, 0x7

    const/4 v9, 0x4

    :catch_0
    move-exception v0

    const/4 v9, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$39;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$39;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v5, 0x7f0d0130

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/henrythompson/quoda/EditorPanel$39;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/henrythompson/quoda/EditorPanel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/EditorPanel;->showToast(Ljava/lang/String;)V

    goto :goto_0

    const/4 v3, 0x7
.end method
