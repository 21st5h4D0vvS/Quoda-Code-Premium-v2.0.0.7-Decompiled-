.class public Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/language/LanguageStyler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StylingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mError:Z

.field final synthetic this$0:Lcom/henrythompson/quoda/language/LanguageStyler;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/language/LanguageStyler;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;->this$0:Lcom/henrythompson/quoda/language/LanguageStyler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public cancelTask()Z
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x7

    const-string v0, "LanguageStyler"

    const-string v1, "cancel() has been called. Cancelling styler task."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;->cancel(Z)Z

    move-result v0

    return v0

    const/4 v2, 0x1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0

    const/4 v1, 0x5
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    const/4 v7, 0x1

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;->this$0:Lcom/henrythompson/quoda/language/LanguageStyler;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4, v5}, Lcom/henrythompson/quoda/language/LanguageStyler;->access$002(Lcom/henrythompson/quoda/language/LanguageStyler;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v7, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Lcom/henrythompson/quoda/language/LanguageStyler;->access$102(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v7, 0x3

    :try_start_0
    iget-object v4, p0, Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;->this$0:Lcom/henrythompson/quoda/language/LanguageStyler;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/language/LanguageStyler;->parse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x3

    :goto_0
    const/4 v4, 0x0

    return-object v4

    const/4 v0, 0x3

    const/4 v7, 0x5

    :catch_0
    move-exception v0

    const/4 v7, 0x5

    const-string v4, "LanguageStyler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error. Is cancelled? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;->isCancelled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    const/4 v7, 0x2

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v7, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    const/4 v7, 0x6

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x3

    const-string v4, "LanguageStyler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stack trace:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;->mError:Z

    goto :goto_0

    const/4 v2, 0x1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x4

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;->onPostExecute(Ljava/lang/Void;)V

    nop

    return-void

    const/4 v0, 0x4
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;->mError:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;->this$0:Lcom/henrythompson/quoda/language/LanguageStyler;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/language/LanguageStyler;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguageStyler;->access$200()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguageStyler;->access$200()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/language/LanguageStyler$StylingTask;->this$0:Lcom/henrythompson/quoda/language/LanguageStyler;

    invoke-static {v1}, Lcom/henrythompson/quoda/language/LanguageStyler;->access$000(Lcom/henrythompson/quoda/language/LanguageStyler;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setSpans(Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguageStyler;->access$200()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguageStyler;->access$100()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setContextSpans(Ljava/util/ArrayList;)V

    const/4 v2, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v2, 0x7

    :cond_0
    nop

    return-void

    const/4 v2, 0x4
.end method
