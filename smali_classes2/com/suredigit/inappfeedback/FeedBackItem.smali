.class public Lcom/suredigit/inappfeedback/FeedBackItem;
.super Ljava/lang/Object;
.source "FeedBackItem.java"


# instance fields
.field UUID:Ljava/lang/String;

.field comment:Ljava/lang/String;

.field manufacturer:Ljava/lang/String;

.field model:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field sdk:Ljava/lang/String;

.field ts:Ljava/lang/String;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "ts"    # Ljava/lang/String;
    .param p4, "model"    # Ljava/lang/String;
    .param p5, "manufact"    # Ljava/lang/String;
    .param p6, "sdk"    # Ljava/lang/String;
    .param p7, "pname"    # Ljava/lang/String;
    .param p8, "UUID"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->comment:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->type:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->ts:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->model:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->manufacturer:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->sdk:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->packageName:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->UUID:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->comment:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->type:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->ts:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->model:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->manufacturer:Ljava/lang/String;

    .line 27
    iput-object p6, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->sdk:Ljava/lang/String;

    .line 28
    iput-object p7, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->packageName:Ljava/lang/String;

    .line 29
    iput-object p8, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->UUID:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 38
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 40
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "comment"

    iget-object v3, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->comment:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v2, "type"

    iget-object v3, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v2, "ts"

    iget-object v3, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->ts:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v2, "model"

    iget-object v3, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->model:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v2, "manufacturer"

    iget-object v3, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->manufacturer:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v2, "sdk"

    iget-object v3, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->sdk:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v2, "pname"

    iget-object v3, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v2, "UUID"

    iget-object v3, p0, Lcom/suredigit/inappfeedback/FeedBackItem;->UUID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-object v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/suredigit/inappfeedback/FeedBackItem;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
