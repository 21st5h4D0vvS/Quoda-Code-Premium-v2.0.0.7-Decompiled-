.class abstract Lcom/melnykov/fab/ScrollViewScrollDetector;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;


# instance fields
.field private mLastScrollY:I

.field private mScrollThreshold:I


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public onScrollChanged(Landroid/widget/ScrollView;IIII)V
    .locals 4

    const/4 v3, 0x7

    const/4 v3, 0x4

    iget v1, p0, Lcom/melnykov/fab/ScrollViewScrollDetector;->mLastScrollY:I

    sub-int v1, p3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/melnykov/fab/ScrollViewScrollDetector;->mScrollThreshold:I

    if-le v1, v2, :cond_1

    const/4 v0, 0x1

    const/4 v3, 0x2

    :goto_0
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    iget v1, p0, Lcom/melnykov/fab/ScrollViewScrollDetector;->mLastScrollY:I

    if-le p3, v1, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/melnykov/fab/ScrollViewScrollDetector;->onScrollUp()V

    const/4 v3, 0x6

    :cond_0
    :goto_1
    iput p3, p0, Lcom/melnykov/fab/ScrollViewScrollDetector;->mLastScrollY:I

    const/4 v3, 0x5

    nop

    return-void

    const/4 v3, 0x0

    const/4 v3, 0x7

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    const/4 v3, 0x3

    const/4 v3, 0x4

    :cond_2
    invoke-virtual {p0}, Lcom/melnykov/fab/ScrollViewScrollDetector;->onScrollDown()V

    goto :goto_1

    const/4 v1, 0x4
.end method

.method abstract onScrollDown()V
.end method

.method abstract onScrollUp()V
.end method

.method public setScrollThreshold(I)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x7

    iput p1, p0, Lcom/melnykov/fab/ScrollViewScrollDetector;->mScrollThreshold:I

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x1
.end method
