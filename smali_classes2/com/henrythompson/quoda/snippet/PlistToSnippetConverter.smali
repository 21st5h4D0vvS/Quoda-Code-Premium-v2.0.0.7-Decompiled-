.class public Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;
.super Lorg/xml/sax/helpers/DefaultHandler;


# static fields
.field private static final MODE_DICT:I = 0x2

.field private static final MODE_KEY:I = 0x3

.field private static final MODE_NONE:I = 0x0

.field private static final MODE_PLIST:I = 0x1

.field private static final MODE_STRING:I = 0x4


# instance fields
.field MODE:I

.field private mContents:Ljava/lang/String;

.field private mCurrentKey:Ljava/lang/String;

.field private mCurrentValueBuilder:Ljava/lang/StringBuilder;

.field mFileVersion:I

.field private mFinalResult:Ljava/lang/StringBuilder;

.field private mInput:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x6

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v1, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mFinalResult:Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    const/4 v0, 0x0

    iput v0, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->MODE:I

    const/4 v1, 0x7

    const/4 v0, 0x1

    iput v0, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mFileVersion:I

    const/4 v1, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mInput:Ljava/io/InputStream;

    const/4 v1, 0x7

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x5

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mCurrentValueBuilder:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    nop

    return-void

    const/4 v1, 0x5
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->MODE:I

    packed-switch v1, :pswitch_data_0

    const/4 v4, 0x6

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v3, 0x4

    const/4 v4, 0x6

    :pswitch_0
    const-string v1, "plist"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mFinalResult:Ljava/lang/StringBuilder;

    const-string v2, "</snippet>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    const-string v1, "TEST"

    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mFinalResult:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    const/4 v3, 0x6

    const/4 v4, 0x1

    :pswitch_1
    const-string v1, "dict"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x3

    const/4 v1, 0x1

    iput v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->MODE:I

    goto :goto_0

    const/4 v3, 0x2

    const/4 v4, 0x3

    :pswitch_2
    const-string v1, "key"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mCurrentValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mCurrentKey:Ljava/lang/String;

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mCurrentValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v4, 0x2

    iput v3, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->MODE:I

    goto :goto_0

    const/4 v4, 0x6

    const/4 v4, 0x6

    :pswitch_3
    const-string v1, "string"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mCurrentValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mCurrentValueBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v4, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mCurrentKey:Ljava/lang/String;

    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mFinalResult:Ljava/lang/StringBuilder;

    const-string v2, "\t<content><![CDATA["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mFinalResult:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mFinalResult:Ljava/lang/StringBuilder;

    const-string v2, "]]></content>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    :cond_1
    :goto_1
    iput v3, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->MODE:I

    goto/16 :goto_0

    const/4 v4, 0x7

    const/4 v4, 0x4

    :cond_2
    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mCurrentKey:Ljava/lang/String;

    const-string v2, "tabTrigger"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mFinalResult:Ljava/lang/StringBuilder;

    const-string v2, "\t<tabTrigger>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mFinalResult:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mFinalResult:Ljava/lang/StringBuilder;

    const-string v2, "</tabTrigger>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mFinalResult:Ljava/lang/StringBuilder;

    const-string v2, "\t<language>ruby</language>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v2, 0x0

    const/4 v4, 0x6

    :cond_3
    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mCurrentKey:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mFinalResult:Ljava/lang/StringBuilder;

    const-string v2, "\t<name>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mFinalResult:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mFinalResult:Ljava/lang/StringBuilder;

    const-string v2, "</name>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mFinalResult:Ljava/lang/StringBuilder;

    const-string v2, "\t<description>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mFinalResult:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mFinalResult:Ljava/lang/StringBuilder;

    const-string v2, "</description>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v4, 0x6

    const/4 v4, 0x1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public runParser()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v7, 0x5

    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mFinalResult:Ljava/lang/StringBuilder;

    const-string v5, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<snippet>\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mCurrentValueBuilder:Ljava/lang/StringBuilder;

    const/4 v7, 0x4

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    const/4 v7, 0x6

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    const/4 v7, 0x7

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    const/4 v7, 0x7

    invoke-interface {v3, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const/4 v7, 0x7

    new-instance v4, Lorg/xml/sax/InputSource;

    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mInput:Ljava/io/InputStream;

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    const/4 v7, 0x6

    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mFinalResult:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    const/4 v7, 0x4

    :goto_0
    return-object v4

    const/4 v7, 0x4

    const/4 v7, 0x2

    :catch_0
    move-exception v0

    const/4 v7, 0x1

    const-string v4, "RawSnippetFileParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parsing failed with message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x3

    const/4 v4, 0x0

    goto :goto_0

    const/4 v4, 0x3
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, 0x7

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->mCurrentValueBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v4, 0x0

    iget v0, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->MODE:I

    if-nez v0, :cond_1

    const/4 v4, 0x0

    const-string v0, "plist"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x3

    iput v2, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->MODE:I

    const/4 v4, 0x1

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v1, 0x2

    const/4 v4, 0x5

    :cond_1
    iget v0, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->MODE:I

    if-ne v0, v2, :cond_2

    const/4 v4, 0x2

    const-string v0, "dict"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x6

    iput v3, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->MODE:I

    goto :goto_0

    const/4 v2, 0x6

    const/4 v4, 0x4

    :cond_2
    iget v0, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->MODE:I

    if-ne v0, v3, :cond_0

    const/4 v4, 0x2

    const-string v0, "key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->MODE:I

    goto :goto_0

    const/4 v1, 0x7

    const/4 v4, 0x2

    :cond_3
    const-string v0, "string"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x6

    const/4 v0, 0x4

    iput v0, p0, Lcom/henrythompson/quoda/snippet/PlistToSnippetConverter;->MODE:I

    goto :goto_0

    const/4 v2, 0x5
.end method
