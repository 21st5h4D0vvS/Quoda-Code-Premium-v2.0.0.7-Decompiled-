.class abstract Lcom/melnykov/fab/AbsListViewScrollDetector;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private mLastScrollY:I

.field private mListView:Landroid/widget/AbsListView;

.field private mPreviousFirstVisibleItem:I

.field private mScrollThreshold:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method

.method private getTopItemScrollY()I
    .locals 4

    const/4 v3, 0x6

    const/4 v1, 0x0

    const/4 v3, 0x5

    iget-object v2, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mListView:Landroid/widget/AbsListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v3, 0x4

    :cond_0
    :goto_0
    return v1

    const/4 v1, 0x4

    const/4 v3, 0x7

    :cond_1
    iget-object v2, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0

    const/4 v1, 0x5
.end method

.method private isSameRow(I)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x0

    iget v0, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mPreviousFirstVisibleItem:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v0, 0x6

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x2
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5

    const/4 v4, 0x0

    const/4 v4, 0x2

    invoke-direct {p0, p2}, Lcom/melnykov/fab/AbsListViewScrollDetector;->isSameRow(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x3

    invoke-direct {p0}, Lcom/melnykov/fab/AbsListViewScrollDetector;->getTopItemScrollY()I

    move-result v1

    const/4 v4, 0x4

    iget v2, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mLastScrollY:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mScrollThreshold:I

    if-le v2, v3, :cond_1

    const/4 v0, 0x1

    const/4 v4, 0x1

    :goto_0
    if-eqz v0, :cond_0

    const/4 v4, 0x2

    iget v2, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mLastScrollY:I

    if-le v2, v1, :cond_2

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/melnykov/fab/AbsListViewScrollDetector;->onScrollUp()V

    const/4 v4, 0x2

    :cond_0
    :goto_1
    iput v1, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mLastScrollY:I

    const/4 v4, 0x0

    :goto_2
    nop

    return-void

    const/4 v0, 0x7

    const/4 v4, 0x6

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    const/4 v3, 0x4

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {p0}, Lcom/melnykov/fab/AbsListViewScrollDetector;->onScrollDown()V

    goto :goto_1

    const/4 v4, 0x4

    const/4 v4, 0x1

    :cond_3
    iget v2, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mPreviousFirstVisibleItem:I

    if-le p2, v2, :cond_4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/melnykov/fab/AbsListViewScrollDetector;->onScrollUp()V

    const/4 v4, 0x0

    :goto_3
    invoke-direct {p0}, Lcom/melnykov/fab/AbsListViewScrollDetector;->getTopItemScrollY()I

    move-result v2

    iput v2, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mLastScrollY:I

    const/4 v4, 0x1

    iput p2, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mPreviousFirstVisibleItem:I

    goto :goto_2

    const/4 v1, 0x7

    const/4 v4, 0x3

    :cond_4
    invoke-virtual {p0}, Lcom/melnykov/fab/AbsListViewScrollDetector;->onScrollDown()V

    goto :goto_3

    const/4 v3, 0x1
.end method

.method abstract onScrollDown()V
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x1
.end method

.method abstract onScrollUp()V
.end method

.method public setListView(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1    # Landroid/widget/AbsListView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x5

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mListView:Landroid/widget/AbsListView;

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setScrollThreshold(I)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x4

    iput p1, p0, Lcom/melnykov/fab/AbsListViewScrollDetector;->mScrollThreshold:I

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x3
.end method
