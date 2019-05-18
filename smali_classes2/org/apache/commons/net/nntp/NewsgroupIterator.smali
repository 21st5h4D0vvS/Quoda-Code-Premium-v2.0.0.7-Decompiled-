.class Lorg/apache/commons/net/nntp/NewsgroupIterator;
.super Ljava/lang/Object;
.source "NewsgroupIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/apache/commons/net/nntp/NewsgroupInfo;",
        ">;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/apache/commons/net/nntp/NewsgroupInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final stringIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "iterableString":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/net/nntp/NewsgroupIterator;->stringIterator:Ljava/util/Iterator;

    .line 33
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewsgroupIterator;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/commons/net/nntp/NewsgroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lorg/apache/commons/net/nntp/NewsgroupIterator;->next()Lorg/apache/commons/net/nntp/NewsgroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/commons/net/nntp/NewsgroupInfo;
    .locals 2

    .prologue
    .line 40
    iget-object v1, p0, Lorg/apache/commons/net/nntp/NewsgroupIterator;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    .local v0, "line":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/commons/net/nntp/NNTPClient;->__parseNewsgroupListEntry(Ljava/lang/String;)Lorg/apache/commons/net/nntp/NewsgroupInfo;

    move-result-object v1

    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/commons/net/nntp/NewsgroupIterator;->stringIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 46
    return-void
.end method
