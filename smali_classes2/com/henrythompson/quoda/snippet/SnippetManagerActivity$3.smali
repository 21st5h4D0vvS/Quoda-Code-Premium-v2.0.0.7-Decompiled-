.class Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$3;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
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

    const/4 v4, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$3;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$000(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    move v0, p3

    const/4 v4, 0x3

    :cond_0
    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$3;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$100(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Folder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$3;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$3;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-static {v3}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$000(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$3;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$600(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$002(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;Ljava/lang/String;)Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$3;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->refresh()V

    const/4 v4, 0x4

    :goto_0
    nop

    return-void

    const/4 v2, 0x5

    const/4 v4, 0x7

    :cond_1
    add-int/lit8 v0, p3, -0x1

    const/4 v4, 0x2

    if-nez p3, :cond_0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$3;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$3;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-static {v3}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$000(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$002(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;Ljava/lang/String;)Ljava/lang/String;

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$3;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->refresh()V

    goto :goto_0

    const/4 v2, 0x5

    const/4 v4, 0x7

    :cond_2
    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$3;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-static {v1, v0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$400(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;I)V

    goto :goto_0

    const/4 v4, 0x3
.end method
