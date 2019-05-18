.class Lcom/henrythompson/quoda/FileBrowserPanel$14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/FileBrowserPanel;->saveFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/FileBrowserPanel;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/FileBrowserPanel;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/FileBrowserPanel$14;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public onAuthNeeded(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel$14;->this$0:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/FileBrowserPanel;->access$700(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;->onAuthNeededException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v0, 0x5
.end method
