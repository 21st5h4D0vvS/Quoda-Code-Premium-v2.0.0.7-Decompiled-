.class Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3$1;->this$1:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3$1;->this$1:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;

    iget-object v0, v0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$3;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->showSuggestions()V

    const/4 v1, 0x7

    nop

    return-void

    const/4 v0, 0x3
.end method
