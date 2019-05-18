.class public Lcom/henrythompson/quoda/ScrollerWidget;
.super Landroid/view/View;


# static fields
.field public static final STATE_DRAGGING:I = 0x2

.field public static final STATE_EXITING:I = 0x3

.field public static final STATE_HIDDEN:I = 0x0

.field public static final STATE_VISIBLE:I = 0x1


# instance fields
.field private HideScroller:Ljava/lang/Runnable;

.field private mBitmapDragging:Landroid/graphics/Bitmap;

.field private mBitmapNormal:Landroid/graphics/Bitmap;

.field private mCodeView:Lcom/henrythompson/quoda/CodeView;

.field private mCodeViewScrollMax:F

.field private mCodeViewScrollY:F

.field private mHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;

.field private mState:I

.field private mThumbDrawableDragging:Landroid/graphics/drawable/Drawable;

.field private mThumbDrawableNormal:Landroid/graphics/drawable/Drawable;

.field private mThumbHeight:I

.field private mThumbTop:F

.field private mViewHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, 0x4

    const/4 v0, 0x0

    iput v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbTop:F

    const/4 v2, 0x3

    const/4 v0, 0x0

    iput v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mState:I

    const/4 v2, 0x6

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    new-instance v0, Lcom/henrythompson/quoda/ScrollerWidget$1;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/ScrollerWidget$1;-><init>(Lcom/henrythompson/quoda/ScrollerWidget;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->HideScroller:Ljava/lang/Runnable;

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    :goto_0
    nop

    return-void

    const/4 v1, 0x1

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbDrawableNormal:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbDrawableDragging:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbHeight:I

    const/4 v2, 0x5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    const/4 v2, 0x6
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/ScrollerWidget;)I
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x7

    iget v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mState:I

    return v0

    const/4 v1, 0x2
.end method

.method static synthetic access$100(Lcom/henrythompson/quoda/ScrollerWidget;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->getMeasurements()V

    nop

    return-void

    const/4 v0, 0x5
.end method

.method static synthetic access$200(Lcom/henrythompson/quoda/ScrollerWidget;)Ljava/lang/Runnable;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->HideScroller:Ljava/lang/Runnable;

    return-object v0

    const/4 v0, 0x3
.end method

.method static synthetic access$300(Lcom/henrythompson/quoda/ScrollerWidget;)Landroid/os/Handler;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mHandler:Landroid/os/Handler;

    return-object v0

    const/4 v0, 0x6
.end method

.method private getMeasurements()V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x4

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v0, 0x1

    const/4 v1, 0x2

    :cond_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mViewHeight:I

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeViewScrollMax:F

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeViewScrollY:F

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->getHeight()I

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->getThumbTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbTop:F

    goto :goto_0

    const/4 v1, 0x4
.end method

.method private getThumbTop()I
    .locals 7

    const/4 v6, 0x1

    const/4 v6, 0x0

    iget v3, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeViewScrollY:F

    iget v4, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeViewScrollMax:F

    iget-object v5, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/CodeView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/CodeView;->getLineHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    div-float v1, v3, v4

    const/4 v6, 0x5

    iget v3, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mViewHeight:I

    iget v4, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbHeight:I

    sub-int/2addr v3, v4

    int-to-float v2, v3

    const/4 v6, 0x6

    mul-float v3, v2, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbHeight:I

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_0

    const/4 v6, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbHeight:I

    sub-int v0, v3, v4

    const/4 v6, 0x2

    :cond_0
    return v0

    const/4 v0, 0x3
.end method

.method private isPointInThumb(FF)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbTop:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbTop:F

    iget v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v1, 0x7

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x7
.end method

.method private isShowScrollerJustified()Z
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x1

    iget v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeViewScrollMax:F

    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/CodeView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v3, 0x6

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v3, 0x4
.end method

.method private scrollCodeView()V
    .locals 9

    const/4 v8, 0x0

    const/4 v8, 0x0

    iget v4, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mViewHeight:I

    iget v5, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbHeight:I

    sub-int/2addr v4, v5

    int-to-float v3, v4

    const/4 v8, 0x4

    iget v4, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbTop:F

    div-float v1, v4, v3

    const/4 v8, 0x3

    iget v4, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeViewScrollMax:F

    mul-float v2, v4, v1

    const/4 v8, 0x2

    iget-object v4, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/CodeView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/CodeView;->getLineHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float v0, v1, v4

    const/4 v8, 0x5

    iget-object v4, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    iget-object v5, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/CodeView;->getScrollX()I

    move-result v5

    float-to-int v6, v2

    float-to-int v7, v0

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/henrythompson/quoda/CodeView;->scrollTo(II)V

    const/4 v8, 0x4

    nop

    return-void

    const/4 v7, 0x4
.end method


# virtual methods
.method public getState()I
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x0

    iget v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mState:I

    return v0

    const/4 v0, 0x0
.end method

.method public linkCodeView(Lcom/henrythompson/quoda/CodeView;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x4

    :goto_0
    nop

    return-void

    const/4 v1, 0x4

    const/4 v1, 0x4

    :cond_0
    iput-object p1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    const/4 v1, 0x1

    new-instance v0, Lcom/henrythompson/quoda/ScrollerWidget$2;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/ScrollerWidget$2;-><init>(Lcom/henrythompson/quoda/ScrollerWidget;)V

    invoke-virtual {p1, v0}, Lcom/henrythompson/quoda/CodeView;->addOnScrollChangedListener(Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;)V

    goto :goto_0

    const/4 v0, 0x0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->getState()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v8, 0x3

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v0, 0x5

    const/4 v8, 0x2

    :cond_1
    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mBitmapNormal:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    const/4 v8, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbDrawableNormal:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbHeight:I

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mBitmapNormal:Landroid/graphics/Bitmap;

    const/4 v8, 0x2

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mBitmapNormal:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v8, 0x2

    :cond_2
    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mBitmapDragging:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    const/4 v8, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbDrawableDragging:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbHeight:I

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v8, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mBitmapDragging:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mBitmapDragging:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbDrawableDragging:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v8, 0x7

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v8, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->getState()I

    move-result v1

    if-eq v1, v7, :cond_4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    const/4 v8, 0x7

    :cond_4
    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->getState()I

    move-result v1

    if-ne v1, v7, :cond_5

    const/4 v8, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mBitmapNormal:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbTop:F

    iget-object v3, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    const/4 v1, 0x7

    const/4 v8, 0x1

    :cond_5
    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mBitmapDragging:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbTop:F

    iget-object v3, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    const/4 v5, 0x3

    const/4 v8, 0x3

    :cond_6
    invoke-virtual {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v8, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_7

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    add-int/lit8 v2, v2, -0x14

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mBitmapNormal:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbTop:F

    iget-object v3, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v6, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v8, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/henrythompson/quoda/ScrollerWidget;->HideScroller:Ljava/lang/Runnable;

    const-wide/16 v4, 0x11

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    const/4 v1, 0x5

    const/4 v8, 0x5

    :cond_7
    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v8, 0x2

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/ScrollerWidget;->setState(I)V

    goto/16 :goto_0

    const/4 v1, 0x2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    if-nez v4, :cond_1

    const/4 v8, 0x5

    :cond_0
    :goto_0
    return v2

    const/4 v2, 0x0

    const/4 v8, 0x2

    :cond_1
    iget v4, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mState:I

    if-eqz v4, :cond_0

    const/4 v8, 0x6

    invoke-direct {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->getMeasurements()V

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v8, 0x2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    const/4 v8, 0x2

    const/4 v8, 0x0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/henrythompson/quoda/ScrollerWidget;->isPointInThumb(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v8, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/CodeView;->abortFling()V

    const/4 v8, 0x5

    invoke-virtual {p0, v6}, Lcom/henrythompson/quoda/ScrollerWidget;->setState(I)V

    const/4 v8, 0x0

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/ScrollerWidget;->setPressed(Z)V

    move v2, v3

    const/4 v8, 0x2

    goto :goto_0

    const/4 v3, 0x2

    const/4 v8, 0x5

    :pswitch_1
    iget v4, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mState:I

    if-ne v4, v6, :cond_0

    const/4 v8, 0x2

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/ScrollerWidget;->setPressed(Z)V

    const/4 v8, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/CodeView;->abortFling()V

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v4, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v2, v4

    const/4 v8, 0x5

    if-gez v1, :cond_3

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x1

    :cond_2
    :goto_1
    int-to-float v2, v1

    iput v2, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbTop:F

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->scrollCodeView()V

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->invalidate()V

    move v2, v3

    const/4 v8, 0x4

    goto :goto_0

    const/4 v6, 0x4

    const/4 v8, 0x3

    :cond_3
    iget v2, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbHeight:I

    add-int/2addr v2, v1

    iget v4, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mViewHeight:I

    if-le v2, v4, :cond_2

    const/4 v8, 0x4

    iget v2, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mViewHeight:I

    iget v4, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mThumbHeight:I

    sub-int v1, v2, v4

    goto :goto_1

    const/4 v1, 0x0

    const/4 v8, 0x2

    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/ScrollerWidget;->setState(I)V

    const/4 v8, 0x4

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/ScrollerWidget;->setPressed(Z)V

    const/4 v8, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/henrythompson/quoda/ScrollerWidget;->HideScroller:Ljava/lang/Runnable;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    const/4 v7, 0x5

    const/4 v8, 0x6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setState(I)V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v2, 0x3

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v1, 0x3

    const/4 v2, 0x2

    :pswitch_0
    iget-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->HideScroller:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x3

    const/4 v0, 0x0

    iput v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mState:I

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->invalidate()V

    goto :goto_0

    const/4 v2, 0x7

    const/4 v2, 0x4

    :pswitch_1
    invoke-direct {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->isShowScrollerJustified()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->HideScroller:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x3

    const/4 v0, 0x1

    iput v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mState:I

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->invalidate()V

    goto :goto_0

    const/4 v1, 0x1

    const/4 v2, 0x3

    :pswitch_2
    iget-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->HideScroller:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    const/4 v0, 0x2

    iput v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mState:I

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->invalidate()V

    goto :goto_0

    const/4 v2, 0x4

    const/4 v2, 0x4

    :pswitch_3
    iget-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget;->HideScroller:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x6

    const/4 v0, 0x3

    iput v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mState:I

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/ScrollerWidget;->invalidate()V

    goto :goto_0

    const/4 v1, 0x2

    const/4 v2, 0x4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public unlinkCodeView()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    const/4 v1, 0x4

    nop

    return-void

    const/4 v1, 0x3
.end method
