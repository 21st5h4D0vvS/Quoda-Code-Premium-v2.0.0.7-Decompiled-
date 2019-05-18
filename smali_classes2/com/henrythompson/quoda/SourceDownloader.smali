.class public Lcom/henrythompson/quoda/SourceDownloader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public static normalizeURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 8

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/16 v6, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v7, 0x5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v2

    const/4 v7, 0x4

    :goto_0
    return-object v0

    const/4 v3, 0x7

    const/4 v7, 0x2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_2

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_4

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v7, 0x3

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v7, 0x5

    :cond_4
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    goto :goto_0

    const/4 v5, 0x7

    const/4 v7, 0x3

    :catch_0
    move-exception v1

    move-object v0, v2

    const/4 v7, 0x0

    goto :goto_0

    const/4 v4, 0x7
.end method


# virtual methods
.method public downloadSource(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/henrythompson/quoda/SourceDownloader;->downloadSource(Ljava/lang/String;ZLandroid/content/Context;)V

    const/4 v2, 0x6

    nop

    return-void

    const/4 v2, 0x2
.end method

.method public downloadSource(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x4

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/henrythompson/quoda/SourceDownloader;->downloadSource(Ljava/lang/String;ZLandroid/content/Context;)V

    const/4 v1, 0x5

    nop

    return-void

    const/4 v0, 0x0

    const/4 v1, 0x7

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x0
.end method

.method public downloadSource(Ljava/lang/String;ZLandroid/content/Context;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v4, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/utils/Utils;->isConnectedToInternet()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x7

    invoke-static {p1}, Lcom/henrythompson/quoda/SourceDownloader;->normalizeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    const/4 v4, 0x3

    if-nez v1, :cond_0

    const/4 v4, 0x4

    const v2, 0x7f0d0134

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p3, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v4, 0x4

    :goto_0
    nop

    return-void

    const/4 v2, 0x3

    const/4 v4, 0x4

    :cond_0
    new-instance v2, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;

    invoke-direct {v2, p0, v1, p3}, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;-><init>(Lcom/henrythompson/quoda/SourceDownloader;Ljava/net/URL;Landroid/content/Context;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/SourceDownloader$DownloadFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    const/4 v0, 0x3

    const/4 v4, 0x4

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x6

    const v2, 0x7f0d0133

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x6

    const v2, 0x7f0d00f2

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x0

    const v2, 0x7f0d00c1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x6

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    const/4 v3, 0x7
.end method
