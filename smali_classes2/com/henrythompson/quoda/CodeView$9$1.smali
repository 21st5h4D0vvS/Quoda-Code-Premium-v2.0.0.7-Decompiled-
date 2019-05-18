.class Lcom/henrythompson/quoda/CodeView$9$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/CodeView$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/CodeView$9;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/CodeView$9;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/CodeView$9$1;->this$1:Lcom/henrythompson/quoda/CodeView$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$9$1;->this$1:Lcom/henrythompson/quoda/CodeView$9;

    iget-object v0, v0, Lcom/henrythompson/quoda/CodeView$9;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->invalidate()V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x1
.end method
