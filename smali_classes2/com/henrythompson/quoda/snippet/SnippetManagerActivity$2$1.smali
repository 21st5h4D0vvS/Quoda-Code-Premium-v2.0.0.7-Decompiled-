.class Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;

.field final synthetic val$isFolder:Z

.field final synthetic val$selectedSnippet:I


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;ZI)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2$1;->this$1:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;

    iput-boolean p2, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2$1;->val$isFolder:Z

    iput p3, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2$1;->val$selectedSnippet:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x4

    iget-boolean v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2$1;->val$isFolder:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    const/4 v2, 0x0

    :goto_0
    nop

    return-void

    const/4 v2, 0x1

    const/4 v2, 0x1

    :pswitch_0
    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2$1;->this$1:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;

    iget-object v0, v0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    iget v1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2$1;->val$selectedSnippet:I

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$200(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;I)V

    goto :goto_0

    const/4 v0, 0x7

    const/4 v2, 0x6

    :pswitch_1
    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2$1;->this$1:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;

    iget-object v0, v0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    iget v1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2$1;->val$selectedSnippet:I

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$300(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;I)V

    goto :goto_0

    const/4 v2, 0x5

    const/4 v2, 0x5

    :cond_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    const/4 v0, 0x2

    const/4 v2, 0x3

    :pswitch_2
    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2$1;->this$1:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;

    iget-object v0, v0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    iget v1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2$1;->val$selectedSnippet:I

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$400(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;I)V

    goto :goto_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :pswitch_3
    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2$1;->this$1:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;

    iget-object v0, v0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    iget v1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2$1;->val$selectedSnippet:I

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$500(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;I)V

    goto :goto_0

    const/4 v2, 0x3

    const/4 v2, 0x5

    :pswitch_4
    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2$1;->this$1:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;

    iget-object v0, v0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    iget v1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2$1;->val$selectedSnippet:I

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$200(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;I)V

    goto :goto_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :pswitch_5
    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2$1;->this$1:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;

    iget-object v0, v0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    iget v1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2$1;->val$selectedSnippet:I

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->access$300(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;I)V

    goto :goto_0

    const/4 v0, 0x4

    const/4 v2, 0x1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    const/4 v2, 0x5

    nop

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
