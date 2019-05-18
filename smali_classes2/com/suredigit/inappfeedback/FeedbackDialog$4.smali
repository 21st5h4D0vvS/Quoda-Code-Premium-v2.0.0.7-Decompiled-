.class Lcom/suredigit/inappfeedback/FeedbackDialog$4;
.super Ljava/lang/Thread;
.source "FeedbackDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/suredigit/inappfeedback/FeedbackDialog;->getPendingResponses()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;


# direct methods
.method constructor <init>(Lcom/suredigit/inappfeedback/FeedbackDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$4;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    .line 323
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/suredigit/inappfeedback/FeedbackDialog$4;)Lcom/suredigit/inappfeedback/FeedbackDialog;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$4;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 327
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "http://www.android-feedback.com/service/1/getPending/"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$4;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    invoke-static {v13}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$8(Lcom/suredigit/inappfeedback/FeedbackDialog;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v5, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 328
    .local v5, "httpget":Lorg/apache/http/client/methods/HttpGet;
    sget-object v12, Lcom/suredigit/inappfeedback/FeedbackDialog;->LOGT:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    sget-object v13, Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;->DEBUG:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    if-ne v12, v13, :cond_0

    .line 329
    const-string v12, "FeedbackDialog"

    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 332
    .local v3, "httpParameters":Lorg/apache/http/params/HttpParams;
    invoke-static {}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$4()I

    move-result v10

    .line 333
    .local v10, "timeoutConnection":I
    invoke-static {v3, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 334
    invoke-static {}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$4()I

    move-result v11

    .line 335
    .local v11, "timeoutSocket":I
    invoke-static {v3, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 337
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 339
    .local v4, "httpclient":Lorg/apache/http/client/HttpClient;
    const/4 v9, 0x0

    .line 341
    .local v9, "success":Z
    const-string v7, ""

    .line 344
    .local v7, "result":Ljava/lang/String;
    :try_start_0
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 346
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 347
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    const-string v12, "UTF-8"

    invoke-static {v2, v12}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 348
    sget-object v12, Lcom/suredigit/inappfeedback/FeedbackDialog;->LOGT:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    sget-object v13, Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;->DEBUG:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    if-ne v12, v13, :cond_1

    .line 349
    const-string v12, "FeedbackDialog"

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_1
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 352
    .local v0, "code":I
    const/16 v12, 0xc8

    if-ne v0, v12, :cond_2

    .line 353
    const/4 v9, 0x1

    .line 361
    :cond_2
    if-eqz v9, :cond_3

    .line 366
    const-string v12, ""

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 368
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 369
    .local v8, "resultFinal":Ljava/lang/String;
    iget-object v12, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$4;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    invoke-static {v12}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$9(Lcom/suredigit/inappfeedback/FeedbackDialog;)Landroid/app/Activity;

    move-result-object v12

    new-instance v13, Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;

    invoke-direct {v13, p0, v8}, Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;-><init>(Lcom/suredigit/inappfeedback/FeedbackDialog$4;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 390
    .end local v0    # "code":I
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "resultFinal":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_1
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    const/4 v9, 0x0

    .line 361
    if-eqz v9, :cond_3

    .line 366
    const-string v12, ""

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 368
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 369
    .restart local v8    # "resultFinal":Ljava/lang/String;
    iget-object v12, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$4;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    invoke-static {v12}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$9(Lcom/suredigit/inappfeedback/FeedbackDialog;)Landroid/app/Activity;

    move-result-object v12

    new-instance v13, Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;

    invoke-direct {v13, p0, v8}, Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;-><init>(Lcom/suredigit/inappfeedback/FeedbackDialog$4;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 357
    .end local v1    # "e":Lorg/apache/http/client/ClientProtocolException;
    .end local v8    # "resultFinal":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 358
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 359
    const/4 v9, 0x0

    .line 361
    if-eqz v9, :cond_3

    .line 366
    const-string v12, ""

    invoke-virtual {v7, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 368
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 369
    .restart local v8    # "resultFinal":Ljava/lang/String;
    iget-object v12, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$4;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    invoke-static {v12}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$9(Lcom/suredigit/inappfeedback/FeedbackDialog;)Landroid/app/Activity;

    move-result-object v12

    new-instance v13, Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;

    invoke-direct {v13, p0, v8}, Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;-><init>(Lcom/suredigit/inappfeedback/FeedbackDialog$4;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 360
    .end local v1    # "e":Ljava/io/IOException;
    .end local v8    # "resultFinal":Ljava/lang/String;
    :catchall_0
    move-exception v12

    .line 361
    if-eqz v9, :cond_4

    .line 366
    const-string v13, ""

    invoke-virtual {v7, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 368
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 369
    .restart local v8    # "resultFinal":Ljava/lang/String;
    iget-object v13, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$4;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    invoke-static {v13}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$9(Lcom/suredigit/inappfeedback/FeedbackDialog;)Landroid/app/Activity;

    move-result-object v13

    new-instance v14, Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;

    invoke-direct {v14, p0, v8}, Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;-><init>(Lcom/suredigit/inappfeedback/FeedbackDialog$4;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 386
    .end local v8    # "resultFinal":Ljava/lang/String;
    :cond_4
    throw v12
.end method
