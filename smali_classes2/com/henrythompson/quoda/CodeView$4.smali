.class Lcom/henrythompson/quoda/CodeView$4;
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

.field final synthetic val$before:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/CodeView;II)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/CodeView$4;->this$0:Lcom/henrythompson/quoda/CodeView;

    iput p2, p0, Lcom/henrythompson/quoda/CodeView$4;->val$start:I

    iput p3, p0, Lcom/henrythompson/quoda/CodeView$4;->val$before:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x3

    const/4 v5, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView$4;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-static {v1}, Lcom/henrythompson/quoda/CodeView;->access$1400(Lcom/henrythompson/quoda/CodeView;)Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/QuodaPreferences;->getUserSpecifiedTab()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView$4;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v1

    iget v2, p0, Lcom/henrythompson/quoda/CodeView$4;->val$start:I

    iget v3, p0, Lcom/henrythompson/quoda/CodeView$4;->val$start:I

    iget v4, p0, Lcom/henrythompson/quoda/CodeView$4;->val$before:I

    add-int/2addr v3, v4

    invoke-interface {v1, v2, v3, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v5, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView$4;->this$0:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v1

    iget v2, p0, Lcom/henrythompson/quoda/CodeView$4;->val$start:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/4 v5, 0x4

    nop

    return-void

    const/4 v3, 0x6
.end method
