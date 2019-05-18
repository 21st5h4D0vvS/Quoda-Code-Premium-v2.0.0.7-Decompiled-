.class public Lcom/henrythompson/quoda/filesystem/FileObject;
.super Ljava/lang/Object;


# instance fields
.field private mFilepath:Ljava/lang/String;

.field private mFilesystemUuid:Ljava/lang/String;

.field private mIsContainerFile:Z

.field private mIsDir:Z

.field private mName:Ljava/lang/String;

.field private mSize:J

.field private mSizeDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x3

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mName:Ljava/lang/String;

    const/4 v2, 0x2

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mFilepath:Ljava/lang/String;

    const/4 v2, 0x1

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mFilesystemUuid:Ljava/lang/String;

    const/4 v2, 0x4

    iput-boolean v1, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mIsDir:Z

    const/4 v2, 0x1

    iput-boolean v1, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mIsContainerFile:Z

    const/4 v2, 0x2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mSize:J

    const/4 v2, 0x1

    if-nez p2, :cond_0

    const/4 v2, 0x3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "When creating a FileObject, the filesystemUuid parameter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    const/4 v2, 0x4

    :cond_0
    iput-boolean p1, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mIsDir:Z

    const/4 v2, 0x1

    iput-object p2, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mFilesystemUuid:Ljava/lang/String;

    const/4 v2, 0x2

    nop

    return-void

    const/4 v1, 0x4
.end method

.method private generateSizeDescription()Ljava/lang/String;
    .locals 13

    const/4 v12, 0x2

    const-wide/32 v10, 0x40000000

    const-wide/32 v8, 0x100000

    const-wide/16 v6, 0x400

    const/4 v12, 0x6

    iget-wide v2, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mSize:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v12, 0x7

    const-string v1, ""

    const/4 v12, 0x7

    :goto_0
    return-object v1

    const/4 v2, 0x7

    const/4 v12, 0x5

    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x4

    iget-wide v2, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mSize:J

    cmp-long v1, v2, v10

    if-lez v1, :cond_1

    const/4 v12, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mSize:J

    div-long/2addr v2, v10

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    const/4 v5, 0x3

    const/4 v12, 0x5

    :cond_1
    iget-wide v2, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mSize:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_2

    const/4 v12, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mSize:J

    div-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    const/4 v6, 0x2

    const/4 v12, 0x5

    :cond_2
    iget-wide v2, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mSize:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_3

    const/4 v12, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mSize:J

    div-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    const/4 v0, 0x0

    const/4 v12, 0x1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    const/4 v5, 0x3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x7

    const/4 v3, 0x0

    const/4 v6, 0x7

    if-eqz p1, :cond_0

    instance-of v4, p1, Lcom/henrythompson/quoda/filesystem/FileObject;

    if-nez v4, :cond_1

    const/4 v6, 0x7

    :cond_0
    :goto_0
    return v3

    const/4 v3, 0x3

    const/4 v6, 0x6

    :cond_1
    if-ne p1, p0, :cond_2

    const/4 v6, 0x2

    const/4 v3, 0x1

    goto :goto_0

    const/4 v4, 0x4

    :cond_2
    move-object v0, p1

    const/4 v6, 0x1

    check-cast v0, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilesystemUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilesystemUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mFilepath:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/henrythompson/quoda/filesystem/FileObject;->mFilepath:Ljava/lang/String;

    if-eqz v4, :cond_0

    const/4 v6, 0x0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mFilepath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x5

    new-instance v1, Ljava/io/File;

    iget-object v3, v0, Lcom/henrythompson/quoda/filesystem/FileObject;->mFilepath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x3

    invoke-virtual {v2, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    const/4 v6, 0x7
.end method

.method public getDrawableResource()I
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x0

    const/4 v0, 0x0

    return v0

    const/4 v1, 0x5
.end method

.method public getFilepath()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mFilepath:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x7
.end method

.method public getFilesystem()Lcom/henrythompson/quoda/filesystem/Filesystem;
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mFilesystemUuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v0

    return-object v0

    const/4 v0, 0x0
.end method

.method public getFilesystemUuid()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mFilesystemUuid:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mName:Ljava/lang/String;

    const/4 v2, 0x4

    :goto_0
    return-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mFilepath:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mFilepath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    const/4 v0, 0x3

    const/4 v2, 0x2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x2
.end method

.method public getSize()J
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x1

    iget-wide v0, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mSize:J

    return-wide v0

    const/4 v2, 0x0
.end method

.method public getSizeDescription()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mSizeDescription:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x7
.end method

.method public hasParent()Z
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x0

    const/4 v3, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mFilepath:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v3, 0x2

    :cond_0
    :goto_0
    return v0

    const/4 v1, 0x6

    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mFilepath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    const/4 v1, 0x6
.end method

.method public isContainerFile()Z
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mIsContainerFile:Z

    return v0

    const/4 v1, 0x6
.end method

.method public isDir()Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    iget-boolean v0, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mIsDir:Z

    return v0

    const/4 v0, 0x1
.end method

.method public setFilepath(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    :cond_0
    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mFilepath:Ljava/lang/String;

    const/4 v1, 0x7

    nop

    return-void

    const/4 v1, 0x2
.end method

.method public setIsContainerFile(Z)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mIsContainerFile:Z

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mName:Ljava/lang/String;

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setSize(J)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    iput-wide p1, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mSize:J

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/FileObject;->generateSizeDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileObject;->mSizeDescription:Ljava/lang/String;

    const/4 v1, 0x0

    nop

    return-void

    const/4 v1, 0x6
.end method
