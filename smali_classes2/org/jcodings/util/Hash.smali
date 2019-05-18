.class public abstract Lorg/jcodings/util/Hash;
.super Ljava/lang/Object;
.source "Hash.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jcodings/util/Hash$HashEntryIterator;,
        Lorg/jcodings/util/Hash$HashIterator;,
        Lorg/jcodings/util/Hash$HashEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final HASH_SIGN_BIT_MASK:I = 0x7fffffff

.field private static final INITIAL_CAPACITY:I

.field private static final MAXIMUM_CAPACITY:I = 0x40000000

.field private static final MIN_CAPA:I = 0x8

.field private static final PRIMES:[I


# instance fields
.field protected head:Lorg/jcodings/util/Hash$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jcodings/util/Hash$HashEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field protected size:I

.field protected table:[Lorg/jcodings/util/Hash$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/jcodings/util/Hash$HashEntry",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jcodings/util/Hash;->PRIMES:[I

    .line 37
    sget-object v0, Lorg/jcodings/util/Hash;->PRIMES:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    sput v0, Lorg/jcodings/util/Hash;->INITIAL_CAPACITY:I

    return-void

    .line 30
    nop

    :array_0
    .array-data 4
        0xb
        0x13
        0x25
        0x43
        0x83
        0x11b
        0x209
        0x409
        0x805
        0x1003
        0x201b
        0x402b
        0x8003
        0x1002d
        0x2001d
        0x40003
        0x80015
        0x100007
        0x200011
        0x40000f
        0x800009
        0x100002b
        0x2000023
        0x400000f
        0x800001d
        0x10000003
        0x2000000b
        0x40000055    # 2.0000203f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lorg/jcodings/util/Hash;, "Lorg/jcodings/util/Hash<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget v0, Lorg/jcodings/util/Hash;->INITIAL_CAPACITY:I

    new-array v0, v0, [Lorg/jcodings/util/Hash$HashEntry;

    iput-object v0, p0, Lorg/jcodings/util/Hash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    .line 42
    invoke-virtual {p0}, Lorg/jcodings/util/Hash;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 48
    .local p0, "this":Lorg/jcodings/util/Hash;, "Lorg/jcodings/util/Hash<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    .local v0, "i":I
    const/16 v1, 0x8

    .local v1, "n":I
    :goto_0
    sget-object v2, Lorg/jcodings/util/Hash;->PRIMES:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 50
    if-le v1, p1, :cond_0

    .line 51
    sget-object v2, Lorg/jcodings/util/Hash;->PRIMES:[I

    aget v2, v2, v0

    new-array v2, v2, [Lorg/jcodings/util/Hash$HashEntry;

    iput-object v2, p0, Lorg/jcodings/util/Hash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    .line 52
    invoke-virtual {p0}, Lorg/jcodings/util/Hash;->init()V

    .line 53
    return-void

    .line 49
    :cond_0
    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_1
    new-instance v2, Lorg/jcodings/exception/InternalException;

    const-string v3, "run out of polynomials"

    invoke-direct {v2, v3}, Lorg/jcodings/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static bucketIndex(II)I
    .locals 1
    .param p0, "h"    # I
    .param p1, "length"    # I

    .prologue
    .line 128
    rem-int v0, p0, p1

    return v0
.end method

.method protected static hashValue(I)I
    .locals 1
    .param p0, "h"    # I

    .prologue
    .line 133
    const v0, 0x7fffffff

    and-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method protected final checkResize()V
    .locals 5

    .prologue
    .line 98
    .local p0, "this":Lorg/jcodings/util/Hash;, "Lorg/jcodings/util/Hash<TV;>;"
    iget v3, p0, Lorg/jcodings/util/Hash;->size:I

    iget-object v4, p0, Lorg/jcodings/util/Hash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 99
    iget-object v3, p0, Lorg/jcodings/util/Hash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    array-length v3, v3

    add-int/lit8 v0, v3, 0x1

    .line 100
    .local v0, "forSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    const/16 v2, 0x8

    .local v2, "newCapacity":I
    :goto_0
    sget-object v3, Lorg/jcodings/util/Hash;->PRIMES:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 101
    if-le v2, v0, :cond_1

    .line 102
    sget-object v3, Lorg/jcodings/util/Hash;->PRIMES:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Lorg/jcodings/util/Hash;->resize(I)V

    .line 108
    .end local v0    # "forSize":I
    .end local v1    # "i":I
    .end local v2    # "newCapacity":I
    :cond_0
    return-void

    .line 100
    .restart local v0    # "forSize":I
    .restart local v1    # "i":I
    .restart local v2    # "newCapacity":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public entryIterator()Lorg/jcodings/util/Hash$HashEntryIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jcodings/util/Hash",
            "<TV;>.HashEntryIterator;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lorg/jcodings/util/Hash;, "Lorg/jcodings/util/Hash<TV;>;"
    new-instance v0, Lorg/jcodings/util/Hash$HashEntryIterator;

    invoke-direct {v0, p0}, Lorg/jcodings/util/Hash$HashEntryIterator;-><init>(Lorg/jcodings/util/Hash;)V

    return-object v0
.end method

.method protected abstract init()V
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lorg/jcodings/util/Hash;, "Lorg/jcodings/util/Hash<TV;>;"
    new-instance v0, Lorg/jcodings/util/Hash$HashIterator;

    invoke-direct {v0, p0}, Lorg/jcodings/util/Hash$HashIterator;-><init>(Lorg/jcodings/util/Hash;)V

    return-object v0
.end method

.method protected final resize(I)V
    .locals 7
    .param p1, "newCapacity"    # I

    .prologue
    .line 111
    .local p0, "this":Lorg/jcodings/util/Hash;, "Lorg/jcodings/util/Hash<TV;>;"
    iget-object v5, p0, Lorg/jcodings/util/Hash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    .line 112
    .local v5, "oldTable":[Lorg/jcodings/util/Hash$HashEntry;, "[Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    new-array v3, p1, [Lorg/jcodings/util/Hash$HashEntry;

    .line 113
    .local v3, "newTable":[Lorg/jcodings/util/Hash$HashEntry;, "[Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 114
    aget-object v0, v5, v2

    .line 115
    .local v0, "entry":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    const/4 v6, 0x0

    aput-object v6, v5, v2

    .line 116
    :goto_1
    if-eqz v0, :cond_0

    .line 117
    iget-object v4, v0, Lorg/jcodings/util/Hash$HashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .line 118
    .local v4, "next":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    iget v6, v0, Lorg/jcodings/util/Hash$HashEntry;->hash:I

    invoke-static {v6, p1}, Lorg/jcodings/util/Hash;->bucketIndex(II)I

    move-result v1

    .line 119
    .local v1, "i":I
    aget-object v6, v3, v1

    iput-object v6, v0, Lorg/jcodings/util/Hash$HashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .line 120
    aput-object v0, v3, v1

    .line 121
    move-object v0, v4

    .line 122
    goto :goto_1

    .line 113
    .end local v1    # "i":I
    .end local v4    # "next":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "entry":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    :cond_1
    iput-object v3, p0, Lorg/jcodings/util/Hash;->table:[Lorg/jcodings/util/Hash$HashEntry;

    .line 125
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lorg/jcodings/util/Hash;, "Lorg/jcodings/util/Hash<TV;>;"
    iget v0, p0, Lorg/jcodings/util/Hash;->size:I

    return v0
.end method
