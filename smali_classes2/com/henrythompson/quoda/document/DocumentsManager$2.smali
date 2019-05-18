.class Lcom/henrythompson/quoda/document/DocumentsManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/document/DocumentsManager;->closeDocumentConfirmIfNotSaved(Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;Lcom/henrythompson/quoda/document/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/document/DocumentsManager;

.field final synthetic val$activity:Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/document/DocumentsManager;Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/document/DocumentsManager$2;->this$0:Lcom/henrythompson/quoda/document/DocumentsManager;

    iput-object p2, p0, Lcom/henrythompson/quoda/document/DocumentsManager$2;->val$activity:Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public onAuthNeeded(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V
    .locals 4

    const/4 v3, 0x7

    const/4 v3, 0x3

    new-instance v1, Lcom/henrythompson/quoda/document/DocumentsManager$2$1;

    invoke-direct {v1, p0, p1}, Lcom/henrythompson/quoda/document/DocumentsManager$2$1;-><init>(Lcom/henrythompson/quoda/document/DocumentsManager$2;Lcom/henrythompson/quoda/document/Document;)V

    const/4 v3, 0x2

    new-instance v0, Lcom/henrythompson/quoda/document/DocumentsManager$2$2;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/document/DocumentsManager$2$2;-><init>(Lcom/henrythompson/quoda/document/DocumentsManager$2;)V

    const/4 v3, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/document/DocumentsManager$2;->val$activity:Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

    invoke-virtual {p2, v2, v1, v0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;->runAuthorisation(Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v3, 0x7

    nop

    return-void

    const/4 v1, 0x3
.end method
