.class Lcom/henrythompson/quoda/EditorActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorActivity;->showSaveModifiedFilesBeforeExitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorActivity;

.field final synthetic val$documentUuids:Ljava/util/ArrayList;

.field final synthetic val$listedDocumentsCount:I

.field final synthetic val$shouldSave:[Z


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorActivity;ILjava/util/ArrayList;[Z)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorActivity$5;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    iput p2, p0, Lcom/henrythompson/quoda/EditorActivity$5;->val$listedDocumentsCount:I

    iput-object p3, p0, Lcom/henrythompson/quoda/EditorActivity$5;->val$documentUuids:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/henrythompson/quoda/EditorActivity$5;->val$shouldSave:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v5, 0x5

    new-instance v1, Lcom/henrythompson/quoda/EditorActivity$5$1;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/EditorActivity$5$1;-><init>(Lcom/henrythompson/quoda/EditorActivity$5;)V

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/henrythompson/quoda/EditorActivity$5;->val$listedDocumentsCount:I

    if-ge v0, v3, :cond_0

    const/4 v5, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorActivity$5;->val$shouldSave:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorActivity$5;->val$documentUuids:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x2

    :cond_0
    if-eqz v2, :cond_2

    const/4 v5, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorActivity$5;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    iget-object v3, v3, Lcom/henrythompson/quoda/EditorActivity;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v3, v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocumentById(Ljava/lang/String;)Lcom/henrythompson/quoda/document/Document;

    move-result-object v3

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorActivity$5;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-static {v3, v1, v4}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;->saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;Landroid/app/Activity;)V

    const/4 v5, 0x3

    :goto_1
    nop

    return-void

    const/4 v3, 0x1

    const/4 v5, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v3, 0x4

    const/4 v5, 0x2

    :cond_2
    iget-object v3, p0, Lcom/henrythompson/quoda/EditorActivity$5;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-static {v3}, Lcom/henrythompson/quoda/EditorActivity;->access$501(Lcom/henrythompson/quoda/EditorActivity;)V

    goto :goto_1

    const/4 v3, 0x0
.end method
