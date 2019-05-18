.class public final Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;
.super Lorg/jcodings/util/Hash$HashEntry;
.source "CaseInsensitiveBytesHash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/util/CaseInsensitiveBytesHash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaseInsensitiveBytesHashEntry"
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


# instance fields
.field public final bytes:[B

.field public final end:I

.field public final p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;, "Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry<TV;>;"
    invoke-direct {p0}, Lorg/jcodings/util/Hash$HashEntry;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->bytes:[B

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->end:I

    iput v0, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->p:I

    .line 54
    return-void
.end method

.method public constructor <init>(ILorg/jcodings/util/Hash$HashEntry;Ljava/lang/Object;[BIILorg/jcodings/util/Hash$HashEntry;)V
    .locals 0
    .param p1, "hash"    # I
    .param p4, "bytes"    # [B
    .param p5, "p"    # I
    .param p6, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/jcodings/util/Hash$HashEntry",
            "<TV;>;TV;[BII",
            "Lorg/jcodings/util/Hash$HashEntry",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;, "Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry<TV;>;"
    .local p2, "next":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p7, "head":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    invoke-direct {p0, p1, p2, p3, p7}, Lorg/jcodings/util/Hash$HashEntry;-><init>(ILorg/jcodings/util/Hash$HashEntry;Ljava/lang/Object;Lorg/jcodings/util/Hash$HashEntry;)V

    .line 45
    iput-object p4, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->bytes:[B

    .line 46
    iput p5, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->p:I

    .line 47
    iput p6, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->end:I

    .line 48
    return-void
.end method


# virtual methods
.method public equals([BII)Z
    .locals 8
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .local p0, "this":Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;, "Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry<TV;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    iget v5, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->end:I

    iget v6, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->p:I

    sub-int/2addr v5, v6

    sub-int v6, p3, p2

    if-eq v5, v6, :cond_0

    .line 61
    :goto_0
    return v3

    .line 58
    :cond_0
    iget-object v5, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->bytes:[B

    if-ne v5, p1, :cond_1

    move v3, v4

    goto :goto_0

    .line 59
    :cond_1
    iget v1, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->p:I

    .line 60
    .local v1, "q":I
    :goto_1
    iget v5, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->end:I

    if-ge v1, v5, :cond_2

    sget-object v5, Lorg/jcodings/ascii/AsciiTables;->ToLowerCaseTable:[B

    iget-object v6, p0, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->bytes:[B

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "q":I
    .local v2, "q":I
    aget-byte v6, v6, v1

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    sget-object v6, Lorg/jcodings/ascii/AsciiTables;->ToLowerCaseTable:[B

    add-int/lit8 v0, p2, 0x1

    .end local p2    # "p":I
    .local v0, "p":I
    aget-byte v7, p1, p2

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    if-eq v5, v6, :cond_3

    move p2, v0

    .end local v0    # "p":I
    .restart local p2    # "p":I
    goto :goto_0

    .end local v2    # "q":I
    .restart local v1    # "q":I
    :cond_2
    move v3, v4

    .line 61
    goto :goto_0

    .end local v1    # "q":I
    .end local p2    # "p":I
    .restart local v0    # "p":I
    .restart local v2    # "q":I
    :cond_3
    move v1, v2

    .end local v2    # "q":I
    .restart local v1    # "q":I
    move p2, v0

    .end local v0    # "p":I
    .restart local p2    # "p":I
    goto :goto_1
.end method
