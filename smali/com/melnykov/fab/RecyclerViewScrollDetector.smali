.class abstract Lcom/melnykov/fab/RecyclerViewScrollDetector;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# instance fields
.field private mScrollThreshold:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x4

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method abstract onScrollDown()V
.end method

.method abstract onScrollUp()V
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x6

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/melnykov/fab/RecyclerViewScrollDetector;->mScrollThreshold:I

    if-le v1, v2, :cond_1

    const/4 v0, 0x1

    const/4 v3, 0x2

    :goto_0
    if-eqz v0, :cond_0

    const/4 v3, 0x2

    if-lez p3, :cond_2

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/melnykov/fab/RecyclerViewScrollDetector;->onScrollUp()V

    const/4 v3, 0x0

    :cond_0
    :goto_1
    nop

    return-void

    const/4 v0, 0x2

    const/4 v3, 0x6

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    const/4 v2, 0x6

    const/4 v3, 0x7

    :cond_2
    invoke-virtual {p0}, Lcom/melnykov/fab/RecyclerViewScrollDetector;->onScrollDown()V

    goto :goto_1

    const/4 v0, 0x0
.end method

.method public setScrollThreshold(I)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x6

    iput p1, p0, Lcom/melnykov/fab/RecyclerViewScrollDetector;->mScrollThreshold:I

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x1
.end method
