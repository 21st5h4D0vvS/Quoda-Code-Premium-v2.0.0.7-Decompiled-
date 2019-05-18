.class public Lorg/jcodings/util/Hash$HashEntryIterator;
.super Ljava/lang/Object;
.source "Hash.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/util/Hash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HashEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/jcodings/util/Hash$HashEntry",
        "<TV;>;>;",
        "Ljava/lang/Iterable",
        "<",
        "Lorg/jcodings/util/Hash$HashEntry",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field next:Lorg/jcodings/util/Hash$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jcodings/util/Hash$HashEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jcodings/util/Hash;


# direct methods
.method public constructor <init>(Lorg/jcodings/util/Hash;)V
    .locals 1
    .param p1, "this$0"    # Lorg/jcodings/util/Hash;

    .prologue
    .line 169
    .local p0, "this":Lorg/jcodings/util/Hash$HashEntryIterator;, "Lorg/jcodings/util/Hash<TV;>.HashEntryIterator;"
    iput-object p1, p0, Lorg/jcodings/util/Hash$HashEntryIterator;->this$0:Lorg/jcodings/util/Hash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iget-object v0, p1, Lorg/jcodings/util/Hash;->head:Lorg/jcodings/util/Hash$HashEntry;

    iget-object v0, v0, Lorg/jcodings/util/Hash$HashEntry;->after:Lorg/jcodings/util/Hash$HashEntry;

    iput-object v0, p0, Lorg/jcodings/util/Hash$HashEntryIterator;->next:Lorg/jcodings/util/Hash$HashEntry;

    .line 171
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 178
    .local p0, "this":Lorg/jcodings/util/Hash$HashEntryIterator;, "Lorg/jcodings/util/Hash<TV;>.HashEntryIterator;"
    iget-object v0, p0, Lorg/jcodings/util/Hash$HashEntryIterator;->next:Lorg/jcodings/util/Hash$HashEntry;

    iget-object v1, p0, Lorg/jcodings/util/Hash$HashEntryIterator;->this$0:Lorg/jcodings/util/Hash;

    iget-object v1, v1, Lorg/jcodings/util/Hash;->head:Lorg/jcodings/util/Hash$HashEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jcodings/util/Hash$HashEntry",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lorg/jcodings/util/Hash$HashEntryIterator;, "Lorg/jcodings/util/Hash<TV;>.HashEntryIterator;"
    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 166
    .local p0, "this":Lorg/jcodings/util/Hash$HashEntryIterator;, "Lorg/jcodings/util/Hash<TV;>.HashEntryIterator;"
    invoke-virtual {p0}, Lorg/jcodings/util/Hash$HashEntryIterator;->next()Lorg/jcodings/util/Hash$HashEntry;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jcodings/util/Hash$HashEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jcodings/util/Hash$HashEntry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lorg/jcodings/util/Hash$HashEntryIterator;, "Lorg/jcodings/util/Hash<TV;>.HashEntryIterator;"
    iget-object v0, p0, Lorg/jcodings/util/Hash$HashEntryIterator;->next:Lorg/jcodings/util/Hash$HashEntry;

    .line 183
    .local v0, "e":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    iget-object v1, v0, Lorg/jcodings/util/Hash$HashEntry;->after:Lorg/jcodings/util/Hash$HashEntry;

    iput-object v1, p0, Lorg/jcodings/util/Hash$HashEntryIterator;->next:Lorg/jcodings/util/Hash$HashEntry;

    .line 184
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 188
    .local p0, "this":Lorg/jcodings/util/Hash$HashEntryIterator;, "Lorg/jcodings/util/Hash<TV;>.HashEntryIterator;"
    new-instance v0, Lorg/jcodings/exception/InternalException;

    const-string v1, "not supported operation exception"

    invoke-direct {v0, v1}, Lorg/jcodings/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
