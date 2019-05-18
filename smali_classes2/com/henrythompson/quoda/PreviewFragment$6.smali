.class Lcom/henrythompson/quoda/PreviewFragment$6;
.super Landroid/webkit/WebChromeClient;


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

    const/4 v0, 0x7

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/PreviewFragment$6;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x64

    const/16 v2, 0x8

    const/4 v4, 0x3

    if-ge p2, v3, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment$6;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/PreviewFragment;->access$200(Lcom/henrythompson/quoda/PreviewFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment$6;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/PreviewFragment;->access$200(Lcom/henrythompson/quoda/PreviewFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v4, 0x7

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment$6;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/PreviewFragment;->access$200(Lcom/henrythompson/quoda/PreviewFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 v4, 0x0

    if-ne p2, v3, :cond_1

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment$6;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/PreviewFragment;->access$200(Lcom/henrythompson/quoda/PreviewFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v4, 0x4

    :cond_1
    nop

    return-void

    const/4 v3, 0x2
.end method
