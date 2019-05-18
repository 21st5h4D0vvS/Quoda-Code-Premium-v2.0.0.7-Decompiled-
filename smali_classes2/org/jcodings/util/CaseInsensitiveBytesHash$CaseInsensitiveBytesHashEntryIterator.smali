.class public Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntryIterator;
.super Lorg/jcodings/util/Hash$HashEntryIterator;
.source "CaseInsensitiveBytesHash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/util/CaseInsensitiveBytesHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaseInsensitiveBytesHashEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jcodings/util/Hash",
        "<TV;>.HashEntryIterator;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jcodings/util/CaseInsensitiveBytesHash;


# direct methods
.method public constructor <init>(Lorg/jcodings/util/CaseInsensitiveBytesHash;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jcodings/util/CaseInsensitiveBytesHash;

    .prologue
    .line 153
    .local p0, "this":Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntryIterator;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<TV;>.CaseInsensitiveBytesHashEntryIterator;"
    iput-object p1, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntryIterator;->this$0:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    invoke-direct {p0, p1}, Lorg/jcodings/util/Hash$HashEntryIterator;-><init>(Lorg/jcodings/util/Hash;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    .local p0, "this":Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntryIterator;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<TV;>.CaseInsensitiveBytesHashEntryIterator;"
    invoke-virtual {p0}, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntryIterator;->next()Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntryIterator;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<TV;>.CaseInsensitiveBytesHashEntryIterator;"
    invoke-super {p0}, Lorg/jcodings/util/Hash$HashEntryIterator;->next()Lorg/jcodings/util/Hash$HashEntry;

    move-result-object v0

    check-cast v0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;

    return-object v0
.end method

.method public bridge synthetic next()Lorg/jcodings/util/Hash$HashEntry;
    .locals 1

    .prologue
    .line 153
    .local p0, "this":Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntryIterator;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<TV;>.CaseInsensitiveBytesHashEntryIterator;"
    invoke-virtual {p0}, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntryIterator;->next()Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;

    move-result-object v0

    return-object v0
.end method
