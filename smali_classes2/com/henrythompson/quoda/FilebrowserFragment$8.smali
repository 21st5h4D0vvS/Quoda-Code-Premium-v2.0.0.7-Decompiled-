.class Lcom/henrythompson/quoda/FilebrowserFragment$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/FilebrowserFragment;->showAddressBar()V
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

    const/4 v0, 0x7

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$8;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    iput-object p2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$8;->val$edittext:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/henrythompson/quoda/FilebrowserFragment$8;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$8;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$8;->val$edittext:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$400(Lcom/henrythompson/quoda/FilebrowserFragment;Landroid/widget/EditText;)V

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$8;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v2, 0x4

    const/4 v0, 0x1

    return v0

    const/4 v1, 0x7
.end method
