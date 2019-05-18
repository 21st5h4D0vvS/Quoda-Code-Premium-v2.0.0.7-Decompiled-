.class Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->renameSnippetOrFolder(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

.field final synthetic val$index:I

.field final synthetic val$isFolder:Z

.field final synthetic val$textbox:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;ILandroid/widget/EditText;Z)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    iput p2, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->val$index:I

    iput-object p3, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->val$textbox:Landroid/widget/EditText;

    iput-boolean p4, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->val$isFolder:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11

    const/4 v10, 0x7

    const/4 v7, 0x1

    const/4 v10, 0x3

    iget-object v8, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-static {v8}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$600(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)Ljava/util/ArrayList;

    move-result-object v8

    iget v9, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->val$index:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getInstance()Lcom/henrythompson/quoda/snippet/SnippetsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v1

    const/4 v10, 0x7

    iget-object v8, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->val$textbox:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x6

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v10, 0x6

    iget-object v8, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    const v9, 0x7f0d0186

    invoke-static {v8, v9, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    const/4 v10, 0x5

    iget-object v7, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    iget v8, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->val$index:I

    invoke-static {v7, v8}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$200(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;I)V

    const/4 v10, 0x1

    :goto_0
    nop

    return-void

    const/4 v10, 0x0

    const/4 v10, 0x1

    :cond_0
    iget-boolean v8, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->val$isFolder:Z

    if-eqz v8, :cond_2

    const/4 v10, 0x5

    iget-object v8, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-static {v8}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$000(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2, v7}, Lcom/henrythompson/quoda/utils/Utils;->concatSnippetFolderPath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-static {v8}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$000(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5, v7}, Lcom/henrythompson/quoda/utils/Utils;->concatSnippetFolderPath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getFolderExists(Ljava/lang/String;)Z

    move-result v0

    const/4 v10, 0x4

    if-eqz v0, :cond_1

    const/4 v10, 0x7

    iget-object v7, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-static {v7, v2}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$800(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;Ljava/lang/String;)V

    const/4 v10, 0x6

    iget-object v7, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    iget v8, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->val$index:I

    invoke-static {v7, v8}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$200(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;I)V

    goto :goto_0

    const/4 v1, 0x6

    const/4 v10, 0x6

    :cond_1
    invoke-virtual {v1, v4, v3}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->updateFolder(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x6

    :goto_1
    iget-object v7, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->refresh()V

    goto :goto_0

    const/4 v1, 0x4

    const/4 v10, 0x5

    :cond_2
    iget-object v8, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-static {v8}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$000(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getSnippetForLocation(Ljava/lang/String;Ljava/lang/String;)Lcom/henrythompson/quoda/snippet/Snippet;

    move-result-object v8

    if-eqz v8, :cond_3

    move v0, v7

    const/4 v10, 0x6

    :goto_2
    if-eqz v0, :cond_4

    const/4 v10, 0x4

    iget-object v7, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-static {v7, v2}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$800(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;Ljava/lang/String;)V

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    iget v8, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->val$index:I

    invoke-static {v7, v8}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$200(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;I)V

    goto :goto_0

    const/4 v0, 0x0

    const/4 v10, 0x5

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    const/4 v1, 0x0

    const/4 v10, 0x1

    :cond_4
    iget-object v7, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-static {v7}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$000(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getSnippetForLocation(Ljava/lang/String;Ljava/lang/String;)Lcom/henrythompson/quoda/snippet/Snippet;

    move-result-object v6

    const/4 v10, 0x3

    invoke-virtual {v6, v2}, Lcom/henrythompson/quoda/snippet/Snippet;->setName(Ljava/lang/String;)V

    const/4 v10, 0x4

    invoke-virtual {v1, v6}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->updateSnippet(Lcom/henrythompson/quoda/snippet/Snippet;)V

    goto :goto_1

    const/4 v3, 0x4
.end method
