.class public Lcom/google/api/client/json/JsonObjectParser;
.super Ljava/lang/Object;
.source "JsonObjectParser.java"

# interfaces
.implements Lcom/google/api/client/util/ObjectParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/json/JsonObjectParser$Builder;
    }
.end annotation


# instance fields
.field private final jsonFactory:Lcom/google/api/client/json/JsonFactory;

.field private final wrapperKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/json/JsonFactory;)V
    .locals 1
    .param p1, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;

    .prologue
    .line 65
    new-instance v0, Lcom/google/api/client/json/JsonObjectParser$Builder;

    invoke-direct {v0, p1}, Lcom/google/api/client/json/JsonObjectParser$Builder;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    invoke-direct {p0, v0}, Lcom/google/api/client/json/JsonObjectParser;-><init>(Lcom/google/api/client/json/JsonObjectParser$Builder;)V

    .line 66
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/client/json/JsonObjectParser$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/api/client/json/JsonObjectParser$Builder;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iget-object v0, p1, Lcom/google/api/client/json/JsonObjectParser$Builder;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    iput-object v0, p0, Lcom/google/api/client/json/JsonObjectParser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/google/api/client/json/JsonObjectParser$Builder;->wrapperKeys:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/api/client/json/JsonObjectParser;->wrapperKeys:Ljava/util/Set;

    .line 76
    return-void
.end method

.method private initializeParser(Lcom/google/api/client/json/JsonParser;)V
    .locals 7
    .param p1, "parser"    # Lcom/google/api/client/json/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 121
    iget-object v4, p0, Lcom/google/api/client/json/JsonObjectParser;->wrapperKeys:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    const/4 v0, 0x1

    .line 126
    .local v0, "failed":Z
    :try_start_0
    iget-object v4, p0, Lcom/google/api/client/json/JsonObjectParser;->wrapperKeys:Ljava/util/Set;

    invoke-virtual {p1, v4}, Lcom/google/api/client/json/JsonParser;->skipToKey(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "match":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/api/client/json/JsonParser;->getCurrentToken()Lcom/google/api/client/json/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/google/api/client/json/JsonToken;->END_OBJECT:Lcom/google/api/client/json/JsonToken;

    if-eq v4, v5, :cond_2

    :goto_1
    const-string v3, "wrapper key(s) not found: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/api/client/json/JsonObjectParser;->wrapperKeys:Ljava/util/Set;

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    const/4 v0, 0x0

    .line 131
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p1}, Lcom/google/api/client/json/JsonParser;->close()V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 127
    goto :goto_1

    .line 131
    .end local v1    # "match":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 132
    invoke-virtual {p1}, Lcom/google/api/client/json/JsonParser;->close()V

    :cond_3
    throw v2
.end method


# virtual methods
.method public final getJsonFactory()Lcom/google/api/client/json/JsonFactory;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/api/client/json/JsonObjectParser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public getWrapperKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/api/client/json/JsonObjectParser;->wrapperKeys:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    .local p3, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/api/client/json/JsonObjectParser;->parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseAndClose(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .param p3, "dataType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p0, Lcom/google/api/client/json/JsonObjectParser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-virtual {v1, p1, p2}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    .line 86
    .local v0, "parser":Lcom/google/api/client/json/JsonParser;
    invoke-direct {p0, v0}, Lcom/google/api/client/json/JsonObjectParser;->initializeParser(Lcom/google/api/client/json/JsonParser;)V

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public parseAndClose(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/json/JsonObjectParser;->parseAndClose(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseAndClose(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "dataType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v1, p0, Lcom/google/api/client/json/JsonObjectParser;->jsonFactory:Lcom/google/api/client/json/JsonFactory;

    invoke-virtual {v1, p1}, Lcom/google/api/client/json/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lcom/google/api/client/json/JsonParser;

    move-result-object v0

    .line 97
    .local v0, "parser":Lcom/google/api/client/json/JsonParser;
    invoke-direct {p0, v0}, Lcom/google/api/client/json/JsonObjectParser;->initializeParser(Lcom/google/api/client/json/JsonParser;)V

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/google/api/client/json/JsonParser;->parse(Ljava/lang/reflect/Type;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
