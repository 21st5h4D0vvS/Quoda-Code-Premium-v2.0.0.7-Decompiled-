.class Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->onNewFolderClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

.field final synthetic val$textbox:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$5;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    iput-object p2, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$5;->val$textbox:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    const/4 v9, 0x7

    const/4 v8, 0x1

    const/4 v9, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$5;->val$textbox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$5;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-static {v3}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$000(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v8}, Lcom/henrythompson/quoda/utils/Utils;->concatSnippetFolderPath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getInstance()Lcom/henrythompson/quoda/snippet/SnippetsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v0

    const/4 v9, 0x7

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->addFolder(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v9, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$5;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$5;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    const v5, 0x7f0d0228

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/4 v9, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$5;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-static {v3, v1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$700(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;Ljava/lang/String;)V

    const/4 v9, 0x6

    :goto_0
    nop

    return-void

    const/4 v1, 0x7

    const/4 v9, 0x1

    :cond_0
    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$5;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->refresh()V

    goto :goto_0

    const/4 v7, 0x6
.end method
