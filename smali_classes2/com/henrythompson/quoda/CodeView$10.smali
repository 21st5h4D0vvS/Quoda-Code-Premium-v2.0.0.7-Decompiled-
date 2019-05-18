.class Lcom/henrythompson/quoda/CodeView$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/CodeView;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/CodeView;

.field final synthetic val$document:Lcom/henrythompson/quoda/document/Document;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/CodeView;Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/CodeView$10;->this$0:Lcom/henrythompson/quoda/CodeView;

    iput-object p2, p0, Lcom/henrythompson/quoda/CodeView$10;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$10;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v5}, Lcom/henrythompson/quoda/CodeView;->access$1800(Lcom/henrythompson/quoda/CodeView;)V

    const/4 v8, 0x6

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$10;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->isInSnippetMode()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v8, 0x2

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$10;->this$0:Lcom/henrythompson/quoda/CodeView;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/henrythompson/quoda/CodeView;->access$800(Lcom/henrythompson/quoda/CodeView;I)V

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$10;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getSelectedTabIndex()I

    move-result v3

    const/4 v8, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$10;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getCurrentlyInsertedSnippet()Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabStop(I)Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v4

    const/4 v8, 0x3

    if-nez v4, :cond_0

    const/4 v8, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$10;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getCurrentlyInsertedSnippet()Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabStop(I)Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v4

    const/4 v8, 0x5

    :cond_0
    if-eqz v4, :cond_1

    const/4 v8, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$10;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v5}, Lcom/henrythompson/quoda/CodeView;->access$700(Lcom/henrythompson/quoda/CodeView;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getSnippetStart()I

    move-result v1

    const/4 v8, 0x6

    invoke-virtual {v4}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabStopStarts()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int v2, v1, v5

    const/4 v8, 0x4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/snippet/Tabstop;->getLength()I

    move-result v5

    add-int v0, v2, v5

    const/4 v8, 0x7

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$10;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v5, v2, v0}, Lcom/henrythompson/quoda/CodeView;->setSelection(II)V

    const/4 v8, 0x4

    :goto_0
    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$10;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/CodeView;->syntaxHighlight()V

    const/4 v8, 0x4

    nop

    return-void

    const/4 v4, 0x0

    const/4 v8, 0x0

    :cond_1
    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$10;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-object v6, p0, Lcom/henrythompson/quoda/CodeView$10;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/document/Document;->getSnippetEnd()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/CodeView;->setSelection(I)V

    const/4 v8, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$10;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v5, v7}, Lcom/henrythompson/quoda/CodeView;->access$800(Lcom/henrythompson/quoda/CodeView;I)V

    goto :goto_0

    const/4 v1, 0x5

    const/4 v8, 0x6

    :cond_2
    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$10;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v5, v7}, Lcom/henrythompson/quoda/CodeView;->access$800(Lcom/henrythompson/quoda/CodeView;I)V

    goto :goto_0

    const/4 v5, 0x1
.end method
