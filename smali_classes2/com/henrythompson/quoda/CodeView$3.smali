.class Lcom/henrythompson/quoda/CodeView$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/CodeView;->handleTabInsertedOnTextChangedNormal(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/CodeView;

.field final synthetic val$isShiftPressed:Z


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/CodeView;Z)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/CodeView$3;->this$0:Lcom/henrythompson/quoda/CodeView;

    iput-boolean p2, p0, Lcom/henrythompson/quoda/CodeView$3;->val$isShiftPressed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView$3;->val$isShiftPressed:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$3;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->unindentSelection()V

    const/4 v1, 0x5

    :goto_0
    nop

    return-void

    const/4 v0, 0x3

    const/4 v1, 0x1

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$3;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->indentSelection()V

    goto :goto_0

    const/4 v0, 0x6
.end method
