.class public Lorg/markdown4j/ExtDecorator;
.super Lcom/github/rjeschke/txtmark/DefaultDecorator;
.source "ExtDecorator.java"


# instance fields
.field private attributes:Lorg/markdown4j/HtmlAttributes;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/github/rjeschke/txtmark/DefaultDecorator;-><init>()V

    .line 10
    new-instance v0, Lorg/markdown4j/HtmlAttributes;

    invoke-direct {v0}, Lorg/markdown4j/HtmlAttributes;-><init>()V

    iput-object v0, p0, Lorg/markdown4j/ExtDecorator;->attributes:Lorg/markdown4j/HtmlAttributes;

    return-void
.end method

.method private open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z
    .locals 1
    .param p1, "out"    # Ljava/lang/StringBuilder;
    .param p2, "tagName"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private open(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "out"    # Ljava/lang/StringBuilder;
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "closed"    # Z

    .prologue
    .line 40
    iget-object v4, p0, Lorg/markdown4j/ExtDecorator;->attributes:Lorg/markdown4j/HtmlAttributes;

    invoke-virtual {v4, p2}, Lorg/markdown4j/HtmlAttributes;->get(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 41
    .local v0, "atts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    .line 42
    const-string v4, "<"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 45
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 47
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 48
    .local v3, "value":Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v4, "=\""

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v4, "\""

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 55
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    .line 56
    const-string v4, ">"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_1
    const/4 v4, 0x1

    .line 60
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public varargs addHtmlAttribute(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/markdown4j/ExtDecorator;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "tags"    # [Ljava/lang/String;

    .prologue
    .line 13
    move-object v0, p3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 14
    .local v3, "tag":Ljava/lang/String;
    iget-object v4, p0, Lorg/markdown4j/ExtDecorator;->attributes:Lorg/markdown4j/HtmlAttributes;

    invoke-virtual {v4, v3, p1, p2}, Lorg/markdown4j/HtmlAttributes;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/markdown4j/HtmlAttributes;

    .line 13
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    .end local v3    # "tag":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public varargs addStyleClass(Ljava/lang/String;[Ljava/lang/String;)Lorg/markdown4j/ExtDecorator;
    .locals 6
    .param p1, "styleClass"    # Ljava/lang/String;
    .param p2, "tags"    # [Ljava/lang/String;

    .prologue
    .line 18
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 19
    .local v3, "tag":Ljava/lang/String;
    iget-object v4, p0, Lorg/markdown4j/ExtDecorator;->attributes:Lorg/markdown4j/HtmlAttributes;

    const-string v5, "class"

    invoke-virtual {v4, v3, v5, p1}, Lorg/markdown4j/HtmlAttributes;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/markdown4j/HtmlAttributes;

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    .end local v3    # "tag":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public horizontalRuler(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 137
    const-string v0, "hr"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->horizontalRuler(Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method public openBlockquote(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 71
    const-string v0, "blockquote"

    invoke-direct {p0, p1, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openBlockquote(Ljava/lang/StringBuilder;)V

    .line 73
    :cond_0
    return-void
.end method

.method public openCodeBlock(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 77
    const-string v0, "pre"

    invoke-direct {p0, p1, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openCodeBlock(Ljava/lang/StringBuilder;)V

    .line 79
    :cond_0
    return-void
.end method

.method public openCodeSpan(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 83
    const-string v0, "code"

    invoke-direct {p0, p1, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openCodeSpan(Ljava/lang/StringBuilder;)V

    .line 85
    :cond_0
    return-void
.end method

.method public openEmphasis(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 107
    const-string v0, "em"

    invoke-direct {p0, p1, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openEmphasis(Ljava/lang/StringBuilder;)V

    .line 109
    :cond_0
    return-void
.end method

.method public openHeadline(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p1, "out"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # I

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-super {p0, p1, p2}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openHeadline(Ljava/lang/StringBuilder;I)V

    .line 91
    :cond_0
    return-void
.end method

.method public openImage(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 153
    const-string v0, "img"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openImage(Ljava/lang/StringBuilder;)V

    .line 155
    :cond_0
    return-void
.end method

.method public openLink(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 147
    const-string v0, "a"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openLink(Ljava/lang/StringBuilder;)V

    .line 149
    :cond_0
    return-void
.end method

.method public openListItem(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 131
    const-string v0, "li"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openListItem(Ljava/lang/StringBuilder;)V

    .line 133
    :cond_0
    return-void
.end method

.method public openOrderedList(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 119
    const-string v0, "ol"

    invoke-direct {p0, p1, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openOrderedList(Ljava/lang/StringBuilder;)V

    .line 121
    :cond_0
    return-void
.end method

.method public openParagraph(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 65
    const-string v0, "p"

    invoke-direct {p0, p1, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openParagraph(Ljava/lang/StringBuilder;)V

    .line 67
    :cond_0
    return-void
.end method

.method public openStrike(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 101
    const-string v0, "s"

    invoke-direct {p0, p1, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openStrike(Ljava/lang/StringBuilder;)V

    .line 103
    :cond_0
    return-void
.end method

.method public openStrong(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 95
    const-string v0, "strong"

    invoke-direct {p0, p1, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openStrong(Ljava/lang/StringBuilder;)V

    .line 97
    :cond_0
    return-void
.end method

.method public openSuper(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 113
    const-string v0, "super"

    invoke-direct {p0, p1, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openSuper(Ljava/lang/StringBuilder;)V

    .line 115
    :cond_0
    return-void
.end method

.method public openUnorderedList(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 125
    const-string v0, "ul"

    invoke-direct {p0, p1, v0}, Lorg/markdown4j/ExtDecorator;->open(Ljava/lang/StringBuilder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-super {p0, p1}, Lcom/github/rjeschke/txtmark/DefaultDecorator;->openUnorderedList(Ljava/lang/StringBuilder;)V

    .line 127
    :cond_0
    return-void
.end method

.method public useCompactStyle()Lorg/markdown4j/ExtDecorator;
    .locals 4

    .prologue
    .line 23
    iget-object v0, p0, Lorg/markdown4j/ExtDecorator;->attributes:Lorg/markdown4j/HtmlAttributes;

    const-string v1, "p"

    const-string v2, "style"

    const-string v3, "font-size:100%; padding:0px; margin:0px;"

    invoke-virtual {v0, v1, v2, v3}, Lorg/markdown4j/HtmlAttributes;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/markdown4j/HtmlAttributes;

    .line 24
    iget-object v0, p0, Lorg/markdown4j/ExtDecorator;->attributes:Lorg/markdown4j/HtmlAttributes;

    const-string v1, "a"

    const-string v2, "style"

    const-string v3, "font-size:100%; padding:0px; margin:0px;"

    invoke-virtual {v0, v1, v2, v3}, Lorg/markdown4j/HtmlAttributes;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/markdown4j/HtmlAttributes;

    .line 25
    iget-object v0, p0, Lorg/markdown4j/ExtDecorator;->attributes:Lorg/markdown4j/HtmlAttributes;

    const-string v1, "h1"

    const-string v2, "style"

    const-string v3, "font-size:100%; padding:0px; margin:0px;"

    invoke-virtual {v0, v1, v2, v3}, Lorg/markdown4j/HtmlAttributes;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/markdown4j/HtmlAttributes;

    .line 26
    iget-object v0, p0, Lorg/markdown4j/ExtDecorator;->attributes:Lorg/markdown4j/HtmlAttributes;

    const-string v1, "h2"

    const-string v2, "style"

    const-string v3, "font-size:100%; padding:0px; margin:0px;"

    invoke-virtual {v0, v1, v2, v3}, Lorg/markdown4j/HtmlAttributes;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/markdown4j/HtmlAttributes;

    .line 27
    iget-object v0, p0, Lorg/markdown4j/ExtDecorator;->attributes:Lorg/markdown4j/HtmlAttributes;

    const-string v1, "h3"

    const-string v2, "style"

    const-string v3, "font-size:100%; padding:0px; margin:0px;"

    invoke-virtual {v0, v1, v2, v3}, Lorg/markdown4j/HtmlAttributes;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/markdown4j/HtmlAttributes;

    .line 28
    iget-object v0, p0, Lorg/markdown4j/ExtDecorator;->attributes:Lorg/markdown4j/HtmlAttributes;

    const-string v1, "h4"

    const-string v2, "style"

    const-string v3, "font-size:100%; padding:0px; margin:0px;"

    invoke-virtual {v0, v1, v2, v3}, Lorg/markdown4j/HtmlAttributes;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/markdown4j/HtmlAttributes;

    .line 29
    iget-object v0, p0, Lorg/markdown4j/ExtDecorator;->attributes:Lorg/markdown4j/HtmlAttributes;

    const-string v1, "h5"

    const-string v2, "style"

    const-string v3, "font-size:100%; padding:0px; margin:0px;"

    invoke-virtual {v0, v1, v2, v3}, Lorg/markdown4j/HtmlAttributes;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/markdown4j/HtmlAttributes;

    .line 30
    iget-object v0, p0, Lorg/markdown4j/ExtDecorator;->attributes:Lorg/markdown4j/HtmlAttributes;

    const-string v1, "h6"

    const-string v2, "style"

    const-string v3, "font-size:100%; padding:0px; margin:0px;"

    invoke-virtual {v0, v1, v2, v3}, Lorg/markdown4j/HtmlAttributes;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/markdown4j/HtmlAttributes;

    .line 31
    iget-object v0, p0, Lorg/markdown4j/ExtDecorator;->attributes:Lorg/markdown4j/HtmlAttributes;

    const-string v1, "ul"

    const-string v2, "style"

    const-string v3, "font-size:100%; padding:0px; margin:0px;"

    invoke-virtual {v0, v1, v2, v3}, Lorg/markdown4j/HtmlAttributes;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/markdown4j/HtmlAttributes;

    .line 32
    iget-object v0, p0, Lorg/markdown4j/ExtDecorator;->attributes:Lorg/markdown4j/HtmlAttributes;

    const-string v1, "ol"

    const-string v2, "style"

    const-string v3, "font-size:100%; padding:0px; margin:0px;"

    invoke-virtual {v0, v1, v2, v3}, Lorg/markdown4j/HtmlAttributes;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/markdown4j/HtmlAttributes;

    .line 33
    iget-object v0, p0, Lorg/markdown4j/ExtDecorator;->attributes:Lorg/markdown4j/HtmlAttributes;

    const-string v1, "li"

    const-string v2, "style"

    const-string v3, "font-size:100%; padding:0px; margin:0px;"

    invoke-virtual {v0, v1, v2, v3}, Lorg/markdown4j/HtmlAttributes;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/markdown4j/HtmlAttributes;

    .line 34
    return-object p0
.end method
