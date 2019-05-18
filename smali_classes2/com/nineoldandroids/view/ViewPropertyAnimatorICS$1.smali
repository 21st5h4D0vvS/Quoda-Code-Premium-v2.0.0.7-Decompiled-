.class Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nineoldandroids/view/ViewPropertyAnimatorICS;->setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorICS;

.field final synthetic val$listener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>(Lcom/nineoldandroids/view/ViewPropertyAnimatorICS;Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;->this$0:Lcom/nineoldandroids/view/ViewPropertyAnimatorICS;

    iput-object p2, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;->val$listener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;->val$listener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V

    const/4 v2, 0x3

    nop

    return-void

    const/4 v2, 0x2
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;->val$listener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V

    const/4 v2, 0x6

    nop

    return-void

    const/4 v2, 0x6
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;->val$listener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V

    const/4 v2, 0x4

    nop

    return-void

    const/4 v2, 0x2
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS$1;->val$listener:Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V

    const/4 v2, 0x2

    nop

    return-void

    const/4 v2, 0x6
.end method
