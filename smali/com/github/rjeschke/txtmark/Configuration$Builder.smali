.class public Lcom/github/rjeschke/txtmark/Configuration$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/rjeschke/txtmark/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private codeBlockEmitter:Lcom/github/rjeschke/txtmark/BlockEmitter;

.field private convertNewline2Br:Z

.field private decorator:Lcom/github/rjeschke/txtmark/Decorator;

.field private encoding:Ljava/lang/String;

.field private forceExtendedProfile:Z

.field private plugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/markdown4j/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field private safeMode:Z

.field private specialLinkEmitter:Lcom/github/rjeschke/txtmark/SpanEmitter;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->safeMode:Z

    const/4 v2, 0x3

    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->forceExtendedProfile:Z

    const/4 v2, 0x7

    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->convertNewline2Br:Z

    const/4 v2, 0x2

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->encoding:Ljava/lang/String;

    const/4 v2, 0x2

    new-instance v0, Lcom/github/rjeschke/txtmark/DefaultDecorator;

    invoke-direct {v0}, Lcom/github/rjeschke/txtmark/DefaultDecorator;-><init>()V

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    const/4 v2, 0x4

    iput-object v1, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->codeBlockEmitter:Lcom/github/rjeschke/txtmark/BlockEmitter;

    const/4 v2, 0x5

    iput-object v1, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->specialLinkEmitter:Lcom/github/rjeschke/txtmark/SpanEmitter;

    const/4 v2, 0x2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->plugins:Ljava/util/List;

    const/4 v2, 0x5

    nop

    return-void

    const/4 v1, 0x3
.end method


# virtual methods
.method public build()Lcom/github/rjeschke/txtmark/Configuration;
    .locals 10

    const/4 v9, 0x1

    const/4 v9, 0x4

    new-instance v0, Lcom/github/rjeschke/txtmark/Configuration;

    iget-boolean v1, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->safeMode:Z

    iget-object v2, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->encoding:Ljava/lang/String;

    iget-object v3, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    iget-object v4, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->codeBlockEmitter:Lcom/github/rjeschke/txtmark/BlockEmitter;

    iget-boolean v5, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->forceExtendedProfile:Z

    iget-boolean v6, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->convertNewline2Br:Z

    iget-object v7, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->specialLinkEmitter:Lcom/github/rjeschke/txtmark/SpanEmitter;

    iget-object v8, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->plugins:Ljava/util/List;

    invoke-direct/range {v0 .. v8}, Lcom/github/rjeschke/txtmark/Configuration;-><init>(ZLjava/lang/String;Lcom/github/rjeschke/txtmark/Decorator;Lcom/github/rjeschke/txtmark/BlockEmitter;ZZLcom/github/rjeschke/txtmark/SpanEmitter;Ljava/util/List;)V

    return-object v0

    const/4 v9, 0x0
.end method

.method public convertNewline2Br()Lcom/github/rjeschke/txtmark/Configuration$Builder;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->convertNewline2Br:Z

    const/4 v1, 0x2

    return-object p0

    const/4 v1, 0x6
.end method

.method public enableSafeMode()Lcom/github/rjeschke/txtmark/Configuration$Builder;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->safeMode:Z

    const/4 v1, 0x1

    return-object p0

    const/4 v0, 0x3
.end method

.method public forceExtentedProfile()Lcom/github/rjeschke/txtmark/Configuration$Builder;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->forceExtendedProfile:Z

    const/4 v1, 0x4

    return-object p0

    const/4 v1, 0x2
.end method

.method public getDecorator()Lcom/github/rjeschke/txtmark/Decorator;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    return-object v0

    const/4 v0, 0x1
.end method

.method public varargs registerPlugins([Lorg/markdown4j/Plugin;)Lcom/github/rjeschke/txtmark/Configuration$Builder;
    .locals 6

    const/4 v5, 0x5

    const/4 v5, 0x5

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    const/4 v5, 0x7

    iget-object v4, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->plugins:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v1, 0x2

    const/4 v5, 0x3

    :cond_0
    return-object p0

    const/4 v5, 0x5
.end method

.method public setCodeBlockEmitter(Lcom/github/rjeschke/txtmark/BlockEmitter;)Lcom/github/rjeschke/txtmark/Configuration$Builder;
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->codeBlockEmitter:Lcom/github/rjeschke/txtmark/BlockEmitter;

    const/4 v0, 0x3

    return-object p0

    const/4 v0, 0x2
.end method

.method public setDecorator(Lcom/github/rjeschke/txtmark/Decorator;)Lcom/github/rjeschke/txtmark/Configuration$Builder;
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    const/4 v0, 0x5

    return-object p0

    const/4 v0, 0x6
.end method

.method public setEncoding(Ljava/lang/String;)Lcom/github/rjeschke/txtmark/Configuration$Builder;
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->encoding:Ljava/lang/String;

    const/4 v0, 0x3

    return-object p0

    const/4 v0, 0x2
.end method

.method public setSafeMode(Z)Lcom/github/rjeschke/txtmark/Configuration$Builder;
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x7

    iput-boolean p1, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->safeMode:Z

    const/4 v0, 0x1

    return-object p0

    const/4 v0, 0x4
.end method

.method public setSpecialLinkEmitter(Lcom/github/rjeschke/txtmark/SpanEmitter;)Lcom/github/rjeschke/txtmark/Configuration$Builder;
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/github/rjeschke/txtmark/Configuration$Builder;->specialLinkEmitter:Lcom/github/rjeschke/txtmark/SpanEmitter;

    const/4 v0, 0x4

    return-object p0

    const/4 v0, 0x5
.end method
