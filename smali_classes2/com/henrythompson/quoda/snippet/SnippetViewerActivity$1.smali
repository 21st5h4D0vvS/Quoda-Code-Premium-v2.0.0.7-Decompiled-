.class Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->saveSnippet(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;

.field final synthetic val$finishActivityOnComplete:Z


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;Z)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$1;->this$0:Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;

    iput-boolean p2, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$1;->val$finishActivityOnComplete:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$1;->this$0:Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;

    iget-boolean v1, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$1;->val$finishActivityOnComplete:Z

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->access$000(Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;Z)V

    const/4 v2, 0x4

    nop

    return-void

    const/4 v1, 0x2
.end method
