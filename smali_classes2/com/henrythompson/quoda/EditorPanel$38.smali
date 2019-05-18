.class Lcom/henrythompson/quoda/EditorPanel$38;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->showDownloadDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$38;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$38;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/henrythompson/quoda/EditorPanel$38;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$38;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x6

    new-instance v1, Lcom/henrythompson/quoda/SourceDownloader;

    invoke-direct {v1}, Lcom/henrythompson/quoda/SourceDownloader;-><init>()V

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$38;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v0, v3, v2}, Lcom/henrythompson/quoda/SourceDownloader;->downloadSource(Ljava/lang/String;ZLandroid/content/Context;)V

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$38;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v4, 0x2

    return v3

    const/4 v2, 0x2
.end method
