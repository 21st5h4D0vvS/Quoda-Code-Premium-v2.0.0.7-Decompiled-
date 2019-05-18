.class final Lcom/nineoldandroids/view/ViewHelper$Honeycomb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/view/ViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Honeycomb"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method

.method static getAlpha(Landroid/view/View;)F
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0

    const/4 v1, 0x2
.end method

.method static getPivotX(Landroid/view/View;)F
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v0

    return v0

    const/4 v0, 0x7
.end method

.method static getPivotY(Landroid/view/View;)F
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v0

    return v0

    const/4 v0, 0x2
.end method

.method static getRotation(Landroid/view/View;)F
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x4

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    return v0

    const/4 v0, 0x6
.end method

.method static getRotationX(Landroid/view/View;)F
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x6

    invoke-virtual {p0}, Landroid/view/View;->getRotationX()F

    move-result v0

    return v0

    const/4 v0, 0x6
.end method

.method static getRotationY(Landroid/view/View;)F
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getRotationY()F

    move-result v0

    return v0

    const/4 v1, 0x7
.end method

.method static getScaleX(Landroid/view/View;)F
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0

    const/4 v0, 0x1
.end method

.method static getScaleY(Landroid/view/View;)F
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    return v0

    const/4 v1, 0x0
.end method

.method static getScrollX(Landroid/view/View;)F
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x7

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    return v0

    const/4 v1, 0x0
.end method

.method static getScrollY(Landroid/view/View;)F
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x4

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    return v0

    const/4 v1, 0x0
.end method

.method static getTranslationX(Landroid/view/View;)F
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0

    const/4 v0, 0x0
.end method

.method static getTranslationY(Landroid/view/View;)F
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0

    const/4 v1, 0x0
.end method

.method static getX(Landroid/view/View;)F
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    return v0

    const/4 v1, 0x7
.end method

.method static getY(Landroid/view/View;)F
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    return v0

    const/4 v1, 0x5
.end method

.method static setAlpha(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x2
.end method

.method static setPivotX(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x4
.end method

.method static setPivotY(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x6

    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x7
.end method

.method static setRotation(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x6

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x7
.end method

.method static setRotationX(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationX(F)V

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x4
.end method

.method static setRotationY(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x5

    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationY(F)V

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x1
.end method

.method static setScaleX(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x3
.end method

.method static setScaleY(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x3
.end method

.method static setScrollX(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollX(I)V

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x7
.end method

.method static setScrollY(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x3

    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollY(I)V

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x3
.end method

.method static setTranslationX(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x6

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x1
.end method

.method static setTranslationY(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x6

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x3
.end method

.method static setX(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x5
.end method

.method static setY(Landroid/view/View;F)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x2

    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x5
.end method
