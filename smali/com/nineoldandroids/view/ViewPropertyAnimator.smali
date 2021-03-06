.class public abstract Lcom/nineoldandroids/view/ViewPropertyAnimator;
.super Ljava/lang/Object;


# static fields
.field private static final ANIMATORS:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/nineoldandroids/view/ViewPropertyAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x4

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Lcom/nineoldandroids/view/ViewPropertyAnimator;->ANIMATORS:Ljava/util/WeakHashMap;

    nop

    return-void

    const/4 v1, 0x4
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public static animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x0

    sget-object v2, Lcom/nineoldandroids/view/ViewPropertyAnimator;->ANIMATORS:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/view/ViewPropertyAnimator;

    const/4 v3, 0x6

    if-nez v0, :cond_0

    const/4 v3, 0x2

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x4

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    const/4 v3, 0x0

    new-instance v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS;-><init>(Landroid/view/View;)V

    const/4 v3, 0x2

    :goto_0
    sget-object v2, Lcom/nineoldandroids/view/ViewPropertyAnimator;->ANIMATORS:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x6

    :cond_0
    return-object v0

    const/4 v0, 0x3

    const/4 v3, 0x4

    :cond_1
    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    const/4 v3, 0x3

    new-instance v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;-><init>(Landroid/view/View;)V

    goto :goto_0

    const/4 v3, 0x4

    const/4 v3, 0x1

    :cond_2
    new-instance v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;-><init>(Landroid/view/View;)V

    goto :goto_0

    const/4 v1, 0x4
.end method


# virtual methods
.method public abstract alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract alphaBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract cancel()V
.end method

.method public abstract getDuration()J
.end method

.method public abstract getStartDelay()J
.end method

.method public abstract rotation(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract rotationBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract rotationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract rotationXBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract rotationY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract rotationYBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract scaleX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract scaleXBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract scaleY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract scaleYBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract setInterpolator(Landroid/view/animation/Interpolator;)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract setStartDelay(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract start()V
.end method

.method public abstract translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract translationXBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract translationY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract translationYBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract x(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract xBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract y(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract yBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method
