.class public Lcom/dd/plist/XMLPropertyListParser;
.super Ljava/lang/Object;
.source "XMLPropertyListParser.java"


# static fields
.field private static docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/dd/plist/XMLPropertyListParser;->docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method private static filterElementNodes(Lorg/w3c/dom/NodeList;)Ljava/util/List;
    .locals 4
    .param p0, "list"    # Lorg/w3c/dom/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 226
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 227
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_1
    return-object v1
.end method

.method private static declared-synchronized getDocBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 73
    const-class v2, Lcom/dd/plist/XMLPropertyListParser;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/dd/plist/XMLPropertyListParser;->docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    if-nez v1, :cond_0

    .line 74
    invoke-static {}, Lcom/dd/plist/XMLPropertyListParser;->initDocBuilderFactory()V

    .line 75
    :cond_0
    sget-object v1, Lcom/dd/plist/XMLPropertyListParser;->docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 76
    .local v0, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v1, Lcom/dd/plist/XMLPropertyListParser$1;

    invoke-direct {v1}, Lcom/dd/plist/XMLPropertyListParser$1;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit v2

    return-object v0

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getNodeTextContents(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 8
    .param p0, "n"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    .line 242
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v6, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v7, :cond_2

    :cond_0
    move-object v4, p0

    .line 243
    check-cast v4, Lorg/w3c/dom/Text;

    .line 244
    .local v4, "txtNode":Lorg/w3c/dom/Text;
    invoke-interface {v4}, Lorg/w3c/dom/Text;->getWholeText()Ljava/lang/String;

    move-result-object v2

    .line 245
    .local v2, "content":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 246
    const-string v2, ""

    .line 268
    .end local v2    # "content":Ljava/lang/String;
    .end local v4    # "txtNode":Lorg/w3c/dom/Text;
    :cond_1
    :goto_0
    return-object v2

    .line 250
    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 251
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 253
    .local v1, "children":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 255
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 256
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v6, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v7, :cond_4

    :cond_3
    move-object v4, v0

    .line 257
    check-cast v4, Lorg/w3c/dom/Text;

    .line 258
    .restart local v4    # "txtNode":Lorg/w3c/dom/Text;
    invoke-interface {v4}, Lorg/w3c/dom/Text;->getWholeText()Ljava/lang/String;

    move-result-object v2

    .line 259
    .restart local v2    # "content":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 260
    const-string v2, ""

    goto :goto_0

    .line 253
    .end local v2    # "content":Ljava/lang/String;
    .end local v4    # "txtNode":Lorg/w3c/dom/Text;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 266
    .end local v0    # "child":Lorg/w3c/dom/Node;
    :cond_5
    const-string v2, ""

    goto :goto_0

    .line 268
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v3    # "i":I
    :cond_6
    const-string v2, ""

    goto :goto_0
.end method

.method private static declared-synchronized initDocBuilderFactory()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 61
    const-class v1, Lcom/dd/plist/XMLPropertyListParser;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/dd/plist/XMLPropertyListParser;->docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 62
    sget-object v0, Lcom/dd/plist/XMLPropertyListParser;->docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 63
    sget-object v0, Lcom/dd/plist/XMLPropertyListParser;->docBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit v1

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parse(Ljava/io/File;)Lcom/dd/plist/NSObject;
    .locals 3
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {}, Lcom/dd/plist/XMLPropertyListParser;->getDocBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 101
    .local v1, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 103
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-static {v0}, Lcom/dd/plist/XMLPropertyListParser;->parseDocument(Lorg/w3c/dom/Document;)Lcom/dd/plist/NSObject;

    move-result-object v2

    return-object v2
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 127
    invoke-static {}, Lcom/dd/plist/XMLPropertyListParser;->getDocBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 129
    .local v1, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 131
    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-static {v0}, Lcom/dd/plist/XMLPropertyListParser;->parseDocument(Lorg/w3c/dom/Document;)Lcom/dd/plist/NSObject;

    move-result-object v2

    return-object v2
.end method

.method public static parse([B)Lcom/dd/plist/NSObject;
    .locals 2
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 115
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lcom/dd/plist/XMLPropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    move-result-object v1

    return-object v1
.end method

.method private static parseDocument(Lorg/w3c/dom/Document;)Lcom/dd/plist/NSObject;
    .locals 5
    .param p0, "doc"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    .line 143
    .local v0, "docType":Lorg/w3c/dom/DocumentType;
    if-nez v0, :cond_0

    .line 144
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "plist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 145
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "The given XML document is not a property list."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 147
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "plist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 148
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "The given XML document is not a property list."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 151
    :cond_1
    const/4 v1, 0x0

    .line 153
    .local v1, "rootNode":Lorg/w3c/dom/Node;
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "plist"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 155
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-static {v3}, Lcom/dd/plist/XMLPropertyListParser;->filterElementNodes(Lorg/w3c/dom/NodeList;)Ljava/util/List;

    move-result-object v2

    .line 156
    .local v2, "rootNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "The given property list has no root element!"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 159
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "rootNode":Lorg/w3c/dom/Node;
    check-cast v1, Lorg/w3c/dom/Node;

    .line 168
    .end local v2    # "rootNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .restart local v1    # "rootNode":Lorg/w3c/dom/Node;
    :goto_0
    invoke-static {v1}, Lcom/dd/plist/XMLPropertyListParser;->parseObject(Lorg/w3c/dom/Node;)Lcom/dd/plist/NSObject;

    move-result-object v3

    return-object v3

    .line 161
    .restart local v2    # "rootNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    :cond_3
    new-instance v3, Ljava/lang/Exception;

    const-string v4, "The given property list has more than one root element!"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 165
    .end local v2    # "rootNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    :cond_4
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    goto :goto_0
.end method

.method private static parseObject(Lorg/w3c/dom/Node;)Lcom/dd/plist/NSObject;
    .locals 9
    .param p0, "n"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 179
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "type":Ljava/lang/String;
    const-string v8, "dict"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 181
    new-instance v2, Lcom/dd/plist/NSDictionary;

    invoke-direct {v2}, Lcom/dd/plist/NSDictionary;-><init>()V

    .line 182
    .local v2, "dict":Lcom/dd/plist/NSDictionary;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-static {v8}, Lcom/dd/plist/XMLPropertyListParser;->filterElementNodes(Lorg/w3c/dom/NodeList;)Ljava/util/List;

    move-result-object v1

    .line 183
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 184
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    .line 185
    .local v4, "key":Lorg/w3c/dom/Node;
    add-int/lit8 v8, v3, 0x1

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Node;

    .line 187
    .local v7, "val":Lorg/w3c/dom/Node;
    invoke-static {v4}, Lcom/dd/plist/XMLPropertyListParser;->getNodeTextContents(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "keyString":Ljava/lang/String;
    invoke-static {v7}, Lcom/dd/plist/XMLPropertyListParser;->parseObject(Lorg/w3c/dom/Node;)Lcom/dd/plist/NSObject;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;

    .line 183
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 192
    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .end local v2    # "dict":Lcom/dd/plist/NSDictionary;
    .end local v3    # "i":I
    .end local v4    # "key":Lorg/w3c/dom/Node;
    .end local v5    # "keyString":Ljava/lang/String;
    .end local v7    # "val":Lorg/w3c/dom/Node;
    :cond_0
    const-string v8, "array"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 193
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-static {v8}, Lcom/dd/plist/XMLPropertyListParser;->filterElementNodes(Lorg/w3c/dom/NodeList;)Ljava/util/List;

    move-result-object v1

    .line 194
    .restart local v1    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    new-instance v0, Lcom/dd/plist/NSArray;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v0, v8}, Lcom/dd/plist/NSArray;-><init>(I)V

    .line 195
    .local v0, "array":Lcom/dd/plist/NSArray;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 196
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Node;

    invoke-static {v8}, Lcom/dd/plist/XMLPropertyListParser;->parseObject(Lorg/w3c/dom/Node;)Lcom/dd/plist/NSObject;

    move-result-object v8

    invoke-virtual {v0, v3, v8}, Lcom/dd/plist/NSArray;->setValue(ILcom/dd/plist/NSObject;)V

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v0

    .line 214
    .end local v0    # "array":Lcom/dd/plist/NSArray;
    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    .end local v3    # "i":I
    :cond_2
    :goto_2
    return-object v2

    .line 199
    :cond_3
    const-string v8, "true"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 200
    new-instance v2, Lcom/dd/plist/NSNumber;

    const/4 v8, 0x1

    invoke-direct {v2, v8}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    goto :goto_2

    .line 201
    :cond_4
    const-string v8, "false"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 202
    new-instance v2, Lcom/dd/plist/NSNumber;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    goto :goto_2

    .line 203
    :cond_5
    const-string v8, "integer"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 204
    new-instance v2, Lcom/dd/plist/NSNumber;

    invoke-static {p0}, Lcom/dd/plist/XMLPropertyListParser;->getNodeTextContents(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/dd/plist/NSNumber;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 205
    :cond_6
    const-string v8, "real"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 206
    new-instance v2, Lcom/dd/plist/NSNumber;

    invoke-static {p0}, Lcom/dd/plist/XMLPropertyListParser;->getNodeTextContents(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/dd/plist/NSNumber;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 207
    :cond_7
    const-string v8, "string"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 208
    new-instance v2, Lcom/dd/plist/NSString;

    invoke-static {p0}, Lcom/dd/plist/XMLPropertyListParser;->getNodeTextContents(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 209
    :cond_8
    const-string v8, "data"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 210
    new-instance v2, Lcom/dd/plist/NSData;

    invoke-static {p0}, Lcom/dd/plist/XMLPropertyListParser;->getNodeTextContents(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/dd/plist/NSData;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 211
    :cond_9
    const-string v8, "date"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 212
    new-instance v2, Lcom/dd/plist/NSDate;

    invoke-static {p0}, Lcom/dd/plist/XMLPropertyListParser;->getNodeTextContents(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/dd/plist/NSDate;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 214
    :cond_a
    const/4 v2, 0x0

    goto :goto_2
.end method
