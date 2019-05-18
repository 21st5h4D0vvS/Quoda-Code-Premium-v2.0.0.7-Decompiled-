.class Lcom/henrythompson/quoda/PreviewFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/PreviewFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/PreviewFragment;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/PreviewFragment;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/PreviewFragment$4;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x3

    if-nez p2, :cond_0

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment$4;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    iget-object v1, p0, Lcom/henrythompson/quoda/PreviewFragment$4;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    invoke-static {v1}, Lcom/henrythompson/quoda/PreviewFragment;->access$100(Lcom/henrythompson/quoda/PreviewFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/PreviewFragment;->setBaseUrl(Ljava/lang/String;)V

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment$4;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/PreviewFragment;->access$000(Lcom/henrythompson/quoda/PreviewFragment;)V

    const/4 v2, 0x1

    :cond_0
    nop

    return-void

    const/4 v1, 0x2
.end method
