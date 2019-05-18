.class Lcom/henrythompson/quoda/document/DocumentsManager$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/document/DocumentsManager$2;->onAuthNeeded(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/document/DocumentsManager$2;

.field final synthetic val$document:Lcom/henrythompson/quoda/document/Document;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/document/DocumentsManager$2;Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/document/DocumentsManager$2$1;->this$1:Lcom/henrythompson/quoda/document/DocumentsManager$2;

    iput-object p2, p0, Lcom/henrythompson/quoda/document/DocumentsManager$2$1;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/document/DocumentsManager$2$1;->this$1:Lcom/henrythompson/quoda/document/DocumentsManager$2;

    iget-object v0, v0, Lcom/henrythompson/quoda/document/DocumentsManager$2;->this$0:Lcom/henrythompson/quoda/document/DocumentsManager;

    iget-object v1, p0, Lcom/henrythompson/quoda/document/DocumentsManager$2$1;->this$1:Lcom/henrythompson/quoda/document/DocumentsManager$2;

    iget-object v1, v1, Lcom/henrythompson/quoda/document/DocumentsManager$2;->val$activity:Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

    iget-object v2, p0, Lcom/henrythompson/quoda/document/DocumentsManager$2$1;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->closeDocumentConfirmIfNotSaved(Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;Lcom/henrythompson/quoda/document/Document;)V

    const/4 v3, 0x6

    nop

    return-void

    const/4 v3, 0x4
.end method
