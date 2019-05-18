.class public final Lorg/jcodings/util/IntHash$IntHashEntry;
.super Lorg/jcodings/util/Hash$HashEntry;
.source "IntHash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/util/IntHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IntHashEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jcodings/util/Hash$HashEntry",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    .local p0, "this":Lorg/jcodings/util/IntHash$IntHashEntry;, "Lorg/jcodings/util/IntHash$IntHashEntry<TV;>;"
    invoke-direct {p0}, Lorg/jcodings/util/Hash$HashEntry;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(ILorg/jcodings/util/Hash$HashEntry;Ljava/lang/Object;Lorg/jcodings/util/Hash$HashEntry;)V
    .locals 0
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/jcodings/util/Hash$HashEntry",
            "<TV;>;TV;",
            "Lorg/jcodings/util/Hash$HashEntry",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lorg/jcodings/util/IntHash$IntHashEntry;, "Lorg/jcodings/util/IntHash$IntHashEntry<TV;>;"
    .local p2, "next":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "head":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/jcodings/util/Hash$HashEntry;-><init>(ILorg/jcodings/util/Hash$HashEntry;Ljava/lang/Object;Lorg/jcodings/util/Hash$HashEntry;)V

    .line 39
    return-void
.end method
