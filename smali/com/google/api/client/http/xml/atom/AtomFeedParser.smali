.class public final Lcom/google/api/client/http/xml/atom/AtomFeedParser;
.super Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;
.source "AtomFeedParser.java"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/xml/atom/AbstractAtomFeedParser",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final entryClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Lorg/xmlpull/v1/XmlPullParser;Ljava/io/InputStream;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .param p1, "namespaceDictionary"    # Lcom/google/api/client/xml/XmlNamespaceDictionary;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/xml/XmlNamespaceDictionary;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/google/api/client/http/xml/atom/AtomFeedParser;, "Lcom/google/api/client/http/xml/atom/AtomFeedParser<TT;TE;>;"
    .local p4, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p5, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Lorg/xmlpull/v1/XmlPullParser;Ljava/io/InputStream;Ljava/lang/Class;)V

    .line 61
    invoke-static {p5}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/api/client/http/xml/atom/AtomFeedParser;->entryClass:Ljava/lang/Class;

    .line 62
    return-void
.end method

.method public static create(Lcom/google/api/client/http/HttpResponse;Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/api/client/http/xml/atom/AtomFeedParser;
    .locals 6
    .param p0, "response"    # Lcom/google/api/client/http/HttpResponse;
    .param p1, "namespaceDictionary"    # Lcom/google/api/client/xml/XmlNamespaceDictionary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/http/HttpResponse;",
            "Lcom/google/api/client/xml/XmlNamespaceDictionary;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lcom/google/api/client/http/xml/atom/AtomFeedParser",
            "<TT;TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 102
    .local p2, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 104
    .local v3, "content":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpResponse;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/xml/atom/Atom;->checkContentType(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/google/api/client/xml/Xml;->createParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 106
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v1, 0x0

    invoke-interface {v2, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 107
    new-instance v0, Lcom/google/api/client/http/xml/atom/AtomFeedParser;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/http/xml/atom/AtomFeedParser;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Lorg/xmlpull/v1/XmlPullParser;Ljava/io/InputStream;Ljava/lang/Class;Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .local v0, "result":Lcom/google/api/client/http/xml/atom/AtomFeedParser;, "Lcom/google/api/client/http/xml/atom/AtomFeedParser<TT;TE;>;"
    const/4 v3, 0x0

    .line 112
    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object v0

    .line 112
    .end local v0    # "result":Lcom/google/api/client/http/xml/atom/AtomFeedParser;, "Lcom/google/api/client/http/xml/atom/AtomFeedParser<TT;TE;>;"
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v1

    if-eqz v3, :cond_1

    .line 113
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v1
.end method


# virtual methods
.method public final getEntryClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/google/api/client/http/xml/atom/AtomFeedParser;, "Lcom/google/api/client/http/xml/atom/AtomFeedParser<TT;TE;>;"
    iget-object v0, p0, Lcom/google/api/client/http/xml/atom/AtomFeedParser;->entryClass:Ljava/lang/Class;

    return-object v0
.end method

.method protected parseEntryInternal()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lcom/google/api/client/http/xml/atom/AtomFeedParser;, "Lcom/google/api/client/http/xml/atom/AtomFeedParser<TT;TE;>;"
    iget-object v1, p0, Lcom/google/api/client/http/xml/atom/AtomFeedParser;->entryClass:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 73
    .local v0, "result":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/api/client/http/xml/atom/AtomFeedParser;->getParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/api/client/http/xml/atom/AtomFeedParser;->getNamespaceDictionary()Lcom/google/api/client/xml/XmlNamespaceDictionary;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/google/api/client/xml/Xml;->parseElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)V

    .line 74
    return-object v0
.end method

.method public parseNextEntry()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/google/api/client/http/xml/atom/AtomFeedParser;, "Lcom/google/api/client/http/xml/atom/AtomFeedParser<TT;TE;>;"
    invoke-super {p0}, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;->parseNextEntry()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
