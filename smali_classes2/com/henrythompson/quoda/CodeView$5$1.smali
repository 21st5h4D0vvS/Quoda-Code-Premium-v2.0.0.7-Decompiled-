.class Lcom/henrythompson/quoda/CodeView$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/CodeView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/CodeView$5;

.field final synthetic val$alt:Z

.field final synthetic val$ctrl:Z

.field final synthetic val$shift:Z


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/CodeView$5;ZZZ)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/CodeView$5$1;->this$1:Lcom/henrythompson/quoda/CodeView$5;

    iput-boolean p2, p0, Lcom/henrythompson/quoda/CodeView$5$1;->val$ctrl:Z

    iput-boolean p3, p0, Lcom/henrythompson/quoda/CodeView$5$1;->val$shift:Z

    iput-boolean p4, p0, Lcom/henrythompson/quoda/CodeView$5$1;->val$alt:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$5$1;->this$1:Lcom/henrythompson/quoda/CodeView$5;

    iget-object v0, v0, Lcom/henrythompson/quoda/CodeView$5;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-boolean v1, p0, Lcom/henrythompson/quoda/CodeView$5$1;->val$ctrl:Z

    iget-boolean v2, p0, Lcom/henrythompson/quoda/CodeView$5$1;->val$shift:Z

    iget-boolean v3, p0, Lcom/henrythompson/quoda/CodeView$5$1;->val$alt:Z

    iget-object v4, p0, Lcom/henrythompson/quoda/CodeView$5$1;->this$1:Lcom/henrythompson/quoda/CodeView$5;

    iget-char v4, v4, Lcom/henrythompson/quoda/CodeView$5;->val$key:C

    invoke-static {v0, v1, v2, v3, v4}, Lcom/henrythompson/quoda/CodeView;->access$1500(Lcom/henrythompson/quoda/CodeView;ZZZC)V

    const/4 v5, 0x5

    nop

    return-void

    const/4 v0, 0x2
.end method
