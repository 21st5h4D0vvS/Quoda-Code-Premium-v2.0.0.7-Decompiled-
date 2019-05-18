.class public final Lcom/dropbox/core/DbxWrappedException;
.super Ljava/lang/Exception;
.source "DbxWrappedException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final errValue:Ljava/lang/Object;

.field private final requestId:Ljava/lang/String;

.field private final userMessage:Lcom/dropbox/core/LocalizedText;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;)V
    .locals 0
    .param p1, "errValue"    # Ljava/lang/Object;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "userMessage"    # Lcom/dropbox/core/LocalizedText;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/dropbox/core/DbxWrappedException;->errValue:Ljava/lang/Object;

    .line 26
    iput-object p2, p0, Lcom/dropbox/core/DbxWrappedException;->requestId:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/dropbox/core/DbxWrappedException;->userMessage:Lcom/dropbox/core/LocalizedText;

    .line 28
    return-void
.end method

.method public static executeBlockForObject(Lcom/dropbox/core/v2/callbacks/DbxGlobalCallbackFactory;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "factory"    # Lcom/dropbox/core/v2/callbacks/DbxGlobalCallbackFactory;
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/v2/callbacks/DbxGlobalCallbackFactory;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, "routeError":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 80
    invoke-interface {p0, p1, p2}, Lcom/dropbox/core/v2/callbacks/DbxGlobalCallbackFactory;->createRouteErrorCallback(Ljava/lang/String;Ljava/lang/Object;)Lcom/dropbox/core/v2/callbacks/DbxRouteErrorCallback;

    move-result-object v0

    .line 81
    .local v0, "callback":Lcom/dropbox/core/v2/callbacks/DbxRouteErrorCallback;, "Lcom/dropbox/core/v2/callbacks/DbxRouteErrorCallback<TT;>;"
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p2}, Lcom/dropbox/core/v2/callbacks/DbxRouteErrorCallback;->setRouteError(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v0}, Lcom/dropbox/core/v2/callbacks/DbxRouteErrorCallback;->run()V

    .line 86
    .end local v0    # "callback":Lcom/dropbox/core/v2/callbacks/DbxRouteErrorCallback;, "Lcom/dropbox/core/v2/callbacks/DbxRouteErrorCallback<TT;>;"
    :cond_0
    return-void
.end method

.method public static executeOtherBlocks(Lcom/dropbox/core/v2/callbacks/DbxGlobalCallbackFactory;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .param p0, "factory"    # Lcom/dropbox/core/v2/callbacks/DbxGlobalCallbackFactory;
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "routeError"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 62
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "tag"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 63
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 64
    .local v4, "result":Ljava/lang/Object;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "fName":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v0, v6, v5

    .line 66
    .local v0, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 67
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 68
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 69
    .local v2, "fieldValue":Ljava/lang/Object;
    invoke-static {p0, p1, v2}, Lcom/dropbox/core/DbxWrappedException;->executeBlockForObject(Lcom/dropbox/core/v2/callbacks/DbxGlobalCallbackFactory;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v1    # "fName":Ljava/lang/String;
    .end local v2    # "fieldValue":Ljava/lang/Object;
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "result":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 65
    .restart local v0    # "f":Ljava/lang/reflect/Field;
    .restart local v1    # "fName":Ljava/lang/String;
    .restart local v3    # "m":Ljava/lang/reflect/Method;
    .restart local v4    # "result":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "f":Ljava/lang/reflect/Field;
    .end local v1    # "fName":Ljava/lang/String;
    .end local v3    # "m":Ljava/lang/reflect/Method;
    .end local v4    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static fromResponse(Lcom/dropbox/core/stone/StoneSerializer;Lcom/dropbox/core/http/HttpRequestor$Response;Ljava/lang/String;)Lcom/dropbox/core/DbxWrappedException;
    .locals 6
    .param p1, "response"    # Lcom/dropbox/core/http/HttpRequestor$Response;
    .param p2, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/dropbox/core/stone/StoneSerializer",
            "<TT;>;",
            "Lcom/dropbox/core/http/HttpRequestor$Response;",
            "Ljava/lang/String;",
            ")",
            "Lcom/dropbox/core/DbxWrappedException;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "errSerializer":Lcom/dropbox/core/stone/StoneSerializer;, "Lcom/dropbox/core/stone/StoneSerializer<TT;>;"
    invoke-static {p1}, Lcom/dropbox/core/DbxRequestUtil;->getRequestId(Lcom/dropbox/core/http/HttpRequestor$Response;)Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "requestId":Ljava/lang/String;
    new-instance v4, Lcom/dropbox/core/ApiErrorResponse$Serializer;

    invoke-direct {v4, p0}, Lcom/dropbox/core/ApiErrorResponse$Serializer;-><init>(Lcom/dropbox/core/stone/StoneSerializer;)V

    .line 47
    invoke-virtual {p1}, Lcom/dropbox/core/http/HttpRequestor$Response;->getBody()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dropbox/core/ApiErrorResponse$Serializer;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/ApiErrorResponse;

    .line 49
    .local v0, "apiResponse":Lcom/dropbox/core/ApiErrorResponse;, "Lcom/dropbox/core/ApiErrorResponse<TT;>;"
    invoke-virtual {v0}, Lcom/dropbox/core/ApiErrorResponse;->getError()Ljava/lang/Object;

    move-result-object v3

    .line 51
    .local v3, "routeError":Ljava/lang/Object;, "TT;"
    sget-object v1, Lcom/dropbox/core/DbxRequestUtil;->sharedCallbackFactory:Lcom/dropbox/core/v2/callbacks/DbxGlobalCallbackFactory;

    .line 52
    .local v1, "factory":Lcom/dropbox/core/v2/callbacks/DbxGlobalCallbackFactory;
    invoke-static {v1, p2, v3}, Lcom/dropbox/core/DbxWrappedException;->executeBlockForObject(Lcom/dropbox/core/v2/callbacks/DbxGlobalCallbackFactory;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    invoke-static {v1, p2, v3}, Lcom/dropbox/core/DbxWrappedException;->executeOtherBlocks(Lcom/dropbox/core/v2/callbacks/DbxGlobalCallbackFactory;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    new-instance v4, Lcom/dropbox/core/DbxWrappedException;

    invoke-virtual {v0}, Lcom/dropbox/core/ApiErrorResponse;->getUserMessage()Lcom/dropbox/core/LocalizedText;

    move-result-object v5

    invoke-direct {v4, v3, v2, v5}, Lcom/dropbox/core/DbxWrappedException;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/dropbox/core/LocalizedText;)V

    return-object v4
.end method


# virtual methods
.method public getErrorValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/dropbox/core/DbxWrappedException;->errValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/dropbox/core/DbxWrappedException;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserMessage()Lcom/dropbox/core/LocalizedText;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/dropbox/core/DbxWrappedException;->userMessage:Lcom/dropbox/core/LocalizedText;

    return-object v0
.end method
