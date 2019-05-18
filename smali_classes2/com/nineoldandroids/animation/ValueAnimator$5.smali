.class final Lcom/nineoldandroids/animation/ValueAnimator$5;
.super Ljava/lang/ThreadLocal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/nineoldandroids/animation/ValueAnimator;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x4

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ValueAnimator$5;->initialValue()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    const/4 v0, 0x3
.end method

.method protected initialValue()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/ValueAnimator;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v1, 0x7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    const/4 v0, 0x4
.end method
