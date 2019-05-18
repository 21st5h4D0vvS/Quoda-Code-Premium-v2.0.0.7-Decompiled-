.class public Lcom/melnykov/fab/FloatingActionButton;
.super Landroid/widget/ImageButton;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;,
        Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;,
        Lcom/melnykov/fab/FloatingActionButton$AbsListViewScrollDetectorImpl;,
        Lcom/melnykov/fab/FloatingActionButton$TYPE;
    }
.end annotation


# static fields
.field private static final TRANSLATE_DURATION_MILLIS:I = 0xc8

.field public static final TYPE_MINI:I = 0x1

.field public static final TYPE_NORMAL:I


# instance fields
.field private mColorNormal:I

.field private mColorPressed:I

.field private mColorRipple:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMarginsSet:Z

.field private mScrollThreshold:I

.field private mShadow:Z

.field private mShadowSize:I

.field private mType:I

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/melnykov/fab/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x7

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/melnykov/fab/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x6

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x7

    invoke-direct {p0, p1, p2}, Lcom/melnykov/fab/FloatingActionButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x1
.end method

.method static synthetic access$000(Lcom/melnykov/fab/FloatingActionButton;)I
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x0

    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mType:I

    return v0

    const/4 v0, 0x5
.end method

.method static synthetic access$100(Lcom/melnykov/fab/FloatingActionButton;I)I
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x4

    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->getDimension(I)I

    move-result v0

    return v0

    const/4 v0, 0x2
.end method

.method static synthetic access$200(Lcom/melnykov/fab/FloatingActionButton;ZZZ)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3}, Lcom/melnykov/fab/FloatingActionButton;->toggle(ZZZ)V

    nop

    return-void

    const/4 v0, 0x1
.end method

.method private createDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 10

    const/4 v9, 0x6

    const/4 v1, 0x1

    const/4 v9, 0x0

    new-instance v6, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v6}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    const/4 v9, 0x0

    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v8, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v9, 0x5

    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v9, 0x3

    iget-boolean v2, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadow:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->hasLollipopApi()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v9, 0x5

    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v2, p0, Lcom/melnykov/fab/FloatingActionButton;->mType:I

    if-nez v2, :cond_0

    sget v2, Lcom/melnykov/fab/R$drawable;->shadow:I

    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/4 v9, 0x6

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    aput-object v8, v2, v1

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v9, 0x5

    iget v2, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadowSize:I

    iget v3, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadowSize:I

    iget v4, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadowSize:I

    iget v5, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadowSize:I

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    const/4 v9, 0x5

    :goto_1
    return-object v0

    const/4 v5, 0x7

    const/4 v9, 0x0

    :cond_0
    sget v2, Lcom/melnykov/fab/R$drawable;->shadow_mini:I

    goto :goto_0

    const/4 v2, 0x6

    :cond_1
    move-object v0, v8

    const/4 v9, 0x4

    goto :goto_1

    const/4 v1, 0x5
.end method

.method private getColor(I)I
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0

    const/4 v1, 0x7
.end method

.method private getDimension(I)I
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0

    const/4 v0, 0x4
.end method

.method private getMarginBottom()I
    .locals 4

    const/4 v3, 0x0

    const/4 v3, 0x7

    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v3, 0x2

    instance-of v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/4 v3, 0x1

    :cond_0
    return v1

    const/4 v1, 0x0
.end method

.method private getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0

    const/4 v0, 0x2
.end method

.method private hasHoneycombApi()Z
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v0, 0x4

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x4
.end method

.method private hasJellyBeanApi()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v2, 0x6

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x3
.end method

.method private hasLollipopApi()Z
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v2, 0x0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v2, 0x0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x6

    iput-boolean v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mVisible:Z

    const/4 v2, 0x2

    sget v0, Lcom/melnykov/fab/R$color;->material_blue_500:I

    invoke-direct {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorNormal:I

    const/4 v2, 0x2

    sget v0, Lcom/melnykov/fab/R$color;->material_blue_600:I

    invoke-direct {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorPressed:I

    const/4 v2, 0x1

    const v0, 0x106000b

    invoke-direct {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorRipple:I

    const/4 v2, 0x7

    const/4 v0, 0x0

    iput v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mType:I

    const/4 v2, 0x0

    iput-boolean v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadow:Z

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/melnykov/fab/R$dimen;->fab_scroll_threshold:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mScrollThreshold:I

    const/4 v2, 0x6

    sget v0, Lcom/melnykov/fab/R$dimen;->fab_shadow_size:I

    invoke-direct {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->getDimension(I)I

    move-result v0

    iput v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadowSize:I

    const/4 v2, 0x4

    if-eqz p2, :cond_0

    const/4 v2, 0x4

    invoke-direct {p0, p1, p2}, Lcom/melnykov/fab/FloatingActionButton;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, 0x5

    :cond_0
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->updateBackground()V

    const/4 v2, 0x1

    nop

    return-void

    const/4 v2, 0x0
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x1

    sget-object v1, Lcom/melnykov/fab/R$styleable;->FloatingActionButton:[I

    invoke-direct {p0, p1, p2, v1}, Lcom/melnykov/fab/FloatingActionButton;->getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    const/4 v3, 0x5

    :try_start_0
    sget v1, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_colorNormal:I

    sget v2, Lcom/melnykov/fab/R$color;->material_blue_500:I

    invoke-direct {p0, v2}, Lcom/melnykov/fab/FloatingActionButton;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorNormal:I

    const/4 v3, 0x3

    sget v1, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_colorPressed:I

    sget v2, Lcom/melnykov/fab/R$color;->material_blue_600:I

    invoke-direct {p0, v2}, Lcom/melnykov/fab/FloatingActionButton;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorPressed:I

    const/4 v3, 0x3

    sget v1, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_colorRipple:I

    const v2, 0x106000b

    invoke-direct {p0, v2}, Lcom/melnykov/fab/FloatingActionButton;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorRipple:I

    const/4 v3, 0x0

    sget v1, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_shadow:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadow:Z

    const/4 v3, 0x1

    sget v1, Lcom/melnykov/fab/R$styleable;->FloatingActionButton_fab_type:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v3, 0x3

    :cond_0
    nop

    return-void

    const/4 v1, 0x7

    const/4 v3, 0x0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x7

    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->hasLollipopApi()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v7, 0x6

    iget-boolean v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadow:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/melnykov/fab/R$dimen;->fab_elevation_lollipop:I

    invoke-direct {p0, v1}, Lcom/melnykov/fab/FloatingActionButton;->getDimension(I)I

    move-result v1

    int-to-float v1, v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/melnykov/fab/FloatingActionButton;->setElevation(F)V

    const/4 v7, 0x6

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v6, [[I

    new-array v3, v5, [I

    aput-object v3, v2, v5

    new-array v3, v6, [I

    iget v4, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorRipple:I

    aput v4, v3, v5

    invoke-direct {v1, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x5

    new-instance v1, Lcom/melnykov/fab/FloatingActionButton$1;

    invoke-direct {v1, p0}, Lcom/melnykov/fab/FloatingActionButton$1;-><init>(Lcom/melnykov/fab/FloatingActionButton;)V

    invoke-virtual {p0, v1}, Lcom/melnykov/fab/FloatingActionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v7, 0x1

    invoke-virtual {p0, v6}, Lcom/melnykov/fab/FloatingActionButton;->setClipToOutline(Z)V

    const/4 v7, 0x4

    invoke-virtual {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v7, 0x0

    :goto_1
    nop

    return-void

    const/4 v1, 0x0

    const/4 v7, 0x5

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    const/4 v0, 0x0

    const/4 v7, 0x0

    :cond_1
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->hasJellyBeanApi()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v7, 0x3

    invoke-virtual {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    const/4 v1, 0x1

    const/4 v7, 0x7

    :cond_2
    invoke-virtual {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    const/4 v1, 0x2
.end method

.method private setMarginsWithoutShadow()V
    .locals 8

    const/4 v7, 0x3

    const/4 v7, 0x4

    iget-boolean v5, p0, Lcom/melnykov/fab/FloatingActionButton;->mMarginsSet:Z

    if-nez v5, :cond_0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v7, 0x1

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadowSize:I

    sub-int v2, v5, v6

    const/4 v7, 0x6

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadowSize:I

    sub-int v4, v5, v6

    const/4 v7, 0x5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v6, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadowSize:I

    sub-int v3, v5, v6

    const/4 v7, 0x3

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v6, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadowSize:I

    sub-int v0, v5, v6

    const/4 v7, 0x2

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    const/4 v7, 0x5

    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->requestLayout()V

    const/4 v7, 0x6

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/melnykov/fab/FloatingActionButton;->mMarginsSet:Z

    const/4 v7, 0x3

    :cond_0
    nop

    return-void

    const/4 v6, 0x3
.end method

.method private toggle(ZZZ)V
    .locals 7

    const/4 v6, 0x7

    const/4 v6, 0x3

    iget-boolean v3, p0, Lcom/melnykov/fab/FloatingActionButton;->mVisible:Z

    if-ne v3, p1, :cond_0

    if-eqz p3, :cond_1

    const/4 v6, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/melnykov/fab/FloatingActionButton;->mVisible:Z

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->getHeight()I

    move-result v0

    const/4 v6, 0x6

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/melnykov/fab/FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    const/4 v6, 0x7

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v6, 0x4

    new-instance v3, Lcom/melnykov/fab/FloatingActionButton$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/melnykov/fab/FloatingActionButton$2;-><init>(Lcom/melnykov/fab/FloatingActionButton;ZZ)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v6, 0x2

    :cond_1
    :goto_0
    nop

    return-void

    const/4 v0, 0x5

    const/4 v6, 0x5

    :cond_2
    if-eqz p1, :cond_3

    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_1
    if-eqz p2, :cond_4

    const/4 v6, 0x4

    invoke-static {p0}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/melnykov/fab/FloatingActionButton;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Lcom/nineoldandroids/view/ViewPropertyAnimator;->translationY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;

    const/4 v6, 0x5

    :goto_2
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->hasHoneycombApi()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v6, 0x5

    invoke-virtual {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->setClickable(Z)V

    goto :goto_0

    const/4 v6, 0x3

    const/4 v6, 0x1

    :cond_3
    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->getMarginBottom()I

    move-result v3

    add-int v1, v0, v3

    goto :goto_1

    const/4 v0, 0x2

    const/4 v6, 0x2

    :cond_4
    int-to-float v3, v1

    invoke-static {p0, v3}, Lcom/nineoldandroids/view/ViewHelper;->setTranslationY(Landroid/view/View;F)V

    goto :goto_2

    const/4 v0, 0x1
.end method

.method private updateBackground()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v4, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x10100a7

    aput v2, v1, v3

    iget v2, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorPressed:I

    invoke-direct {p0, v2}, Lcom/melnykov/fab/FloatingActionButton;->createDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    new-array v1, v3, [I

    iget v2, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorNormal:I

    invoke-direct {p0, v2}, Lcom/melnykov/fab/FloatingActionButton;->createDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x2

    invoke-direct {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x6

    nop

    return-void

    const/4 v4, 0x7
.end method


# virtual methods
.method public attachToListView(Landroid/widget/AbsListView;)V
    .locals 2
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/melnykov/fab/FloatingActionButton;->attachToListView(Landroid/widget/AbsListView;Lcom/melnykov/fab/ScrollDirectionListener;)V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public attachToListView(Landroid/widget/AbsListView;Lcom/melnykov/fab/ScrollDirectionListener;)V
    .locals 3
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x2

    const/4 v2, 0x5

    new-instance v0, Lcom/melnykov/fab/FloatingActionButton$AbsListViewScrollDetectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/melnykov/fab/FloatingActionButton$AbsListViewScrollDetectorImpl;-><init>(Lcom/melnykov/fab/FloatingActionButton;Lcom/melnykov/fab/FloatingActionButton$1;)V

    const/4 v2, 0x0

    invoke-static {v0, p2}, Lcom/melnykov/fab/FloatingActionButton$AbsListViewScrollDetectorImpl;->access$400(Lcom/melnykov/fab/FloatingActionButton$AbsListViewScrollDetectorImpl;Lcom/melnykov/fab/ScrollDirectionListener;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p1}, Lcom/melnykov/fab/FloatingActionButton$AbsListViewScrollDetectorImpl;->setListView(Landroid/widget/AbsListView;)V

    const/4 v2, 0x1

    iget v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mScrollThreshold:I

    invoke-virtual {v0, v1}, Lcom/melnykov/fab/FloatingActionButton$AbsListViewScrollDetectorImpl;->setScrollThreshold(I)V

    const/4 v2, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const/4 v2, 0x5

    nop

    return-void

    const/4 v2, 0x0
.end method

.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/melnykov/fab/FloatingActionButton;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/melnykov/fab/ScrollDirectionListener;)V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x1
.end method

.method public attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/melnykov/fab/ScrollDirectionListener;)V
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x5

    const/4 v2, 0x2

    new-instance v0, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;-><init>(Lcom/melnykov/fab/FloatingActionButton;Lcom/melnykov/fab/FloatingActionButton$1;)V

    const/4 v2, 0x2

    invoke-static {v0, p2}, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;->access$600(Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;Lcom/melnykov/fab/ScrollDirectionListener;)V

    const/4 v2, 0x2

    iget v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mScrollThreshold:I

    invoke-virtual {v0, v1}, Lcom/melnykov/fab/FloatingActionButton$RecyclerViewScrollDetectorImpl;->setScrollThreshold(I)V

    const/4 v2, 0x7

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    const/4 v2, 0x6

    nop

    return-void

    const/4 v2, 0x4
.end method

.method public attachToScrollView(Lcom/melnykov/fab/ObservableScrollView;)V
    .locals 2
    .param p1    # Lcom/melnykov/fab/ObservableScrollView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/melnykov/fab/FloatingActionButton;->attachToScrollView(Lcom/melnykov/fab/ObservableScrollView;Lcom/melnykov/fab/ScrollDirectionListener;)V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public attachToScrollView(Lcom/melnykov/fab/ObservableScrollView;Lcom/melnykov/fab/ScrollDirectionListener;)V
    .locals 3
    .param p1    # Lcom/melnykov/fab/ObservableScrollView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x7

    const/4 v2, 0x0

    new-instance v0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;-><init>(Lcom/melnykov/fab/FloatingActionButton;Lcom/melnykov/fab/FloatingActionButton$1;)V

    const/4 v2, 0x7

    invoke-static {v0, p2}, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->access$800(Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;Lcom/melnykov/fab/ScrollDirectionListener;)V

    const/4 v2, 0x7

    iget v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mScrollThreshold:I

    invoke-virtual {v0, v1}, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->setScrollThreshold(I)V

    const/4 v2, 0x7

    invoke-virtual {p1, v0}, Lcom/melnykov/fab/ObservableScrollView;->setOnScrollChangedListener(Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;)V

    const/4 v2, 0x2

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public getColorNormal()I
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x7

    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorNormal:I

    return v0

    const/4 v0, 0x3
.end method

.method public getColorPressed()I
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x2

    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorPressed:I

    return v0

    const/4 v0, 0x0
.end method

.method public getColorRipple()I
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x1

    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorRipple:I

    return v0

    const/4 v1, 0x0
.end method

.method public getType()I
    .locals 2
    .annotation build Lcom/melnykov/fab/FloatingActionButton$TYPE;
    .end annotation

    const/4 v1, 0x4

    const/4 v1, 0x1

    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mType:I

    return v0

    const/4 v1, 0x7
.end method

.method public hasShadow()Z
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadow:Z

    return v0

    const/4 v1, 0x1
.end method

.method public hide()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->hide(Z)V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public hide(Z)V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, p1, v0}, Lcom/melnykov/fab/FloatingActionButton;->toggle(ZZZ)V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x3
.end method

.method public isVisible()Z
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x4

    iget-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mVisible:Z

    return v0

    const/4 v0, 0x3
.end method

.method protected onMeasure(II)V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x1

    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onMeasure(II)V

    const/4 v2, 0x5

    iget v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mType:I

    if-nez v1, :cond_1

    sget v1, Lcom/melnykov/fab/R$dimen;->fab_size_normal:I

    :goto_0
    invoke-direct {p0, v1}, Lcom/melnykov/fab/FloatingActionButton;->getDimension(I)I

    move-result v0

    const/4 v2, 0x6

    iget-boolean v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadow:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->hasLollipopApi()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x5

    iget v1, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadowSize:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->setMarginsWithoutShadow()V

    const/4 v2, 0x4

    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/melnykov/fab/FloatingActionButton;->setMeasuredDimension(II)V

    const/4 v2, 0x5

    nop

    return-void

    const/4 v0, 0x1

    const/4 v2, 0x1

    :cond_1
    sget v1, Lcom/melnykov/fab/R$dimen;->fab_size_mini:I

    goto :goto_0

    const/4 v0, 0x7
.end method

.method public setColorNormal(I)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x7

    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorNormal:I

    if-eq p1, v0, :cond_0

    const/4 v1, 0x0

    iput p1, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorNormal:I

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->updateBackground()V

    const/4 v1, 0x7

    :cond_0
    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setColorNormalResId(I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->setColorNormal(I)V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v1, 0x6
.end method

.method public setColorPressed(I)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x5

    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorPressed:I

    if-eq p1, v0, :cond_0

    const/4 v1, 0x0

    iput p1, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorPressed:I

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->updateBackground()V

    const/4 v1, 0x3

    :cond_0
    nop

    return-void

    const/4 v1, 0x7
.end method

.method public setColorPressedResId(I)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->setColorPressed(I)V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x4
.end method

.method public setColorRipple(I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x4

    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorRipple:I

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    iput p1, p0, Lcom/melnykov/fab/FloatingActionButton;->mColorRipple:I

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->updateBackground()V

    const/4 v1, 0x7

    :cond_0
    nop

    return-void

    const/4 v0, 0x3
.end method

.method public setColorRippleResId(I)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->setColorRipple(I)V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v1, 0x6
.end method

.method public setShadow(Z)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    iget-boolean v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadow:Z

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    iput-boolean p1, p0, Lcom/melnykov/fab/FloatingActionButton;->mShadow:Z

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->updateBackground()V

    const/4 v1, 0x2

    :cond_0
    nop

    return-void

    const/4 v1, 0x6
.end method

.method public setType(I)V
    .locals 2
    .param p1    # I
        .annotation build Lcom/melnykov/fab/FloatingActionButton$TYPE;
        .end annotation
    .end param

    const/4 v1, 0x3

    const/4 v1, 0x3

    iget v0, p0, Lcom/melnykov/fab/FloatingActionButton;->mType:I

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    iput p1, p0, Lcom/melnykov/fab/FloatingActionButton;->mType:I

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/melnykov/fab/FloatingActionButton;->updateBackground()V

    const/4 v1, 0x0

    :cond_0
    nop

    return-void

    const/4 v1, 0x7
.end method

.method public show()V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/melnykov/fab/FloatingActionButton;->show(Z)V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v1, 0x3
.end method

.method public show(Z)V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/melnykov/fab/FloatingActionButton;->toggle(ZZZ)V

    const/4 v2, 0x3

    nop

    return-void

    const/4 v0, 0x3
.end method
