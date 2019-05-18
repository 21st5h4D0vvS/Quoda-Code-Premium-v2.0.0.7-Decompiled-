.class public Lcom/henrythompson/quoda/filesystem/Dropbox;
.super Lcom/henrythompson/quoda/filesystem/CloudService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/filesystem/Dropbox$DropboxAuthActivityHandler;
    }
.end annotation


# static fields
.field private static final APP_KEY:Ljava/lang/String; = "5qj4xqp2o6bsua4"

.field private static final APP_SECRET:Ljava/lang/String; = "jdcsizpuw1dklwj"

.field public static final DROPBOX_UUID:Ljava/lang/String; = "dropbox"

.field private static mContext:Landroid/content/Context;

.field private static mDropboxClient:Lcom/dropbox/core/v2/DbxClientV2;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x4

    const-string v0, "dropbox"

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/filesystem/CloudService;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/henrythompson/quoda/filesystem/Dropbox;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/Dropbox;->load()V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v0, 0x7
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/filesystem/Dropbox;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x3

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/filesystem/Dropbox;->saveSession(Ljava/lang/String;)V

    nop

    return-void

    const/4 v0, 0x3
.end method

.method private load()V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x7

    sget-object v9, Lcom/henrythompson/quoda/filesystem/Dropbox;->mContext:Landroid/content/Context;

    const-string v10, "dropbox"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const/4 v13, 0x1

    const-string v9, "Quoda"

    invoke-static {v9}, Lcom/dropbox/core/DbxRequestConfig;->newBuilder(Ljava/lang/String;)Lcom/dropbox/core/DbxRequestConfig$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/dropbox/core/DbxRequestConfig$Builder;->build()Lcom/dropbox/core/DbxRequestConfig;

    move-result-object v2

    const/4 v13, 0x6

    const-string v9, "oauth2_token"

    invoke-interface {v4, v9, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x2

    if-eqz v7, :cond_0

    const/4 v13, 0x5

    new-instance v9, Lcom/dropbox/core/v2/DbxClientV2;

    invoke-direct {v9, v2, v7}, Lcom/dropbox/core/v2/DbxClientV2;-><init>(Lcom/dropbox/core/DbxRequestConfig;Ljava/lang/String;)V

    sput-object v9, Lcom/henrythompson/quoda/filesystem/Dropbox;->mDropboxClient:Lcom/dropbox/core/v2/DbxClientV2;

    const/4 v13, 0x3

    :goto_0
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x7

    const-string v5, "db-5qj4xqp2o6bsua4"

    const/4 v13, 0x6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/connect"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x3

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v13, 0x6

    sget-object v9, Lcom/henrythompson/quoda/filesystem/Dropbox;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v13, 0x2

    invoke-virtual {v3, v6, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v13, 0x1

    const-string v9, "SomeApp"

    const-string v10, "------------- showDropboxActivities ------------"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    const/4 v13, 0x3

    const-string v10, "SomeApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "activty = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x6

    const-string v10, "SomeApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "activity.activityInfo = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x5

    const-string v10, "SomeApp"

    const-string v11, ".............."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    const/4 v0, 0x0

    const/4 v13, 0x6

    :cond_0
    sput-object v12, Lcom/henrythompson/quoda/filesystem/Dropbox;->mDropboxClient:Lcom/dropbox/core/v2/DbxClientV2;

    goto/16 :goto_0

    const/4 v5, 0x0

    const/4 v13, 0x4

    :cond_1
    nop

    return-void

    const/4 v2, 0x2
.end method

.method private saveSession(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v4, 0x7

    sget-object v1, Lcom/henrythompson/quoda/filesystem/Dropbox;->mContext:Landroid/content/Context;

    const-string v2, "dropbox"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "oauth2_token"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v4, 0x6

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/Dropbox;->load()V

    const/4 v4, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v4, 0x5

    nop

    return-void

    const/4 v1, 0x5
.end method


# virtual methods
.method public accountLinked()Z
    .locals 5

    const/4 v4, 0x5

    const/4 v1, 0x0

    const/4 v4, 0x5

    sget-object v2, Lcom/henrythompson/quoda/filesystem/Dropbox;->mContext:Landroid/content/Context;

    const-string v3, "dropbox"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v4, 0x4

    if-eqz v0, :cond_0

    const-string v2, "oauth2_token"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    const/4 v3, 0x2
.end method

.method public authorise(Lcom/henrythompson/quoda/IAuthHandlingActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8
    .param p1    # Lcom/henrythompson/quoda/IAuthHandlingActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v7, 0x1

    const/4 v7, 0x5

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided activity not an instance of Activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v3, p1

    const/4 v7, 0x5

    check-cast v3, Landroid/app/Activity;

    const/4 v7, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->isNewOrOldPremiumSubscriber()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v7, 0x7

    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/henrythompson/quoda/UpgradeActivity;

    invoke-direct {v6, v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v7, 0x7

    const-string v0, "trigger"

    const-string v1, "dropbox"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v7, 0x4

    invoke-virtual {v3, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v7, 0x7

    if-eqz p3, :cond_1

    const/4 v7, 0x5

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    const/4 v7, 0x5

    :cond_1
    :goto_0
    nop

    return-void

    const/4 v4, 0x7

    const/4 v7, 0x5

    :cond_2
    new-instance v0, Lcom/henrythompson/quoda/filesystem/Dropbox$DropboxAuthActivityHandler;

    move-object v1, p0

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/filesystem/Dropbox$DropboxAuthActivityHandler;-><init>(Lcom/henrythompson/quoda/filesystem/Dropbox;Lcom/henrythompson/quoda/filesystem/Dropbox;Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-interface {p1, v0}, Lcom/henrythompson/quoda/IAuthHandlingActivity;->setAuthHandler(Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;)V

    const/4 v7, 0x2

    const-string v0, "5qj4xqp2o6bsua4"

    invoke-static {v3, v0}, Lcom/dropbox/core/android/Auth;->startOAuth2Authentication(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    const/4 v7, 0x6
.end method

.method public canFilesWithSameNameExistInFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Z
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x4

    const/4 v0, 0x0

    return v0

    const/4 v0, 0x5
.end method

.method public createNewFile(Ljava/util/ArrayList;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            ">;",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    sget-object v7, Lcom/henrythompson/quoda/filesystem/Dropbox;->mDropboxClient:Lcom/dropbox/core/v2/DbxClientV2;

    if-nez v7, :cond_0

    new-instance v7, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    invoke-direct {v7, p0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v7

    :cond_0
    new-instance v6, Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/Dropbox;->getUuid()Ljava/lang/String;

    move-result-object v7

    move/from16 v0, p4

    invoke-direct {v6, v0, v7}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/henrythompson/quoda/filesystem/FileObject;->setSize(J)V

    :try_start_0
    sget-object v7, Lcom/henrythompson/quoda/filesystem/Dropbox;->mDropboxClient:Lcom/dropbox/core/v2/DbxClientV2;

    invoke-virtual {v7}, Lcom/dropbox/core/v2/DbxClientV2;->files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    move-result-object v7

    invoke-virtual {v6}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/core/v2/files/ListFolderResult;->getEntries()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dropbox/core/v2/files/Metadata;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/filesystem/FileObject;->isDir()Z

    move-result v8

    if-nez v8, :cond_3

    instance-of v8, v5, Lcom/dropbox/core/v2/files/FolderMetadata;

    if-nez v8, :cond_3

    invoke-virtual {v5}, Lcom/dropbox/core/v2/files/Metadata;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v7, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v8, "Unable to add folder as one with the same name already exists"

    sget-object v9, Lcom/henrythompson/quoda/filesystem/Dropbox;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0246

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v6}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v7

    :cond_2
    :try_start_1
    invoke-virtual {v6}, Lcom/henrythompson/quoda/filesystem/FileObject;->isDir()Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v4, Ljava/io/ByteArrayInputStream;

    const/4 v7, 0x0

    new-array v7, v7, [B

    invoke-direct {v4, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget-object v7, Lcom/henrythompson/quoda/filesystem/Dropbox;->mDropboxClient:Lcom/dropbox/core/v2/DbxClientV2;

    invoke-virtual {v7}, Lcom/dropbox/core/v2/DbxClientV2;->files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    move-result-object v7

    invoke-virtual {v6}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->uploadBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/UploadBuilder;

    move-result-object v7

    sget-object v8, Lcom/dropbox/core/v2/files/WriteMode;->ADD:Lcom/dropbox/core/v2/files/WriteMode;

    invoke-virtual {v7, v8}, Lcom/dropbox/core/v2/files/UploadBuilder;->withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/UploadBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/dropbox/core/v2/files/UploadBuilder;->uploadAndFinish(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    return-void

    const/4 v5, 0x1

    :cond_3
    :try_start_2
    invoke-virtual {v6}, Lcom/henrythompson/quoda/filesystem/FileObject;->isDir()Z

    move-result v8

    if-eqz v8, :cond_1

    instance-of v8, v5, Lcom/dropbox/core/v2/files/FolderMetadata;

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Lcom/dropbox/core/v2/files/Metadata;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v7, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v8, "Unable to add file as one with the same name already exists"

    sget-object v9, Lcom/henrythompson/quoda/filesystem/Dropbox;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0246

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v6}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :try_start_3
    sget-object v7, Lcom/henrythompson/quoda/filesystem/Dropbox;->mDropboxClient:Lcom/dropbox/core/v2/DbxClientV2;

    invoke-virtual {v7}, Lcom/dropbox/core/v2/DbxClientV2;->files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    move-result-object v7

    invoke-virtual {v6}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->createFolderV2(Ljava/lang/String;)Lcom/dropbox/core/v2/files/CreateFolderResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    const/4 v6, 0x7

    :catch_1
    move-exception v2

    new-instance v7, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to create file or folder on Dropbox due to Exception with message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/henrythompson/quoda/filesystem/Dropbox;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0178

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v7
.end method

.method public deleteAccount()V
    .locals 5

    const/4 v4, 0x6

    const/4 v4, 0x5

    sget-object v1, Lcom/henrythompson/quoda/filesystem/Dropbox;->mContext:Landroid/content/Context;

    const-string v2, "dropbox"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v4, 0x3

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v4, 0x5

    const/4 v1, 0x0

    sput-object v1, Lcom/henrythompson/quoda/filesystem/Dropbox;->mDropboxClient:Lcom/dropbox/core/v2/DbxClientV2;

    const/4 v4, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v4, 0x1

    nop

    return-void

    const/4 v1, 0x1
.end method

.method public getDefaultLocation()Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x3

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/Dropbox;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v3, 0x5

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v3, 0x5

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v3, 0x5

    return-object v0

    const/4 v2, 0x6
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x0

    sget-object v0, Lcom/henrythompson/quoda/filesystem/Dropbox;->mContext:Landroid/content/Context;

    const v1, 0x7f0d010c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x0
.end method

.method public getLastVisitedLocation(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 7

    const/4 v6, 0x5

    const/4 v0, 0x0

    const/4 v6, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "dropbox"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v6, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "defaultpath_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    if-nez v1, :cond_0

    const/4 v6, 0x0

    :goto_0
    return-object v0

    const/4 v4, 0x6

    const/4 v6, 0x5

    :cond_0
    new-instance v0, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/Dropbox;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v6, 0x7

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    goto :goto_0

    const/4 v1, 0x1
.end method

.method public getParentFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 7

    const/4 v6, 0x7

    const/4 v6, 0x5

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->hasParent()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/Dropbox;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v6, 0x4

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v6, 0x5

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v6, 0x1

    :goto_0
    return-object v0

    const/4 v0, 0x5

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v3, 0x0
.end method

.method public getProtocolPrefix()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x1

    const-string v0, "dropbox://"

    return-object v0

    const/4 v0, 0x4
.end method

.method public listFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    sget-object v9, Lcom/henrythompson/quoda/filesystem/Dropbox;->mDropboxClient:Lcom/dropbox/core/v2/DbxClientV2;

    if-nez v9, :cond_0

    new-instance v9, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v10, "Unable to list Dropbox folder as Dropbox client is uninitialised"

    sget-object v11, Lcom/henrythompson/quoda/filesystem/Dropbox;->mContext:Landroid/content/Context;

    const v12, 0x7f0d00c4

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    :cond_0
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v5

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v5, ""

    :cond_1
    sget-object v9, Lcom/henrythompson/quoda/filesystem/Dropbox;->mDropboxClient:Lcom/dropbox/core/v2/DbxClientV2;

    invoke-virtual {v9}, Lcom/dropbox/core/v2/DbxClientV2;->files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->listFolder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/ListFolderResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/dropbox/core/v2/files/ListFolderResult;->getEntries()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/dropbox/core/v2/files/Metadata;

    new-instance v3, Lcom/henrythompson/quoda/filesystem/FileObject;

    instance-of v10, v8, Lcom/dropbox/core/v2/files/FolderMetadata;

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/filesystem/Dropbox;->getUuid()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v8}, Lcom/dropbox/core/v2/files/Metadata;->getPathDisplay()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/dropbox/core/v2/files/Metadata;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    instance-of v10, v8, Lcom/dropbox/core/v2/files/FileMetadata;

    if-eqz v10, :cond_2

    move-object v0, v8

    check-cast v0, Lcom/dropbox/core/v2/files/FileMetadata;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/dropbox/core/v2/files/FileMetadata;->getSize()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lcom/henrythompson/quoda/filesystem/FileObject;->setSize(J)V

    :cond_2
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v10, 0x2

    :catch_0
    move-exception v2

    new-instance v9, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to list Dropbox folder due to exception with message:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/dropbox/core/DbxException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/henrythompson/quoda/filesystem/Dropbox;->mContext:Landroid/content/Context;

    const v12, 0x7f0d017c

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    :cond_3
    return-object v7

    const/4 v11, 0x5
.end method

.method public openFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    sget-object v9, Lcom/henrythompson/quoda/filesystem/Dropbox;->mDropboxClient:Lcom/dropbox/core/v2/DbxClientV2;

    if-nez v9, :cond_0

    new-instance v9, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v9

    :cond_0
    const/4 v7, 0x0

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/henrythompson/quoda/Directories;->DIRECTORY_DATA:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/dropbox/core/DbxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v9, Lcom/henrythompson/quoda/filesystem/Dropbox;->mDropboxClient:Lcom/dropbox/core/v2/DbxClientV2;

    invoke-virtual {v9}, Lcom/dropbox/core/v2/DbxClientV2;->files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->download(Ljava/lang/String;)Lcom/dropbox/core/DbxDownloader;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/dropbox/core/DbxDownloader;->download(Ljava/io/OutputStream;)Ljava/lang/Object;

    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v9

    const-string v10, "local"

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v4

    check-cast v4, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;

    new-instance v3, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/filesystem/Dropbox;->getUuid()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v3, v1}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->openFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Lcom/henrythompson/quoda/document/Document;->setFileObject(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v9, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/henrythompson/quoda/document/Document;->setIsSaved(Z)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/dropbox/core/DbxException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_2

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    nop

    return-void

    const/4 v8, 0x5

    :catch_0
    move-exception v2

    const-string v9, "DropboxFilesystem"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to close output stream when opening file due to IOException:\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    const/4 v8, 0x4

    :catch_1
    move-exception v2

    :goto_1
    :try_start_3
    new-instance v9, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to open dropbox file due to FileNotFoundException with message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/henrythompson/quoda/filesystem/Dropbox;->mContext:Landroid/content/Context;

    const v12, 0x7f0d00d7

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v7, :cond_3

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    :goto_3
    throw v9

    :catch_2
    move-exception v2

    :goto_4
    :try_start_5
    new-instance v9, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to open dropbox file due to DropboxException with message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/dropbox/core/DbxException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/henrythompson/quoda/filesystem/Dropbox;->mContext:Landroid/content/Context;

    const v12, 0x7f0d00f7

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    :catch_3
    move-exception v2

    :goto_5
    new-instance v9, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to open dropbox file due to IOException with message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/henrythompson/quoda/filesystem/Dropbox;->mContext:Landroid/content/Context;

    const v12, 0x7f0d00f8

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_4
    move-exception v2

    const-string v10, "DropboxFilesystem"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to close output stream when opening file due to IOException:\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    const/4 v1, 0x2

    :catchall_1
    move-exception v9

    move-object v7, v8

    goto :goto_2

    const/4 v1, 0x3

    :catch_5
    move-exception v2

    move-object v7, v8

    goto :goto_5

    const/4 v10, 0x7

    :catch_6
    move-exception v2

    move-object v7, v8

    goto :goto_4

    const/4 v2, 0x5

    :catch_7
    move-exception v2

    move-object v7, v8

    goto/16 :goto_1

    const/4 v4, 0x3
.end method

.method public requiresInternetConnection()Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    const/4 v0, 0x1

    return v0

    const/4 v0, 0x4
.end method

.method public saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    const/4 v10, 0x5

    const/4 v10, 0x4

    sget-object v6, Lcom/henrythompson/quoda/filesystem/Dropbox;->mDropboxClient:Lcom/dropbox/core/v2/DbxClientV2;

    if-nez v6, :cond_0

    const/4 v10, 0x3

    new-instance v6, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    invoke-direct {v6, p0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v6

    const/4 v10, 0x5

    :cond_0
    const/4 v3, 0x0

    const/4 v10, 0x3

    const/4 v1, 0x0

    const/4 v10, 0x2

    :try_start_0
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/henrythompson/quoda/Directories;->DIRECTORY_DATA:Ljava/io/File;

    const-string v7, "temp"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v10, 0x6

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v10, 0x7

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const/4 v10, 0x6

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    const/4 v10, 0x6

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x1

    :try_start_1
    invoke-static {p1, v4}, Lcom/henrythompson/quoda/utils/Utils;->encodeDocumentToDiskFormat(Lcom/henrythompson/quoda/document/Document;Ljava/io/OutputStream;)V

    const/4 v10, 0x4

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v10, 0x2

    :try_start_2
    sget-object v6, Lcom/henrythompson/quoda/filesystem/Dropbox;->mDropboxClient:Lcom/dropbox/core/v2/DbxClientV2;

    invoke-virtual {v6}, Lcom/dropbox/core/v2/DbxClientV2;->files()Lcom/dropbox/core/v2/files/DbxUserFilesRequests;

    move-result-object v6

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/dropbox/core/v2/files/DbxUserFilesRequests;->uploadBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/files/UploadBuilder;

    move-result-object v6

    sget-object v7, Lcom/dropbox/core/v2/files/WriteMode;->OVERWRITE:Lcom/dropbox/core/v2/files/WriteMode;

    const/4 v10, 0x4

    invoke-virtual {v6, v7}, Lcom/dropbox/core/v2/files/UploadBuilder;->withMode(Lcom/dropbox/core/v2/files/WriteMode;)Lcom/dropbox/core/v2/files/UploadBuilder;

    move-result-object v6

    const/4 v10, 0x6

    invoke-virtual {v6, v2}, Lcom/dropbox/core/v2/files/UploadBuilder;->uploadAndFinish(Ljava/io/InputStream;)Ljava/lang/Object;

    const/4 v10, 0x1

    invoke-virtual {p1, p2}, Lcom/henrythompson/quoda/document/Document;->setFileObject(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v10, 0x5

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/henrythompson/quoda/document/Document;->setIsSaved(Z)V

    const/4 v10, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/henrythompson/quoda/language/LanguagesManager;->getFileAssociations()Lcom/henrythompson/quoda/language/FileAssociations;

    move-result-object v6

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/language/FileAssociations;->getLanguageForFilename(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v10, 0x4

    if-eqz v2, :cond_2

    const/4 v10, 0x5

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v10, 0x0

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    const/4 v10, 0x6

    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v10, 0x2

    :cond_3
    :goto_1
    nop

    return-void

    const/4 v10, 0x3

    const/4 v10, 0x7

    :catch_0
    move-exception v0

    const/4 v10, 0x6

    const-string v6, "DropboxFilesystem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to close in input stream when saving due to IOException:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    const/4 v8, 0x3

    const/4 v10, 0x6

    :catch_1
    move-exception v0

    const/4 v10, 0x6

    const-string v6, "DropboxFilesystem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to close output stream when saving due to IOException:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    const/4 v4, 0x7

    const/4 v10, 0x7

    :catch_2
    move-exception v0

    const/4 v10, 0x3

    :goto_2
    :try_start_5
    new-instance v6, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to upload file to Dropbox because of Exception with message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/henrythompson/quoda/filesystem/Dropbox;->mContext:Landroid/content/Context;

    const v9, 0x7f0d00fc

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/4 v10, 0x4

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v1, :cond_4

    const/4 v10, 0x7

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    const/4 v10, 0x1

    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    const/4 v10, 0x2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    const/4 v10, 0x1

    :cond_5
    :goto_5
    throw v6

    const/4 v10, 0x2

    :catch_3
    move-exception v0

    const/4 v10, 0x3

    const-string v7, "DropboxFilesystem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to close in input stream when saving due to IOException:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    const/4 v0, 0x0

    const/4 v10, 0x5

    :catch_4
    move-exception v0

    const/4 v10, 0x3

    const-string v7, "DropboxFilesystem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to close output stream when saving due to IOException:\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    const/4 v1, 0x1

    const/4 v10, 0x2

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_3

    const/4 v10, 0x3

    :catchall_2
    move-exception v6

    move-object v1, v2

    move-object v3, v4

    goto :goto_3

    const/4 v6, 0x2

    const/4 v10, 0x0

    :catch_5
    move-exception v0

    move-object v3, v4

    goto/16 :goto_2

    const/4 v4, 0x5

    :catch_6
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto/16 :goto_2

    const/4 v1, 0x0
.end method

.method public saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v4, 0x6

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/Dropbox;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v4, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v4, 0x6

    invoke-virtual {v0, p3}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->setSize(J)V

    const/4 v4, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/henrythompson/quoda/filesystem/Dropbox;->saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v4, 0x6

    nop

    return-void

    const/4 v4, 0x7
.end method

.method public setLastVisitedLocation(Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dropbox"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v4, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultpath_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v4, 0x0

    nop

    return-void

    const/4 v4, 0x7
.end method

.method public usesFilepaths()Z
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    const/4 v0, 0x1

    return v0

    const/4 v1, 0x6
.end method
