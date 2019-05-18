.class Lcom/henrythompson/quoda/EditorPanel$27;
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

    const/4 v0, 0x2

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$27;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/4 v3, 0x7

    if-nez p2, :cond_1

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/document/Document;->setSpans(Ljava/util/ArrayList;)V

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/document/Document;->setContextSpans(Ljava/util/ArrayList;)V

    const/4 v3, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "unknown"

    const/4 v3, 0x2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    const/4 v3, 0x6

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->syntaxHighlight()V

    const/4 v3, 0x2

    nop

    return-void

    const/4 v3, 0x6

    const/4 v3, 0x0

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "actionscript"

    const/4 v3, 0x3

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto :goto_0

    const/4 v3, 0x1

    const/4 v3, 0x5

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "c"

    const/4 v3, 0x2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto :goto_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "c++"

    const/4 v3, 0x1

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto :goto_0

    const/4 v2, 0x7

    const/4 v3, 0x6

    :cond_4
    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "c#"

    const/4 v3, 0x0

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto :goto_0

    const/4 v1, 0x0

    const/4 v3, 0x2

    :cond_5
    const/4 v0, 0x5

    if-ne p2, v0, :cond_6

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "css"

    const/4 v3, 0x3

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto/16 :goto_0

    const/4 v1, 0x5

    const/4 v3, 0x3

    :cond_6
    const/4 v0, 0x6

    if-ne p2, v0, :cond_7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "haskell"

    const/4 v3, 0x4

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto/16 :goto_0

    const/4 v1, 0x2

    const/4 v3, 0x4

    :cond_7
    const/4 v0, 0x7

    if-ne p2, v0, :cond_8

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "html"

    const/4 v3, 0x6

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto/16 :goto_0

    const/4 v2, 0x4

    const/4 v3, 0x3

    :cond_8
    const/16 v0, 0x8

    if-ne p2, v0, :cond_9

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "java"

    const/4 v3, 0x0

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto/16 :goto_0

    const/4 v2, 0x7

    const/4 v3, 0x5

    :cond_9
    const/16 v0, 0x9

    if-ne p2, v0, :cond_a

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "javascript"

    const/4 v3, 0x5

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto/16 :goto_0

    const/4 v3, 0x1

    const/4 v3, 0x1

    :cond_a
    const/16 v0, 0xa

    if-ne p2, v0, :cond_b

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "lisp"

    const/4 v3, 0x7

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto/16 :goto_0

    const/4 v1, 0x5

    const/4 v3, 0x1

    :cond_b
    const/16 v0, 0xb

    if-ne p2, v0, :cond_c

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "lua"

    const/4 v3, 0x6

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto/16 :goto_0

    const/4 v3, 0x4

    const/4 v3, 0x5

    :cond_c
    const/16 v0, 0xc

    if-ne p2, v0, :cond_d

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "markdown"

    const/4 v3, 0x1

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto/16 :goto_0

    const/4 v2, 0x2

    const/4 v3, 0x0

    :cond_d
    const/16 v0, 0xd

    if-ne p2, v0, :cond_e

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "objective-c"

    const/4 v3, 0x6

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto/16 :goto_0

    const/4 v3, 0x0

    const/4 v3, 0x6

    :cond_e
    const/16 v0, 0xe

    if-ne p2, v0, :cond_f

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "perl"

    const/4 v3, 0x2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto/16 :goto_0

    const/4 v0, 0x3

    const/4 v3, 0x7

    :cond_f
    const/16 v0, 0xf

    if-ne p2, v0, :cond_10

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "php"

    const/4 v3, 0x2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto/16 :goto_0

    const/4 v0, 0x0

    const/4 v3, 0x1

    :cond_10
    const/16 v0, 0x10

    if-ne p2, v0, :cond_11

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "python"

    const/4 v3, 0x2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto/16 :goto_0

    const/4 v1, 0x2

    const/4 v3, 0x1

    :cond_11
    const/16 v0, 0x11

    if-ne p2, v0, :cond_12

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "ruby"

    const/4 v3, 0x1

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto/16 :goto_0

    const/4 v1, 0x7

    const/4 v3, 0x0

    :cond_12
    const/16 v0, 0x12

    if-ne p2, v0, :cond_13

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "sql"

    const/4 v3, 0x3

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto/16 :goto_0

    const/4 v0, 0x3

    const/4 v3, 0x2

    :cond_13
    if-ne p2, v1, :cond_14

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "visualbasic"

    const/4 v3, 0x3

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto/16 :goto_0

    const/4 v1, 0x5

    const/4 v3, 0x6

    :cond_14
    const/16 v0, 0x14

    if-ne p2, v0, :cond_0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$27;->val$doc:Lcom/henrythompson/quoda/document/Document;

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v1

    const-string v2, "xml"

    const/4 v3, 0x7

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto/16 :goto_0

    const/4 v1, 0x6
.end method
