.class public final Lorg/jcodings/util/ObjHash$ObjHashEntry;
.super Lorg/jcodings/util/Hash$HashEntry;
.source "ObjHash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/util/ObjHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjHashEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jcodings/util/Hash$HashEntry",
        "<TV;>;"
    }
.end annotation


# instance fields
.field public final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    .local p0, "this":Lorg/jcodings/util/ObjHash$ObjHashEntry;, "Lorg/jcodings/util/ObjHash$ObjHashEntry<TK;TV;>;"
    invoke-direct {p0}, Lorg/jcodings/util/Hash$HashEntry;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jcodings/util/ObjHash$ObjHashEntry;->key:Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public constructor <init>(ILorg/jcodings/util/Hash$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Lorg/jcodings/util/Hash$HashEntry;)V
    .locals 0
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/jcodings/util/Hash$HashEntry",
            "<TV;>;TV;TK;",
            "Lorg/jcodings/util/Hash$HashEntry",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lorg/jcodings/util/ObjHash$ObjHashEntry;, "Lorg/jcodings/util/ObjHash$ObjHashEntry<TK;TV;>;"
    .local p2, "next":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "key":Ljava/lang/Object;, "TK;"
    .local p5, "head":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    invoke-direct {p0, p1, p2, p3, p5}, Lorg/jcodings/util/Hash$HashEntry;-><init>(ILorg/jcodings/util/Hash$HashEntry;Ljava/lang/Object;Lorg/jcodings/util/Hash$HashEntry;)V

    .line 33
    iput-object p4, p0, Lorg/jcodings/util/ObjHash$ObjHashEntry;->key:Ljava/lang/Object;

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 42
    .local p0, "this":Lorg/jcodings/util/ObjHash$ObjHashEntry;, "Lorg/jcodings/util/ObjHash$ObjHashEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/jcodings/util/ObjHash$ObjHashEntry;->key:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jcodings/util/ObjHash$ObjHashEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
