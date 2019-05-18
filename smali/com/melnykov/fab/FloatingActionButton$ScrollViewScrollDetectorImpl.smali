.class Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;
.super Lcom/melnykov/fab/ScrollViewScrollDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/melnykov/fab/FloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollViewScrollDetectorImpl"
.end annotation


# instance fields
.field private mListener:Lcom/melnykov/fab/ScrollDirectionListener;

.field final synthetic this$0:Lcom/melnykov/fab/FloatingActionButton;


# direct methods
.method private constructor <init>(Lcom/melnykov/fab/FloatingActionButton;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    invoke-direct {p0}, Lcom/melnykov/fab/ScrollViewScrollDetector;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method

.method synthetic constructor <init>(Lcom/melnykov/fab/FloatingActionButton;Lcom/melnykov/fab/FloatingActionButton$1;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x6

    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;-><init>(Lcom/melnykov/fab/FloatingActionButton;)V

    nop

    return-void

    const/4 v0, 0x4
.end method

.method static synthetic access$800(Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;Lcom/melnykov/fab/ScrollDirectionListener;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->setListener(Lcom/melnykov/fab/ScrollDirectionListener;)V

    nop

    return-void

    const/4 v0, 0x0
.end method

.method private setListener(Lcom/melnykov/fab/ScrollDirectionListener;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->mListener:Lcom/melnykov/fab/ScrollDirectionListener;

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public onScrollDown()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/melnykov/fab/FloatingActionButton;->show()V

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->mListener:Lcom/melnykov/fab/ScrollDirectionListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->mListener:Lcom/melnykov/fab/ScrollDirectionListener;

    invoke-interface {v0}, Lcom/melnykov/fab/ScrollDirectionListener;->onScrollDown()V

    const/4 v1, 0x2

    :cond_0
    nop

    return-void

    const/4 v0, 0x5
.end method

.method public onScrollUp()V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->this$0:Lcom/melnykov/fab/FloatingActionButton;

    invoke-virtual {v0}, Lcom/melnykov/fab/FloatingActionButton;->hide()V

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->mListener:Lcom/melnykov/fab/ScrollDirectionListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/melnykov/fab/FloatingActionButton$ScrollViewScrollDetectorImpl;->mListener:Lcom/melnykov/fab/ScrollDirectionListener;

    invoke-interface {v0}, Lcom/melnykov/fab/ScrollDirectionListener;->onScrollUp()V

    const/4 v1, 0x3

    :cond_0
    nop

    return-void

    const/4 v1, 0x0
.end method
