.class Lcom/henrythompson/quoda/CodeView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/CodeView;->handleTabInsertedOnTextChangedSnippet(Ljava/lang/CharSequence;III)V
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

    const/4 v0, 0x6

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/CodeView$2;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$2;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v5}, Lcom/henrythompson/quoda/CodeView;->access$700(Lcom/henrythompson/quoda/CodeView;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getSelectedTabIndex()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$2;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v5, v7}, Lcom/henrythompson/quoda/CodeView;->access$800(Lcom/henrythompson/quoda/CodeView;I)V

    const/4 v8, 0x7

    :goto_0
    nop

    return-void

    const/4 v3, 0x5

    const/4 v8, 0x0

    :cond_0
    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$2;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v5}, Lcom/henrythompson/quoda/CodeView;->access$700(Lcom/henrythompson/quoda/CodeView;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getCurrentlyInsertedSnippet()Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v2

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$2;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v5}, Lcom/henrythompson/quoda/CodeView;->access$700(Lcom/henrythompson/quoda/CodeView;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getNextTabStop()Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v4

    const/4 v8, 0x6

    if-nez v4, :cond_2

    const/4 v8, 0x1

    invoke-virtual {v2, v7}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabStop(I)Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v4

    const/4 v8, 0x2

    if-nez v4, :cond_1

    const/4 v8, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$2;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v5}, Lcom/henrythompson/quoda/CodeView;->access$700(Lcom/henrythompson/quoda/CodeView;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getSnippetEnd()I

    move-result v0

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$2;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v5, v0, v0}, Lcom/henrythompson/quoda/CodeView;->setSelection(II)V

    const/4 v8, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$2;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v5, v7}, Lcom/henrythompson/quoda/CodeView;->access$800(Lcom/henrythompson/quoda/CodeView;I)V

    goto :goto_0

    const/4 v3, 0x3

    const/4 v8, 0x5

    :cond_1
    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$2;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v5, v7}, Lcom/henrythompson/quoda/CodeView;->access$800(Lcom/henrythompson/quoda/CodeView;I)V

    const/4 v8, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$2;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v5}, Lcom/henrythompson/quoda/CodeView;->access$700(Lcom/henrythompson/quoda/CodeView;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getSnippetStart()I

    move-result v1

    const/4 v8, 0x3

    invoke-virtual {v4}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabStopStarts()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int v3, v1, v5

    const/4 v8, 0x6

    invoke-virtual {v4}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabStopStarts()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/snippet/Tabstop;->getEnd(I)I

    move-result v5

    add-int v0, v1, v5

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$2;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v5, v3, v0}, Lcom/henrythompson/quoda/CodeView;->setSelection(II)V

    goto/16 :goto_0

    const/4 v0, 0x2

    const/4 v8, 0x6

    :cond_2
    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$2;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v5}, Lcom/henrythompson/quoda/CodeView;->access$700(Lcom/henrythompson/quoda/CodeView;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v5

    invoke-virtual {v4}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/document/Document;->setSelectedTabIndex(I)V

    const/4 v8, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$2;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v5}, Lcom/henrythompson/quoda/CodeView;->access$700(Lcom/henrythompson/quoda/CodeView;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getSnippetStart()I

    move-result v1

    const/4 v8, 0x4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabStopStarts()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int v3, v1, v5

    const/4 v8, 0x7

    invoke-virtual {v4}, Lcom/henrythompson/quoda/snippet/Tabstop;->getLength()I

    move-result v5

    add-int v0, v3, v5

    const/4 v8, 0x6

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView$2;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v5, v3, v0}, Lcom/henrythompson/quoda/CodeView;->setSelection(II)V

    goto/16 :goto_0

    const/4 v7, 0x1
.end method
