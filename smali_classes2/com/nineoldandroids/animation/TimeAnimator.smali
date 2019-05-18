.class public Lcom/nineoldandroids/animation/TimeAnimator;
.super Lcom/nineoldandroids/animation/ValueAnimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/animation/TimeAnimator$TimeListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/nineoldandroids/animation/TimeAnimator$TimeListener;

.field private mPreviousTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x1

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mPreviousTime:J

    const/4 v2, 0x0

    nop

    return-void

    const/4 v2, 0x2
.end method


# virtual methods
.method animateValue(F)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x6
.end method

.method animationFrame(J)Z
    .locals 8

    const/4 v7, 0x6

    const-wide/16 v4, 0x0

    const/4 v7, 0x2

    iget v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mPlayingState:I

    if-nez v0, :cond_0

    const/4 v7, 0x2

    const/4 v0, 0x1

    iput v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mPlayingState:I

    const/4 v7, 0x5

    iget-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mSeekTime:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    const/4 v7, 0x1

    iput-wide p1, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mStartTime:J

    const/4 v7, 0x7

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mListener:Lcom/nineoldandroids/animation/TimeAnimator$TimeListener;

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    iget-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mStartTime:J

    sub-long v2, p1, v0

    const/4 v7, 0x0

    iget-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mPreviousTime:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    const/4 v7, 0x7

    :goto_1
    iput-wide p1, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mPreviousTime:J

    const/4 v7, 0x2

    iget-object v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mListener:Lcom/nineoldandroids/animation/TimeAnimator$TimeListener;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/nineoldandroids/animation/TimeAnimator$TimeListener;->onTimeUpdate(Lcom/nineoldandroids/animation/TimeAnimator;JJ)V

    const/4 v7, 0x1

    :cond_1
    const/4 v0, 0x0

    return v0

    const/4 v5, 0x0

    const/4 v7, 0x1

    :cond_2
    iget-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mSeekTime:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mStartTime:J

    const/4 v7, 0x3

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mSeekTime:J

    goto :goto_0

    const/4 v0, 0x5

    const/4 v7, 0x2

    :cond_3
    iget-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mPreviousTime:J

    sub-long v4, p1, v0

    goto :goto_1

    const/4 v2, 0x3
.end method

.method initAnimation()V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setTimeListener(Lcom/nineoldandroids/animation/TimeAnimator$TimeListener;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mListener:Lcom/nineoldandroids/animation/TimeAnimator$TimeListener;

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x3
.end method
