.class public final Lorg/jcodings/ObjPtr;
.super Ljava/lang/Object;
.source "ObjPtr.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final NULL:Lorg/jcodings/ObjPtr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jcodings/ObjPtr",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public p:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lorg/jcodings/ObjPtr;

    invoke-direct {v0}, Lorg/jcodings/ObjPtr;-><init>()V

    sput-object v0, Lorg/jcodings/ObjPtr;->NULL:Lorg/jcodings/ObjPtr;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    .local p0, "this":Lorg/jcodings/ObjPtr;, "Lorg/jcodings/ObjPtr<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jcodings/ObjPtr;-><init>(Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lorg/jcodings/ObjPtr;, "Lorg/jcodings/ObjPtr<TT;>;"
    .local p1, "p":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    .line 29
    return-void
.end method
