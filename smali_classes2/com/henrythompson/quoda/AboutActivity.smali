.class public Lcom/henrythompson/quoda/AboutActivity;
.super Landroid/app/Activity;


# instance fields
.field mAboutWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x4

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method

.method private transformToHtml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x5

    const-string v1, "<h3>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    const-string v1, "</h3><p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    const-string v1, "</p>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(\r\n|\n\r|\r|\n)"

    const-string v3, "<br>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    const/4 v0, 0x6
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 20

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v17, 0x7f0a001b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/AboutActivity;->setContentView(I)V

    const v17, 0x7f08002b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/webkit/WebView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/henrythompson/quoda/AboutActivity;->mAboutWebView:Landroid/webkit/WebView;

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/AboutActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    const-string v18, "about.html"

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    new-instance v15, Ljava/io/InputStreamReader;

    const-string v17, "UTF-8"

    move-object/from16 v0, v17

    invoke-direct {v15, v10, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuffer;

    const v17, 0xc350

    move/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v4, v0, [C

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v15, v4}, Ljava/io/Reader;->read([C)I

    move-result v11

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v4, v0, v11}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v17, 0x400

    move/from16 v0, v17

    new-array v4, v0, [C

    goto :goto_0

    const/4 v9, 0x1

    :cond_0
    invoke-virtual {v15}, Ljava/io/Reader;->close()V

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    iget-object v0, v13, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v17, "${VERSION_CODE}"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const v17, 0x7f0d00fd

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v17, 0x7f0d00fe

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v8}, Lcom/henrythompson/quoda/AboutActivity;->transformToHtml(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v17, "${EULA}"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/AboutActivity;->mAboutWebView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    const-string v18, "text/html"

    const-string v19, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v3, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    nop

    return-void

    const/4 v3, 0x2

    :catch_0
    move-exception v5

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "<h3>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f0d00f6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "</h3><p>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "</p>"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/AboutActivity;->mAboutWebView:Landroid/webkit/WebView;

    move-object/from16 v17, v0

    const-string v18, "text/html"

    const-string v19, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    const/4 v7, 0x0
.end method
