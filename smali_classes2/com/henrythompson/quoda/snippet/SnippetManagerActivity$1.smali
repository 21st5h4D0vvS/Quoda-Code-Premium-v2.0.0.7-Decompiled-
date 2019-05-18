.class Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$1;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$1;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->onNewSnippetClick(Landroid/view/View;)V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v1, 0x3
.end method
