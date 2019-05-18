.class Lcom/henrythompson/quoda/EditorPanel$28;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->showForceSyntaxDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;

.field final synthetic val$doc:Lcom/henrythompson/quoda/document/Document;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$28;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$28;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    const/4 v10, 0x4

    const/4 v10, 0x7

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$28;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/henrythompson/quoda/utils/Utils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v3

    const/4 v10, 0x1

    invoke-virtual {v3}, Lcom/henrythompson/quoda/language/LanguagesManager;->getFileAssociations()Lcom/henrythompson/quoda/language/FileAssociations;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/henrythompson/quoda/language/FileAssociations;->getLanguageForFileExtension(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v0

    const/4 v10, 0x3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    if-eqz v0, :cond_0

    const/4 v10, 0x3

    invoke-virtual {v0}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/henrythompson/quoda/EditorPanel$28;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v10, 0x7

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$28;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const/4 v10, 0x3

    invoke-virtual {v4}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x5

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$28;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v5, 0x7f0d008e

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x7

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$28;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v5, 0x7f0d008d

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/henrythompson/quoda/EditorPanel$28;->val$doc:Lcom/henrythompson/quoda/document/Document;

    const/4 v10, 0x7

    invoke-virtual {v8}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v8

    invoke-virtual {v8}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/henrythompson/quoda/EditorPanel$28;->val$doc:Lcom/henrythompson/quoda/document/Document;

    const/4 v10, 0x5

    invoke-virtual {v9}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/henrythompson/quoda/utils/Utils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v10, 0x6

    invoke-virtual {v4, v5, v6}, Lcom/henrythompson/quoda/EditorPanel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x7

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$28;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v5, 0x7f0d0251

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/henrythompson/quoda/EditorPanel$28$1;

    invoke-direct {v5, p0}, Lcom/henrythompson/quoda/EditorPanel$28$1;-><init>(Lcom/henrythompson/quoda/EditorPanel$28;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x2

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$28;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v5, 0x7f0d0189

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x4

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v10, 0x4

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel$28;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v4}, Lcom/henrythompson/quoda/EditorPanel;->access$2500(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/language/Language;->runStyler()V

    const/4 v10, 0x5

    :cond_1
    nop

    return-void

    const/4 v9, 0x2
.end method
