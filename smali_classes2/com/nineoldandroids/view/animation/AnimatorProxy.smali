.class public final Lcom/nineoldandroids/view/animation/AnimatorProxy;
.super Landroid/view/animation/Animation;


# static fields
.field public static final NEEDS_PROXY:Z

.field private static final PROXIES:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/nineoldandroids/view/animation/AnimatorProxy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAfter:Landroid/graphics/RectF;

.field private mAlpha:F

.field private final mBefore:Landroid/graphics/RectF;

.field private final mCamera:Landroid/graphics/Camera;

.field private mHasPivot:Z

.field private mPivotX:F

.field private mPivotY:F

.field private mRotationX:F

.field private mRotationY:F

.field private mRotationZ:F

.field private mScaleX:F

.field private mScaleY:F

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private mTranslationX:F

.field private mTranslationY:F

.field private final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x1

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    const/4 v2, 0x7

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;

    nop

    return-void

    const/4 v2, 0x5

    const/4 v2, 0x2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x5
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x7

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v2, 0x5

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mCamera:Landroid/graphics/Camera;

    const/4 v2, 0x2

    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    const/4 v2, 0x3

    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    const/4 v2, 0x4

    iput v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    const/4 v2, 0x5

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mBefore:Landroid/graphics/RectF;

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAfter:Landroid/graphics/RectF;

    const/4 v2, 0x6

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setDuration(J)V

    const/4 v2, 0x4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setFillAfter(Z)V

    const/4 v2, 0x6

    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    const/4 v2, 0x4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x3

    nop

    return-void

    const/4 v2, 0x5
.end method

.method private computeRect(Landroid/graphics/RectF;Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v3, v4

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v1, v4

    const/4 v6, 0x6

    invoke-virtual {p1, v5, v5, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v6, 0x3

    iget-object v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;

    const/4 v6, 0x7

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    const/4 v6, 0x1

    invoke-direct {p0, v2, p2}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V

    const/4 v6, 0x5

    iget-object v4, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    const/4 v6, 0x4

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    const/4 v6, 0x3

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    const/4 v6, 0x5

    iget v0, p1, Landroid/graphics/RectF;->right:F

    const/4 v6, 0x3

    iget v4, p1, Landroid/graphics/RectF;->left:F

    iput v4, p1, Landroid/graphics/RectF;->right:F

    const/4 v6, 0x5

    iput v0, p1, Landroid/graphics/RectF;->left:F

    const/4 v6, 0x7

    :cond_0
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    const/4 v6, 0x1

    iget v0, p1, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x5

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iput v4, p1, Landroid/graphics/RectF;->top:F

    const/4 v6, 0x5

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    const/4 v6, 0x6

    :cond_1
    nop

    return-void

    const/4 v1, 0x6
.end method

.method private invalidateAfterUpdate()V
    .locals 9

    const/4 v8, 0x4

    const/4 v8, 0x1

    iget-object v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v8, 0x5

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v8, 0x7

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v0, 0x6

    const/4 v8, 0x0

    :cond_1
    iget-object v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAfter:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->computeRect(Landroid/graphics/RectF;Landroid/view/View;)V

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mBefore:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    const/4 v8, 0x4

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    const/4 v1, 0x7
.end method

.method private prepareForUpdate()V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mBefore:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->computeRect(Landroid/graphics/RectF;Landroid/view/View;)V

    const/4 v2, 0x1

    :cond_0
    nop

    return-void

    const/4 v2, 0x6
.end method

.method private transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V
    .locals 16

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v13, v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v2, v14

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F

    :goto_0
    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F

    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F

    const/4 v14, 0x0

    cmpl-float v14, v6, v14

    if-nez v14, :cond_0

    const/4 v14, 0x0

    cmpl-float v14, v7, v14

    if-nez v14, :cond_0

    const/4 v14, 0x0

    cmpl-float v14, v8, v14

    if-eqz v14, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    invoke-virtual {v1, v6}, Landroid/graphics/Camera;->rotateX(F)V

    invoke-virtual {v1, v7}, Landroid/graphics/Camera;->rotateY(F)V

    neg-float v14, v8

    invoke-virtual {v1, v14}, Landroid/graphics/Camera;->rotateZ(F)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    neg-float v14, v4

    neg-float v15, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, v11, v14

    if-nez v14, :cond_2

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, v12, v14

    if-eqz v14, :cond_3

    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    div-float v14, v4, v13

    neg-float v14, v14

    mul-float v15, v11, v13

    sub-float/2addr v15, v13

    mul-float v9, v14, v15

    div-float v14, v5, v2

    neg-float v14, v14

    mul-float v15, v12, v2

    sub-float/2addr v15, v2

    mul-float v10, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    nop

    return-void

    const/4 v10, 0x0

    :cond_4
    const/high16 v14, 0x40000000    # 2.0f

    div-float v4, v13, v14

    goto/16 :goto_0

    const/4 v3, 0x1

    :cond_5
    const/high16 v14, 0x40000000    # 2.0f

    div-float v5, v2, v14

    goto/16 :goto_1

    const/4 v6, 0x4
.end method

.method public static wrap(Landroid/view/View;)Lcom/nineoldandroids/view/animation/AnimatorProxy;
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x0

    sget-object v1, Lcom/nineoldandroids/view/animation/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;

    const/4 v2, 0x5

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x6

    :cond_0
    new-instance v0, Lcom/nineoldandroids/view/animation/AnimatorProxy;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;-><init>(Landroid/view/View;)V

    const/4 v2, 0x3

    sget-object v1, Lcom/nineoldandroids/view/animation/AnimatorProxy;->PROXIES:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x7

    :cond_1
    return-object v0

    const/4 v1, 0x1
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    iget v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->transformMatrix(Landroid/graphics/Matrix;Landroid/view/View;)V

    const/4 v2, 0x6

    :cond_0
    nop

    return-void

    const/4 v0, 0x0
.end method

.method public getAlpha()F
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x3

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    return v0

    const/4 v0, 0x1
.end method

.method public getPivotX()F
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x0

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F

    return v0

    const/4 v1, 0x6
.end method

.method public getPivotY()F
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x2

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F

    return v0

    const/4 v0, 0x0
.end method

.method public getRotation()F
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x2

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F

    return v0

    const/4 v0, 0x4
.end method

.method public getRotationX()F
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x5

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F

    return v0

    const/4 v0, 0x0
.end method

.method public getRotationY()F
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F

    return v0

    const/4 v1, 0x5
.end method

.method public getScaleX()F
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x5

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    return v0

    const/4 v1, 0x3
.end method

.method public getScaleY()F
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x6

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    return v0

    const/4 v1, 0x2
.end method

.method public getScrollX()I
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x6

    if-nez v0, :cond_0

    const/4 v2, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    return v1

    const/4 v2, 0x6

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    goto :goto_0

    const/4 v2, 0x3
.end method

.method public getScrollY()I
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x3

    if-nez v0, :cond_0

    const/4 v2, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x5

    :goto_0
    return v1

    const/4 v1, 0x3

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    goto :goto_0

    const/4 v0, 0x3
.end method

.method public getTranslationX()F
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x1

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    return v0

    const/4 v1, 0x1
.end method

.method public getTranslationY()F
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x6

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    return v0

    const/4 v1, 0x6
.end method

.method public getX()F
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v3, 0x4

    if-nez v0, :cond_0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x4

    :goto_0
    return v1

    const/4 v3, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    add-float/2addr v1, v2

    goto :goto_0

    const/4 v0, 0x5
.end method

.method public getY()F
    .locals 4

    const/4 v3, 0x6

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v3, 0x2

    if-nez v0, :cond_0

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x7

    :goto_0
    return v1

    const/4 v2, 0x3

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    add-float/2addr v1, v2

    goto :goto_0

    const/4 v1, 0x0
.end method

.method public setAlpha(F)V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x5

    iget v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mAlpha:F

    const/4 v2, 0x6

    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v2, 0x3

    :cond_0
    nop

    return-void

    const/4 v2, 0x5
.end method

.method public setPivotX(F)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    iget-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    :cond_0
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    const/4 v1, 0x1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z

    const/4 v1, 0x2

    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotX:F

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    const/4 v1, 0x2

    :cond_1
    nop

    return-void

    const/4 v1, 0x1
.end method

.method public setPivotY(F)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    :cond_0
    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    const/4 v1, 0x7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mHasPivot:Z

    const/4 v1, 0x0

    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mPivotY:F

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    const/4 v1, 0x1

    :cond_1
    nop

    return-void

    const/4 v1, 0x4
.end method

.method public setRotation(F)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    const/4 v1, 0x0

    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationZ:F

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    const/4 v1, 0x6

    :cond_0
    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setRotationX(F)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x6

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    const/4 v1, 0x1

    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationX:F

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    const/4 v1, 0x7

    :cond_0
    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setRotationY(F)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x1

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    const/4 v1, 0x2

    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mRotationY:F

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    const/4 v1, 0x3

    :cond_0
    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setScaleX(F)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x2

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    const/4 v1, 0x7

    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleX:F

    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    const/4 v1, 0x2

    :cond_0
    nop

    return-void

    const/4 v1, 0x7
.end method

.method public setScaleY(F)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x6

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    const/4 v1, 0x7

    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mScaleY:F

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    const/4 v1, 0x5

    :cond_0
    nop

    return-void

    const/4 v1, 0x5
.end method

.method public setScrollX(I)V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x6

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    const/4 v2, 0x6

    :cond_0
    nop

    return-void

    const/4 v2, 0x2
.end method

.method public setScrollY(I)V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x6

    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->scrollTo(II)V

    const/4 v2, 0x4

    :cond_0
    nop

    return-void

    const/4 v2, 0x2
.end method

.method public setTranslationX(F)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x7

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    const/4 v1, 0x4

    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationX:F

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    const/4 v1, 0x6

    :cond_0
    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setTranslationY(F)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x2

    iget v0, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->prepareForUpdate()V

    const/4 v1, 0x3

    iput p1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mTranslationY:F

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->invalidateAfterUpdate()V

    const/4 v1, 0x2

    :cond_0
    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setX(F)V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x5

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setTranslationX(F)V

    const/4 v2, 0x4

    :cond_0
    nop

    return-void

    const/4 v2, 0x5
.end method

.method public setY(F)V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/nineoldandroids/view/animation/AnimatorProxy;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v2, 0x5

    if-eqz v0, :cond_0

    const/4 v2, 0x7

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/nineoldandroids/view/animation/AnimatorProxy;->setTranslationY(F)V

    const/4 v2, 0x5

    :cond_0
    nop

    return-void

    const/4 v1, 0x5
.end method
