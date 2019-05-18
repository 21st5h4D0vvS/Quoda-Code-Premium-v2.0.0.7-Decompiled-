.class Lcom/henrythompson/quoda/CodeView$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/CodeView;->replaceAllFindResults(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/CodeView;

.field final synthetic val$selEnd:I

.field final synthetic val$selStart:I


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/CodeView;II)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/CodeView$11;->this$0:Lcom/henrythompson/quoda/CodeView;

    iput p2, p0, Lcom/henrythompson/quoda/CodeView$11;->val$selStart:I

    iput p3, p0, Lcom/henrythompson/quoda/CodeView$11;->val$selEnd:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView$11;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget v1, p0, Lcom/henrythompson/quoda/CodeView$11;->val$selStart:I

    iget v2, p0, Lcom/henrythompson/quoda/CodeView$11;->val$selEnd:I

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/CodeView;->setSelection(II)V

    const/4 v3, 0x3

    nop

    return-void

    const/4 v0, 0x0
.end method
