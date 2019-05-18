.class Lcom/henrythompson/quoda/EditorActivity$5$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorActivity$5$1;->onAuthNeededException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/henrythompson/quoda/EditorActivity$5$1;

.field final synthetic val$document:Lcom/henrythompson/quoda/document/Document;

.field final synthetic val$thisListener:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorActivity$5$1;Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1$1;->this$2:Lcom/henrythompson/quoda/EditorActivity$5$1;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorActivity$5$1$1;->val$document:Lcom/henrythompson/quoda/document/Document;

    iput-object p3, p0, Lcom/henrythompson/quoda/EditorActivity$5$1$1;->val$thisListener:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x3

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$5$1$1;->val$document:Lcom/henrythompson/quoda/document/Document;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1$1;->val$thisListener:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorActivity$5$1$1;->this$2:Lcom/henrythompson/quoda/EditorActivity$5$1;

    iget-object v2, v2, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget-object v2, v2, Lcom/henrythompson/quoda/EditorActivity$5;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-static {v0, v1, v2}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;->saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;Landroid/app/Activity;)V

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$5$1$1;->this$2:Lcom/henrythompson/quoda/EditorActivity$5$1;

    iget-object v0, v0, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget-object v0, v0, Lcom/henrythompson/quoda/EditorActivity$5;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/EditorActivity;->removeAuthHandler()V

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$5$1$1;->this$2:Lcom/henrythompson/quoda/EditorActivity$5$1;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1$1;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/EditorActivity$5$1;->access$200(Lcom/henrythompson/quoda/EditorActivity$5$1;Lcom/henrythompson/quoda/document/Document;)V

    const/4 v3, 0x5

    nop

    return-void

    const/4 v0, 0x7
.end method
