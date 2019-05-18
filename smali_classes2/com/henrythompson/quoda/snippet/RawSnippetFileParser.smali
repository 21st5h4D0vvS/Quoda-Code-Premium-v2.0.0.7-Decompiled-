.class public Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;
.super Lorg/xml/sax/helpers/DefaultHandler;


# static fields
.field private static final MODE_CONTENT:I = 0x2

.field private static final MODE_DESCRIPTION:I = 0x5

.field private static final MODE_LANGUAGE:I = 0x6

.field private static final MODE_NAME:I = 0x3

.field private static final MODE_NONE:I = 0x0

.field private static final MODE_SNIPPET:I = 0x1

.field private static final MODE_TABTRIGGER:I = 0x4


# instance fields
.field MODE:I

.field private mCurrentValueBuilder:Ljava/lang/StringBuilder;

.field mFileVersion:I

.field private mInput:Ljava/io/InputStream;

.field private mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x6

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v1, 0x2

    const/4 v0, 0x0

    iput v0, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->MODE:I

    const/4 v1, 0x5

    const/4 v0, 0x1

    iput v0, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mFileVersion:I

    const/4 v1, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mInput:Ljava/io/InputStream;

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x3
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mCurrentValueBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    nop

    return-void

    const/4 v1, 0x7
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    iget v1, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->MODE:I

    packed-switch v1, :pswitch_data_0

    const/4 v5, 0x7

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v4, 0x1

    const/4 v5, 0x1

    :pswitch_0
    const-string v1, "snippet"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    const/4 v1, 0x5

    const/4 v5, 0x0

    :pswitch_1
    const-string v1, "content"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mCurrentValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/snippet/Snippet;->setContent(Ljava/lang/String;)V

    const/4 v5, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mCurrentValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v5, 0x2

    iput v4, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->MODE:I

    goto :goto_0

    const/4 v3, 0x7

    const/4 v5, 0x5

    :pswitch_2
    const-string v1, "name"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mCurrentValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/snippet/Snippet;->setName(Ljava/lang/String;)V

    const/4 v5, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mCurrentValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v5, 0x1

    iput v4, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->MODE:I

    goto :goto_0

    const/4 v3, 0x0

    const/4 v5, 0x1

    :pswitch_3
    const-string v1, "tabtrigger"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mCurrentValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/snippet/Snippet;->setTabTrigger(Ljava/lang/String;)V

    const/4 v5, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mCurrentValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v5, 0x6

    iput v4, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->MODE:I

    goto :goto_0

    const/4 v4, 0x3

    const/4 v5, 0x7

    :pswitch_4
    const-string v1, "language"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mCurrentValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/snippet/Snippet;->setLanguages([Ljava/lang/String;)V

    const/4 v5, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mCurrentValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v5, 0x2

    iput v4, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->MODE:I

    goto/16 :goto_0

    const/4 v1, 0x1

    const/4 v5, 0x0

    :pswitch_5
    const-string v1, "description"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mCurrentValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/snippet/Snippet;->setDescription(Ljava/lang/String;)V

    const/4 v5, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mCurrentValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v5, 0x5

    iput v4, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->MODE:I

    goto/16 :goto_0

    const/4 v4, 0x1

    const/4 v5, 0x5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public runParser()Lcom/henrythompson/quoda/snippet/Snippet;
    .locals 11

    const/4 v10, 0x7

    const/4 v10, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v7, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mCurrentValueBuilder:Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    new-instance v7, Lcom/henrythompson/quoda/snippet/Snippet;

    invoke-direct {v7}, Lcom/henrythompson/quoda/snippet/Snippet;-><init>()V

    iput-object v7, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    const/4 v10, 0x3

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    const/4 v10, 0x3

    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    const/4 v10, 0x3

    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v6

    const/4 v10, 0x5

    invoke-interface {v6, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const/4 v10, 0x4

    new-instance v7, Lorg/xml/sax/InputSource;

    iget-object v8, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mInput:Ljava/io/InputStream;

    invoke-direct {v7, v8}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v6, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    const/4 v10, 0x4

    iget-object v7, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x3

    :goto_0
    return-object v7

    const/4 v7, 0x1

    const/4 v10, 0x3

    :catch_0
    move-exception v0

    const/4 v10, 0x1

    iget-object v7, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    if-eqz v7, :cond_2

    const/4 v10, 0x3

    iget-object v7, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/snippet/Snippet;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x6

    const-string v2, ""

    const/4 v10, 0x1

    iget-object v7, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/snippet/Snippet;->getLanguages()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v10, 0x0

    const/4 v1, 0x0

    :goto_1
    iget-object v7, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/snippet/Snippet;->getLanguages()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge v1, v7, :cond_1

    const/4 v10, 0x4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/snippet/Snippet;->getLanguages()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    const/4 v5, 0x7

    const/4 v10, 0x7

    :cond_0
    const-string v2, "[Languages not parsed]"

    const/4 v10, 0x5

    :cond_1
    const-string v7, "RawSnippetFileParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parsing failed for snippet with name "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and languages "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x3

    :goto_2
    const/4 v7, 0x0

    goto/16 :goto_0

    const/4 v4, 0x1

    const/4 v10, 0x5

    :cond_2
    const-string v7, "RawSnippetFileParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Parsing failed with message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    const/4 v10, 0x7
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->mCurrentValueBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v3, 0x0

    iget v0, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->MODE:I

    if-nez v0, :cond_1

    const/4 v3, 0x2

    const-string v0, "snippet"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    iput v2, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->MODE:I

    const/4 v3, 0x0

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v0, 0x0

    const/4 v3, 0x3

    :cond_1
    iget v0, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->MODE:I

    if-ne v0, v2, :cond_0

    const/4 v3, 0x1

    const-string v0, "content"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v3, 0x6

    const/4 v0, 0x2

    iput v0, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->MODE:I

    goto :goto_0

    const/4 v3, 0x2

    const/4 v3, 0x1

    :cond_2
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v3, 0x2

    const/4 v0, 0x3

    iput v0, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->MODE:I

    goto :goto_0

    const/4 v1, 0x1

    const/4 v3, 0x3

    :cond_3
    const-string v0, "tabtrigger"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x6

    const/4 v0, 0x4

    iput v0, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->MODE:I

    goto :goto_0

    const/4 v2, 0x1

    const/4 v3, 0x3

    :cond_4
    const-string v0, "language"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v3, 0x4

    const/4 v0, 0x6

    iput v0, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->MODE:I

    goto :goto_0

    const/4 v1, 0x3

    const/4 v3, 0x3

    :cond_5
    const-string v0, "description"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x3

    const/4 v0, 0x5

    iput v0, p0, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->MODE:I

    goto :goto_0

    const/4 v1, 0x2
.end method
