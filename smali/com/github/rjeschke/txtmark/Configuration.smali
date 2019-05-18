.class public Lcom/github/rjeschke/txtmark/Configuration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/rjeschke/txtmark/Configuration$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/github/rjeschke/txtmark/Configuration;

.field public static final DEFAULT_SAFE:Lcom/github/rjeschke/txtmark/Configuration;


# instance fields
.field final codeBlockEmitter:Lcom/github/rjeschke/txtmark/BlockEmitter;

.field final convertNewline2Br:Z

.field final decorator:Lcom/github/rjeschke/txtmark/Decorator;

.field final encoding:Ljava/lang/String;

.field final forceExtendedProfile:Z

.field final plugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/markdown4j/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field final safeMode:Z

.field final specialLinkEmitter:Lcom/github/rjeschke/txtmark/SpanEmitter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    sput-object v0, Lcom/github/rjeschke/txtmark/Configuration;->DEFAULT:Lcom/github/rjeschke/txtmark/Configuration;

    const/4 v1, 0x5

    invoke-static {}, Lcom/github/rjeschke/txtmark/Configuration;->builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->enableSafeMode()Lcom/github/rjeschke/txtmark/Configuration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;->build()Lcom/github/rjeschke/txtmark/Configuration;

    move-result-object v0

    sput-object v0, Lcom/github/rjeschke/txtmark/Configuration;->DEFAULT_SAFE:Lcom/github/rjeschke/txtmark/Configuration;

    nop

    return-void

    const/4 v1, 0x5
.end method

.method constructor <init>(ZLjava/lang/String;Lcom/github/rjeschke/txtmark/Decorator;Lcom/github/rjeschke/txtmark/BlockEmitter;ZZLcom/github/rjeschke/txtmark/SpanEmitter;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lcom/github/rjeschke/txtmark/Decorator;",
            "Lcom/github/rjeschke/txtmark/BlockEmitter;",
            "ZZ",
            "Lcom/github/rjeschke/txtmark/SpanEmitter;",
            "Ljava/util/List",
            "<",
            "Lorg/markdown4j/Plugin;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput-boolean p1, p0, Lcom/github/rjeschke/txtmark/Configuration;->safeMode:Z

    const/4 v0, 0x3

    iput-object p2, p0, Lcom/github/rjeschke/txtmark/Configuration;->encoding:Ljava/lang/String;

    const/4 v0, 0x2

    iput-object p3, p0, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    const/4 v0, 0x3

    iput-object p4, p0, Lcom/github/rjeschke/txtmark/Configuration;->codeBlockEmitter:Lcom/github/rjeschke/txtmark/BlockEmitter;

    const/4 v0, 0x7

    iput-boolean p6, p0, Lcom/github/rjeschke/txtmark/Configuration;->convertNewline2Br:Z

    const/4 v0, 0x7

    iput-boolean p5, p0, Lcom/github/rjeschke/txtmark/Configuration;->forceExtendedProfile:Z

    const/4 v0, 0x2

    iput-object p7, p0, Lcom/github/rjeschke/txtmark/Configuration;->specialLinkEmitter:Lcom/github/rjeschke/txtmark/SpanEmitter;

    const/4 v0, 0x0

    iput-object p8, p0, Lcom/github/rjeschke/txtmark/Configuration;->plugins:Ljava/util/List;

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public static builder()Lcom/github/rjeschke/txtmark/Configuration$Builder;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x7

    new-instance v0, Lcom/github/rjeschke/txtmark/Configuration$Builder;

    invoke-direct {v0}, Lcom/github/rjeschke/txtmark/Configuration$Builder;-><init>()V

    return-object v0

    const/4 v1, 0x3
.end method
