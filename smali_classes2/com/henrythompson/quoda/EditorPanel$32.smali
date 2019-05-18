.class Lcom/henrythompson/quoda/EditorPanel$32;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->showLineDelimitersDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;

.field final synthetic val$originalLinebreak:I


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;I)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$32;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput p2, p0, Lcom/henrythompson/quoda/EditorPanel$32;->val$originalLinebreak:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$32;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$2500(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    iget v1, p0, Lcom/henrythompson/quoda/EditorPanel$32;->val$originalLinebreak:I

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLineDelimStyle(I)V

    const/4 v2, 0x6

    nop

    return-void

    const/4 v2, 0x4
.end method
