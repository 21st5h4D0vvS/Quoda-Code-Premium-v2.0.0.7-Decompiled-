.class Lcom/henrythompson/quoda/EditorPanel$40;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->showGotoLineDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$40;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$40;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x1

    const v5, 0x7f0d0090

    const/4 v6, 0x2

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$40;->val$input:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int/lit8 v1, v4, -0x1

    const/4 v6, 0x0

    if-lez v1, :cond_0

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$40;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v4}, Lcom/henrythompson/quoda/EditorPanel;->access$2500(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v4

    const/4 v6, 0x2

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/Document;->getLineCount()I

    move-result v4

    if-lt v1, v4, :cond_1

    const/4 v6, 0x7

    :cond_0
    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$40;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/EditorPanel;->showToast(I)V

    const/4 v6, 0x5

    :goto_0
    nop

    return-void

    const/4 v2, 0x3

    const/4 v6, 0x3

    :catch_0
    move-exception v0

    const/4 v6, 0x6

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$40;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/EditorPanel;->showToast(I)V

    goto :goto_0

    const/4 v5, 0x2

    const/4 v6, 0x7

    :cond_1
    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$40;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v4}, Lcom/henrythompson/quoda/EditorPanel;->access$2500(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v1}, Lcom/henrythompson/quoda/document/Document;->getIndexForStartOfLine(I)I

    move-result v2

    const/4 v6, 0x3

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$40;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v4}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/henrythompson/quoda/CodeView;->setSelection(I)V

    goto :goto_0

    const/4 v1, 0x6
.end method
