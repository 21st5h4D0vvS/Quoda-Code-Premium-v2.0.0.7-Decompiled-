.class Lcom/henrythompson/quoda/EditorPanel$34;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->showEncodingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;

.field final synthetic val$document:Lcom/henrythompson/quoda/document/Document;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$34;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$34;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    const/4 v8, 0x4

    const/4 v8, 0x5

    :try_start_0
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$34;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v2}, Lcom/henrythompson/quoda/EditorPanel;->access$2600(Lcom/henrythompson/quoda/EditorPanel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v8, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$34;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/Document;->getEncoding()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$34;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v3}, Lcom/henrythompson/quoda/EditorPanel;->access$2600(Lcom/henrythompson/quoda/EditorPanel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v8, 0x4

    :goto_0
    nop

    return-void

    const/4 v7, 0x5

    const/4 v8, 0x2

    :cond_0
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$34;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-static {v2}, Lcom/henrythompson/quoda/utils/Utils;->documentHasFilepath(Lcom/henrythompson/quoda/document/Document;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v8, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$34;->val$document:Lcom/henrythompson/quoda/document/Document;

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$34;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v3}, Lcom/henrythompson/quoda/EditorPanel;->access$2600(Lcom/henrythompson/quoda/EditorPanel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/document/Document;->setEncoding(Ljava/lang/String;)V

    const/4 v8, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$34;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$34;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v4, 0x7f0d017b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/henrythompson/quoda/EditorPanel$34;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v7}, Lcom/henrythompson/quoda/EditorPanel;->access$2600(Lcom/henrythompson/quoda/EditorPanel;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/henrythompson/quoda/EditorPanel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/EditorPanel;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v0, 0x2

    const/4 v8, 0x2

    :catch_0
    move-exception v1

    const/4 v8, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$34;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$34;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v3}, Lcom/henrythompson/quoda/EditorPanel;->access$2600(Lcom/henrythompson/quoda/EditorPanel;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/henrythompson/quoda/EditorPanel;->access$2800(Lcom/henrythompson/quoda/EditorPanel;Ljava/lang/String;)V

    goto :goto_0

    const/4 v2, 0x4

    const/4 v8, 0x3

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$34;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/Document;->getIsSaved()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$34;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$34;->val$document:Lcom/henrythompson/quoda/document/Document;

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$34;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v4}, Lcom/henrythompson/quoda/EditorPanel;->access$2600(Lcom/henrythompson/quoda/EditorPanel;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/henrythompson/quoda/EditorPanel;->access$2700(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;)V

    goto :goto_0

    const/4 v8, 0x5

    const/4 v8, 0x1

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$34;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$34;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v3, 0x7f0d00a1

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$34;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v3, 0x7f0d00a0

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$34;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v3, 0x7f0d0189

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$34;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v3, 0x7f0d0251

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/henrythompson/quoda/EditorPanel$34$1;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/EditorPanel$34$1;-><init>(Lcom/henrythompson/quoda/EditorPanel$34;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x1

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    const/4 v8, 0x7

    const/4 v8, 0x1

    :cond_3
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$34;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$34;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v3}, Lcom/henrythompson/quoda/EditorPanel;->access$2600(Lcom/henrythompson/quoda/EditorPanel;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/henrythompson/quoda/EditorPanel;->access$2800(Lcom/henrythompson/quoda/EditorPanel;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    const/4 v4, 0x5
.end method
