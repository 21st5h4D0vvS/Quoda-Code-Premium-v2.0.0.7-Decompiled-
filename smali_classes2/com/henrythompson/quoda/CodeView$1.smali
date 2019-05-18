.class Lcom/henrythompson/quoda/CodeView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/CodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/CodeView;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/CodeView;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/CodeView;->access$402(Lcom/henrythompson/quoda/CodeView;Z)Z

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-boolean v0, v0, Lcom/henrythompson/quoda/CodeView;->mCtrlPressed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-boolean v0, v0, Lcom/henrythompson/quoda/CodeView;->mShiftPressed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-boolean v0, v0, Lcom/henrythompson/quoda/CodeView;->mAltPressed:Z

    if-nez v0, :cond_0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/CodeView;->generalAfterTextChanged(Landroid/text/Editable;)V

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v0}, Lcom/henrythompson/quoda/CodeView;->access$300(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-boolean v0, v0, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v0}, Lcom/henrythompson/quoda/CodeView;->access$500(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v0}, Lcom/henrythompson/quoda/CodeView;->access$600(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/CodeView;->updateUndoRedoAfterTextChanged(Landroid/text/Editable;)V

    const/4 v2, 0x2

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/CodeView;->access$002(Lcom/henrythompson/quoda/CodeView;I)I

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->syntaxHighlight()V

    const/4 v2, 0x3

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->cancelSyntaxHighlight()V

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v1}, Lcom/henrythompson/quoda/CodeView;->access$000(Lcom/henrythompson/quoda/CodeView;)I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/CodeView;->access$002(Lcom/henrythompson/quoda/CodeView;I)I

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    add-int v1, p2, p3

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/CodeView;->access$1302(Lcom/henrythompson/quoda/CodeView;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-boolean v0, v0, Lcom/henrythompson/quoda/CodeView;->mCtrlPressed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-boolean v0, v0, Lcom/henrythompson/quoda/CodeView;->mShiftPressed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-boolean v0, v0, Lcom/henrythompson/quoda/CodeView;->mAltPressed:Z

    if-nez v0, :cond_0

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v0}, Lcom/henrythompson/quoda/CodeView;->access$300(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v0}, Lcom/henrythompson/quoda/CodeView;->access$400(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-boolean v0, v0, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v0}, Lcom/henrythompson/quoda/CodeView;->access$500(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView;->updateDocumentBeforeTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView;->updateUndoRedoBeforeTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v2, 0x5

    :cond_0
    nop

    return-void

    const/4 v1, 0x2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v3}, Lcom/henrythompson/quoda/CodeView;->access$000(Lcom/henrythompson/quoda/CodeView;)I

    move-result v3

    add-int/2addr v3, p4

    invoke-static {v2, v3}, Lcom/henrythompson/quoda/CodeView;->access$002(Lcom/henrythompson/quoda/CodeView;I)I

    const/4 v5, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    add-int v3, p2, p4

    invoke-interface {p1, p2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/henrythompson/quoda/CodeView;->access$102(Lcom/henrythompson/quoda/CodeView;Ljava/lang/String;)Ljava/lang/String;

    const/4 v5, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-boolean v2, v2, Lcom/henrythompson/quoda/CodeView;->mCtrlPressed:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-boolean v2, v2, Lcom/henrythompson/quoda/CodeView;->mShiftPressed:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-boolean v2, v2, Lcom/henrythompson/quoda/CodeView;->mAltPressed:Z

    if-nez v2, :cond_6

    const/4 v5, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$200(Lcom/henrythompson/quoda/CodeView;)I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$300(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$400(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-boolean v2, v2, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$500(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$600(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v5, 0x2

    add-int v1, p2, p4

    const/4 v5, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$700(Lcom/henrythompson/quoda/CodeView;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v5, 0x5

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getSnippetStart()I

    move-result v2

    if-lt p2, v2, :cond_0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getSnippetEnd()I

    move-result v2

    if-le v1, v2, :cond_1

    const/4 v5, 0x2

    :cond_0
    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/henrythompson/quoda/CodeView;->access$800(Lcom/henrythompson/quoda/CodeView;I)V

    const/4 v5, 0x7

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$200(Lcom/henrythompson/quoda/CodeView;)I

    move-result v2

    if-nez v2, :cond_4

    const/4 v5, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView;->generalOnTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v5, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$300(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$400(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-boolean v2, v2, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$500(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$600(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v5, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$100(Lcom/henrythompson/quoda/CodeView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v5, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView;->access$900(Lcom/henrythompson/quoda/CodeView;Ljava/lang/CharSequence;III)V

    const/4 v5, 0x0

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/henrythompson/quoda/CodeView;->access$1302(Lcom/henrythompson/quoda/CodeView;Ljava/lang/String;)Ljava/lang/String;

    const/4 v5, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/henrythompson/quoda/CodeView;->access$102(Lcom/henrythompson/quoda/CodeView;Ljava/lang/String;)Ljava/lang/String;

    const/4 v5, 0x5

    nop

    return-void

    const/4 v1, 0x4

    const/4 v5, 0x5

    :cond_3
    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView;->updateDocumentOnTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView;->updateUndoRedoOnTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    const/4 v4, 0x2

    const/4 v5, 0x5

    :cond_4
    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$200(Lcom/henrythompson/quoda/CodeView;)I

    move-result v2

    if-ne v2, v4, :cond_2

    const/4 v5, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$100(Lcom/henrythompson/quoda/CodeView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v5, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$300(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$400(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-boolean v2, v2, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$500(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v5, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView;->access$1000(Lcom/henrythompson/quoda/CodeView;Ljava/lang/CharSequence;III)V

    goto :goto_0

    const/4 v0, 0x6

    const/4 v5, 0x3

    :cond_5
    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$300(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$400(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-boolean v2, v2, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$500(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v5, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView;->updateDocumentOnTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v5, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2}, Lcom/henrythompson/quoda/CodeView;->access$600(Lcom/henrythompson/quoda/CodeView;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v5, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView;->access$1100(Lcom/henrythompson/quoda/CodeView;Ljava/lang/CharSequence;III)V

    goto/16 :goto_0

    const/4 v3, 0x0

    const/4 v5, 0x6

    :cond_6
    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView$1;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView;->access$1200(Lcom/henrythompson/quoda/CodeView;Ljava/lang/CharSequence;III)V

    goto/16 :goto_0

    const/4 v2, 0x1
.end method
