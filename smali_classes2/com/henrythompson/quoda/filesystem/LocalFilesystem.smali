.class public Lcom/henrythompson/quoda/filesystem/LocalFilesystem;
.super Lcom/henrythompson/quoda/filesystem/Filesystem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/filesystem/LocalFilesystem$LocalAuthActivityHandler;
    }
.end annotation


# static fields
.field public static final LOCAL_UUID:Ljava/lang/String; = "local"

.field private static final READ_EXTERNAL_STORAGE_PERMISSION_CODE:I = 0x7634d2c


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    const-string v0, "local"

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/filesystem/Filesystem;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x5
.end method

.method private checkStorageMounted()Z
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    const/4 v1, 0x3
.end method

.method private throwIfNoFilesystemPermission()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v3, 0x6

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v3, 0x1

    :cond_0
    new-instance v0, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v0

    const/4 v3, 0x4

    :cond_1
    nop

    return-void

    const/4 v3, 0x0
.end method

.method private throwIfStorageNotMounted()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v4, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->checkStorageMounted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x4

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v1, "Unable to create file or folder as storage is not mounted"

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    const v3, 0x7f0d00fa

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    const/4 v4, 0x7

    :cond_0
    nop

    return-void

    const/4 v3, 0x4
.end method


# virtual methods
.method public authorise(Lcom/henrythompson/quoda/IAuthHandlingActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 5
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

    const/4 v4, 0x5

    const/4 v3, -0x1

    const/4 v4, 0x5

    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_0

    const/4 v4, 0x7

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Provided activity not an instance of Activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    const/4 v4, 0x5

    check-cast v0, Landroid/app/Activity;

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v4, 0x6

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v4, 0x1

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    const/4 v4, 0x3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const v2, 0x7634d2c

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    const/4 v4, 0x6

    new-instance v1, Lcom/henrythompson/quoda/filesystem/LocalFilesystem$LocalAuthActivityHandler;

    invoke-direct {v1, p2, p3}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem$LocalAuthActivityHandler;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-interface {p1, v1}, Lcom/henrythompson/quoda/IAuthHandlingActivity;->setAuthHandler(Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;)V

    const/4 v4, 0x0

    :cond_2
    nop

    return-void

    const/4 v2, 0x4
.end method

.method public canFilesWithSameNameExistInFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    const/4 v0, 0x0

    return v0

    const/4 v0, 0x6
.end method

.method public createNewFile(Ljava/util/ArrayList;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;Z)V
    .locals 11
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

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->throwIfNoFilesystemPermission()V

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->throwIfStorageNotMounted()V

    new-instance v3, Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p4, v4}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->isDir()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v5, "Unable to create folder as it already exists"

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    const v7, 0x7f0d00c0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v5, "Unable to create folder"

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    const v7, 0x7f0d00ef

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v5, "Unable to create file as it already exists"

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0104

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v5, "Unable to create file as the parent folder has no write permissions"

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0245

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    :cond_3
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v5, "Unable to create file"

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    const v7, 0x7f0d00f0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create file due to IOException with message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    const v7, 0x7f0d00f0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    :cond_4
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    return-void

    const/4 v5, 0x0
.end method

.method public getDefaultLocation()Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x5

    if-eqz v0, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    const/4 v4, 0x7

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    :cond_1
    if-eqz v0, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v4, 0x7

    :cond_2
    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    :cond_3
    if-eqz v0, :cond_4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v4, 0x3

    :cond_4
    const-string v0, "/storage/emulated/0"

    const/4 v4, 0x3

    :cond_5
    new-instance v1, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v4, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v4, 0x5

    return-object v1

    const/4 v4, 0x6
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x3

    const-string v0, "Local Filesystem"

    return-object v0

    const/4 v1, 0x2
.end method

.method public getLastVisitedLocation(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 7

    const/4 v6, 0x7

    const/4 v6, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v6, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "defaultpath_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->getDefaultLocation()Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->getUuid()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v6, 0x3

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v6, 0x7

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v6, 0x7

    return-object v0

    const/4 v2, 0x4
.end method

.method public getParentFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;,
            Lcom/henrythompson/quoda/filesystem/FilesystemException;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v4, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->throwIfNoFilesystemPermission()V

    const/4 v4, 0x6

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->hasParent()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    new-instance v1, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v4, 0x5

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v4, 0x7

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v4, 0x2

    :goto_0
    return-object v1

    const/4 v1, 0x7

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    const/4 v1, 0x2
.end method

.method public getProtocolPrefix()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x0

    const-string v0, "file://"

    return-object v0

    const/4 v0, 0x3
.end method

.method public listFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Ljava/util/ArrayList;
    .locals 14
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

    const/4 v12, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->throwIfNoFilesystemPermission()V

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->throwIfStorageNotMounted()V

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    const v9, 0x7f0d00bf

    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lcom/henrythompson/quoda/filesystem/FolderNotFoundException;

    invoke-direct {v7, v1, v1}, Lcom/henrythompson/quoda/filesystem/FolderNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v8, v4

    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v2, v4, v7

    new-instance v5, Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->getUuid()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lcom/henrythompson/quoda/filesystem/FileObject;->setSize(J)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    const/4 v2, 0x3

    :cond_1
    new-instance v8, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v9, "Directory has no read-permissions"

    iget-object v10, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0157

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v9, v7}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    :cond_2
    new-instance v8, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v9, "Not a directory"

    iget-object v10, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    const v11, 0x7f0d024a

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v9, v7}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    :cond_3
    return-object v3

    const/4 v2, 0x3
.end method

.method public openFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->throwIfNoFilesystemPermission()V

    new-instance v10, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_0

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v24

    if-eqz v24, :cond_1

    :cond_0
    new-instance v24, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v25, "File does not exist"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0d002f

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v24

    :cond_1
    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v24

    if-nez v24, :cond_2

    new-instance v24, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v25, "File has no read-permissions"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0d0030

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v24

    :cond_2
    :try_start_0
    new-instance v12, Ljava/io/FileInputStream;

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v24

    if-lez v24, :cond_3

    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-virtual {v12}, Ljava/io/InputStream;->available()I

    move-result v24

    move/from16 v0, v24

    invoke-direct {v13, v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->available()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/io/InputStream;->mark(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d

    move-object v12, v13

    :goto_0
    const/4 v15, -0x1

    :try_start_3
    invoke-virtual {v12}, Ljava/io/InputStream;->available()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v15

    if-gez v15, :cond_4

    :try_start_4
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    :goto_1
    new-instance v24, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v25, "Unable to open file due to length of InputStream being less than 0"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0d00f7

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v24

    :catch_0
    move-exception v9

    new-instance v24, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unable to open file due to FileNotFoundException when creating a FileInputStream with message: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0d00f7

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v24

    :cond_3
    :try_start_5
    new-instance v13, Ljava/io/BufferedInputStream;

    invoke-direct {v13, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    const/16 v24, 0x0

    :try_start_6
    move/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/io/InputStream;->mark(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d

    move-object v12, v13

    goto :goto_0

    const/4 v5, 0x6

    :catch_1
    move-exception v9

    :goto_2
    :try_start_7
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :goto_3
    new-instance v24, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unable to open file due to IOException when converting InputStream with message: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0d00f7

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v24

    :catch_2
    move-exception v9

    :try_start_8
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    :goto_4
    new-instance v24, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unable to open file due to Exception when getting length of InputStream with message: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0d00f7

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v24

    :cond_4
    new-array v5, v15, [B

    :try_start_9
    invoke-virtual {v12, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :try_start_a
    invoke-virtual {v12}, Ljava/io/InputStream;->reset()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    new-instance v18, Lcom/henrythompson/quoda/document/LinesCollection;

    invoke-direct/range {v18 .. v18}, Lcom/henrythompson/quoda/document/LinesCollection;-><init>()V

    const-string v24, "Auto-Detect"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    invoke-static {v5}, Lcom/henrythompson/quoda/utils/Utils;->guessEncoding([B)Ljava/lang/String;

    move-result-object p3

    :cond_5
    if-nez p3, :cond_6

    const-string p3, "UTF-8"

    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setEncoding(Ljava/lang/String;)V

    const/16 v20, 0x0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :try_start_b
    invoke-static/range {p3 .. p3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    const/high16 v24, 0x10000

    move/from16 v0, v24

    new-array v4, v0, [B

    invoke-virtual {v12, v4}, Ljava/io/InputStream;->read([B)I

    move-result v19

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v7, v0, [B

    const/16 v24, 0x0

    const/16 v25, 0xd

    aput-byte v25, v7, v24

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v16, v0

    const/16 v24, 0x0

    const/16 v25, 0xa

    aput-byte v25, v16, v24

    if-eqz v6, :cond_7

    const-string v24, "\r"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v24

    move/from16 v0, v24

    new-array v7, v0, [B

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const-string v24, "\n"

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_7
    const/4 v14, 0x1

    array-length v0, v7

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    const/4 v11, 0x0

    :goto_5
    add-int/lit8 v24, v19, -0x1

    move/from16 v0, v24

    if-ge v11, v0, :cond_8

    aget-byte v24, v4, v11

    const/16 v25, 0x0

    aget-byte v25, v16, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    const/4 v14, 0x1

    :cond_8
    :goto_6
    invoke-virtual {v12}, Ljava/io/InputStream;->reset()V

    new-instance v21, Ljava/io/BufferedReader;

    new-instance v24, Ljava/io/InputStreamReader;

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-direct {v0, v12, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v25, 0x2000

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    const/16 v17, 0x0

    const/4 v8, 0x0

    :goto_7
    :try_start_c
    invoke-virtual/range {v21 .. v21}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_11

    if-nez v17, :cond_9

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_9

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const v25, 0xfeff

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    const/16 v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setHasBOM(Z)V

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    :cond_9
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lcom/henrythompson/quoda/document/LinesCollection;->add(II)Lcom/henrythompson/quoda/document/LineObject;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v24, 0xa

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    move-result v24

    add-int/lit8 v24, v24, 0x1

    add-int v8, v8, v24

    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    const/4 v11, 0x7

    :catch_3
    move-exception v9

    :try_start_d
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :goto_8
    new-instance v24, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unable to open file due to IOException when reading InputStream with message: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0d00f7

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v24

    :catch_4
    move-exception v9

    :try_start_e
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    :goto_9
    new-instance v24, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unable to open file due to Exception when resetting InputStream with message: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0d00f7

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v24

    :cond_a
    :try_start_f
    aget-byte v24, v4, v11

    const/16 v25, 0x0

    aget-byte v25, v7, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    add-int/lit8 v24, v11, 0x1

    aget-byte v24, v4, v24

    const/16 v25, 0x0

    aget-byte v25, v16, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    const/4 v14, 0x2

    goto/16 :goto_6

    const/4 v12, 0x5

    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_6

    const/4 v9, 0x0

    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    const/4 v3, 0x2

    :cond_d
    const/4 v11, 0x0

    :goto_a
    add-int/lit8 v24, v19, -0x2

    move/from16 v0, v24

    if-ge v11, v0, :cond_8

    aget-byte v24, v4, v11

    const/16 v25, 0x0

    aget-byte v25, v16, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    add-int/lit8 v24, v11, 0x1

    aget-byte v24, v4, v24

    const/16 v25, 0x1

    aget-byte v25, v16, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_e

    const/4 v14, 0x1

    goto/16 :goto_6

    const/4 v5, 0x0

    :cond_e
    aget-byte v24, v4, v11

    const/16 v25, 0x0

    aget-byte v25, v7, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    add-int/lit8 v24, v11, 0x1

    aget-byte v24, v4, v24

    const/16 v25, 0x1

    aget-byte v25, v7, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    add-int/lit8 v24, v11, 0x2

    aget-byte v24, v4, v24

    const/16 v25, 0x0

    aget-byte v25, v16, v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    add-int/lit8 v24, v11, 0x3

    aget-byte v24, v4, v24

    const/16 v25, 0x1

    aget-byte v25, v16, v25
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_f

    const/4 v14, 0x2

    goto/16 :goto_6

    const/4 v9, 0x6

    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_6

    const/4 v3, 0x2

    :cond_10
    add-int/lit8 v11, v11, 0x2

    goto :goto_a

    const/4 v0, 0x4

    :cond_11
    :try_start_10
    invoke-virtual/range {v18 .. v18}, Lcom/henrythompson/quoda/document/LinesCollection;->getLineCount()I

    move-result v24

    if-nez v24, :cond_12

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/document/LinesCollection;->add(II)Lcom/henrythompson/quoda/document/LineObject;

    :cond_12
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_13

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/document/Document;->setText(Ljava/lang/String;I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/henrythompson/quoda/document/Document;->setLineDelimStyle(I)V

    invoke-virtual/range {p1 .. p2}, Lcom/henrythompson/quoda/document/Document;->setFileObject(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLineStartsList(Lcom/henrythompson/quoda/document/LinesCollection;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setFilePath(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setFileName(Ljava/lang/String;)V

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/henrythompson/quoda/language/LanguagesManager;->getFileAssociations()Lcom/henrythompson/quoda/language/FileAssociations;

    move-result-object v24

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/henrythompson/quoda/language/FileAssociations;->getLanguageForFilename(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setSpans(Ljava/util/ArrayList;)V

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setBaseURL(Ljava/lang/String;)V

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setContextSpans(Ljava/util/ArrayList;)V

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setScrollX(I)V

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setScrollY(I)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/document/Document;->setSelection(II)V

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/henrythompson/quoda/UndoStack;->clear()V

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getRedoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/henrythompson/quoda/UndoStack;->clear()V

    const/16 v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setIsSaved(Z)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    nop

    return-void

    const/4 v5, 0x1

    :catch_5
    move-exception v9

    :goto_b
    :try_start_11
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    :goto_c
    new-instance v24, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Unknown Exception with message: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0d00f7

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-virtual/range {v26 .. v28}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v24 .. v26}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v24

    :catch_6
    move-exception v24

    goto/16 :goto_3

    const/4 v10, 0x1

    :catch_7
    move-exception v24

    goto/16 :goto_4

    const/4 v1, 0x0

    :catch_8
    move-exception v24

    goto/16 :goto_1

    const/4 v9, 0x3

    :catch_9
    move-exception v24

    goto/16 :goto_8

    const/4 v5, 0x7

    :catch_a
    move-exception v24

    goto/16 :goto_9

    const/4 v10, 0x0

    :catch_b
    move-exception v24

    goto :goto_c

    const/4 v8, 0x0

    :catch_c
    move-exception v9

    move-object/from16 v20, v21

    goto :goto_b

    const/4 v4, 0x1

    :catch_d
    move-exception v9

    move-object v12, v13

    goto/16 :goto_2

    const/4 v5, 0x1
.end method

.method public requiresInternetConnection()Z
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x7

    const/4 v0, 0x0

    return v0

    const/4 v0, 0x3
.end method

.method public requiresQuodaPremium()Z
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    const/4 v0, 0x0

    return v0

    const/4 v1, 0x3
.end method

.method public saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->throwIfNoFilesystemPermission()V

    const/4 v9, 0x1

    new-instance v1, Ljava/io/File;

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v9, 0x3

    :cond_0
    new-instance v2, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v3, "Unable to save file as parent directory does not exist"

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    const v5, 0x7f0d024e

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    const/4 v9, 0x3

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v9, 0x0

    new-instance v2, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v3, "Unable to save file as parent file has no write-permissions"

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    const v5, 0x7f0d024d

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    const/4 v9, 0x3

    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1, v2}, Lcom/henrythompson/quoda/utils/Utils;->encodeDocumentToDiskFormat(Lcom/henrythompson/quoda/document/Document;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x1

    invoke-virtual {p1, p2}, Lcom/henrythompson/quoda/document/Document;->setFileObject(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v9, 0x4

    const-string v2, "\uffff"

    invoke-virtual {p1, v2}, Lcom/henrythompson/quoda/document/Document;->setBaseURL(Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getFileAssociations()Lcom/henrythompson/quoda/language/FileAssociations;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/language/FileAssociations;->getLanguageForFilename(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    const/4 v9, 0x5

    invoke-virtual {p1, v6}, Lcom/henrythompson/quoda/document/Document;->setIsSaved(Z)V

    const/4 v9, 0x1

    nop

    return-void

    const/4 v3, 0x5

    const/4 v9, 0x0

    :catch_0
    move-exception v0

    const/4 v9, 0x7

    new-instance v2, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save file due to Exception with message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->mContext:Landroid/content/Context;

    const v5, 0x7f0d00f9

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v4, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->throwIfNoFilesystemPermission()V

    const/4 v4, 0x5

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v4, 0x1

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

    const/4 v4, 0x3

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->setSize(J)V

    const/4 v4, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v4, 0x7

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setLastVisitedLocation(Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x5

    const/4 v3, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v3, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultpath_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

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

    const/4 v3, 0x5

    nop

    return-void

    const/4 v1, 0x6
.end method

.method public usesFilepaths()Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x4

    const/4 v0, 0x1

    return v0

    const/4 v0, 0x1
.end method
