.class public Lorg/jcodings/util/Hash$HashEntry;
.super Ljava/lang/Object;
.source "Hash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/util/Hash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected after:Lorg/jcodings/util/Hash$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jcodings/util/Hash$HashEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field protected before:Lorg/jcodings/util/Hash$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jcodings/util/Hash$HashEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field final hash:I

.field protected next:Lorg/jcodings/util/Hash$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jcodings/util/Hash$HashEntry",
            "<TV;>;"
        }
    .end annotation
.end field

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lorg/jcodings/util/Hash$HashEntry;->hash:I

    .line 86
    iput-object p0, p0, Lorg/jcodings/util/Hash$HashEntry;->after:Lorg/jcodings/util/Hash$HashEntry;

    iput-object p0, p0, Lorg/jcodings/util/Hash$HashEntry;->before:Lorg/jcodings/util/Hash$HashEntry;

    .line 87
    return-void
.end method

.method constructor <init>(ILorg/jcodings/util/Hash$HashEntry;Ljava/lang/Object;Lorg/jcodings/util/Hash$HashEntry;)V
    .locals 1
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
    .line 68
    .local p0, "this":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    .local p2, "next":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "head":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lorg/jcodings/util/Hash$HashEntry;->hash:I

    .line 70
    iput-object p2, p0, Lorg/jcodings/util/Hash$HashEntry;->next:Lorg/jcodings/util/Hash$HashEntry;

    .line 71
    iput-object p3, p0, Lorg/jcodings/util/Hash$HashEntry;->value:Ljava/lang/Object;

    .line 73
    iput-object p4, p0, Lorg/jcodings/util/Hash$HashEntry;->after:Lorg/jcodings/util/Hash$HashEntry;

    .line 74
    iget-object v0, p4, Lorg/jcodings/util/Hash$HashEntry;->before:Lorg/jcodings/util/Hash$HashEntry;

    iput-object v0, p0, Lorg/jcodings/util/Hash$HashEntry;->before:Lorg/jcodings/util/Hash$HashEntry;

    .line 75
    iget-object v0, p0, Lorg/jcodings/util/Hash$HashEntry;->before:Lorg/jcodings/util/Hash$HashEntry;

    iput-object p0, v0, Lorg/jcodings/util/Hash$HashEntry;->after:Lorg/jcodings/util/Hash$HashEntry;

    .line 76
    iget-object v0, p0, Lorg/jcodings/util/Hash$HashEntry;->after:Lorg/jcodings/util/Hash$HashEntry;

    iput-object p0, v0, Lorg/jcodings/util/Hash$HashEntry;->before:Lorg/jcodings/util/Hash$HashEntry;

    .line 77
    return-void
.end method


# virtual methods
.method public getHash()I
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    iget v0, p0, Lorg/jcodings/util/Hash$HashEntry;->hash:I

    return v0
.end method

.method remove()V
    .locals 2

    .prologue
    .line 80
    .local p0, "this":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<TV;>;"
    iget-object v0, p0, Lorg/jcodings/util/Hash$HashEntry;->before:Lorg/jcodings/util/Hash$HashEntry;

    iget-object v1, p0, Lorg/jcodings/util/Hash$HashEntry;->after:Lorg/jcodings/util/Hash$HashEntry;

    iput-object v1, v0, Lorg/jcodings/util/Hash$HashEntry;->after:Lorg/jcodings/util/Hash$HashEntry;

    .line 81
    iget-object v0, p0, Lorg/jcodings/util/Hash$HashEntry;->after:Lorg/jcodings/util/Hash$HashEntry;

    iget-object v1, p0, Lorg/jcodings/util/Hash$HashEntry;->before:Lorg/jcodings/util/Hash$HashEntry;

    iput-object v1, v0, Lorg/jcodings/util/Hash$HashEntry;->before:Lorg/jcodings/util/Hash$HashEntry;

    .line 82
    return-void
.end method
