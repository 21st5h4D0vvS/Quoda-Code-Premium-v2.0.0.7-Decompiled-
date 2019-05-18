.class final Lorg/joni/AsmCompilerSupport$DummyClassLoader;
.super Ljava/lang/ClassLoader;
.source "AsmCompilerSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joni/AsmCompilerSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DummyClassLoader"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/joni/AsmCompilerSupport$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/joni/AsmCompilerSupport$1;

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/joni/AsmCompilerSupport$DummyClassLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public defineClass(Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    array-length v1, p2

    invoke-super {p0, p1, p2, v0, v1}, Ljava/lang/ClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
