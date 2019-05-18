.class public Lcom/henrythompson/quoda/styler/ThemeFileParser;
.super Lorg/xml/sax/helpers/DefaultHandler;


# static fields
.field private static final MODE_ENVIRONMENT:I = 0x3

.field private static final MODE_NONE:I = 0x0

.field private static final MODE_PROPERTIES:I = 0x2

.field private static final MODE_STYLES:I = 0x4

.field private static final MODE_THEME:I = 0x1


# instance fields
.field MODE:I

.field mFileVersion:I

.field private mInput:Ljava/io/InputStream;

.field private mTemporaryValue:Ljava/lang/String;

.field private mTheme:Lcom/henrythompson/quoda/styler/Theme;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x6

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v1, 0x5

    const/4 v0, 0x0

    iput v0, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->MODE:I

    const/4 v1, 0x1

    const/4 v0, 0x1

    iput v0, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mFileVersion:I

    const/4 v1, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mInput:Ljava/io/InputStream;

    const/4 v1, 0x3

    nop

    return-void

    const/4 v0, 0x5
.end method

.method private parseColor(Ljava/lang/String;)I
    .locals 5

    const/4 v4, 0x7

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_1

    const/4 v4, 0x6

    :cond_0
    :goto_0
    return v1

    const/4 v2, 0x3

    const/4 v4, 0x6

    :cond_1
    const-string v2, "#"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v4, 0x7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v4, 0x5

    :cond_2
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    const/4 v3, 0x4

    const/4 v4, 0x1

    :catch_0
    move-exception v0

    const/4 v4, 0x6

    goto :goto_0

    const/4 v1, 0x0

    const/4 v4, 0x5

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    const/4 v4, 0x0

    :cond_4
    :try_start_1
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    const/4 v3, 0x5

    const/4 v4, 0x4

    :catch_1
    move-exception v0

    const/4 v4, 0x2

    goto :goto_0

    const/4 v0, 0x1
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v1, 0x6

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTemporaryValue:Ljava/lang/String;

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x6

    iget v0, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->MODE:I

    packed-switch v0, :pswitch_data_0

    const/4 v2, 0x4

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v0, 0x2

    const/4 v2, 0x5

    :pswitch_0
    const-string v0, "theme"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    const/4 v0, 0x4

    const/4 v2, 0x3

    :pswitch_1
    const-string v0, "fileversion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTemporaryValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mFileVersion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v1, 0x5

    const/4 v2, 0x6

    :catch_0
    move-exception v0

    goto :goto_0

    const/4 v1, 0x3

    const/4 v2, 0x4

    :cond_1
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTemporaryValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTemporaryValue:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x6

    :cond_2
    iget-object v0, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    const-string v1, "[Theme has no name]"

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/Theme;->setName(Ljava/lang/String;)V

    goto :goto_0

    const/4 v1, 0x4

    const/4 v2, 0x2

    :cond_3
    iget-object v0, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    iget-object v1, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTemporaryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/Theme;->setName(Ljava/lang/String;)V

    goto :goto_0

    const/4 v1, 0x5

    const/4 v2, 0x7

    :cond_4
    const-string v0, "properties"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    iput v1, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->MODE:I

    goto :goto_0

    const/4 v1, 0x1

    const/4 v2, 0x3

    :pswitch_2
    const-string v0, "background"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    iget-object v1, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTemporaryValue:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/styler/ThemeFileParser;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/Theme;->setCodeViewBackgroundColor(I)V

    goto :goto_0

    const/4 v2, 0x4

    const/4 v2, 0x0

    :cond_5
    const-string v0, "caret"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    iget-object v1, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTemporaryValue:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/styler/ThemeFileParser;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/Theme;->setCaretColor(I)V

    goto/16 :goto_0

    const/4 v2, 0x6

    const/4 v2, 0x5

    :cond_6
    const-string v0, "linehighlight"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    iget-object v1, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTemporaryValue:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/styler/ThemeFileParser;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/Theme;->setLineHighlight(I)V

    goto/16 :goto_0

    const/4 v2, 0x6

    const/4 v2, 0x6

    :cond_7
    const-string v0, "selection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    iget-object v1, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTemporaryValue:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/styler/ThemeFileParser;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/Theme;->setSelection(I)V

    goto/16 :goto_0

    const/4 v2, 0x5

    const/4 v2, 0x6

    :cond_8
    const-string v0, "linenumberbackground"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    iget-object v1, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTemporaryValue:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/styler/ThemeFileParser;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/Theme;->setLineNumberBackground(I)V

    goto/16 :goto_0

    const/4 v0, 0x0

    const/4 v2, 0x3

    :cond_9
    const-string v0, "linenumbertext"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    iget-object v1, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTemporaryValue:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/styler/ThemeFileParser;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/Theme;->setLineNumberTextColor(I)V

    goto/16 :goto_0

    const/4 v0, 0x4

    const/4 v2, 0x4

    :cond_a
    const-string v0, "linenumberbookmarkedbackground"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    iget-object v1, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTemporaryValue:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/styler/ThemeFileParser;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/Theme;->setLineNumberBookmarkedBackgroundColor(I)V

    goto/16 :goto_0

    const/4 v1, 0x0

    const/4 v2, 0x6

    :cond_b
    const-string v0, "linenumberbookmarkedtext"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    iget-object v1, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTemporaryValue:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/styler/ThemeFileParser;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/styler/Theme;->setLineNumberBookmarkedTextColor(I)V

    goto/16 :goto_0

    const/4 v0, 0x3

    const/4 v2, 0x3

    :cond_c
    const-string v0, "environment"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iput v1, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->MODE:I

    goto/16 :goto_0

    const/4 v0, 0x5

    const/4 v2, 0x1

    :pswitch_3
    const-string v0, "styles"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    iput v1, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->MODE:I

    goto/16 :goto_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public runParser()Lcom/henrythompson/quoda/styler/Theme;
    .locals 7

    const/4 v6, 0x7

    const/4 v6, 0x2

    :try_start_0
    new-instance v4, Lcom/henrythompson/quoda/styler/Theme;

    invoke-direct {v4}, Lcom/henrythompson/quoda/styler/Theme;-><init>()V

    iput-object v4, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    const/4 v6, 0x1

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    const/4 v6, 0x5

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const/4 v6, 0x3

    new-instance v4, Lorg/xml/sax/InputSource;

    iget-object v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mInput:Ljava/io/InputStream;

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x4

    :goto_0
    return-object v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    :catch_0
    move-exception v0

    const/4 v6, 0x7

    const/4 v4, 0x0

    goto :goto_0

    const/4 v6, 0x7
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v8, 0x6

    const-string v5, ""

    iput-object v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTemporaryValue:Ljava/lang/String;

    const/4 v8, 0x2

    iget v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->MODE:I

    if-nez v5, :cond_1

    const/4 v8, 0x0

    const-string v5, "theme"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v8, 0x4

    iput v6, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->MODE:I

    const/4 v8, 0x5

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v7, 0x6

    const/4 v8, 0x0

    :cond_1
    iget v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->MODE:I

    if-ne v5, v6, :cond_4

    const/4 v8, 0x5

    const-string v5, "properties"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v8, 0x5

    const/4 v5, 0x2

    iput v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->MODE:I

    goto :goto_0

    const/4 v3, 0x3

    const/4 v8, 0x4

    :cond_2
    const-string v5, "environment"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v8, 0x0

    const/4 v5, 0x3

    iput v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->MODE:I

    goto :goto_0

    const/4 v7, 0x7

    const/4 v8, 0x7

    :cond_3
    const-string v5, "styles"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v8, 0x5

    iput v7, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->MODE:I

    goto :goto_0

    const/4 v7, 0x5

    const/4 v8, 0x3

    :cond_4
    iget v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->MODE:I

    if-ne v5, v7, :cond_0

    const/4 v8, 0x3

    const-string v5, "style"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v8, 0x2

    const-string v5, "name"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v8, 0x3

    const-string v5, "name"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x3

    const-string v5, "color"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/henrythompson/quoda/styler/ThemeFileParser;->parseColor(Ljava/lang/String;)I

    move-result v1

    const/4 v8, 0x1

    const-string v5, "bold"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v8, 0x5

    const-string v5, "italic"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    const/4 v8, 0x3

    new-instance v4, Lcom/henrythompson/quoda/styler/StyleSpan;

    invoke-direct {v4, v1, v0, v2}, Lcom/henrythompson/quoda/styler/StyleSpan;-><init>(IZZ)V

    const/4 v8, 0x6

    const-string v5, "normal"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v8, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5, v4}, Lcom/henrythompson/quoda/styler/Theme;->setNormalTextStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V

    goto/16 :goto_0

    const/4 v4, 0x3

    const/4 v8, 0x6

    :cond_5
    const-string v5, "comment"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5, v4}, Lcom/henrythompson/quoda/styler/Theme;->setCommentStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V

    goto/16 :goto_0

    const/4 v1, 0x5

    const/4 v8, 0x1

    :cond_6
    const-string v5, "string"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v8, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5, v4}, Lcom/henrythompson/quoda/styler/Theme;->setStringStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V

    goto/16 :goto_0

    const/4 v7, 0x5

    const/4 v8, 0x3

    :cond_7
    const-string v5, "number"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v8, 0x6

    iget-object v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5, v4}, Lcom/henrythompson/quoda/styler/Theme;->setNumberStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V

    goto/16 :goto_0

    const/4 v4, 0x1

    const/4 v8, 0x5

    :cond_8
    const-string v5, "languageconstant"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v8, 0x7

    iget-object v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5, v4}, Lcom/henrythompson/quoda/styler/Theme;->setLangConstStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V

    goto/16 :goto_0

    const/4 v7, 0x1

    const/4 v8, 0x5

    :cond_9
    const-string v5, "userconstant"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v8, 0x6

    iget-object v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5, v4}, Lcom/henrythompson/quoda/styler/Theme;->setUserConstStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V

    goto/16 :goto_0

    const/4 v6, 0x6

    const/4 v8, 0x3

    :cond_a
    const-string v5, "variable"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v8, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5, v4}, Lcom/henrythompson/quoda/styler/Theme;->setVariableStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V

    goto/16 :goto_0

    const/4 v8, 0x2

    const/4 v8, 0x3

    :cond_b
    const-string v5, "keyword"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v8, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5, v4}, Lcom/henrythompson/quoda/styler/Theme;->setKeywordStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V

    goto/16 :goto_0

    const/4 v1, 0x0

    const/4 v8, 0x4

    :cond_c
    const-string v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v8, 0x6

    iget-object v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5, v4}, Lcom/henrythompson/quoda/styler/Theme;->setTypeStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V

    goto/16 :goto_0

    const/4 v3, 0x3

    const/4 v8, 0x7

    :cond_d
    const-string v5, "class"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v8, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5, v4}, Lcom/henrythompson/quoda/styler/Theme;->setClassStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V

    goto/16 :goto_0

    const/4 v6, 0x1

    const/4 v8, 0x5

    :cond_e
    const-string v5, "function"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v8, 0x6

    iget-object v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5, v4}, Lcom/henrythompson/quoda/styler/Theme;->setFunctionStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V

    goto/16 :goto_0

    const/4 v7, 0x4

    const/4 v8, 0x5

    :cond_f
    const-string v5, "operator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5, v4}, Lcom/henrythompson/quoda/styler/Theme;->setOperatorStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V

    goto/16 :goto_0

    const/4 v4, 0x1

    const/4 v8, 0x2

    :cond_10
    const-string v5, "preprocessor"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v8, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5, v4}, Lcom/henrythompson/quoda/styler/Theme;->setPreprocessorStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V

    goto/16 :goto_0

    const/4 v4, 0x6

    const/4 v8, 0x2

    :cond_11
    const-string v5, "escape"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v8, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5, v4}, Lcom/henrythompson/quoda/styler/Theme;->setEscapeStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V

    goto/16 :goto_0

    const/4 v3, 0x7

    const/4 v8, 0x2

    :cond_12
    const-string v5, "tagname"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v8, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5, v4}, Lcom/henrythompson/quoda/styler/Theme;->setTagNameStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V

    goto/16 :goto_0

    const/4 v6, 0x5

    const/4 v8, 0x2

    :cond_13
    const-string v5, "tagattribute"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    const/4 v8, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5, v4}, Lcom/henrythompson/quoda/styler/Theme;->setTagAttributeStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V

    goto/16 :goto_0

    const/4 v3, 0x4

    const/4 v8, 0x1

    :cond_14
    const-string v5, "tagbrace"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v8, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5, v4}, Lcom/henrythompson/quoda/styler/Theme;->setTagBraceStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V

    goto/16 :goto_0

    const/4 v4, 0x2

    const/4 v8, 0x5

    :cond_15
    const-string v5, "invalid"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v8, 0x7

    iget-object v5, p0, Lcom/henrythompson/quoda/styler/ThemeFileParser;->mTheme:Lcom/henrythompson/quoda/styler/Theme;

    invoke-virtual {v5, v4}, Lcom/henrythompson/quoda/styler/Theme;->setInvalidStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V

    goto/16 :goto_0

    const/4 v3, 0x2
.end method
