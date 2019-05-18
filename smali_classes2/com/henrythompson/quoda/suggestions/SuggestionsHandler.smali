.class public Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;
    }
.end annotation


# static fields
.field private static final CODEVIEW_MAX_FILL_WIDTH:I

.field private static ITEM_HEIGHT:I

.field private static MAX_VISIBLE_ITEMS:I

.field private static POPUP_WIDTH:I


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/henrythompson/quoda/suggestions/SuggestionsAdapter;

.field private mCodeView:Lcom/henrythompson/quoda/CodeView;

.field private mEnabled:Z

.field private mIsApplyingSuggestion:Z

.field private mList:Landroid/widget/ListView;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mTask:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;

.field private mWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x0

    const/16 v0, 0x168

    invoke-static {v0}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v0

    sput v0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->CODEVIEW_MAX_FILL_WIDTH:I

    const/4 v1, 0x3

    const/4 v0, 0x4

    sput v0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->MAX_VISIBLE_ITEMS:I

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public constructor <init>(Lcom/henrythompson/quoda/CodeView;Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mEnabled:Z

    const/4 v1, 0x4

    new-instance v0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;-><init>(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mWatcher:Landroid/text/TextWatcher;

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p1, v0}, Lcom/henrythompson/quoda/CodeView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v1, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    const/4 v1, 0x7

    iput-object p2, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->initialize()V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x6
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Landroid/app/Activity;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mActivity:Landroid/app/Activity;

    return-object v0

    const/4 v0, 0x7
.end method

.method static synthetic access$100(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Lcom/henrythompson/quoda/suggestions/SuggestionsAdapter;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mAdapter:Lcom/henrythompson/quoda/suggestions/SuggestionsAdapter;

    return-object v0

    const/4 v1, 0x0
.end method

.method static synthetic access$200(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x6

    iget-boolean v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mIsApplyingSuggestion:Z

    return v0

    const/4 v0, 0x6
.end method

.method static synthetic access$202(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;Z)Z
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x5

    iput-boolean p1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mIsApplyingSuggestion:Z

    return p1

    const/4 v0, 0x6
.end method

.method static synthetic access$300(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Lcom/henrythompson/quoda/CodeView;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    return-object v0

    const/4 v0, 0x5
.end method

.method static synthetic access$400(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Landroid/widget/PopupWindow;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0

    const/4 v0, 0x7
.end method

.method static synthetic access$500(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mTask:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;

    return-object v0

    const/4 v1, 0x1
.end method

.method static synthetic access$502(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;)Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mTask:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;

    return-object p1

    const/4 v0, 0x6
.end method

.method static synthetic access$700(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mEnabled:Z

    return v0

    const/4 v0, 0x1
.end method

.method static synthetic access$800(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x4

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->showSuggestions(Ljava/util/ArrayList;)V

    nop

    return-void

    const/4 v0, 0x1
.end method

.method static synthetic access$900(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Landroid/widget/ListView;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mList:Landroid/widget/ListView;

    return-object v0

    const/4 v1, 0x0
.end method

.method private getCodeViewDimensions()[I
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x4

    new-array v0, v8, [I

    const/4 v9, 0x2

    iget-object v5, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v5, v0}, Lcom/henrythompson/quoda/CodeView;->getLocationOnScreen([I)V

    const/4 v9, 0x7

    aget v3, v0, v6

    const/4 v9, 0x0

    aget v4, v0, v7

    const/4 v9, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/CodeView;->getWidth()I

    move-result v2

    const/4 v9, 0x7

    iget-object v5, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/CodeView;->getHeight()I

    move-result v1

    const/4 v9, 0x5

    const/4 v5, 0x4

    new-array v5, v5, [I

    aput v3, v5, v6

    aput v4, v5, v7

    aput v2, v5, v8

    const/4 v6, 0x3

    aput v1, v5, v6

    return-object v5

    const/4 v3, 0x3
.end method

.method private getCursorPosition([I)[I
    .locals 10

    const/4 v9, 0x4

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x4

    aget v2, p1, v6

    const/4 v9, 0x3

    aget v3, p1, v7

    const/4 v9, 0x6

    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/CodeView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v2, v4

    const/4 v9, 0x7

    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/CodeView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v9, 0x7

    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/CodeView;->getScrollX()I

    move-result v4

    sub-int/2addr v2, v4

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/CodeView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v9, 0x2

    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v1

    const/4 v9, 0x5

    int-to-float v4, v2

    iget-object v5, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v2, v4

    const/4 v9, 0x2

    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    add-int/2addr v3, v4

    const/4 v9, 0x4

    invoke-static {v8}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v4

    sub-int/2addr v2, v4

    const/4 v9, 0x2

    invoke-static {v8}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v9, 0x5

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v2, v4, v6

    aput v3, v4, v7

    return-object v4

    const/4 v9, 0x4
.end method

.method private getPopupPosition([I[II)[I
    .locals 17

    const/4 v15, 0x0

    aget v4, p2, v15

    const/4 v15, 0x2

    aget v3, p2, v15

    const/4 v15, 0x0

    aget v6, p1, v15

    sget v15, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->CODEVIEW_MAX_FILL_WIDTH:I

    if-gt v3, v15, :cond_3

    move v12, v3

    move v13, v4

    :cond_0
    :goto_0
    const/4 v15, 0x1

    aget v5, p2, v15

    const/4 v15, 0x3

    aget v2, p2, v15

    const/4 v15, 0x1

    aget v7, p1, v15

    sget v15, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->MAX_VISIBLE_ITEMS:I

    move/from16 v0, p3

    if-le v0, v15, :cond_1

    sget p3, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->MAX_VISIBLE_ITEMS:I

    :cond_1
    move v14, v7

    sget v15, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->ITEM_HEIGHT:I

    mul-int v11, p3, v15

    const/16 v15, 0x8

    invoke-static {v15}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v15

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v11, v15

    const/4 v15, 0x1

    invoke-static {v15}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v15

    add-int/lit8 v16, p3, -0x1

    mul-int v15, v15, v16

    add-int/2addr v11, v15

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Lcom/henrythompson/quoda/CodeView;->getLineBounds(ILandroid/graphics/Rect;)I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    mul-int/lit8 v15, v9, 0x2

    sub-int v10, v2, v15

    if-ge v11, v10, :cond_5

    :goto_1
    add-int v15, v14, v11

    add-int v16, v5, v2

    move/from16 v0, v16

    if-le v15, v0, :cond_2

    add-int v15, v14, v11

    add-int v16, v5, v2

    sub-int v8, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Lcom/henrythompson/quoda/CodeView;->scrollBy(II)V

    sub-int/2addr v14, v8

    :cond_2
    const/4 v15, 0x4

    new-array v15, v15, [I

    const/16 v16, 0x0

    aput v13, v15, v16

    const/16 v16, 0x1

    aput v14, v15, v16

    const/16 v16, 0x2

    aput v12, v15, v16

    const/16 v16, 0x3

    aput v11, v15, v16

    return-object v15

    const/4 v9, 0x7

    :cond_3
    move v13, v6

    sget v15, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->POPUP_WIDTH:I

    if-ge v15, v3, :cond_4

    sget v12, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->POPUP_WIDTH:I

    :goto_2
    add-int v15, v13, v12

    add-int v16, v4, v3

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    add-int v15, v4, v3

    sub-int v13, v15, v12

    goto/16 :goto_0

    const/4 v10, 0x4

    :cond_4
    move v12, v3

    goto :goto_2

    const/4 v12, 0x6

    :cond_5
    move v11, v10

    goto :goto_1

    const/4 v7, 0x5
.end method

.method private initialize()V
    .locals 9

    const/4 v8, 0x6

    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v8, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/CodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v8, 0x7

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06008d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->ITEM_HEIGHT:I

    const/4 v8, 0x1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06008f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->POPUP_WIDTH:I

    const/4 v8, 0x2

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v8, 0x2

    const v3, 0x7f0a005a

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const/4 v8, 0x7

    new-instance v3, Landroid/widget/PopupWindow;

    invoke-direct {v3, v2, v7, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v8, 0x7

    iget-object v3, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v8, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const/4 v8, 0x7

    new-instance v3, Lcom/henrythompson/quoda/suggestions/SuggestionsAdapter;

    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/CodeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/henrythompson/quoda/suggestions/SuggestionsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mAdapter:Lcom/henrythompson/quoda/suggestions/SuggestionsAdapter;

    const/4 v8, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mList:Landroid/widget/ListView;

    const/4 v8, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mAdapter:Lcom/henrythompson/quoda/suggestions/SuggestionsAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v8, 0x1

    iget-object v3, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mList:Landroid/widget/ListView;

    new-instance v4, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$1;

    invoke-direct {v4, p0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$1;-><init>(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v8, 0x7

    iget-object v3, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mList:Landroid/widget/ListView;

    new-instance v4, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$2;

    invoke-direct {v4, p0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$2;-><init>(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 v8, 0x5

    nop

    return-void

    const/4 v3, 0x3
.end method

.method private showPopup([I)V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x6

    aget v2, p1, v6

    const/4 v7, 0x5

    const/4 v4, 0x1

    aget v3, p1, v4

    const/4 v7, 0x7

    const/4 v4, 0x2

    aget v1, p1, v4

    const/4 v7, 0x5

    const/4 v4, 0x3

    aget v0, p1, v4

    const/4 v7, 0x2

    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setVisibility(I)V

    const/4 v7, 0x4

    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v6, v6}, Landroid/widget/ListView;->scrollTo(II)V

    const/4 v7, 0x4

    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mList:Landroid/widget/ListView;

    new-instance v5, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$4;

    invoke-direct {v5, p0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$4;-><init>(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    const/4 v7, 0x4

    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v7, 0x3

    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v2, v3, v1, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    const/4 v7, 0x7

    :goto_0
    nop

    return-void

    const/4 v5, 0x5

    const/4 v7, 0x0

    :cond_0
    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 v7, 0x5

    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    const/4 v1, 0x6
.end method

.method private showSuggestions(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/suggestions/Suggestion;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x5

    const/4 v5, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/QuodaPreferences;->getCodeCompletionEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v5, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->hidePopup()V

    const/4 v5, 0x0

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v0, 0x6

    const/4 v5, 0x1

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mAdapter:Lcom/henrythompson/quoda/suggestions/SuggestionsAdapter;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/suggestions/SuggestionsAdapter;->clear()V

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mAdapter:Lcom/henrythompson/quoda/suggestions/SuggestionsAdapter;

    invoke-virtual {v4, p1}, Lcom/henrythompson/quoda/suggestions/SuggestionsAdapter;->addAll(Ljava/util/Collection;)V

    const/4 v5, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->getCodeViewDimensions()[I

    move-result-object v0

    const/4 v5, 0x1

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->getCursorPosition([I)[I

    move-result-object v1

    const/4 v5, 0x7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {p0, v1, v0, v4}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->getPopupPosition([I[II)[I

    move-result-object v3

    const/4 v5, 0x0

    invoke-direct {p0, v3}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->showPopup([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v4, 0x7

    const/4 v5, 0x1

    :catch_0
    move-exception v2

    const/4 v5, 0x6

    :try_start_1
    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    const/4 v1, 0x2

    const/4 v5, 0x2

    :catch_1
    move-exception v4

    goto :goto_0

    const/4 v1, 0x1

    const/4 v5, 0x0

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->hidePopup()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    const/4 v5, 0x4
.end method


# virtual methods
.method public hidePopup()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v1, 0x0
.end method

.method public isShowing()Z
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x3

    :goto_0
    return v0

    const/4 v0, 0x2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x6
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v6, 0x4

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x3

    :goto_0
    return v1

    const/4 v1, 0x6

    const/4 v6, 0x1

    :cond_0
    const/16 v1, 0x42

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3d

    if-ne p1, v1, :cond_2

    const/4 v6, 0x6

    :cond_1
    iget-object v1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    const/4 v6, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mList:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v4

    invoke-virtual {v1, v2, v0, v4, v5}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    const/4 v6, 0x3

    const/4 v1, 0x1

    goto :goto_0

    const/4 v3, 0x6

    const/4 v6, 0x6

    :cond_2
    iget-object v1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    const/4 v5, 0x1
.end method

.method public setEnabled(Z)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x5

    iput-boolean p1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mEnabled:Z

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public showSuggestions()V
    .locals 4

    const/4 v3, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;-><init>(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$1;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mTask:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->mTask:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v3, 0x2

    nop

    return-void

    const/4 v2, 0x0
.end method
