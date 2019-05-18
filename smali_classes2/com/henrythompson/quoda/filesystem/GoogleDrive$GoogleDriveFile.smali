.class public Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;
.super Lcom/henrythompson/quoda/filesystem/FileObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/filesystem/GoogleDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GoogleDriveFile"
.end annotation


# instance fields
.field private mId:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mParentId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    const-string v0, "google_drive"

    invoke-direct {p0, p1, v0}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v1, 0x1

    iput-object p2, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->mId:Ljava/lang/String;

    const/4 v1, 0x2

    iput-object p3, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->mParentId:Ljava/lang/String;

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x6

    const-string v0, "application/vnd.google-apps.folder"

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->mMimeType:Ljava/lang/String;

    const/4 v1, 0x6

    :cond_0
    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x3

    if-ne p1, p0, :cond_0

    const/4 v3, 0x6

    const/4 v1, 0x1

    const/4 v3, 0x5

    :goto_0
    return v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    :cond_0
    instance-of v1, p1, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    if-nez v1, :cond_1

    const/4 v3, 0x0

    const/4 v1, 0x0

    goto :goto_0

    const/4 v2, 0x7

    :cond_1
    move-object v0, p1

    const/4 v3, 0x6

    check-cast v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    const/4 v3, 0x1
.end method

.method public getDrawableResource()I
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->mMimeType:Ljava/lang/String;

    const-string v1, "application/vnd.google-apps.script"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    const v0, 0x7f070070

    const/4 v2, 0x7

    :goto_0
    return v0

    const/4 v0, 0x2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x6
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->mId:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x6
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->mMimeType:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x5
.end method

.method public getParentId()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->mParentId:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x2
.end method

.method public getSizeDescription()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->mMimeType:Ljava/lang/String;

    const-string v1, "application/vnd.google-apps.script"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    const-string v0, "Apps Script Project"

    const/4 v2, 0x2

    :goto_0
    return-object v0

    const/4 v2, 0x5

    :cond_0
    invoke-super {p0}, Lcom/henrythompson/quoda/filesystem/FileObject;->getSizeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    const/4 v2, 0x1
.end method

.method public isDir()Z
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->mMimeType:Ljava/lang/String;

    const-string v1, "application/vnd.google-apps.folder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    :goto_0
    return v0

    const/4 v2, 0x5

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v2, 0x3
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->mId:Ljava/lang/String;

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->mMimeType:Ljava/lang/String;

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x1
.end method
