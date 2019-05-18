.class Lcom/henrythompson/quoda/EditorPanel$41;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->showBookmarkLineDialog()V
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

    const/4 v0, 0x0

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$41;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$41;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x0

    const v5, 0x7f0d006f

    const/4 v6, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$41;->val$input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    const/4 v6, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$41;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v3}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/CodeView;->getLineCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    if-ltz v1, :cond_0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$41;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v3}, Lcom/henrythompson/quoda/EditorPanel;->access$2500(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v3

    const/4 v6, 0x2

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getLinesCollection()Lcom/henrythompson/quoda/document/LinesCollection;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v1}, Lcom/henrythompson/quoda/document/LinesCollection;->getLine(I)Lcom/henrythompson/quoda/document/LineObject;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x4

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/document/LineObject;->setIsBookmarked(Z)V

    const/4 v6, 0x1

    :goto_0
    nop

    return-void

    const/4 v5, 0x6

    const/4 v6, 0x6

    :cond_0
    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$41;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v4, 0x7f0d006f

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/EditorPanel;->showToast(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v3, 0x6

    const/4 v6, 0x1

    :catch_0
    move-exception v0

    const/4 v6, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$41;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v3, v5}, Lcom/henrythompson/quoda/EditorPanel;->showToast(I)V

    goto :goto_0

    const/4 v1, 0x0
.end method
