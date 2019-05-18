.class Lcom/henrythompson/quoda/EditorPanel$49;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->saveFileAs(Lcom/henrythompson/quoda/document/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$49;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x5

    const/4 v3, 0x5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$49;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$49;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v2, 0x7f0d00aa

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$49;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v2, 0x7f0d00ee

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$49;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v2, 0x7f0d018c

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x2

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v3, 0x6

    nop

    return-void

    const/4 v2, 0x0
.end method
