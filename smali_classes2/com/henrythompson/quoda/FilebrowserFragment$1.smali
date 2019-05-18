.class Lcom/henrythompson/quoda/FilebrowserFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    const/4 v0, 0x0

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$1;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$1;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v0, p3}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$000(Lcom/henrythompson/quoda/FilebrowserFragment;I)V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x1
.end method
