.class public abstract Lcom/nineoldandroids/animation/Keyframe;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;,
        Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;,
        Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;
    }
.end annotation


# instance fields
.field mFraction:F

.field mHasValue:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field mValueType:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nineoldandroids/animation/Keyframe;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/Keyframe;->mHasValue:Z

    const/4 v1, 0x7

    nop

    return-void

    const/4 v1, 0x0
.end method

.method public static ofFloat(F)Lcom/nineoldandroids/animation/Keyframe;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x4

    new-instance v0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;-><init>(F)V

    return-object v0

    const/4 v1, 0x3
.end method

.method public static ofFloat(FF)Lcom/nineoldandroids/animation/Keyframe;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x5

    new-instance v0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    return-object v0

    const/4 v1, 0x1
.end method

.method public static ofInt(F)Lcom/nineoldandroids/animation/Keyframe;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x2

    new-instance v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    invoke-direct {v0, p0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;-><init>(F)V

    return-object v0

    const/4 v0, 0x3
.end method

.method public static ofInt(FI)Lcom/nineoldandroids/animation/Keyframe;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x3

    new-instance v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;-><init>(FI)V

    return-object v0

    const/4 v1, 0x5
.end method

.method public static ofObject(F)Lcom/nineoldandroids/animation/Keyframe;
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x1

    new-instance v0, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    return-object v0

    const/4 v0, 0x6
.end method

.method public static ofObject(FLjava/lang/Object;)Lcom/nineoldandroids/animation/Keyframe;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    return-object v0

    const/4 v0, 0x0
.end method


# virtual methods
.method public abstract clone()Lcom/nineoldandroids/animation/Keyframe;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe;->clone()Lcom/nineoldandroids/animation/Keyframe;

    move-result-object v0

    return-object v0

    const/4 v1, 0x3
.end method

.method public getFraction()F
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    iget v0, p0, Lcom/nineoldandroids/animation/Keyframe;->mFraction:F

    return v0

    const/4 v0, 0x4
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/nineoldandroids/animation/Keyframe;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0

    const/4 v1, 0x7
.end method

.method public getType()Ljava/lang/Class;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/nineoldandroids/animation/Keyframe;->mValueType:Ljava/lang/Class;

    return-object v0

    const/4 v1, 0x2
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public hasValue()Z
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x5

    iget-boolean v0, p0, Lcom/nineoldandroids/animation/Keyframe;->mHasValue:Z

    return v0

    const/4 v1, 0x6
.end method

.method public setFraction(F)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x3

    iput p1, p0, Lcom/nineoldandroids/animation/Keyframe;->mFraction:F

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/nineoldandroids/animation/Keyframe;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public abstract setValue(Ljava/lang/Object;)V
.end method
