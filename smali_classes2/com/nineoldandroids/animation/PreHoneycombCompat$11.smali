.class final Lcom/nineoldandroids/animation/PreHoneycombCompat$11;
.super Lcom/nineoldandroids/util/IntProperty;


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
        "Lcom/nineoldandroids/util/IntProperty",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x5

    invoke-direct {p0, p1}, Lcom/nineoldandroids/util/IntProperty;-><init>(Ljava/lang/String;)V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Integer;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->getScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    const/4 v1, 0x4
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/nineoldandroids/animation/PreHoneycombCompat$11;->get(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    const/4 v0, 0x0
.end method

.method public setValue(Landroid/view/View;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x7

    invoke-static {p1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setScrollX(I)V

    const/4 v1, 0x7

    nop

    return-void

    const/4 v1, 0x1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x6

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/animation/PreHoneycombCompat$11;->setValue(Landroid/view/View;I)V

    nop

    return-void

    const/4 v0, 0x3
.end method
