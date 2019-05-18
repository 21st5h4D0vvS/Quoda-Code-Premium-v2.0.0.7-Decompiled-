.class Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
.super Lcom/nineoldandroids/animation/Keyframe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatKeyframe"
.end annotation


# instance fields
.field mValue:F


# direct methods
.method constructor <init>(F)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/nineoldandroids/animation/Keyframe;-><init>()V

    const/4 v1, 0x3

    iput p1, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mFraction:F

    const/4 v1, 0x2

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValueType:Ljava/lang/Class;

    const/4 v1, 0x7

    nop

    return-void

    const/4 v0, 0x0
.end method

.method constructor <init>(FF)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/nineoldandroids/animation/Keyframe;-><init>()V

    const/4 v1, 0x6

    iput p1, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mFraction:F

    const/4 v1, 0x2

    iput p2, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValue:F

    const/4 v1, 0x4

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValueType:Ljava/lang/Class;

    const/4 v1, 0x2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mHasValue:Z

    const/4 v1, 0x0

    nop

    return-void

    const/4 v1, 0x3
.end method


# virtual methods
.method public clone()Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
    .locals 4

    const/4 v3, 0x0

    const/4 v3, 0x3

    new-instance v0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v1

    iget v2, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValue:F

    invoke-direct {v0, v1, v2}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v3, 0x0

    return-object v0

    const/4 v0, 0x3
.end method

.method public bridge synthetic clone()Lcom/nineoldandroids/animation/Keyframe;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->clone()Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    move-result-object v0

    return-object v0

    const/4 v0, 0x5
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->clone()Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    move-result-object v0

    return-object v0

    const/4 v0, 0x4
.end method

.method public getFloatValue()F
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x2

    iget v0, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValue:F

    return v0

    const/4 v1, 0x3
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    iget v0, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    const/4 v0, 0x5
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x5

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x5

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValue:F

    const/4 v2, 0x2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mHasValue:Z

    const/4 v2, 0x0

    :cond_0
    nop

    return-void

    const/4 v1, 0x4
.end method
