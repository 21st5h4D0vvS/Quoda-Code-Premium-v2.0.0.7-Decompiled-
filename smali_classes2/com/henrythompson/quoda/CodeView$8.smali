.class Lcom/henrythompson/quoda/CodeView$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/CodeView;->updateSyntaxHighlighting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/CodeView;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/CodeView;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/CodeView$8;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$8;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->invalidateVisibleArea()V

    const/4 v1, 0x7

    nop

    return-void

    const/4 v0, 0x3
.end method
