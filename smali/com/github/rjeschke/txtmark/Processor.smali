.class public Lcom/github/rjeschke/txtmark/Processor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/rjeschke/txtmark/Processor$1;
    }
.end annotation


# instance fields
.field final config:Lcom/github/rjeschke/txtmark/Configuration;

.field private final emitter:Lcom/github/rjeschke/txtmark/Emitter;

.field private final reader:Ljava/io/Reader;

.field private useExtensions:Z


# direct methods
.method protected constructor <init>(Ljava/io/Reader;Lcom/github/rjeschke/txtmark/Configuration;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/github/rjeschke/txtmark/Processor;->reader:Ljava/io/Reader;

    const/4 v2, 0x5

    iput-object p2, p0, Lcom/github/rjeschke/txtmark/Processor;->config:Lcom/github/rjeschke/txtmark/Configuration;

    const/4 v2, 0x1

    iget-boolean v0, p2, Lcom/github/rjeschke/txtmark/Configuration;->forceExtendedProfile:Z

    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    const/4 v2, 0x7

    new-instance v0, Lcom/github/rjeschke/txtmark/Emitter;

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Processor;->config:Lcom/github/rjeschke/txtmark/Configuration;

    invoke-direct {v0, v1}, Lcom/github/rjeschke/txtmark/Emitter;-><init>(Lcom/github/rjeschke/txtmark/Configuration;)V

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Processor;->emitter:Lcom/github/rjeschke/txtmark/Emitter;

    const/4 v2, 0x2

    nop

    return-void

    const/4 v1, 0x7
.end method

.method private initListBlock(Lcom/github/rjeschke/txtmark/Block;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v4, 0x4

    iget-object v0, p1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    const/4 v4, 0x2

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    const/4 v4, 0x2

    :goto_0
    if-eqz v0, :cond_2

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {v0, v2}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v1

    const/4 v4, 0x7

    sget-object v2, Lcom/github/rjeschke/txtmark/LineType;->OLIST:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/github/rjeschke/txtmark/LineType;->ULIST:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v1, v2, :cond_0

    iget-boolean v2, v0, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v2, :cond_1

    iget-boolean v2, v0, Lcom/github/rjeschke/txtmark/Line;->prevEmpty:Z

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/github/rjeschke/txtmark/Line;->leading:I

    if-nez v2, :cond_1

    sget-object v2, Lcom/github/rjeschke/txtmark/LineType;->OLIST:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/github/rjeschke/txtmark/LineType;->ULIST:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v1, v2, :cond_1

    const/4 v4, 0x6

    :cond_0
    iget-object v2, v0, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {p1, v2}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v2

    sget-object v3, Lcom/github/rjeschke/txtmark/BlockType;->LIST_ITEM:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v3, v2, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v4, 0x6

    :cond_1
    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    const/4 v4, 0x3

    goto :goto_0

    const/4 v0, 0x5

    const/4 v4, 0x0

    :cond_2
    iget-object v2, p1, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {p1, v2}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v2

    sget-object v3, Lcom/github/rjeschke/txtmark/BlockType;->LIST_ITEM:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v3, v2, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v4, 0x3

    nop

    return-void

    const/4 v0, 0x5
.end method

.method private process()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v4, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/github/rjeschke/txtmark/Processor;->readLines()Lcom/github/rjeschke/txtmark/Block;

    move-result-object v2

    const/4 v4, 0x5

    invoke-virtual {v2}, Lcom/github/rjeschke/txtmark/Block;->removeSurroundingEmptyLines()V

    const/4 v4, 0x6

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/github/rjeschke/txtmark/Processor;->recurse(Lcom/github/rjeschke/txtmark/Block;Z)V

    const/4 v4, 0x0

    iget-object v0, v2, Lcom/github/rjeschke/txtmark/Block;->blocks:Lcom/github/rjeschke/txtmark/Block;

    const/4 v4, 0x1

    :goto_0
    if-eqz v0, :cond_0

    const/4 v4, 0x3

    iget-object v3, p0, Lcom/github/rjeschke/txtmark/Processor;->emitter:Lcom/github/rjeschke/txtmark/Emitter;

    invoke-virtual {v3, v1, v0}, Lcom/github/rjeschke/txtmark/Emitter;->emit(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Block;)V

    const/4 v4, 0x3

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Block;->next:Lcom/github/rjeschke/txtmark/Block;

    goto :goto_0

    const/4 v3, 0x1

    const/4 v4, 0x6

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    const/4 v4, 0x5
.end method

.method public static final process(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v1, 0x7

    sget-object v0, Lcom/github/rjeschke/txtmark/Configuration;->DEFAULT:Lcom/github/rjeschke/txtmark/Configuration;

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/File;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x7
.end method

.method public static final process(Ljava/io/File;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v2, 0x3

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x2

    invoke-static {v0, p1}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/InputStream;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/4 v2, 0x3

    return-object v1

    const/4 v0, 0x2
.end method

.method public static final process(Ljava/io/File;Lcom/github/rjeschke/txtmark/Decorator;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v1, 0x4

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setDecorator(Lcom/github/rjeschke/txtmark/Decorator;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/File;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x5
.end method

.method public static final process(Ljava/io/File;Lcom/github/rjeschke/txtmark/Decorator;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x6

    const/4 v1, 0x3

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setDecorator(Lcom/github/rjeschke/txtmark/Decorator;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setSafeMode(Z)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/File;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x5
.end method

.method public static final process(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v1, 0x6

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setEncoding(Ljava/lang/String;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/File;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x3
.end method

.method public static final process(Ljava/io/File;Ljava/lang/String;Lcom/github/rjeschke/txtmark/Decorator;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x7

    const/4 v1, 0x3

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setEncoding(Ljava/lang/String;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setDecorator(Lcom/github/rjeschke/txtmark/Decorator;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/File;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x6
.end method

.method public static final process(Ljava/io/File;Ljava/lang/String;Lcom/github/rjeschke/txtmark/Decorator;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x6

    const/4 v1, 0x1

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setEncoding(Ljava/lang/String;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setSafeMode(Z)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setDecorator(Lcom/github/rjeschke/txtmark/Decorator;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/File;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x0
.end method

.method public static final process(Ljava/io/File;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v1, 0x4

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setEncoding(Ljava/lang/String;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setSafeMode(Z)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/File;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x7
.end method

.method public static final process(Ljava/io/File;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v1, 0x4

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setSafeMode(Z)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/File;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x4
.end method

.method public static final process(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v1, 0x5

    sget-object v0, Lcom/github/rjeschke/txtmark/Configuration;->DEFAULT:Lcom/github/rjeschke/txtmark/Configuration;

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/InputStream;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x7
.end method

.method public static final process(Ljava/io/InputStream;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v4, 0x0

    new-instance v0, Lcom/github/rjeschke/txtmark/Processor;

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p1, Lcom/github/rjeschke/txtmark/Configuration;->encoding:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v0, v1, p1}, Lcom/github/rjeschke/txtmark/Processor;-><init>(Ljava/io/Reader;Lcom/github/rjeschke/txtmark/Configuration;)V

    const/4 v4, 0x3

    invoke-direct {v0}, Lcom/github/rjeschke/txtmark/Processor;->process()Ljava/lang/String;

    move-result-object v1

    return-object v1

    const/4 v1, 0x3
.end method

.method public static final process(Ljava/io/InputStream;Lcom/github/rjeschke/txtmark/Decorator;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v1, 0x2

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setDecorator(Lcom/github/rjeschke/txtmark/Decorator;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/InputStream;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x5
.end method

.method public static final process(Ljava/io/InputStream;Lcom/github/rjeschke/txtmark/Decorator;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x7

    const/4 v1, 0x1

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setDecorator(Lcom/github/rjeschke/txtmark/Decorator;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setSafeMode(Z)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/InputStream;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x6
.end method

.method public static final process(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v1, 0x7

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setEncoding(Ljava/lang/String;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/InputStream;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x1
.end method

.method public static final process(Ljava/io/InputStream;Ljava/lang/String;Lcom/github/rjeschke/txtmark/Decorator;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v1, 0x3

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setEncoding(Ljava/lang/String;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setDecorator(Lcom/github/rjeschke/txtmark/Decorator;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/InputStream;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x3
.end method

.method public static final process(Ljava/io/InputStream;Ljava/lang/String;Lcom/github/rjeschke/txtmark/Decorator;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v1, 0x4

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setEncoding(Ljava/lang/String;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setDecorator(Lcom/github/rjeschke/txtmark/Decorator;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setSafeMode(Z)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/InputStream;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x7
.end method

.method public static final process(Ljava/io/InputStream;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v1, 0x4

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setEncoding(Ljava/lang/String;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setSafeMode(Z)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/InputStream;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x1
.end method

.method public static final process(Ljava/io/InputStream;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v1, 0x2

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setSafeMode(Z)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/InputStream;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x3
.end method

.method public static final process(Ljava/io/Reader;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v1, 0x4

    sget-object v0, Lcom/github/rjeschke/txtmark/Configuration;->DEFAULT:Lcom/github/rjeschke/txtmark/Configuration;

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/Reader;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x3
.end method

.method public static final process(Ljava/io/Reader;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x7

    const/4 v2, 0x6

    new-instance v0, Lcom/github/rjeschke/txtmark/Processor;

    instance-of v1, p0, Ljava/io/BufferedReader;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p0, v1

    :cond_0
    invoke-direct {v0, p0, p1}, Lcom/github/rjeschke/txtmark/Processor;-><init>(Ljava/io/Reader;Lcom/github/rjeschke/txtmark/Configuration;)V

    const/4 v2, 0x5

    invoke-direct {v0}, Lcom/github/rjeschke/txtmark/Processor;->process()Ljava/lang/String;

    move-result-object v1

    return-object v1

    const/4 v1, 0x4
.end method

.method public static final process(Ljava/io/Reader;Lcom/github/rjeschke/txtmark/Decorator;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x5

    const/4 v1, 0x6

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setDecorator(Lcom/github/rjeschke/txtmark/Decorator;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/Reader;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x2
.end method

.method public static final process(Ljava/io/Reader;Lcom/github/rjeschke/txtmark/Decorator;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v1, 0x2

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setDecorator(Lcom/github/rjeschke/txtmark/Decorator;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setSafeMode(Z)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/Reader;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x2
.end method

.method public static final process(Ljava/io/Reader;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v1, 0x1

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setSafeMode(Z)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/Reader;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x5
.end method

.method public static final process(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x1

    sget-object v0, Lcom/github/rjeschke/txtmark/Configuration;->DEFAULT:Lcom/github/rjeschke/txtmark/Configuration;

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/lang/String;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x3
.end method

.method public static final process(Ljava/lang/String;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/io/Reader;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v2, 0x2

    :goto_0
    return-object v1

    const/4 v0, 0x2

    const/4 v2, 0x1

    :catch_0
    move-exception v0

    const/4 v2, 0x2

    const/4 v1, 0x0

    goto :goto_0

    const/4 v0, 0x0
.end method

.method public static final process(Ljava/lang/String;Lcom/github/rjeschke/txtmark/Decorator;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x2

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setDecorator(Lcom/github/rjeschke/txtmark/Decorator;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/lang/String;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x2
.end method

.method public static final process(Ljava/lang/String;Lcom/github/rjeschke/txtmark/Decorator;Z)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x5

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setDecorator(Lcom/github/rjeschke/txtmark/Decorator;)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setSafeMode(Z)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/lang/String;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x2
.end method

.method public static final process(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x7

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->setSafeMode(Z)Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Processor;->process(Ljava/lang/String;Lcom/github/rjeschke/txtmark/Configuration;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x7
.end method

.method private readLines()Lcom/github/rjeschke/txtmark/Block;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Lcom/github/rjeschke/txtmark/Block;

    invoke-direct {v2}, Lcom/github/rjeschke/txtmark/Block;-><init>()V

    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v16, 0x50

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Processor;->reader:Ljava/io/Reader;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/Reader;->read()I

    move-result v3

    const/4 v9, 0x0

    :cond_0
    :goto_0
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v3, v0, :cond_12

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v14, 0x0

    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_4

    sparse-switch v3, :sswitch_data_0

    add-int/lit8 v14, v14, 0x1

    int-to-char v0, v3

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Processor;->reader:Ljava/io/Reader;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/Reader;->read()I

    move-result v3

    goto :goto_1

    const/4 v3, 0x7

    :sswitch_0
    const/4 v6, 0x1

    goto :goto_1

    const/4 v9, 0x6

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Processor;->reader:Ljava/io/Reader;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/Reader;->read()I

    move-result v3

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v3, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Processor;->reader:Ljava/io/Reader;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/Reader;->read()I

    move-result v3

    :cond_1
    const/4 v6, 0x1

    goto :goto_1

    const/4 v8, 0x2

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Processor;->reader:Ljava/io/Reader;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/Reader;->read()I

    move-result v3

    const/16 v16, 0xa

    move/from16 v0, v16

    if-ne v3, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Processor;->reader:Ljava/io/Reader;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/Reader;->read()I

    move-result v3

    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    const/4 v2, 0x1

    :sswitch_3
    and-int/lit8 v16, v14, 0x3

    rsub-int/lit8 v16, v16, 0x4

    add-int v13, v14, v16

    :goto_2
    if-ge v14, v13, :cond_3

    const/16 v16, 0x20

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    const/4 v14, 0x3

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Processor;->reader:Ljava/io/Reader;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/Reader;->read()I

    move-result v3

    goto :goto_1

    const/4 v2, 0x4

    :cond_4
    new-instance v10, Lcom/github/rjeschke/txtmark/Line;

    invoke-direct {v10}, Lcom/github/rjeschke/txtmark/Line;-><init>()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v10}, Lcom/github/rjeschke/txtmark/Line;->init()V

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    iget-boolean v0, v10, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    move/from16 v16, v0

    if-nez v16, :cond_7

    iget v0, v10, Lcom/github/rjeschke/txtmark/Line;->leading:I

    move/from16 v16, v0

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    iget-object v0, v10, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    move-object/from16 v16, v0

    iget v0, v10, Lcom/github/rjeschke/txtmark/Line;->leading:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x5b

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    iget v0, v10, Lcom/github/rjeschke/txtmark/Line;->leading:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v10, Lcom/github/rjeschke/txtmark/Line;->pos:I

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [C

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x5d

    aput-char v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/github/rjeschke/txtmark/Line;->readUntil([C)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    iget v0, v10, Lcom/github/rjeschke/txtmark/Line;->pos:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x2

    iget-object v0, v10, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    iget-object v0, v10, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    move-object/from16 v16, v0

    iget v0, v10, Lcom/github/rjeschke/txtmark/Line;->pos:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x3a

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    iget v0, v10, Lcom/github/rjeschke/txtmark/Line;->pos:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    iput v0, v10, Lcom/github/rjeschke/txtmark/Line;->pos:I

    invoke-virtual {v10}, Lcom/github/rjeschke/txtmark/Line;->skipSpaces()Z

    iget-object v0, v10, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    move-object/from16 v16, v0

    iget v0, v10, Lcom/github/rjeschke/txtmark/Line;->pos:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x3c

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    iget v0, v10, Lcom/github/rjeschke/txtmark/Line;->pos:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v10, Lcom/github/rjeschke/txtmark/Line;->pos:I

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [C

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x3e

    aput-char v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/github/rjeschke/txtmark/Line;->readUntil([C)Ljava/lang/String;

    move-result-object v11

    iget v0, v10, Lcom/github/rjeschke/txtmark/Line;->pos:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v10, Lcom/github/rjeschke/txtmark/Line;->pos:I

    :goto_3
    if-eqz v11, :cond_7

    invoke-virtual {v10}, Lcom/github/rjeschke/txtmark/Line;->skipSpaces()Z

    move-result v16

    if-eqz v16, :cond_9

    iget-object v0, v10, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    move-object/from16 v16, v0

    iget v0, v10, Lcom/github/rjeschke/txtmark/Line;->pos:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v16, 0x22

    move/from16 v0, v16

    if-eq v4, v0, :cond_5

    const/16 v16, 0x27

    move/from16 v0, v16

    if-eq v4, v0, :cond_5

    const/16 v16, 0x28

    move/from16 v0, v16

    if-ne v4, v0, :cond_7

    :cond_5
    iget v0, v10, Lcom/github/rjeschke/txtmark/Line;->pos:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v10, Lcom/github/rjeschke/txtmark/Line;->pos:I

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [C

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x28

    move/from16 v0, v18

    if-ne v4, v0, :cond_6

    const/16 v4, 0x29

    :cond_6
    aput-char v4, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/github/rjeschke/txtmark/Line;->readUntil([C)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    const/4 v8, 0x1

    :cond_7
    :goto_4
    if-eqz v8, :cond_c

    if-eqz v7, :cond_c

    if-eqz v11, :cond_c

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, "$profile$"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Processor;->emitter:Lcom/github/rjeschke/txtmark/Emitter;

    move-object/from16 v16, v0

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, "extended"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    const/4 v9, 0x0

    goto/16 :goto_0

    const/4 v4, 0x5

    :cond_8
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [C

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/github/rjeschke/txtmark/Line;->readUntil([C)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_3

    const/4 v6, 0x4

    :cond_9
    const/4 v8, 0x1

    goto :goto_4

    const/4 v5, 0x0

    :cond_a
    new-instance v12, Lcom/github/rjeschke/txtmark/LinkRef;

    if-eqz v5, :cond_b

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x2a

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    const/16 v16, 0x1

    :goto_5
    move/from16 v0, v16

    invoke-direct {v12, v11, v5, v0}, Lcom/github/rjeschke/txtmark/LinkRef;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Processor;->emitter:Lcom/github/rjeschke/txtmark/Emitter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v12}, Lcom/github/rjeschke/txtmark/Emitter;->addLinkRef(Ljava/lang/String;Lcom/github/rjeschke/txtmark/LinkRef;)V

    if-nez v5, :cond_0

    move-object v9, v12

    goto/16 :goto_0

    const/4 v13, 0x6

    :cond_b
    const/16 v16, 0x0

    goto :goto_5

    const/4 v2, 0x7

    :cond_c
    const/4 v5, 0x0

    iget-boolean v0, v10, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    move/from16 v16, v0

    if-nez v16, :cond_11

    if-eqz v9, :cond_11

    iget v0, v10, Lcom/github/rjeschke/txtmark/Line;->leading:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v10, Lcom/github/rjeschke/txtmark/Line;->pos:I

    iget-object v0, v10, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    move-object/from16 v16, v0

    iget v0, v10, Lcom/github/rjeschke/txtmark/Line;->pos:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v16, 0x22

    move/from16 v0, v16

    if-eq v4, v0, :cond_d

    const/16 v16, 0x27

    move/from16 v0, v16

    if-eq v4, v0, :cond_d

    const/16 v16, 0x28

    move/from16 v0, v16

    if-ne v4, v0, :cond_f

    :cond_d
    iget v0, v10, Lcom/github/rjeschke/txtmark/Line;->pos:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    iput v0, v10, Lcom/github/rjeschke/txtmark/Line;->pos:I

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [C

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x28

    move/from16 v0, v18

    if-ne v4, v0, :cond_e

    const/16 v4, 0x29

    :cond_e
    aput-char v4, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/github/rjeschke/txtmark/Line;->readUntil([C)Ljava/lang/String;

    move-result-object v5

    :cond_f
    if-eqz v5, :cond_10

    iput-object v5, v9, Lcom/github/rjeschke/txtmark/LinkRef;->title:Ljava/lang/String;

    :cond_10
    const/4 v9, 0x0

    :cond_11
    if-nez v5, :cond_0

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v10, Lcom/github/rjeschke/txtmark/Line;->pos:I

    invoke-virtual {v2, v10}, Lcom/github/rjeschke/txtmark/Block;->appendLine(Lcom/github/rjeschke/txtmark/Line;)V

    goto/16 :goto_0

    const/4 v6, 0x5

    :cond_12
    return-object v2

    const/4 v5, 0x7

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x9 -> :sswitch_3
        0xa -> :sswitch_1
        0xd -> :sswitch_2
    .end sparse-switch

    :array_0
    .array-data 2
        0x20s
        0xas
    .end array-data
.end method

.method private recurse(Lcom/github/rjeschke/txtmark/Block;Z)V
    .locals 12

    const/4 v11, 0x6

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    iget-object v2, p1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    const/4 v11, 0x1

    if-eqz p2, :cond_0

    const/4 v11, 0x6

    iget-boolean v7, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {p1, v7}, Lcom/github/rjeschke/txtmark/Block;->removeListIndent(Z)V

    const/4 v11, 0x4

    iget-boolean v7, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iget-boolean v9, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {v7, v9}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v7

    sget-object v9, Lcom/github/rjeschke/txtmark/LineType;->CODE:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v7, v9, :cond_0

    const/4 v11, 0x7

    iget-object v7, p1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {v7}, Lcom/github/rjeschke/txtmark/Line;->stripID()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/github/rjeschke/txtmark/Block;->id:Ljava/lang/String;

    const/4 v11, 0x6

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-boolean v7, v2, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-eqz v7, :cond_1

    const/4 v11, 0x3

    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    const/4 v0, 0x6

    const/4 v11, 0x7

    :cond_1
    if-nez v2, :cond_5

    const/4 v11, 0x7

    :cond_2
    nop

    return-void

    const/4 v8, 0x7

    const/4 v11, 0x0

    :pswitch_0
    iget-boolean v6, v2, Lcom/github/rjeschke/txtmark/Line;->prevEmpty:Z

    const/4 v11, 0x6

    :goto_1
    if-eqz v2, :cond_4

    iget-boolean v7, v2, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v7, :cond_4

    const/4 v11, 0x3

    iget-boolean v7, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {v2, v7}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v4

    const/4 v11, 0x3

    if-nez p2, :cond_3

    iget-boolean v7, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    if-eqz v7, :cond_6

    :cond_3
    sget-object v7, Lcom/github/rjeschke/txtmark/LineType;->OLIST:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v4, v7, :cond_4

    sget-object v7, Lcom/github/rjeschke/txtmark/LineType;->ULIST:Lcom/github/rjeschke/txtmark/LineType;

    if-ne v4, v7, :cond_6

    const/4 v11, 0x0

    :cond_4
    if-eqz v2, :cond_9

    iget-boolean v7, v2, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v7, :cond_9

    const/4 v11, 0x0

    if-eqz p2, :cond_8

    if-nez v6, :cond_8

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->NONE:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v11, 0x4

    :goto_2
    iget-object v7, v2, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {p1, v7}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v7

    iput-object v1, v7, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v11, 0x3

    invoke-virtual {p1}, Lcom/github/rjeschke/txtmark/Block;->removeLeadingEmptyLines()Z

    const/4 v11, 0x7

    :goto_3
    iget-object v2, p1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    const/4 v11, 0x3

    :cond_5
    :goto_4
    if-eqz v2, :cond_2

    const/4 v11, 0x5

    iget-boolean v7, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {v2, v7}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v5

    const/4 v11, 0x4

    sget-object v7, Lcom/github/rjeschke/txtmark/Processor$1;->$SwitchMap$com$github$rjeschke$txtmark$LineType:[I

    invoke-virtual {v5}, Lcom/github/rjeschke/txtmark/LineType;->ordinal()I

    move-result v9

    aget v7, v7, v9

    packed-switch v7, :pswitch_data_0

    const/4 v11, 0x7

    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_4

    const/4 v1, 0x4

    const/4 v11, 0x2

    :cond_6
    iget-boolean v7, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    if-eqz v7, :cond_7

    sget-object v7, Lcom/github/rjeschke/txtmark/LineType;->CODE:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v4, v7, :cond_4

    sget-object v7, Lcom/github/rjeschke/txtmark/LineType;->FENCED_CODE:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v4, v7, :cond_4

    sget-object v7, Lcom/github/rjeschke/txtmark/LineType;->PLUGIN:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v4, v7, :cond_4

    const/4 v11, 0x3

    :cond_7
    sget-object v7, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v4, v7, :cond_4

    sget-object v7, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE1:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v4, v7, :cond_4

    sget-object v7, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE2:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v4, v7, :cond_4

    sget-object v7, Lcom/github/rjeschke/txtmark/LineType;->HR:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v4, v7, :cond_4

    sget-object v7, Lcom/github/rjeschke/txtmark/LineType;->BQUOTE:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v4, v7, :cond_4

    sget-object v7, Lcom/github/rjeschke/txtmark/LineType;->XML:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v4, v7, :cond_4

    const/4 v11, 0x3

    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    const/4 v11, 0x4

    goto/16 :goto_1

    const/4 v1, 0x3

    const/4 v11, 0x0

    :cond_8
    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->PARAGRAPH:Lcom/github/rjeschke/txtmark/BlockType;

    goto :goto_2

    const/4 v8, 0x0

    const/4 v11, 0x2

    :cond_9
    if-eqz p2, :cond_c

    if-eqz v2, :cond_a

    iget-boolean v7, v2, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v7, :cond_c

    :cond_a
    if-nez v6, :cond_c

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->NONE:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v11, 0x4

    :goto_5
    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    :cond_b
    invoke-virtual {p1, v2}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v7

    iput-object v1, v7, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v11, 0x1

    invoke-virtual {p1}, Lcom/github/rjeschke/txtmark/Block;->removeLeadingEmptyLines()Z

    goto :goto_3

    const/4 v4, 0x5

    const/4 v11, 0x5

    :cond_c
    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->PARAGRAPH:Lcom/github/rjeschke/txtmark/BlockType;

    goto :goto_5

    const/4 v8, 0x7

    const/4 v11, 0x6

    :goto_6
    :pswitch_1
    if-eqz v2, :cond_e

    iget-boolean v7, v2, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v7, :cond_d

    iget v7, v2, Lcom/github/rjeschke/txtmark/Line;->leading:I

    const/4 v9, 0x3

    if-le v7, v9, :cond_e

    const/4 v11, 0x4

    :cond_d
    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_6

    const/4 v9, 0x3

    const/4 v11, 0x4

    :cond_e
    if-eqz v2, :cond_f

    iget-object v7, v2, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    :goto_7
    invoke-virtual {p1, v7}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v0

    const/4 v11, 0x5

    sget-object v7, Lcom/github/rjeschke/txtmark/BlockType;->CODE:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v7, v0, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v11, 0x0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Block;->removeSurroundingEmptyLines()V

    goto/16 :goto_4

    const/4 v2, 0x5

    const/4 v11, 0x5

    :cond_f
    iget-object v7, p1, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_7

    const/4 v9, 0x5

    const/4 v11, 0x1

    :pswitch_2
    iget-object v7, v2, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    if-eqz v7, :cond_10

    const/4 v11, 0x2

    iget-object v7, v2, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {p1, v7}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    const/4 v11, 0x6

    :cond_10
    iget-object v7, v2, Lcom/github/rjeschke/txtmark/Line;->xmlEndLine:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {p1, v7}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v7

    sget-object v9, Lcom/github/rjeschke/txtmark/BlockType;->XML:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v9, v7, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v11, 0x1

    invoke-virtual {p1}, Lcom/github/rjeschke/txtmark/Block;->removeLeadingEmptyLines()Z

    const/4 v11, 0x1

    iget-object v2, p1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    const/4 v11, 0x3

    goto/16 :goto_4

    const/4 v1, 0x3

    const/4 v11, 0x4

    :cond_11
    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    const/4 v11, 0x1

    :pswitch_3
    if-eqz v2, :cond_12

    const/4 v11, 0x1

    iget-boolean v7, v2, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v7, :cond_11

    iget-boolean v7, v2, Lcom/github/rjeschke/txtmark/Line;->prevEmpty:Z

    if-eqz v7, :cond_11

    iget v7, v2, Lcom/github/rjeschke/txtmark/Line;->leading:I

    if-nez v7, :cond_11

    iget-boolean v7, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {v2, v7}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v7

    sget-object v9, Lcom/github/rjeschke/txtmark/LineType;->BQUOTE:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v7, v9, :cond_11

    const/4 v11, 0x6

    :cond_12
    if-eqz v2, :cond_13

    iget-object v7, v2, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    :goto_8
    invoke-virtual {p1, v7}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v0

    const/4 v11, 0x0

    sget-object v7, Lcom/github/rjeschke/txtmark/BlockType;->BLOCKQUOTE:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v7, v0, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v11, 0x4

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Block;->removeSurroundingEmptyLines()V

    const/4 v11, 0x5

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Block;->removeBlockQuotePrefix()V

    const/4 v11, 0x6

    invoke-direct {p0, v0, v10}, Lcom/github/rjeschke/txtmark/Processor;->recurse(Lcom/github/rjeschke/txtmark/Block;Z)V

    const/4 v11, 0x5

    iget-object v2, p1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    const/4 v11, 0x6

    goto/16 :goto_4

    const/4 v8, 0x4

    const/4 v11, 0x5

    :cond_13
    iget-object v7, p1, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_8

    const/4 v6, 0x1

    const/4 v11, 0x3

    :pswitch_4
    iget-object v7, v2, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    if-eqz v7, :cond_14

    const/4 v11, 0x7

    iget-object v7, v2, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {p1, v7}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    const/4 v11, 0x2

    :cond_14
    invoke-virtual {p1, v2}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v7

    sget-object v9, Lcom/github/rjeschke/txtmark/BlockType;->RULER:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v9, v7, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v11, 0x4

    invoke-virtual {p1}, Lcom/github/rjeschke/txtmark/Block;->removeLeadingEmptyLines()Z

    const/4 v11, 0x7

    iget-object v2, p1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    const/4 v11, 0x2

    goto/16 :goto_4

    const/4 v7, 0x4

    const/4 v11, 0x0

    :pswitch_5
    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    const/4 v11, 0x6

    :goto_9
    if-eqz v2, :cond_15

    const/4 v11, 0x1

    iget-boolean v7, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {v2, v7}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v7

    sget-object v9, Lcom/github/rjeschke/txtmark/LineType;->FENCED_CODE:Lcom/github/rjeschke/txtmark/LineType;

    if-ne v7, v9, :cond_18

    const/4 v11, 0x2

    :cond_15
    if-eqz v2, :cond_16

    const/4 v11, 0x1

    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    const/4 v11, 0x0

    :cond_16
    if-eqz v2, :cond_19

    iget-object v7, v2, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    :goto_a
    invoke-virtual {p1, v7}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v0

    const/4 v11, 0x1

    sget-object v7, Lcom/github/rjeschke/txtmark/BlockType;->FENCED_CODE:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v7, v0, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v11, 0x7

    iget-object v7, v0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iget-object v7, v7, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-static {v7}, Lcom/github/rjeschke/txtmark/Utils;->getMetaFromFence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/github/rjeschke/txtmark/Block;->meta:Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v7, v0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {v7}, Lcom/github/rjeschke/txtmark/Line;->setEmpty()V

    const/4 v11, 0x6

    iget-object v7, v0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    iget-boolean v9, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {v7, v9}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v7

    sget-object v9, Lcom/github/rjeschke/txtmark/LineType;->FENCED_CODE:Lcom/github/rjeschke/txtmark/LineType;

    if-ne v7, v9, :cond_17

    const/4 v11, 0x2

    iget-object v7, v0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {v7}, Lcom/github/rjeschke/txtmark/Line;->setEmpty()V

    const/4 v11, 0x7

    :cond_17
    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Block;->removeSurroundingEmptyLines()V

    goto/16 :goto_4

    const/4 v1, 0x7

    const/4 v11, 0x4

    :cond_18
    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_9

    const/4 v2, 0x3

    const/4 v11, 0x3

    :cond_19
    iget-object v7, p1, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_a

    const/4 v0, 0x5

    const/4 v11, 0x2

    :pswitch_6
    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    const/4 v11, 0x2

    :goto_b
    if-eqz v2, :cond_1a

    const/4 v11, 0x1

    iget-boolean v7, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {v2, v7}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v7

    sget-object v9, Lcom/github/rjeschke/txtmark/LineType;->PLUGIN:Lcom/github/rjeschke/txtmark/LineType;

    if-ne v7, v9, :cond_1d

    const/4 v11, 0x0

    :cond_1a
    if-eqz v2, :cond_1b

    const/4 v11, 0x6

    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    const/4 v11, 0x2

    :cond_1b
    if-eqz v2, :cond_1e

    iget-object v7, v2, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    :goto_c
    invoke-virtual {p1, v7}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v0

    const/4 v11, 0x2

    sget-object v7, Lcom/github/rjeschke/txtmark/BlockType;->PLUGIN:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v7, v0, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v11, 0x7

    iget-object v7, v0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iget-object v7, v7, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-static {v7}, Lcom/github/rjeschke/txtmark/Utils;->getMetaFromFence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/github/rjeschke/txtmark/Block;->meta:Ljava/lang/String;

    const/4 v11, 0x1

    iget-object v7, v0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {v7}, Lcom/github/rjeschke/txtmark/Line;->setEmpty()V

    const/4 v11, 0x4

    iget-object v7, v0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    iget-boolean v9, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {v7, v9}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v7

    sget-object v9, Lcom/github/rjeschke/txtmark/LineType;->PLUGIN:Lcom/github/rjeschke/txtmark/LineType;

    if-ne v7, v9, :cond_1c

    const/4 v11, 0x1

    iget-object v7, v0, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {v7}, Lcom/github/rjeschke/txtmark/Line;->setEmpty()V

    const/4 v11, 0x6

    :cond_1c
    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Block;->removeSurroundingEmptyLines()V

    goto/16 :goto_4

    const/4 v1, 0x6

    const/4 v11, 0x5

    :cond_1d
    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_b

    const/4 v5, 0x5

    const/4 v11, 0x4

    :cond_1e
    iget-object v7, p1, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_c

    const/4 v9, 0x3

    const/4 v11, 0x4

    :pswitch_7
    iget-object v7, v2, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    if-eqz v7, :cond_1f

    const/4 v11, 0x3

    iget-object v7, v2, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {p1, v7}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    const/4 v11, 0x2

    :cond_1f
    sget-object v7, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v5, v7, :cond_20

    const/4 v11, 0x7

    iget-object v7, v2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {v7}, Lcom/github/rjeschke/txtmark/Line;->setEmpty()V

    const/4 v11, 0x1

    :cond_20
    invoke-virtual {p1, v2}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v0

    const/4 v11, 0x7

    sget-object v7, Lcom/github/rjeschke/txtmark/BlockType;->HEADLINE:Lcom/github/rjeschke/txtmark/BlockType;

    iput-object v7, v0, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v11, 0x4

    sget-object v7, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v5, v7, :cond_21

    const/4 v11, 0x4

    sget-object v7, Lcom/github/rjeschke/txtmark/LineType;->HEADLINE1:Lcom/github/rjeschke/txtmark/LineType;

    if-ne v5, v7, :cond_23

    move v7, v8

    :goto_d
    iput v7, v0, Lcom/github/rjeschke/txtmark/Block;->hlDepth:I

    const/4 v11, 0x7

    :cond_21
    iget-boolean v7, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    if-eqz v7, :cond_22

    const/4 v11, 0x4

    iget-object v7, v0, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    invoke-virtual {v7}, Lcom/github/rjeschke/txtmark/Line;->stripID()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/github/rjeschke/txtmark/Block;->id:Ljava/lang/String;

    const/4 v11, 0x3

    :cond_22
    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Block;->transfromHeadline()V

    const/4 v11, 0x2

    invoke-virtual {p1}, Lcom/github/rjeschke/txtmark/Block;->removeLeadingEmptyLines()Z

    const/4 v11, 0x1

    iget-object v2, p1, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    const/4 v11, 0x4

    goto/16 :goto_4

    const/4 v7, 0x6

    const/4 v11, 0x2

    :cond_23
    const/4 v7, 0x2

    goto :goto_d

    const/4 v11, 0x6

    const/4 v11, 0x2

    :cond_24
    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    const/4 v11, 0x1

    :pswitch_8
    if-eqz v2, :cond_25

    const/4 v11, 0x1

    iget-boolean v7, p0, Lcom/github/rjeschke/txtmark/Processor;->useExtensions:Z

    invoke-virtual {v2, v7}, Lcom/github/rjeschke/txtmark/Line;->getLineType(Z)Lcom/github/rjeschke/txtmark/LineType;

    move-result-object v4

    const/4 v11, 0x2

    iget-boolean v7, v2, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v7, :cond_24

    iget-boolean v7, v2, Lcom/github/rjeschke/txtmark/Line;->prevEmpty:Z

    if-eqz v7, :cond_24

    iget v7, v2, Lcom/github/rjeschke/txtmark/Line;->leading:I

    if-nez v7, :cond_24

    sget-object v7, Lcom/github/rjeschke/txtmark/LineType;->OLIST:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v4, v7, :cond_24

    sget-object v7, Lcom/github/rjeschke/txtmark/LineType;->ULIST:Lcom/github/rjeschke/txtmark/LineType;

    if-eq v4, v7, :cond_24

    const/4 v11, 0x3

    :cond_25
    if-eqz v2, :cond_26

    iget-object v7, v2, Lcom/github/rjeschke/txtmark/Line;->previous:Lcom/github/rjeschke/txtmark/Line;

    :goto_e
    invoke-virtual {p1, v7}, Lcom/github/rjeschke/txtmark/Block;->split(Lcom/github/rjeschke/txtmark/Line;)Lcom/github/rjeschke/txtmark/Block;

    move-result-object v3

    const/4 v11, 0x0

    sget-object v7, Lcom/github/rjeschke/txtmark/LineType;->OLIST:Lcom/github/rjeschke/txtmark/LineType;

    if-ne v5, v7, :cond_27

    sget-object v7, Lcom/github/rjeschke/txtmark/BlockType;->ORDERED_LIST:Lcom/github/rjeschke/txtmark/BlockType;

    :goto_f
    iput-object v7, v3, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v11, 0x2

    iget-object v7, v3, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iput-boolean v10, v7, Lcom/github/rjeschke/txtmark/Line;->prevEmpty:Z

    const/4 v11, 0x6

    iget-object v7, v3, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    iput-boolean v10, v7, Lcom/github/rjeschke/txtmark/Line;->nextEmpty:Z

    const/4 v11, 0x3

    invoke-virtual {v3}, Lcom/github/rjeschke/txtmark/Block;->removeSurroundingEmptyLines()V

    const/4 v11, 0x7

    iget-object v7, v3, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iget-object v9, v3, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    iput-boolean v10, v9, Lcom/github/rjeschke/txtmark/Line;->nextEmpty:Z

    iput-boolean v10, v7, Lcom/github/rjeschke/txtmark/Line;->prevEmpty:Z

    const/4 v11, 0x6

    invoke-direct {p0, v3}, Lcom/github/rjeschke/txtmark/Processor;->initListBlock(Lcom/github/rjeschke/txtmark/Block;)V

    const/4 v11, 0x7

    iget-object v0, v3, Lcom/github/rjeschke/txtmark/Block;->blocks:Lcom/github/rjeschke/txtmark/Block;

    const/4 v11, 0x2

    :goto_10
    if-eqz v0, :cond_28

    const/4 v11, 0x3

    invoke-direct {p0, v0, v8}, Lcom/github/rjeschke/txtmark/Processor;->recurse(Lcom/github/rjeschke/txtmark/Block;Z)V

    const/4 v11, 0x1

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Block;->next:Lcom/github/rjeschke/txtmark/Block;

    goto :goto_10

    const/4 v1, 0x6

    const/4 v11, 0x5

    :cond_26
    iget-object v7, p1, Lcom/github/rjeschke/txtmark/Block;->lineTail:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_e

    const/4 v6, 0x4

    const/4 v11, 0x6

    :cond_27
    sget-object v7, Lcom/github/rjeschke/txtmark/BlockType;->UNORDERED_LIST:Lcom/github/rjeschke/txtmark/BlockType;

    goto :goto_f

    const/4 v9, 0x1

    const/4 v11, 0x5

    :cond_28
    invoke-virtual {v3}, Lcom/github/rjeschke/txtmark/Block;->expandListParagraphs()V

    goto/16 :goto_4

    const/4 v6, 0x2

    const/4 v11, 0x4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
