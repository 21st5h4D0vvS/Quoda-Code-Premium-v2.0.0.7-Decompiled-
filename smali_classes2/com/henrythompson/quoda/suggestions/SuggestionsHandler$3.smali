.class Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private show:Z

.field final synthetic this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x4

    iget-boolean v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;->show:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-static {v0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->access$300(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v0

    new-instance v1, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3$1;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3$1;-><init>(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;)V

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/CodeView;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x6

    :cond_0
    nop

    return-void

    const/4 v1, 0x1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-static {v0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->access$500(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-static {v0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->access$500(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;->cancel(Z)Z

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->access$502(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;)Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$SuggestTask;

    const/4 v2, 0x7

    :cond_0
    nop

    return-void

    const/4 v1, 0x2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-static {v0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->access$200(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p4, v1, :cond_0

    if-nez p3, :cond_0

    const/4 v2, 0x4

    iput-boolean v1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;->show:Z

    const/4 v2, 0x3

    :goto_0
    nop

    return-void

    const/4 v2, 0x4

    const/4 v2, 0x4

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-static {v0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->access$200(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    if-ne p3, v1, :cond_1

    const/4 v2, 0x0

    iput-boolean v1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;->show:Z

    goto :goto_0

    const/4 v1, 0x2

    const/4 v2, 0x3

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;->show:Z

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->hidePopup()V

    goto :goto_0

    const/4 v2, 0x0
.end method
