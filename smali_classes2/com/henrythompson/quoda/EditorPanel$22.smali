.class Lcom/henrythompson/quoda/EditorPanel$22;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->previewInBrowserFromLocalFile(Lcom/henrythompson/quoda/document/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$22;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public onAuthNeededException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public onFilesystemException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FilesystemException;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$22;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$2200(Lcom/henrythompson/quoda/EditorPanel;)V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public onInternetRequiredAndUnavailable(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public onOpenFileFinished(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public onOpenFileStart(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public onSaveFileFinished(Lcom/henrythompson/quoda/document/Document;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v7, 0x7

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "markdown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v7, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/EditorPanel$22;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/henrythompson/quoda/EditorPanel;->access$2100(Lcom/henrythompson/quoda/EditorPanel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x3

    sget-object v3, Lcom/henrythompson/quoda/Directories;->DIRECTORY_QUODA:Ljava/io/File;

    const/4 v7, 0x2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v7, 0x6

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    const/4 v7, 0x4

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/temp.html"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x2

    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v7, 0x0

    invoke-virtual {v1, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/4 v7, 0x4

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x6

    :goto_0
    iget-object v5, p0, Lcom/henrythompson/quoda/EditorPanel$22;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const/4 v6, 0x1

    invoke-static {v5, v6, v2}, Lcom/henrythompson/quoda/EditorPanel;->access$2000(Lcom/henrythompson/quoda/EditorPanel;ZLjava/lang/String;)V

    const/4 v7, 0x3

    nop

    return-void

    const/4 v4, 0x7

    const/4 v7, 0x3

    :catch_0
    move-exception v0

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/EditorPanel$22;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v5}, Lcom/henrythompson/quoda/EditorPanel;->access$2200(Lcom/henrythompson/quoda/EditorPanel;)V

    goto :goto_0

    const/4 v7, 0x4

    const/4 v7, 0x6

    :cond_2
    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getFilePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    const/4 v7, 0x4
.end method

.method public onSaveFileStart(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x1
.end method
