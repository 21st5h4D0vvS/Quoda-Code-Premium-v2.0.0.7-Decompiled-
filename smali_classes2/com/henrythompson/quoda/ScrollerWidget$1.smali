.class Lcom/henrythompson/quoda/ScrollerWidget$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/ScrollerWidget;
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

    const/4 v0, 0x5

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/ScrollerWidget$1;->this$0:Lcom/henrythompson/quoda/ScrollerWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/ScrollerWidget$1;->this$0:Lcom/henrythompson/quoda/ScrollerWidget;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/ScrollerWidget;->setState(I)V

    const/4 v2, 0x3

    nop

    return-void

    const/4 v0, 0x4
.end method
