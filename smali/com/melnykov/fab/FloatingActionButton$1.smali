.class Lcom/melnykov/fab/FloatingActionButton$1;
.super Landroid/view/ViewOutlineProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/melnykov/fab/FloatingActionButton;->setBackgroundCompat(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/melnykov/fab/FloatingActionButton;


# direct methods
.method constructor <init>(Lcom/melnykov/fab/FloatingActionButton;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$1;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/melnykov/fab/FloatingActionButton$1;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    iget-object v1, p0, Lcom/melnykov/fab/FloatingActionButton$1;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    invoke-static {v1}, Lcom/melnykov/fab/FloatingActionButton;->access$000(Lcom/melnykov/fab/FloatingActionButton;)I

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/melnykov/fab/R$dimen;->fab_size_normal:I

    :goto_0
    invoke-static {v2, v1}, Lcom/melnykov/fab/FloatingActionButton;->access$100(Lcom/melnykov/fab/FloatingActionButton;I)I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v3, v0, v0}, Landroid/graphics/Outline;->setOval(IIII)V

    const/4 v4, 0x0

    nop

    return-void

    const/4 v2, 0x5

    const/4 v4, 0x0

    :cond_0
    sget v1, Lcom/melnykov/fab/R$dimen;->fab_size_mini:I

    goto :goto_0

    const/4 v2, 0x0
.end method
