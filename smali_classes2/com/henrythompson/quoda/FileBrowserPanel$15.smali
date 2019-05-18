.class Lcom/henrythompson/quoda/FileBrowserPanel$15;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/FileBrowserPanel;->showEncodingsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

.field final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/FileBrowserPanel;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$15;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/FileBrowserPanel$15;->val$items:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$15;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    iget-object v1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$15;->val$items:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$902(Lcom/henrythompson/quoda/FileBrowserPanel;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x5

    nop

    return-void

    const/4 v0, 0x2
.end method
