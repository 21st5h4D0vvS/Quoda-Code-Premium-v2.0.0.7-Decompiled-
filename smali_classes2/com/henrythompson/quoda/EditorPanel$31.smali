.class Lcom/henrythompson/quoda/EditorPanel$31;
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


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$31;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$31;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->updateSyntaxHighlighting()V

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$31;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$2500(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/language/Language;->runStyler()V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x6
.end method
