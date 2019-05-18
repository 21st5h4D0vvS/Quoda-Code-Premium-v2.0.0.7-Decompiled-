.class Lcom/henrythompson/quoda/CodeView$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/CodeView;->handleShortcutOnTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/CodeView;

.field final synthetic val$count:I

.field final synthetic val$key:C

.field final synthetic val$oldText:Ljava/lang/String;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/CodeView;IILjava/lang/String;C)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/CodeView$5;->this$0:Lcom/henrythompson/quoda/CodeView;

    iput p2, p0, Lcom/henrythompson/quoda/CodeView$5;->val$start:I

    iput p3, p0, Lcom/henrythompson/quoda/CodeView$5;->val$count:I

    iput-object p4, p0, Lcom/henrythompson/quoda/CodeView$5;->val$oldText:Ljava/lang/String;

    iput-char p5, p0, Lcom/henrythompson/quoda/CodeView$5;->val$key:C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView$5;->this$0:Lcom/henrythompson/quoda/CodeView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/henrythompson/quoda/CodeView;->access$302(Lcom/henrythompson/quoda/CodeView;Z)Z

    const/4 v8, 0x7

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView$5;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v3

    iget v4, p0, Lcom/henrythompson/quoda/CodeView$5;->val$start:I

    iget v5, p0, Lcom/henrythompson/quoda/CodeView$5;->val$start:I

    iget v6, p0, Lcom/henrythompson/quoda/CodeView$5;->val$count:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/henrythompson/quoda/CodeView$5;->val$oldText:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v8, 0x1

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView$5;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget v4, p0, Lcom/henrythompson/quoda/CodeView$5;->val$start:I

    iget v5, p0, Lcom/henrythompson/quoda/CodeView$5;->val$start:I

    iget-object v6, p0, Lcom/henrythompson/quoda/CodeView$5;->val$oldText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/henrythompson/quoda/CodeView;->setSelection(II)V

    const/4 v8, 0x1

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView$5;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v3, v7}, Lcom/henrythompson/quoda/CodeView;->access$302(Lcom/henrythompson/quoda/CodeView;Z)Z

    const/4 v8, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView$5;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-boolean v1, v3, Lcom/henrythompson/quoda/CodeView;->mCtrlPressed:Z

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView$5;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-boolean v2, v3, Lcom/henrythompson/quoda/CodeView;->mShiftPressed:Z

    const/4 v8, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView$5;->this$0:Lcom/henrythompson/quoda/CodeView;

    iget-boolean v0, v3, Lcom/henrythompson/quoda/CodeView;->mAltPressed:Z

    const/4 v8, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView$5;->this$0:Lcom/henrythompson/quoda/CodeView;

    iput-boolean v7, v3, Lcom/henrythompson/quoda/CodeView;->mCtrlPressed:Z

    const/4 v8, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView$5;->this$0:Lcom/henrythompson/quoda/CodeView;

    iput-boolean v7, v3, Lcom/henrythompson/quoda/CodeView;->mShiftPressed:Z

    const/4 v8, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView$5;->this$0:Lcom/henrythompson/quoda/CodeView;

    iput-boolean v7, v3, Lcom/henrythompson/quoda/CodeView;->mAltPressed:Z

    const/4 v8, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView$5;->this$0:Lcom/henrythompson/quoda/CodeView;

    new-instance v4, Lcom/henrythompson/quoda/CodeView$5$1;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/henrythompson/quoda/CodeView$5$1;-><init>(Lcom/henrythompson/quoda/CodeView$5;ZZZ)V

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/CodeView;->post(Ljava/lang/Runnable;)Z

    const/4 v8, 0x2

    nop

    return-void

    const/4 v2, 0x5
.end method
