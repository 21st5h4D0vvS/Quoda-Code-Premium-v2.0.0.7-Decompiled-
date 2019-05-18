.class Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->showPopup([I)V
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

    const/4 v0, 0x4

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$4;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$4;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-static {v0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->access$900(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    const/4 v2, 0x7

    nop

    return-void

    const/4 v2, 0x0
.end method
