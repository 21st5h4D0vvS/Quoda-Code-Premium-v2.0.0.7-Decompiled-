.class public abstract Lcom/henrythompson/quoda/filesystem/Filesystem;
.super Ljava/lang/Object;


# instance fields
.field private mUuid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/filesystem/Filesystem;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v0, 0x6
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x5

    if-eqz p1, :cond_0

    const/4 v1, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/Filesystem;->mUuid:Ljava/lang/String;

    const/4 v1, 0x5

    :goto_0
    nop

    return-void

    const/4 v0, 0x2

    const/4 v1, 0x1

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/Filesystem;->mUuid:Ljava/lang/String;

    goto :goto_0

    const/4 v1, 0x2
.end method


# virtual methods
.method public abstract authorise(Lcom/henrythompson/quoda/IAuthHandlingActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract canFilesWithSameNameExistInFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Z
.end method

.method public abstract createNewFile(Ljava/util/ArrayList;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;Z)V
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
.end method

.method public abstract getDefaultLocation()Lcom/henrythompson/quoda/filesystem/FileObject;
.end method

.method public getDirectoryFileObjectForPath(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 4

    const/4 v3, 0x7

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/Filesystem;->usesFilepaths()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x3

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v3, 0x5

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v3, 0x5

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v3, 0x6

    :goto_0
    return-object v0

    const/4 v3, 0x4

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x5
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getLastVisitedLocation(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/FileObject;
.end method

.method public abstract getParentFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Lcom/henrythompson/quoda/filesystem/FileObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation
.end method

.method public abstract getProtocolPrefix()Ljava/lang/String;
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/Filesystem;->mUuid:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x3
.end method

.method public abstract listFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Ljava/util/ArrayList;
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
.end method

.method public abstract openFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation
.end method

.method public abstract requiresInternetConnection()Z
.end method

.method public abstract requiresQuodaPremium()Z
.end method

.method public abstract saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation
.end method

.method public abstract saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation
.end method

.method public abstract setLastVisitedLocation(Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V
.end method

.method public abstract usesFilepaths()Z
.end method
