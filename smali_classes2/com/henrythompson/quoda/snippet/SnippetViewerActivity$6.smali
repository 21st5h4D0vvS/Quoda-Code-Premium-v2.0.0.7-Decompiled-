.class Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$6;->this$0:Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$6;->this$0:Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->access$102(Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;Z)Z

    const/4 v2, 0x5

    nop

    return-void

    const/4 v2, 0x5
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x7
.end method
