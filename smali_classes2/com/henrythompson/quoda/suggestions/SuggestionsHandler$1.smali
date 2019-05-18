.class Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$1;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x6

    const/4 v4, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->isNewOrOldPremiumSubscriber()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$1;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-static {v1}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->access$000(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/henrythompson/quoda/UpgradeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x4

    const-string v1, "trigger"

    const-string v2, "trigger"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$1;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-static {v1}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->access$000(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v4, 0x3

    :goto_0
    nop

    return-void

    const/4 v2, 0x2

    const/4 v4, 0x5

    :cond_0
    if-ltz p3, :cond_1

    iget-object v1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$1;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-static {v1}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->access$100(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Lcom/henrythompson/quoda/suggestions/SuggestionsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/suggestions/SuggestionsAdapter;->getCount()I

    move-result v1

    if-ge p3, v1, :cond_1

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$1;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->access$202(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;Z)Z

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$1;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-static {v1}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->access$100(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Lcom/henrythompson/quoda/suggestions/SuggestionsAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/henrythompson/quoda/suggestions/SuggestionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/suggestions/Suggestion;

    iget-object v2, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$1;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-static {v2}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->access$300(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v2

    iget-object v3, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$1;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-virtual {v1, v2, v3}, Lcom/henrythompson/quoda/suggestions/Suggestion;->onSelected(Lcom/henrythompson/quoda/CodeView;Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)V

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$1;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->access$202(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;Z)Z

    const/4 v4, 0x0

    :goto_1
    iget-object v1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$1;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-static {v1}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->access$400(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    const/4 v3, 0x0

    const/4 v4, 0x7

    :cond_1
    const-string v1, "SuggestionsHandler"

    const-string v2, "Selected suggestion position out of bounds"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    const/4 v3, 0x0
.end method
