.class public Lcom/jcraft/jsch/SftpStatVFS;
.super Ljava/lang/Object;


# instance fields
.field atime:I

.field private bavail:J

.field private bfree:J

.field private blocks:J

.field private bsize:J

.field extended:[Ljava/lang/String;

.field private favail:J

.field private ffree:J

.field private files:J

.field private flag:J

.field flags:I

.field private frsize:J

.field private fsid:J

.field gid:I

.field mtime:I

.field private namemax:J

.field permissions:I

.field size:J

.field uid:I


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x7

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->flags:I

    const/4 v1, 0x3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->extended:[Ljava/lang/String;

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x3
.end method

.method static getStatVFS(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpStatVFS;
    .locals 8

    const/4 v7, 0x5

    const-wide/16 v4, 0x0

    const/4 v7, 0x2

    new-instance v1, Lcom/jcraft/jsch/SftpStatVFS;

    invoke-direct {v1}, Lcom/jcraft/jsch/SftpStatVFS;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jcraft/jsch/SftpStatVFS;->bsize:J

    const/4 v7, 0x5

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jcraft/jsch/SftpStatVFS;->frsize:J

    const/4 v7, 0x6

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jcraft/jsch/SftpStatVFS;->blocks:J

    const/4 v7, 0x5

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jcraft/jsch/SftpStatVFS;->bfree:J

    const/4 v7, 0x7

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jcraft/jsch/SftpStatVFS;->bavail:J

    const/4 v7, 0x6

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jcraft/jsch/SftpStatVFS;->files:J

    const/4 v7, 0x6

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jcraft/jsch/SftpStatVFS;->ffree:J

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jcraft/jsch/SftpStatVFS;->favail:J

    const/4 v7, 0x4

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jcraft/jsch/SftpStatVFS;->fsid:J

    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v2

    long-to-int v0, v2

    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/jcraft/jsch/SftpStatVFS;->namemax:J

    const/4 v7, 0x3

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x1

    :goto_0
    iput-wide v2, v1, Lcom/jcraft/jsch/SftpStatVFS;->flag:J

    const/4 v7, 0x6

    iget-wide v2, v1, Lcom/jcraft/jsch/SftpStatVFS;->flag:J

    and-int/lit8 v6, v0, 0x2

    if-eqz v6, :cond_0

    const-wide/16 v4, 0x2

    :cond_0
    or-long/2addr v2, v4

    iput-wide v2, v1, Lcom/jcraft/jsch/SftpStatVFS;->flag:J

    const/4 v7, 0x0

    return-object v1

    const/4 v2, 0x2

    :cond_1
    move-wide v2, v4

    const/4 v7, 0x4

    goto :goto_0

    const/4 v6, 0x6
.end method


# virtual methods
.method public getAvail()J
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFragmentSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFreeBlocks()J

    move-result-wide v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0

    const/4 v2, 0x6
.end method

.method public getAvailBlocks()J
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x7

    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->bavail:J

    return-wide v0

    const/4 v0, 0x3
.end method

.method public getAvailForNonRoot()J
    .locals 5

    const/4 v4, 0x3

    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFragmentSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getAvailBlocks()J

    move-result-wide v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0

    const/4 v2, 0x4
.end method

.method public getAvailINodes()J
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x7

    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->favail:J

    return-wide v0

    const/4 v1, 0x7
.end method

.method public getBlockSize()J
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x6

    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->bsize:J

    return-wide v0

    const/4 v1, 0x0
.end method

.method public getBlocks()J
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x3

    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->blocks:J

    return-wide v0

    const/4 v0, 0x3
.end method

.method public getCapacity()I
    .locals 7

    const/4 v6, 0x4

    const/4 v6, 0x4

    const-wide/16 v0, 0x64

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getBlocks()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFreeBlocks()J

    move-result-wide v4

    sub-long/2addr v2, v4

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getBlocks()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    const/4 v3, 0x2
.end method

.method public getFileSystemID()J
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x7

    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->fsid:J

    return-wide v0

    const/4 v2, 0x2
.end method

.method public getFragmentSize()J
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x5

    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->frsize:J

    return-wide v0

    const/4 v1, 0x0
.end method

.method public getFreeBlocks()J
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x5

    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->bfree:J

    return-wide v0

    const/4 v1, 0x2
.end method

.method public getFreeINodes()J
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x2

    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->ffree:J

    return-wide v0

    const/4 v0, 0x3
.end method

.method public getINodes()J
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x4

    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->files:J

    return-wide v0

    const/4 v1, 0x6
.end method

.method public getMaximumFilenameLength()J
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x1

    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->namemax:J

    return-wide v0

    const/4 v0, 0x1
.end method

.method public getMountFlag()J
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x6

    iget-wide v0, p0, Lcom/jcraft/jsch/SftpStatVFS;->flag:J

    return-wide v0

    const/4 v1, 0x7
.end method

.method public getSize()J
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFragmentSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getBlocks()J

    move-result-wide v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0

    const/4 v2, 0x3
.end method

.method public getUsed()J
    .locals 7

    const/4 v6, 0x4

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFragmentSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getBlocks()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpStatVFS;->getFreeBlocks()J

    move-result-wide v4

    sub-long/2addr v2, v4

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0

    const/4 v6, 0x1
.end method
