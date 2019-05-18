.class Lcom/henrythompson/quoda/EditorPanel$37;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$37;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$37;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$37;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    new-instance v1, Lcom/henrythompson/quoda/SourceDownloader;

    invoke-direct {v1}, Lcom/henrythompson/quoda/SourceDownloader;-><init>()V

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$37;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const/4 v4, 0x1

    invoke-virtual {v3}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lcom/henrythompson/quoda/SourceDownloader;->downloadSource(Ljava/lang/String;ZLandroid/content/Context;)V

    const/4 v4, 0x3

    nop

    return-void

    const/4 v0, 0x5
.end method
