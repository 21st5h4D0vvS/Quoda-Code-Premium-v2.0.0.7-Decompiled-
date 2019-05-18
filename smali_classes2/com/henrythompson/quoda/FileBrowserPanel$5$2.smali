.class Lcom/henrythompson/quoda/FileBrowserPanel$5$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/FileBrowserPanel$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/FileBrowserPanel$5;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/FileBrowserPanel$5;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$5$2;->this$1:Lcom/henrythompson/quoda/FileBrowserPanel$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$5$2;->this$1:Lcom/henrythompson/quoda/FileBrowserPanel$5;

    iget-object v0, v0, Lcom/henrythompson/quoda/FileBrowserPanel$5;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$300(Lcom/henrythompson/quoda/FileBrowserPanel;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v2, 0x6

    nop

    return-void

    const/4 v2, 0x2
.end method
