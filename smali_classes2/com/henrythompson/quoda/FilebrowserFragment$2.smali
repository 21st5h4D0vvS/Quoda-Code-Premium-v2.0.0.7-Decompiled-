.class Lcom/henrythompson/quoda/FilebrowserFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/FilebrowserFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/FilebrowserFragment;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/FilebrowserFragment;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$2;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$2;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->showNewFileDialog()V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x2
.end method
