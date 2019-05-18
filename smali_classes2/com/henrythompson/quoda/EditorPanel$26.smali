.class Lcom/henrythompson/quoda/EditorPanel$26;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->showNewFromTemplateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;

.field final synthetic val$edtFilename:Landroid/widget/EditText;

.field final synthetic val$spnTemplate:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$26;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$26;->val$edtFilename:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/henrythompson/quoda/EditorPanel$26;->val$spnTemplate:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v3, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$26;->val$edtFilename:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    const-string v1, ".htm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    :cond_0
    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$26;->val$spnTemplate:Landroid/widget/Spinner;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v3, 0x4

    :goto_0
    nop

    return-void

    const/4 v3, 0x7

    const/4 v3, 0x4

    :cond_1
    const-string v1, ".xhtml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".xhtm"

    const/4 v3, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    :cond_2
    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$26;->val$spnTemplate:Landroid/widget/Spinner;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    const/4 v1, 0x3

    const/4 v3, 0x2

    :cond_3
    const-string v1, ".css"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$26;->val$spnTemplate:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    const/4 v1, 0x3

    const/4 v3, 0x1

    :cond_4
    const-string v1, ".cs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v3, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$26;->val$spnTemplate:Landroid/widget/Spinner;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    const/4 v2, 0x7

    const/4 v3, 0x0

    :cond_5
    const-string v1, ".java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$26;->val$spnTemplate:Landroid/widget/Spinner;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    const/4 v0, 0x0

    const/4 v3, 0x2

    :cond_6
    const-string v1, ".js"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$26;->val$spnTemplate:Landroid/widget/Spinner;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    const/4 v3, 0x6

    const/4 v3, 0x2

    :cond_7
    const-string v1, ".php"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, ".php3"

    const/4 v3, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, ".php4"

    const/4 v3, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v3, 0x1

    :cond_8
    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$26;->val$spnTemplate:Landroid/widget/Spinner;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    const/4 v3, 0x4

    const/4 v3, 0x2

    :cond_9
    const-string v1, ".py"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$26;->val$spnTemplate:Landroid/widget/Spinner;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    const/4 v1, 0x3

    const/4 v3, 0x0

    :cond_a
    const-string v1, ".vbs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$26;->val$spnTemplate:Landroid/widget/Spinner;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    const/4 v0, 0x1

    const/4 v3, 0x6

    :cond_b
    const-string v1, ".vb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$26;->val$spnTemplate:Landroid/widget/Spinner;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    const/4 v0, 0x0

    const/4 v3, 0x3

    :cond_c
    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$26;->val$spnTemplate:Landroid/widget/Spinner;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    const/4 v1, 0x0

    const/4 v3, 0x4

    :cond_d
    const-string v1, ".cc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, ".c++"

    const/4 v3, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, ".cpp"

    const/4 v3, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, ".cc"

    const/4 v3, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, ".cp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, ".cxx"

    const/4 v3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, ".hh"

    const/4 v3, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, ".h++"

    const/4 v3, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, ".hpp"

    const/4 v3, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, ".hp"

    const/4 v3, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, ".hxx"

    const/4 v3, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, ".inl"

    const/4 v3, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, ".ipp"

    const/4 v3, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v3, 0x1

    :cond_e
    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$26;->val$spnTemplate:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    const/4 v1, 0x0

    const/4 v3, 0x6

    :cond_f
    const-string v1, ".c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, ".h"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v3, 0x7

    :cond_10
    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$26;->val$spnTemplate:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    const/4 v2, 0x0

    const/4 v3, 0x6

    :cond_11
    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$26;->val$spnTemplate:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    const/4 v3, 0x7
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x6
.end method
