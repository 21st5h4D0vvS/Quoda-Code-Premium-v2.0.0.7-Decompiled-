.class Lcom/henrythompson/quoda/ScrollerWidget$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/ScrollerWidget;->linkCodeView(Lcom/henrythompson/quoda/CodeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/ScrollerWidget;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/ScrollerWidget;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/ScrollerWidget$2;->this$0:Lcom/henrythompson/quoda/ScrollerWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public onScrollChanged(IIII)V
    .locals 5

    const/4 v4, 0x2

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget$2;->this$0:Lcom/henrythompson/quoda/ScrollerWidget;

    invoke-static {v0}, Lcom/henrythompson/quoda/ScrollerWidget;->access$000(Lcom/henrythompson/quoda/ScrollerWidget;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v4, 0x3

    :goto_0
    nop

    return-void

    const/4 v3, 0x7

    const/4 v4, 0x5

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget$2;->this$0:Lcom/henrythompson/quoda/ScrollerWidget;

    invoke-static {v0}, Lcom/henrythompson/quoda/ScrollerWidget;->access$100(Lcom/henrythompson/quoda/ScrollerWidget;)V

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget$2;->this$0:Lcom/henrythompson/quoda/ScrollerWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/ScrollerWidget;->setState(I)V

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget$2;->this$0:Lcom/henrythompson/quoda/ScrollerWidget;

    invoke-static {v0}, Lcom/henrythompson/quoda/ScrollerWidget;->access$300(Lcom/henrythompson/quoda/ScrollerWidget;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/ScrollerWidget$2;->this$0:Lcom/henrythompson/quoda/ScrollerWidget;

    invoke-static {v1}, Lcom/henrythompson/quoda/ScrollerWidget;->access$200(Lcom/henrythompson/quoda/ScrollerWidget;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    const/4 v4, 0x3
.end method
