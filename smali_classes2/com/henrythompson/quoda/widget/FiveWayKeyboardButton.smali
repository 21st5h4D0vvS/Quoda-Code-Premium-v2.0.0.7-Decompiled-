.class public Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FiveWayKeyboard"


# instance fields
.field private mIndex:I

.field private mKeys:[Ljava/lang/String;

.field private mListener:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;

.field private mSelectedKey:I

.field private mTouchDownX:F

.field private mTouchDownY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v5, 0x2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v5, 0x4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "@"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "("

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ")"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "["

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "]"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mKeys:[Ljava/lang/String;

    const/4 v5, 0x0

    iput v4, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mIndex:I

    const/4 v5, 0x2

    const/4 v0, -0x1

    iput v0, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mSelectedKey:I

    const/4 v5, 0x1

    iput v3, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mTouchDownX:F

    const/4 v5, 0x1

    iput v3, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mTouchDownY:F

    const/4 v5, 0x0

    nop

    return-void

    const/4 v1, 0x7
.end method


# virtual methods
.method public getSymbol(I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mKeys:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0

    const/4 v0, 0x3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x4

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    const/4 v10, 0x5

    :goto_0
    return v7

    const/4 v1, 0x4

    const/4 v10, 0x7

    :pswitch_0
    iget v4, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mIndex:I

    packed-switch v4, :pswitch_data_1

    const/4 v10, 0x5

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mTouchDownX:F

    const/4 v10, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mTouchDownY:F

    const/4 v10, 0x6

    iput v6, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mSelectedKey:I

    const/4 v10, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->invalidate()V

    goto :goto_0

    const/4 v8, 0x5

    const/4 v10, 0x5

    :pswitch_1
    const v4, 0x7f070057

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_1

    const/4 v8, 0x5

    const/4 v10, 0x7

    :pswitch_2
    const v4, 0x7f070059

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_1

    const/4 v10, 0x1

    const/4 v10, 0x3

    :pswitch_3
    const v4, 0x7f07005b

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_1

    const/4 v1, 0x0

    const/4 v10, 0x1

    :pswitch_4
    const v4, 0x7f07005d

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_1

    const/4 v2, 0x1

    const/4 v10, 0x1

    :pswitch_5
    const v4, 0x7f07005f

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_1

    const/4 v2, 0x6

    const/4 v10, 0x4

    :pswitch_6
    const v4, 0x7f070061

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_1

    const/4 v7, 0x2

    const/4 v10, 0x0

    :pswitch_7
    const v4, 0x7f070063

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_1

    const/4 v1, 0x1

    const/4 v10, 0x4

    :pswitch_8
    const v4, 0x7f070065

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_1

    const/4 v3, 0x2

    const/4 v10, 0x5

    :pswitch_9
    const v4, 0x7f070067

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_1

    const/4 v6, 0x4

    const/4 v10, 0x1

    :pswitch_a
    const v4, 0x7f070069

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_1

    const/4 v2, 0x5

    const/4 v10, 0x5

    :pswitch_b
    iget v4, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v2, v4

    const/4 v10, 0x2

    iget v4, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mTouchDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v3, v4

    const/4 v10, 0x5

    mul-int v4, v2, v2

    mul-int v5, v3, v3

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const/4 v10, 0x4

    invoke-static {v9}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v4

    int-to-double v4, v4

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_3

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mTouchDownX:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    const/4 v10, 0x6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mTouchDownY:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    const/4 v10, 0x7

    iput v7, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mSelectedKey:I

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->invalidate()V

    goto/16 :goto_0

    const/4 v5, 0x2

    const/4 v10, 0x5

    :cond_0
    const/4 v4, 0x3

    iput v4, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mSelectedKey:I

    goto :goto_2

    const/4 v9, 0x5

    const/4 v10, 0x4

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mTouchDownY:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    const/4 v10, 0x1

    const/4 v4, 0x2

    iput v4, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mSelectedKey:I

    goto :goto_2

    const/4 v0, 0x3

    const/4 v10, 0x5

    :cond_2
    iput v9, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mSelectedKey:I

    goto :goto_2

    const/4 v1, 0x3

    const/4 v10, 0x0

    :cond_3
    iput v6, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mSelectedKey:I

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->invalidate()V

    goto/16 :goto_0

    const/4 v10, 0x6

    const/4 v10, 0x7

    :pswitch_c
    invoke-virtual {p0, v6}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->playSoundEffect(I)V

    const/4 v10, 0x1

    iget v4, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mIndex:I

    packed-switch v4, :pswitch_data_2

    const/4 v10, 0x5

    :goto_3
    iget-object v4, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mListener:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;

    if-eqz v4, :cond_4

    const/4 v10, 0x4

    iget-object v4, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mListener:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;

    iget-object v5, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mKeys:[Ljava/lang/String;

    iget v6, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mSelectedKey:I

    aget-object v5, v5, v6

    invoke-interface {v4, v5}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;->onKeyPress(Ljava/lang/String;)V

    const/4 v10, 0x7

    :cond_4
    iput v8, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mTouchDownX:F

    const/4 v10, 0x4

    iput v8, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mTouchDownY:F

    const/4 v10, 0x1

    const/4 v4, -0x1

    iput v4, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mSelectedKey:I

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->invalidate()V

    goto/16 :goto_0

    const/4 v5, 0x6

    const/4 v10, 0x5

    :pswitch_d
    const v4, 0x7f070056

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_3

    const/4 v0, 0x2

    const/4 v10, 0x3

    :pswitch_e
    const v4, 0x7f070058

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_3

    const/4 v9, 0x3

    const/4 v10, 0x1

    :pswitch_f
    const v4, 0x7f07005a

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_3

    const/4 v2, 0x4

    const/4 v10, 0x4

    :pswitch_10
    const v4, 0x7f07005c

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_3

    const/4 v1, 0x4

    const/4 v10, 0x0

    :pswitch_11
    const v4, 0x7f07005e

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_3

    const/4 v1, 0x3

    const/4 v10, 0x4

    :pswitch_12
    const v4, 0x7f070060

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_3

    const/4 v1, 0x1

    const/4 v10, 0x2

    :pswitch_13
    const v4, 0x7f070062

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_3

    const/4 v1, 0x1

    const/4 v10, 0x1

    :pswitch_14
    const v4, 0x7f070064

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_3

    const/4 v0, 0x6

    const/4 v10, 0x4

    :pswitch_15
    const v4, 0x7f070066

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_3

    const/4 v8, 0x3

    const/4 v10, 0x2

    :pswitch_16
    const v4, 0x7f070068

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_3

    const/4 v3, 0x7

    const/4 v10, 0x7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_c
        :pswitch_b
    .end packed-switch

    const/4 v10, 0x7

    nop

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    const/4 v10, 0x5

    nop

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public setListener(Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mListener:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public setup(I[Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x2

    iput p1, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mIndex:I

    const/4 v2, 0x7

    array-length v0, p2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    const-string v0, "FiveWayKeyboard"

    const-string v1, "The index of keys supplied to be displayed/their values was not 5"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 v2, 0x7

    :goto_0
    iput-object p2, p0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->mKeys:[Ljava/lang/String;

    const/4 v2, 0x5

    nop

    return-void

    const/4 v1, 0x6

    const/4 v2, 0x3

    :pswitch_0
    const v0, 0x7f070056

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_0

    const/4 v1, 0x0

    const/4 v2, 0x4

    :pswitch_1
    const v0, 0x7f070058

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_0

    const/4 v0, 0x6

    const/4 v2, 0x5

    :pswitch_2
    const v0, 0x7f07005a

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_0

    const/4 v2, 0x3

    const/4 v2, 0x2

    :pswitch_3
    const v0, 0x7f07005c

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_0

    const/4 v0, 0x0

    const/4 v2, 0x3

    :pswitch_4
    const v0, 0x7f07005e

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_0

    const/4 v1, 0x4

    const/4 v2, 0x3

    :pswitch_5
    const v0, 0x7f070060

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_0

    const/4 v1, 0x3

    const/4 v2, 0x1

    :pswitch_6
    const v0, 0x7f070062

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    :pswitch_7
    const v0, 0x7f070064

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_0

    const/4 v2, 0x6

    const/4 v2, 0x2

    :pswitch_8
    const v0, 0x7f070066

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_0

    const/4 v2, 0x6

    const/4 v2, 0x3

    :pswitch_9
    const v0, 0x7f070068

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setBackgroundResource(I)V

    goto :goto_0

    const/4 v0, 0x2

    const/4 v2, 0x6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
