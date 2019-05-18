.class Lcom/henrythompson/quoda/document/DocumentsManager$2$2;
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


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/document/DocumentsManager$2;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/document/DocumentsManager$2$2;->this$1:Lcom/henrythompson/quoda/document/DocumentsManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/henrythompson/quoda/document/DocumentsManager$2$2;->this$1:Lcom/henrythompson/quoda/document/DocumentsManager$2;

    iget-object v1, v1, Lcom/henrythompson/quoda/document/DocumentsManager$2;->val$activity:Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/document/DocumentsManager$2$2;->this$1:Lcom/henrythompson/quoda/document/DocumentsManager$2;

    iget-object v1, v1, Lcom/henrythompson/quoda/document/DocumentsManager$2;->this$0:Lcom/henrythompson/quoda/document/DocumentsManager;

    const v2, 0x7f0d00aa

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->access$000(Lcom/henrythompson/quoda/document/DocumentsManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/document/DocumentsManager$2$2;->this$1:Lcom/henrythompson/quoda/document/DocumentsManager$2;

    iget-object v1, v1, Lcom/henrythompson/quoda/document/DocumentsManager$2;->this$0:Lcom/henrythompson/quoda/document/DocumentsManager;

    const v2, 0x7f0d00ee

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->access$000(Lcom/henrythompson/quoda/document/DocumentsManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/document/DocumentsManager$2$2;->this$1:Lcom/henrythompson/quoda/document/DocumentsManager$2;

    iget-object v1, v1, Lcom/henrythompson/quoda/document/DocumentsManager$2;->this$0:Lcom/henrythompson/quoda/document/DocumentsManager;

    const v2, 0x7f0d018c

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->access$000(Lcom/henrythompson/quoda/document/DocumentsManager;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x5

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v3, 0x0

    nop

    return-void

    const/4 v3, 0x2
.end method
