.class Lcom/henrythompson/quoda/FilebrowserFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/FilebrowserFragment;->showNewFileDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$edittext:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/FilebrowserFragment;Landroid/widget/EditText;Landroid/app/AlertDialog;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$4;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    iput-object p2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$4;->val$edittext:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/henrythompson/quoda/FilebrowserFragment$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$4;->val$edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$4;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->createNewFile(Ljava/lang/String;)V

    const/4 v2, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v2, 0x1

    const/4 v1, 0x1

    return v1

    const/4 v1, 0x3
.end method
