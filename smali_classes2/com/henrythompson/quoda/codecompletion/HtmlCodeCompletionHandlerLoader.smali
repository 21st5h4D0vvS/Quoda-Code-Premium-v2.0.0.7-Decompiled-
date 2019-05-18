.class public final Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field mColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field mGlobalAttributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field mGlobalEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field mTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;",
            ">;"
        }
    .end annotation
.end field

.field mTempAttribute:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

.field mTempTag:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x4

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public load(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v7, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTags:Ljava/util/ArrayList;

    const/4 v7, 0x6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mGlobalEvents:Ljava/util/ArrayList;

    const/4 v7, 0x4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mGlobalAttributes:Ljava/util/ArrayList;

    const/4 v7, 0x4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mColors:Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    const/4 v7, 0x1

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    const/4 v7, 0x5

    :try_start_0
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    const/4 v7, 0x1

    invoke-interface {v4, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const/4 v7, 0x6

    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x7

    :goto_0
    nop

    return-void

    const/4 v4, 0x0

    const/4 v7, 0x1

    :catch_0
    move-exception v0

    const/4 v7, 0x6

    goto :goto_0

    const/4 v1, 0x5
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v1, "globalevent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mGlobalEvents:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v10, 0x6

    :cond_1
    const-string v1, "globalattribute"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempAttribute:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mGlobalAttributes:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempAttribute:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v4, 0x6

    :cond_2
    const-string v1, "globalattributevalue"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "value"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempAttribute:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    new-instance v3, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-direct {v3, v0, v4}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->addAttributeValue(Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;)V

    goto :goto_0

    const/4 v3, 0x0

    :cond_3
    const-string v1, "color"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mColors:Ljava/util/ArrayList;

    new-instance v3, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v12, 0x0

    :cond_4
    const-string v1, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "description"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "info"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v1, "deprecated"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "blocklevel"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "void"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "html5events"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v1, "html5global"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v2, :cond_7

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    invoke-direct {v1}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempTag:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempTag:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->setName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempTag:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    invoke-virtual {v1, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->setDescription(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempTag:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    invoke-virtual {v1, v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->setLookupUrl(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempTag:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->setDeprecated(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempTag:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->setBlockLevel(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempTag:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->setVoid(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempTag:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->setSupportsHtml5EventAttributes(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempTag:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->setSupportsHtml5GlobalAttributes(Z)V

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mGlobalEvents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempTag:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    invoke-virtual {v3, v7}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->addAttribute(Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;)V

    goto :goto_1

    const/4 v13, 0x1

    :cond_5
    invoke-static {v12}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mGlobalAttributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempTag:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    invoke-virtual {v3, v7}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->addAttribute(Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;)V

    goto :goto_2

    const/4 v7, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTags:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempTag:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    const/4 v3, 0x0

    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempTag:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    goto/16 :goto_0

    const/4 v4, 0x5

    :cond_8
    const-string v1, "attribute"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "mandatory"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v1, "deprecated"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "type"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "event"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v17, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempTag:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    if-eqz v1, :cond_a

    if-eqz v2, :cond_a

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    invoke-direct {v1}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempAttribute:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempTag:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempAttribute:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->addAttribute(Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempAttribute:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->setName(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempAttribute:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->setMandatory(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempAttribute:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->setDeprecated(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempAttribute:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->setType(I)V

    goto/16 :goto_0

    const/4 v2, 0x4

    :cond_9
    const/16 v17, 0x0

    goto :goto_3

    const/4 v9, 0x5

    :cond_a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempAttribute:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    goto/16 :goto_0

    const/4 v5, 0x2

    :cond_b
    const-string v1, "attributevalue"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "value"

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v1, "$color"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempAttribute:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    new-instance v3, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v4, "Pick a colour"

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->addAttributeValue(Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mColors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempAttribute:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    invoke-virtual {v3, v9}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->addAttributeValue(Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;)V

    goto :goto_4

    const/4 v10, 0x3

    :cond_c
    const-string v1, "$charset"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempAttribute:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    new-instance v3, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v4, "\ufffe"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->addAttributeValue(Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;)V

    goto/16 :goto_0

    const/4 v13, 0x6

    :cond_d
    const-string v1, "$lang"

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempAttribute:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    new-instance v3, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v4, "\ufffd"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->addAttributeValue(Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;)V

    goto/16 :goto_0

    const/4 v4, 0x3

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->mTempAttribute:Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    new-instance v3, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-direct {v3, v0, v4}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->addAttributeValue(Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;)V

    goto/16 :goto_0

    const/4 v7, 0x4
.end method
