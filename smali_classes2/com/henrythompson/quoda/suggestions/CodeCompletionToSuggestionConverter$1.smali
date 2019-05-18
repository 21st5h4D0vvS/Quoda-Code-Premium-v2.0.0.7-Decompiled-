.class Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;->createColorPickerSuggestion(II)Lcom/henrythompson/quoda/suggestions/Suggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;II)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter$1;->this$0:Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;

    iput p2, p0, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter$1;->val$start:I

    iput p3, p0, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter$1;->val$end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x2

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter$1;->this$0:Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;

    invoke-static {v0}, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;->access$000(Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter;)Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    iget v1, p0, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter$1;->val$start:I

    iget v2, p0, Lcom/henrythompson/quoda/suggestions/CodeCompletionToSuggestionConverter$1;->val$end:I

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/document/Document;->setSelection(II)V

    const/4 v5, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const-string v1, "color_picker"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\""

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\""

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/DataController;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v5, 0x4

    nop

    return-void

    const/4 v0, 0x7
.end method
