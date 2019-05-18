.class Lcom/henrythompson/quoda/document/DocumentsManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$document:Lcom/henrythompson/quoda/document/Document;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/document/DocumentsManager;Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/document/DocumentsManager$3;->this$0:Lcom/henrythompson/quoda/document/DocumentsManager;

    iput-object p2, p0, Lcom/henrythompson/quoda/document/DocumentsManager$3;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/document/DocumentsManager$3;->this$0:Lcom/henrythompson/quoda/document/DocumentsManager;

    iget-object v1, p0, Lcom/henrythompson/quoda/document/DocumentsManager$3;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->closeDocument(Lcom/henrythompson/quoda/document/Document;)I

    const/4 v2, 0x5

    nop

    return-void

    const/4 v0, 0x1
.end method
