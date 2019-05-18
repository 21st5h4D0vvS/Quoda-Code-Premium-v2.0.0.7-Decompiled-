.class public Lcom/google/api/client/http/xml/atom/AtomContent;
.super Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
.source "AtomContent.java"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# instance fields
.field private final entry:Ljava/lang/Object;

.field private final isEntry:Z


# direct methods
.method protected constructor <init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "namespaceDictionary"    # Lcom/google/api/client/xml/XmlNamespaceDictionary;
    .param p2, "entry"    # Ljava/lang/Object;
    .param p3, "isEntry"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;)V

    .line 76
    new-instance v0, Lcom/google/api/client/http/HttpMediaType;

    sget-object v1, Lcom/google/api/client/xml/atom/Atom;->MEDIA_TYPE:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/xml/atom/AtomContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/atom/AtomContent;

    .line 77
    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/http/xml/atom/AtomContent;->entry:Ljava/lang/Object;

    .line 78
    iput-boolean p3, p0, Lcom/google/api/client/http/xml/atom/AtomContent;->isEntry:Z

    .line 79
    return-void
.end method

.method public static forEntry(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;)Lcom/google/api/client/http/xml/atom/AtomContent;
    .locals 2
    .param p0, "namespaceDictionary"    # Lcom/google/api/client/xml/XmlNamespaceDictionary;
    .param p1, "entry"    # Ljava/lang/Object;

    .prologue
    .line 89
    new-instance v0, Lcom/google/api/client/http/xml/atom/AtomContent;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/api/client/http/xml/atom/AtomContent;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public static forFeed(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;)Lcom/google/api/client/http/xml/atom/AtomContent;
    .locals 2
    .param p0, "namespaceDictionary"    # Lcom/google/api/client/xml/XmlNamespaceDictionary;
    .param p1, "feed"    # Ljava/lang/Object;

    .prologue
    .line 100
    new-instance v0, Lcom/google/api/client/http/xml/atom/AtomContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/api/client/http/xml/atom/AtomContent;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method public final getData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/api/client/http/xml/atom/AtomContent;->entry:Ljava/lang/Object;

    return-object v0
.end method

.method public final isEntry()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/api/client/http/xml/atom/AtomContent;->isEntry:Z

    return v0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/AbstractHttpContent;
    .locals 1
    .param p1, "x0"    # Lcom/google/api/client/http/HttpMediaType;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/xml/atom/AtomContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/atom/AtomContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;
    .locals 1
    .param p1, "x0"    # Lcom/google/api/client/http/HttpMediaType;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/xml/atom/AtomContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/atom/AtomContent;

    move-result-object v0

    return-object v0
.end method

.method public setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/atom/AtomContent;
    .locals 0
    .param p1, "mediaType"    # Lcom/google/api/client/http/HttpMediaType;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/google/api/client/http/xml/AbstractXmlHttpContent;->setMediaType(Lcom/google/api/client/http/HttpMediaType;)Lcom/google/api/client/http/xml/AbstractXmlHttpContent;

    .line 106
    return-object p0
.end method

.method public final writeTo(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/api/client/http/xml/atom/AtomContent;->getNamespaceDictionary()Lcom/google/api/client/xml/XmlNamespaceDictionary;

    move-result-object v1

    const-string v2, "http://www.w3.org/2005/Atom"

    iget-boolean v0, p0, Lcom/google/api/client/http/xml/atom/AtomContent;->isEntry:Z

    if-eqz v0, :cond_0

    const-string v0, "entry"

    :goto_0
    iget-object v3, p0, Lcom/google/api/client/http/xml/atom/AtomContent;->entry:Ljava/lang/Object;

    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    return-void

    .line 111
    :cond_0
    const-string v0, "feed"

    goto :goto_0
.end method
