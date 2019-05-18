.class final Lcom/nineoldandroids/animation/PreHoneycombCompat$1;
.super Lcom/nineoldandroids/util/FloatProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/PreHoneycombCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nineoldandroids/util/FloatProperty",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x2

    invoke-direct {p0, p1}, Lcom/nineoldandroids/util/FloatProperty;-><init>(Ljava/lang/String;)V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getAlpha()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    const/4 v1, 0x3
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x6

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/nineoldandroids/animation/PreHoneycombCompat$1;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    const/4 v0, 0x4
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x7

    invoke-static {p1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setAlpha(F)V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/animation/PreHoneycombCompat$1;->setValue(Landroid/view/View;F)V

    nop

    return-void

    const/4 v0, 0x2
.end method
