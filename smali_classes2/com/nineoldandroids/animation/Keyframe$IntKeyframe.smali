.class Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
.super Lcom/nineoldandroids/animation/Keyframe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntKeyframe"
.end annotation


# instance fields
.field mValue:I


# direct methods
.method constructor <init>(F)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/nineoldandroids/animation/Keyframe;-><init>()V

    const/4 v1, 0x6

    iput p1, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mFraction:F

    const/4 v1, 0x0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValueType:Ljava/lang/Class;

    const/4 v1, 0x4

    nop

    return-void

    const/4 v1, 0x3
.end method

.method constructor <init>(FI)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/nineoldandroids/animation/Keyframe;-><init>()V

    const/4 v1, 0x1

    iput p1, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mFraction:F

    const/4 v1, 0x3

    iput p2, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I

    const/4 v1, 0x0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValueType:Ljava/lang/Class;

    const/4 v1, 0x4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mHasValue:Z

    const/4 v1, 0x0

    nop

    return-void

    const/4 v1, 0x5
.end method


# virtual methods
.method public clone()Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
    .locals 4

    const/4 v3, 0x6

    const/4 v3, 0x1

    new-instance v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v1

    iget v2, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I

    invoke-direct {v0, v1, v2}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;-><init>(FI)V

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v3, 0x5

    return-object v0

    const/4 v3, 0x1
.end method

.method public bridge synthetic clone()Lcom/nineoldandroids/animation/Keyframe;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->clone()Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    move-result-object v0

    return-object v0

    const/4 v0, 0x0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v1, 0x5

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->clone()Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    move-result-object v0

    return-object v0

    const/4 v0, 0x0
.end method

.method public getIntValue()I
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x6

    iget v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I

    return v0

    const/4 v0, 0x2
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x2

    iget v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    const/4 v1, 0x5
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x7

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I

    const/4 v2, 0x3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mHasValue:Z

    const/4 v2, 0x3

    :cond_0
    nop

    return-void

    const/4 v2, 0x7
.end method
