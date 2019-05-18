.class Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$2;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler$2;->this$0:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-static {v0}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->access$300(Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;)Lcom/henrythompson/quoda/CodeView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/henrythompson/quoda/CodeView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    const/4 v1, 0x3

    const/4 v0, 0x0

    return v0

    const/4 v1, 0x6
.end method
