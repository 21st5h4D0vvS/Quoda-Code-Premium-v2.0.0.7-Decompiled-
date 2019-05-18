.class Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/SourceDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

.field mDownloadDialog:Landroid/app/ProgressDialog;

.field mErrorMessage:Ljava/lang/String;

.field mErrorTitle:Ljava/lang/String;

.field mUrl:Ljava/net/URL;

.field final synthetic this$0:Lcom/henrythompson/quoda/SourceDownloader;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/SourceDownloader;Ljava/net/URL;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->this$0:Lcom/henrythompson/quoda/SourceDownloader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v2, 0x4

    iput-object v0, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mErrorMessage:Ljava/lang/String;

    const/4 v2, 0x3

    iput-object v0, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mErrorTitle:Ljava/lang/String;

    const/4 v2, 0x3

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    const/4 v2, 0x2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot accept URL or Context as null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    const/4 v2, 0x5

    :cond_1
    iput-object p2, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mUrl:Ljava/net/URL;

    const/4 v2, 0x1

    iput-object p3, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const-class v1, Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/DataController;->getDataManager(Ljava/lang/Class;)Lcom/henrythompson/quoda/DataManager;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/document/DocumentsManager;

    iput-object v0, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    const/4 v2, 0x1

    nop

    return-void

    const/4 v2, 0x3
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x2
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    :try_start_0
    iget-object v10, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mUrl:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    const-string v10, "http"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mUrl:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_0
    const/16 v10, 0x4e20

    invoke-virtual {v0, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v10, 0xc8

    if-ne v8, v10, :cond_4

    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v10, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mUrl:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/henrythompson/quoda/Directories;->DIRECTORY_DATA:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/source.html"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v10, 0x400

    new-array v2, v10, [B

    :goto_1
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_3

    const/4 v10, 0x0

    invoke-virtual {v6, v2, v10, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    const/4 v9, 0x1

    :catch_0
    move-exception v3

    iget-object v10, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mContext:Landroid/content/Context;

    const v11, 0x7f0d00eb

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mErrorTitle:Ljava/lang/String;

    iget-object v10, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mContext:Landroid/content/Context;

    const v11, 0x7f0d022e

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mErrorMessage:Ljava/lang/String;

    const/4 v10, 0x0

    :goto_2
    return-object v10

    const/4 v13, 0x2

    :cond_1
    :try_start_1
    const-string v10, "https"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mUrl:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    goto/16 :goto_0

    const/4 v9, 0x2

    :cond_2
    iget-object v10, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mContext:Landroid/content/Context;

    const v11, 0x7f0d00f4

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mErrorTitle:Ljava/lang/String;

    iget-object v10, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mContext:Landroid/content/Context;

    const v11, 0x7f0d00f3

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mErrorMessage:Ljava/lang/String;

    const/4 v10, 0x0

    goto :goto_2

    const/4 v11, 0x5

    :cond_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    const/4 v3, 0x1

    :cond_4
    iget-object v10, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mContext:Landroid/content/Context;

    const v11, 0x7f0d022f

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mErrorTitle:Ljava/lang/String;

    iget-object v10, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mContext:Landroid/content/Context;

    const v11, 0x7f0d022d

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mErrorMessage:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v10, 0x0

    goto :goto_2

    const/4 v11, 0x5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x4

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->onPostExecute(Ljava/lang/String;)V

    nop

    return-void

    const/4 v0, 0x2
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x7

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mDownloadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v5, 0x6

    if-nez p1, :cond_2

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mErrorMessage:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v5, 0x1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mErrorTitle:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mErrorTitle:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mContext:Landroid/content/Context;

    const v4, 0x7f0d00c1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v5, 0x6

    :cond_0
    :goto_1
    nop

    return-void

    const/4 v0, 0x7

    const/4 v5, 0x0

    :cond_1
    iget-object v3, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mContext:Landroid/content/Context;

    const v4, 0x7f0d00eb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    const/4 v0, 0x5

    const/4 v5, 0x6

    :cond_2
    new-instance v0, Lcom/henrythompson/quoda/document/Document;

    invoke-direct {v0}, Lcom/henrythompson/quoda/document/Document;-><init>()V

    const/4 v5, 0x1

    new-instance v2, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v3, 0x0

    const-string v4, "local"

    invoke-direct {v2, v3, v4}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v5, 0x7

    invoke-virtual {v2, p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v5, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/QuodaPreferences;->getEncodingOpen()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask$1;

    invoke-direct {v4, p0}, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask$1;-><init>(Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;)V

    invoke-static {v0, v3, v2, v4}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;->openFile(Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;Lcom/henrythompson/quoda/filesystem/FileObject;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;)V

    goto :goto_1

    const/4 v4, 0x0
.end method

.method protected onPreExecute()V
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x7

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mDownloadDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mDownloadDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0d022c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mDownloadDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0191

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mDownloadDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mDownloadDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->mDownloadDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const/4 v3, 0x3

    nop

    return-void

    const/4 v0, 0x3
.end method
