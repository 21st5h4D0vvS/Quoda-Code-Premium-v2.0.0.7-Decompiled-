.class Lcom/suredigit/inappfeedback/FeedbackDialog$3;
.super Ljava/lang/Thread;
.source "FeedbackDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/suredigit/inappfeedback/FeedbackDialog;->sendFeedback(Lcom/suredigit/inappfeedback/FeedBackItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

.field private final synthetic val$fi:Lcom/suredigit/inappfeedback/FeedBackItem;


# direct methods
.method constructor <init>(Lcom/suredigit/inappfeedback/FeedbackDialog;Lcom/suredigit/inappfeedback/FeedBackItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    iput-object p2, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->val$fi:Lcom/suredigit/inappfeedback/FeedBackItem;

    .line 240
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 244
    new-instance v8, Lorg/apache/http/client/methods/HttpPost;

    const-string v18, "http://www.android-feedback.com/service/1"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 246
    .local v8, "httppost":Lorg/apache/http/client/methods/HttpPost;
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 247
    .local v6, "httpParameters":Lorg/apache/http/params/HttpParams;
    invoke-static {}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$4()I

    move-result v16

    .line 248
    .local v16, "timeoutConnection":I
    move/from16 v0, v16

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 249
    invoke-static {}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$4()I

    move-result v17

    .line 250
    .local v17, "timeoutSocket":I
    move/from16 v0, v17

    invoke-static {v6, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 252
    new-instance v7, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v7, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 254
    .local v7, "httpclient":Lorg/apache/http/client/HttpClient;
    const/4 v15, 0x0

    .line 256
    .local v15, "success":Z
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 257
    .local v14, "submitJson":Lorg/json/JSONObject;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 259
    .local v9, "list":Lorg/json/JSONArray;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->val$fi:Lcom/suredigit/inappfeedback/FeedBackItem;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->val$fi:Lcom/suredigit/inappfeedback/FeedBackItem;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/suredigit/inappfeedback/FeedBackItem;->toJson()Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 262
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$5(Lcom/suredigit/inappfeedback/FeedbackDialog;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_1

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$5(Lcom/suredigit/inappfeedback/FeedbackDialog;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 264
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$5(Lcom/suredigit/inappfeedback/FeedbackDialog;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_6

    .line 267
    const-string v18, "APPUID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$6(Lcom/suredigit/inappfeedback/FeedbackDialog;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v18, "feedback"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_1
    :try_start_1
    sget-object v18, Lcom/suredigit/inappfeedback/FeedbackDialog;->LOGT:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    sget-object v19, Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;->DEBUG:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 276
    const-string v18, "FeedbackDialog"

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    .local v11, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "json"

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v18, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v19, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 282
    invoke-interface {v7, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 284
    .local v12, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 285
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v13

    .line 287
    .local v13, "result":Ljava/lang/String;
    sget-object v18, Lcom/suredigit/inappfeedback/FeedbackDialog;->LOGT:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    sget-object v19, Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;->DEBUG:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 288
    const-string v18, "FeedbackDialog"

    move-object/from16 v0, v18

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_3
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 291
    .local v2, "code":I
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v2, v0, :cond_4

    .line 292
    const/4 v15, 0x1

    .line 300
    :cond_4
    if-nez v15, :cond_b

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->val$fi:Lcom/suredigit/inappfeedback/FeedBackItem;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$5(Lcom/suredigit/inappfeedback/FeedbackDialog;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->val$fi:Lcom/suredigit/inappfeedback/FeedBackItem;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$7(Lcom/suredigit/inappfeedback/FeedbackDialog;)Z

    .line 316
    .end local v2    # "code":I
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    .end local v13    # "result":Ljava/lang/String;
    :cond_5
    :goto_2
    return-void

    .line 264
    :cond_6
    :try_start_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/suredigit/inappfeedback/FeedBackItem;

    .line 265
    .local v10, "myFi":Lcom/suredigit/inappfeedback/FeedBackItem;
    invoke-virtual {v10}, Lcom/suredigit/inappfeedback/FeedBackItem;->toJson()Lorg/json/JSONObject;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 269
    .end local v10    # "myFi":Lcom/suredigit/inappfeedback/FeedBackItem;
    :catch_0
    move-exception v4

    .line 270
    .local v4, "e1":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 293
    .end local v4    # "e1":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 294
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_3
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 295
    const/4 v15, 0x0

    .line 300
    if-nez v15, :cond_7

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->val$fi:Lcom/suredigit/inappfeedback/FeedBackItem;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$5(Lcom/suredigit/inappfeedback/FeedbackDialog;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->val$fi:Lcom/suredigit/inappfeedback/FeedBackItem;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$7(Lcom/suredigit/inappfeedback/FeedbackDialog;)Z

    goto :goto_2

    .line 308
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$5(Lcom/suredigit/inappfeedback/FeedbackDialog;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$7(Lcom/suredigit/inappfeedback/FeedbackDialog;)Z

    goto :goto_2

    .line 296
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v3

    .line 297
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 298
    const/4 v15, 0x0

    .line 300
    if-nez v15, :cond_8

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->val$fi:Lcom/suredigit/inappfeedback/FeedBackItem;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$5(Lcom/suredigit/inappfeedback/FeedbackDialog;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->val$fi:Lcom/suredigit/inappfeedback/FeedBackItem;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$7(Lcom/suredigit/inappfeedback/FeedbackDialog;)Z

    goto/16 :goto_2

    .line 308
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$5(Lcom/suredigit/inappfeedback/FeedbackDialog;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$7(Lcom/suredigit/inappfeedback/FeedbackDialog;)Z

    goto/16 :goto_2

    .line 299
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    .line 300
    if-nez v15, :cond_a

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->val$fi:Lcom/suredigit/inappfeedback/FeedBackItem;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$5(Lcom/suredigit/inappfeedback/FeedbackDialog;)Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->val$fi:Lcom/suredigit/inappfeedback/FeedBackItem;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$7(Lcom/suredigit/inappfeedback/FeedbackDialog;)Z

    .line 312
    :cond_9
    :goto_3
    throw v18

    .line 308
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$5(Lcom/suredigit/inappfeedback/FeedbackDialog;)Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$7(Lcom/suredigit/inappfeedback/FeedbackDialog;)Z

    goto :goto_3

    .line 308
    .restart local v2    # "code":I
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v11    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v12    # "response":Lorg/apache/http/HttpResponse;
    .restart local v13    # "result":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$5(Lcom/suredigit/inappfeedback/FeedbackDialog;)Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$7(Lcom/suredigit/inappfeedback/FeedbackDialog;)Z

    goto/16 :goto_2
.end method
