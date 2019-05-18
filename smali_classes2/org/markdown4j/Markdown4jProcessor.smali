.class public Lorg/markdown4j/Markdown4jProcessor;
.super Ljava/lang/Object;
.source "Markdown4jProcessor.java"


# instance fields
.field private builder:Lcom/github/rjeschke/txtmark/Configuration$Builder;

.field private decorator:Lorg/markdown4j/ExtDecorator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-direct {p0}, Lorg/markdown4j/Markdown4jProcessor;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    iput-object v0, p0, Lorg/markdown4j/Markdown4jProcessor;->builder:Lcom/github/rjeschke/txtmark/Configuration$Builder;

    .line 20
    return-void
.end method

.method private builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;
    .locals 4

    .prologue
    .line 23
    new-instance v0, Lorg/markdown4j/ExtDecorator;

    invoke-direct {v0}, Lorg/markdown4j/ExtDecorator;-><init>()V

    iput-object v0, p0, Lorg/markdown4j/Markdown4jProcessor;->decorator:Lorg/markdown4j/ExtDecorator;

    .line 24
    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->forceExtentedProfile()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/markdown4j/Plugin;

    const/4 v2, 0x0

    new-instance v3, Lorg/markdown4j/YumlPlugin;

    invoke-direct {v3}, Lorg/markdown4j/YumlPlugin;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/markdown4j/WebSequencePlugin;

    invoke-direct {v3}, Lorg/markdown4j/WebSequencePlugin;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/markdown4j/IncludePlugin;

    invoke-direct {v3}, Lorg/markdown4j/IncludePlugin;-><init>()V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->registerPlugins([Lorg/markdown4j/Plugin;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->convertNewline2Br()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/markdown4j/Markdown4jProcessor;->decorator:Lorg/markdown4j/ExtDecorator;

    invoke-virtual {v0, v1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setDecorator(Lcom/github/rjeschke/txtmark/Decorator;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    new-instance v1, Lorg/markdown4j/CodeBlockEmitter;

    invoke-direct {v1}, Lorg/markdown4j/CodeBlockEmitter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setCodeBlockEmitter(Lcom/github/rjeschke/txtmark/BlockEmitter;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs addHtmlAttribute(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/markdown4j/Markdown4jProcessor;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "tags"    # [Ljava/lang/String;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/markdown4j/Markdown4jProcessor;->decorator:Lorg/markdown4j/ExtDecorator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/markdown4j/ExtDecorator;->addHtmlAttribute(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/markdown4j/ExtDecorator;

    .line 37
    return-object p0
.end method

.method public varargs addStyleClass(Ljava/lang/String;[Ljava/lang/String;)Lorg/markdown4j/Markdown4jProcessor;
    .locals 1
    .param p1, "styleClass"    # Ljava/lang/String;
    .param p2, "tags"    # [Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/markdown4j/Markdown4jProcessor;->decorator:Lorg/markdown4j/ExtDecorator;

    invoke-virtual {v0, p1, p2}, Lorg/markdown4j/ExtDecorator;->addStyleClass(Ljava/lang/String;[Ljava/lang/String;)Lorg/markdown4j/ExtDecorator;

    .line 41
    return-object p0
.end method

.method public process(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lorg/markdown4j/Markdown4jProcessor;->builder:Lcom/github/rjeschke/txtmark/Configuration$Builder;

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/File;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p1}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/io/Reader;)Ljava/lang/String;
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lorg/markdown4j/Markdown4jProcessor;->builder:Lcom/github/rjeschke/txtmark/Configuration$Builder;

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/Reader;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lorg/markdown4j/Markdown4jProcessor;->builder:Lcom/github/rjeschke/txtmark/Configuration$Builder;

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/lang/String;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs registerPlugins([Lorg/markdown4j/Plugin;)Lorg/markdown4j/Markdown4jProcessor;
    .locals 1
    .param p1, "plugins"    # [Lorg/markdown4j/Plugin;

    .prologue
    .line 27
    iget-object v0, p0, Lorg/markdown4j/Markdown4jProcessor;->builder:Lcom/github/rjeschke/txtmark/Configuration$Builder;

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->registerPlugins([Lorg/markdown4j/Plugin;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    .line 28
    return-object p0
.end method

.method public setDecorator(Lorg/markdown4j/ExtDecorator;)Lorg/markdown4j/Markdown4jProcessor;
    .locals 1
    .param p1, "decorator"    # Lorg/markdown4j/ExtDecorator;

    .prologue
    .line 31
    iput-object p1, p0, Lorg/markdown4j/Markdown4jProcessor;->decorator:Lorg/markdown4j/ExtDecorator;

    .line 32
    iget-object v0, p0, Lorg/markdown4j/Markdown4jProcessor;->builder:Lcom/github/rjeschke/txtmark/Configuration$Builder;

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setDecorator(Lcom/github/rjeschke/txtmark/Decorator;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    .line 33
    return-object p0
.end method
