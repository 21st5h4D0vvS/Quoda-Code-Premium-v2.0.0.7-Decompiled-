.class Lcom/henrythompson/quoda/CodeView$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/CodeView;->generalOnTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/CodeView;

.field final synthetic val$count:I

.field final synthetic val$newCursorPosition:I

.field final synthetic val$replacementValue:Ljava/lang/String;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/CodeView;IILjava/lang/String;I)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/CodeView$7;->this$0:Lcom/henrythompson/quoda/CodeView;

    iput p2, p0, Lcom/henrythompson/quoda/CodeView$7;->val$start:I

    iput p3, p0, Lcom/henrythompson/quoda/CodeView$7;->val$count:I

    iput-object p4, p0, Lcom/henrythompson/quoda/CodeView$7;->val$replacementValue:Ljava/lang/String;

    iput p5, p0, Lcom/henrythompson/quoda/CodeView$7;->val$newCursorPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v5, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView$7;->this$0:Lcom/henrythompson/quoda/CodeView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/henrythompson/quoda/CodeView;->isAutoIndenting:Z

    const/4 v5, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView$7;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v1

    iget v2, p0, Lcom/henrythompson/quoda/CodeView$7;->val$start:I

    iget v3, p0, Lcom/henrythompson/quoda/CodeView$7;->val$start:I

    iget v4, p0, Lcom/henrythompson/quoda/CodeView$7;->val$count:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/henrythompson/quoda/CodeView$7;->val$replacementValue:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v5, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView$7;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v1}, Lcom/henrythompson/quoda/CodeView;->access$700(Lcom/henrythompson/quoda/CodeView;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/UndoStack;->pop()Lcom/henrythompson/quoda/UndoStack$TextChange;

    const/4 v5, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView$7;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v1}, Lcom/henrythompson/quoda/CodeView;->access$700(Lcom/henrythompson/quoda/CodeView;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/UndoStack;->pop()Lcom/henrythompson/quoda/UndoStack$TextChange;

    move-result-object v0

    const/4 v5, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView$7;->val$replacementValue:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v5, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView$7;->val$replacementValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    const/4 v5, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView$7;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v1}, Lcom/henrythompson/quoda/CodeView;->access$700(Lcom/henrythompson/quoda/CodeView;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/UndoStack;->push(Lcom/henrythompson/quoda/UndoStack$TextChange;)V

    const/4 v5, 0x4

    :cond_0
    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView$7;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v1

    iget v2, p0, Lcom/henrythompson/quoda/CodeView$7;->val$newCursorPosition:I

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/4 v5, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView$7;->this$0:Lcom/henrythompson/quoda/CodeView;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/henrythompson/quoda/CodeView;->isAutoIndenting:Z

    const/4 v5, 0x2

    nop

    return-void

    const/4 v4, 0x5
.end method
