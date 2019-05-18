.class Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->cancelSnippet()V
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

    const/4 v0, 0x3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$4;->this$0:Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$4;->this$0:Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->finish()V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x3
.end method
