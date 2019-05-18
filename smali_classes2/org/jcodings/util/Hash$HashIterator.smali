.class public Lorg/jcodings/util/Hash$HashIterator;
.super Ljava/lang/Object;
.source "Hash.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/util/Hash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
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
    .line 143
    .local p0, "this":Lorg/jcodings/util/Hash$HashIterator;, "Lorg/jcodings/util/Hash<TV;>.HashIterator;"
    iput-object p1, p0, Lorg/jcodings/util/Hash$HashIterator;->this$0:Lorg/jcodings/util/Hash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iget-object v0, p1, Lorg/jcodings/util/Hash;->head:Lorg/jcodings/util/Hash$HashEntry;

    iget-object v0, v0, Lorg/jcodings/util/Hash$HashEntry;->after:Lorg/jcodings/util/Hash$HashEntry;

    iput-object v0, p0, Lorg/jcodings/util/Hash$HashIterator;->next:Lorg/jcodings/util/Hash$HashEntry;

    .line 145
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 148
    .local p0, "this":Lorg/jcodings/util/Hash$HashIterator;, "Lorg/jcodings/util/Hash<TV;>.HashIterator;"
    iget-object v0, p0, Lorg/jcodings/util/Hash$HashIterator;->next:Lorg/jcodings/util/Hash$HashEntry;

    iget-object v1, p0, Lorg/jcodings/util/Hash$HashIterator;->this$0:Lorg/jcodings/util/Hash;

    iget-object v1, v1, Lorg/jcodings/util/Hash;->head:Lorg/jcodings/util/Hash$HashEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lorg/jcodings/util/Hash$HashIterator;, "Lorg/jcodings/util/Hash<TV;>.HashIterator;"
    iget-object v0, p0, Lorg/jcodings/util/Hash$HashIterator;->next:Lorg/jcodings/util/Hash$HashEntry;

    .line 153
    .local v0, "e":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    iget-object v1, v0, Lorg/jcodings/util/Hash$HashEntry;->after:Lorg/jcodings/util/Hash$HashEntry;

    iput-object v1, p0, Lorg/jcodings/util/Hash$HashIterator;->next:Lorg/jcodings/util/Hash$HashEntry;

    .line 154
    iget-object v1, v0, Lorg/jcodings/util/Hash$HashEntry;->value:Ljava/lang/Object;

    return-object v1
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 158
    .local p0, "this":Lorg/jcodings/util/Hash$HashIterator;, "Lorg/jcodings/util/Hash<TV;>.HashIterator;"
    new-instance v0, Lorg/jcodings/exception/InternalException;

    const-string v1, "not supported operation exception"

    invoke-direct {v0, v1}, Lorg/jcodings/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
