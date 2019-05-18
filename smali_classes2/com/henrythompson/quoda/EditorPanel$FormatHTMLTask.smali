.class public Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/EditorPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FormatHTMLTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mDialog:Landroid/app/ProgressDialog;

.field mText:Landroid/text/Editable;

.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/EditorPanel;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x6

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v10, 0x2

    :goto_0
    return-object v7

    const/4 v1, 0x6

    const/4 v10, 0x5

    :cond_0
    new-instance v2, Lorg/htmlcleaner/HtmlCleaner;

    invoke-direct {v2}, Lorg/htmlcleaner/HtmlCleaner;-><init>()V

    const/4 v10, 0x1

    invoke-virtual {v2}, Lorg/htmlcleaner/HtmlCleaner;->getProperties()Lorg/htmlcleaner/CleanerProperties;

    move-result-object v6

    const/4 v10, 0x3

    new-instance v5, Lorg/htmlcleaner/TagNode;

    invoke-direct {v5, v7}, Lorg/htmlcleaner/TagNode;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/htmlcleaner/CleanerProperties;->setOmitXmlDeclaration(Z)V

    const/4 v10, 0x5

    invoke-virtual {v6, v9}, Lorg/htmlcleaner/CleanerProperties;->setOmitDoctypeDeclaration(Z)V

    const/4 v10, 0x1

    :try_start_0
    new-instance v7, Ljava/io/StringReader;

    iget-object v8, p0, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->mText:Landroid/text/Editable;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/Reader;)Lorg/htmlcleaner/TagNode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    const/4 v10, 0x4

    :goto_1
    new-instance v4, Lorg/htmlcleaner/PrettyHtmlSerializer;

    invoke-direct {v4, v6}, Lorg/htmlcleaner/PrettyHtmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    const/4 v10, 0x6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v10, 0x4

    :try_start_1
    invoke-virtual {v4, v5, v0}, Lorg/htmlcleaner/PrettyHtmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v10, 0x7

    :goto_2
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const/4 v10, 0x4

    invoke-static {v7}, Lcom/henrythompson/quoda/EditorPanel;->access$2500(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v7

    const/4 v10, 0x3

    invoke-virtual {v7}, Lcom/henrythompson/quoda/document/Document;->getEncoding()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x17

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "<!DOCTYPE HTML null \"\">"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x17

    const-string v9, "<!DOCTYPE html>"

    invoke-virtual {v1, v7, v8, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    goto :goto_0

    const/4 v1, 0x4

    const/4 v10, 0x2

    :catch_0
    move-exception v3

    const/4 v10, 0x2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    const/4 v9, 0x4

    const/4 v10, 0x3

    :catch_1
    move-exception v7

    goto :goto_2

    const/4 v8, 0x1

    const/4 v10, 0x5

    :catch_2
    move-exception v7

    goto :goto_1

    const/4 v5, 0x2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x6

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->onPostExecute(Ljava/lang/String;)V

    nop

    return-void

    const/4 v0, 0x6
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x7

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/CodeView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x2
.end method

.method protected onPreExecute()V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$2500(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v1, 0x7f0d017d

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->showToast(I)V

    const/4 v4, 0x4

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->cancel(Z)Z

    const/4 v4, 0x5

    :goto_0
    nop

    return-void

    const/4 v4, 0x4

    const/4 v4, 0x7

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->mDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0d00a7

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->mDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v2, 0x7f0d00a6

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->mDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->cancelSyntaxHighlight()V

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->mText:Landroid/text/Editable;

    goto :goto_0

    const/4 v0, 0x2
.end method
