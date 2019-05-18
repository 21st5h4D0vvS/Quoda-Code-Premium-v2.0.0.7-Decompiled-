.class public Lcom/melnykov/fab/ObservableScrollView;
.super Landroid/widget/ScrollView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;
    }
.end annotation


# instance fields
.field private mOnScrollChangedListener:Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x3

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 7

    const/4 v6, 0x3

    const/4 v6, 0x6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    const/4 v6, 0x2

    iget-object v0, p0, Lcom/melnykov/fab/ObservableScrollView;->mOnScrollChangedListener:Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;

    if-eqz v0, :cond_0

    const/4 v6, 0x5

    iget-object v0, p0, Lcom/melnykov/fab/ObservableScrollView;->mOnScrollChangedListener:Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;->onScrollChanged(Landroid/widget/ScrollView;IIII)V

    const/4 v6, 0x5

    :cond_0
    nop

    return-void

    const/4 v3, 0x6
.end method

.method public setOnScrollChangedListener(Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/melnykov/fab/ObservableScrollView;->mOnScrollChangedListener:Lcom/melnykov/fab/ObservableScrollView$OnScrollChangedListener;

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x7
.end method
