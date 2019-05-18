.class Lcom/henrythompson/quoda/EditorPanel$30;
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

    const/4 v0, 0x3

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$30;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x7

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$30;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v1}, Lcom/henrythompson/quoda/EditorPanel;->access$2500(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v4, 0x1

    if-nez p2, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/document/Document;->setLineDelimStyle(I)V

    const/4 v4, 0x1

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v2, 0x5

    const/4 v4, 0x7

    :cond_1
    if-ne p2, v2, :cond_2

    const/4 v4, 0x6

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLineDelimStyle(I)V

    goto :goto_0

    const/4 v0, 0x0

    const/4 v4, 0x5

    :cond_2
    if-ne p2, v3, :cond_0

    const/4 v4, 0x2

    invoke-virtual {v0, v3}, Lcom/henrythompson/quoda/document/Document;->setLineDelimStyle(I)V

    goto :goto_0

    const/4 v0, 0x5
.end method
