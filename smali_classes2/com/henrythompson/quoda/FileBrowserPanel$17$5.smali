.class Lcom/henrythompson/quoda/FileBrowserPanel$17$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/FileBrowserPanel$17;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/FileBrowserPanel$17;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/FileBrowserPanel$17;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17$5;->this$1:Lcom/henrythompson/quoda/FileBrowserPanel$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public onAddServerComplete(Lcom/henrythompson/quoda/filesystem/Server;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$17$5;->this$1:Lcom/henrythompson/quoda/FileBrowserPanel$17;

    iget-object v0, v0, Lcom/henrythompson/quoda/FileBrowserPanel$17;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/FileBrowserPanel;->setFilesystem(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    const/4 v1, 0x7

    nop

    return-void

    const/4 v1, 0x3
.end method

.method public onCancel(Lcom/henrythompson/quoda/filesystem/Server;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public onDelete(Lcom/henrythompson/quoda/filesystem/Server;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public onEditServerComplete(Lcom/henrythompson/quoda/filesystem/Server;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x3
.end method
