.class Lcom/melnykov/fab/FloatingActionButton$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/melnykov/fab/FloatingActionButton;->toggle(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/melnykov/fab/FloatingActionButton;

.field final synthetic val$animate:Z

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/melnykov/fab/FloatingActionButton;ZZ)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$2;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    iput-boolean p2, p0, Lcom/melnykov/fab/FloatingActionButton$2;->val$visible:Z

    iput-boolean p3, p0, Lcom/melnykov/fab/FloatingActionButton$2;->val$animate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/melnykov/fab/FloatingActionButton$2;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    invoke-virtual {v1}, Lcom/melnykov/fab/FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    const/4 v5, 0x6

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v5, 0x2

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v5, 0x5

    :cond_0
    iget-object v1, p0, Lcom/melnykov/fab/FloatingActionButton$2;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    iget-boolean v2, p0, Lcom/melnykov/fab/FloatingActionButton$2;->val$visible:Z

    iget-boolean v3, p0, Lcom/melnykov/fab/FloatingActionButton$2;->val$animate:Z

    invoke-static {v1, v2, v3, v4}, Lcom/melnykov/fab/FloatingActionButton;->access$200(Lcom/melnykov/fab/FloatingActionButton;ZZZ)V

    const/4 v5, 0x5

    return v4

    const/4 v1, 0x0
.end method
