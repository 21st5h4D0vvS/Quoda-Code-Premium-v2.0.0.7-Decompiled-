.class public abstract Lcom/nineoldandroids/animation/Animator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/animation/Animator$AnimatorListener;
    }
.end annotation


# instance fields
.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    const/4 v1, 0x5

    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public clone()Lcom/nineoldandroids/animation/Animator;
    .locals 8

    const/4 v7, 0x6

    const/4 v7, 0x1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Animator;

    const/4 v7, 0x4

    iget-object v5, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    const/4 v7, 0x3

    iget-object v4, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    const/4 v7, 0x6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    const/4 v7, 0x3

    iget-object v5, v0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v4, 0x0

    const/4 v7, 0x6

    :catch_0
    move-exception v1

    const/4 v7, 0x5

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    const/4 v7, 0x2

    :cond_0
    return-object v0

    const/4 v1, 0x1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v1, 0x5

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/Animator;->clone()Lcom/nineoldandroids/animation/Animator;

    move-result-object v0

    return-object v0

    const/4 v1, 0x4
.end method

.method public end()V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public abstract getDuration()J
.end method

.method public getListeners()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    return-object v0

    const/4 v0, 0x3
.end method

.method public abstract getStartDelay()J
.end method

.method public abstract isRunning()Z
.end method

.method public isStarted()Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/Animator;->isRunning()Z

    move-result v0

    return v0

    const/4 v1, 0x2
.end method

.method public removeAllListeners()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    const/4 v1, 0x7

    :cond_0
    nop

    return-void

    const/4 v0, 0x7
.end method

.method public removeListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    const/4 v1, 0x6

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v0, 0x4

    const/4 v1, 0x5

    :cond_1
    iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nineoldandroids/animation/Animator;->mListeners:Ljava/util/ArrayList;

    goto :goto_0

    const/4 v1, 0x0
.end method

.method public abstract setDuration(J)Lcom/nineoldandroids/animation/Animator;
.end method

.method public abstract setInterpolator(Landroid/view/animation/Interpolator;)V
.end method

.method public abstract setStartDelay(J)V
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public setupEndValues()V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setupStartValues()V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x6
.end method
