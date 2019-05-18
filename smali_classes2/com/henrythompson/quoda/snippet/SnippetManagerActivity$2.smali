.class Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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

    const/4 v0, 0x6

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v7, 0x6

    const/4 v7, 0x7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-static {v4}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$000(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v7, 0x6

    move v3, p3

    const/4 v7, 0x2

    :cond_0
    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-static {v4}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$100(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "Folder"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x5

    if-eqz v1, :cond_2

    const/4 v7, 0x0

    const v4, 0x7f0d012d

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x1

    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    const v6, 0x7f0d019e

    const/4 v7, 0x0

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    const v6, 0x7f0d006c

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v7, 0x7

    :goto_0
    new-instance v4, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2$1;

    invoke-direct {v4, p0, v1, v3}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2$1;-><init>(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;ZI)V

    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x3

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v7, 0x6

    const/4 v4, 0x1

    :goto_1
    return v4

    const/4 v5, 0x2

    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v3, p3, -0x1

    const/4 v7, 0x0

    if-nez p3, :cond_0

    const/4 v7, 0x4

    const/4 v4, 0x1

    goto :goto_1

    const/4 v4, 0x5

    const/4 v7, 0x7

    :cond_2
    const v4, 0x7f0d0227

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x2

    const/4 v4, 0x4

    new-array v2, v4, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    const v6, 0x7f0d0132

    const/4 v7, 0x2

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    const v6, 0x7f0d00c5

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    const v6, 0x7f0d019e

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    const v6, 0x7f0d006c

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    goto :goto_0

    const/4 v4, 0x4
.end method
