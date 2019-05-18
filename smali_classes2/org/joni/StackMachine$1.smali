.class final Lorg/joni/StackMachine$1;
.super Ljava/lang/ThreadLocal;
.source "StackMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joni/StackMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/lang/ref/WeakReference",
        "<[",
        "Lorg/joni/StackEntry;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/joni/StackMachine$1;->initialValue()Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<[",
            "Lorg/joni/StackEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lorg/joni/StackMachine;->access$000()[Lorg/joni/StackEntry;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
