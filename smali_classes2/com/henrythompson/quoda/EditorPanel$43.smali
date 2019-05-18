.class Lcom/henrythompson/quoda/EditorPanel$43;
.super Ljava/lang/Object;

# interfaces
.implements Lyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->showColorPickerDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;

.field final synthetic val$after:Ljava/lang/String;

.field final synthetic val$before:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$43;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$43;->val$before:Ljava/lang/String;

    iput-object p3, p0, Lcom/henrythompson/quoda/EditorPanel$43;->val$after:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public onCancelClick(Lyuku/ambilwarna/AmbilWarnaDialog;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public onCopyClick(Lyuku/ambilwarna/AmbilWarnaDialog;I)V
    .locals 7

    const/4 v6, 0x5

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x7

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$43;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "clipboard"

    const/4 v6, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    const/4 v6, 0x5

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    nop

    return-void

    const/4 v2, 0x3
.end method

.method public onInsertClick(Lyuku/ambilwarna/AmbilWarnaDialog;I)V
    .locals 8

    const/4 v7, 0x6

    const/4 v7, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v7, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$43;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v3}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v2

    const/4 v7, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$43;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v3}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v0

    const/4 v7, 0x7

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$43;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v3}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/henrythompson/quoda/EditorPanel$43;->val$before:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/henrythompson/quoda/EditorPanel$43;->val$after:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v0, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v7, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$43;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v3}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v3

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$43;->val$before:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    const/4 v7, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/henrythompson/quoda/EditorPanel$43;->val$after:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v7, 0x5

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/CodeView;->setSelection(I)V

    const/4 v7, 0x4

    nop

    return-void

    const/4 v0, 0x2
.end method
