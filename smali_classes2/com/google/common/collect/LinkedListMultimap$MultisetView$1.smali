.class Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;
.super Lcom/google/common/collect/TransformedIterator;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap$MultisetView;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedIterator",
        "<TK;",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/LinkedListMultimap$MultisetView;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 705
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;, "Lcom/google/common/collect/LinkedListMultimap$MultisetView.1;"
    .local p2, "x0":Ljava/util/Iterator;, "Ljava/util/Iterator<+TK;>;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;->this$1:Lcom/google/common/collect/LinkedListMultimap$MultisetView;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method transform(Ljava/lang/Object;)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 709
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;, "Lcom/google/common/collect/LinkedListMultimap$MultisetView.1;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;Ljava/lang/Object;)V

    return-object v0
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 705
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;, "Lcom/google/common/collect/LinkedListMultimap$MultisetView.1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;->transform(Ljava/lang/Object;)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method
