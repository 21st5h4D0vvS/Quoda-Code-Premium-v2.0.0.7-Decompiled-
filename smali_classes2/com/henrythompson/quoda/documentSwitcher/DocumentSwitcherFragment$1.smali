.class Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherAdapter$DocumentSwitcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$1;->this$0:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public onDisplayDocumentClick(Lcom/henrythompson/quoda/document/Document;)V
    .locals 4
    .param p1    # Lcom/henrythompson/quoda/document/Document;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x3

    const/4 v3, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/document/DocumentsManager;->displayDocument(Lcom/henrythompson/quoda/document/Document;)Z

    const/4 v3, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const-string v1, "hide_document_switcher_drawer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/DataController;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v3, 0x0

    nop

    return-void

    const/4 v3, 0x4
.end method

.method public onDocumentCloseClick(Lcom/henrythompson/quoda/document/Document;)V
    .locals 4
    .param p1    # Lcom/henrythompson/quoda/document/Document;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x6

    const/4 v3, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment$1;->this$0:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->getAuthActivity()Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/henrythompson/quoda/document/DocumentsManager;->closeDocumentConfirmIfNotSaved(Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;Lcom/henrythompson/quoda/document/Document;)V

    const/4 v3, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const-string v1, "hide_document_switcher_drawer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/DataController;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v3, 0x0

    nop

    return-void

    const/4 v0, 0x5
.end method
