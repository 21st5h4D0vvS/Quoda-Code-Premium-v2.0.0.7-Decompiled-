.class Lcom/henrythompson/quoda/FilebrowserActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/FileBrowserPanel$OnCloseFileBrowserPanelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/FilebrowserActivity;->attachFilebrowserCloseListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/FilebrowserActivity;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/FilebrowserActivity;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/FilebrowserActivity$2;->this$0:Lcom/henrythompson/quoda/FilebrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public onCloseFileBrowserPanel()V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserActivity$2;->this$0:Lcom/henrythompson/quoda/FilebrowserActivity;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/FilebrowserActivity;->finish()V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x4
.end method
