.class Lcom/henrythompson/quoda/FileBrowserPanel$5$1;
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

    const/4 v0, 0x4

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$5$1;->this$1:Lcom/henrythompson/quoda/FileBrowserPanel$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$5$1;->this$1:Lcom/henrythompson/quoda/FileBrowserPanel$5;

    iget-object v0, v0, Lcom/henrythompson/quoda/FileBrowserPanel$5;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$100(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/FilebrowserFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->refresh()V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x0
.end method
