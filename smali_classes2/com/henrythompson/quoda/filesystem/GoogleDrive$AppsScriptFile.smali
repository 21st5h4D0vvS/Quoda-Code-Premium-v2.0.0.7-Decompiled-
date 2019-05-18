.class public Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;
.super Lcom/henrythompson/quoda/filesystem/FileObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/filesystem/GoogleDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppsScriptFile"
.end annotation


# instance fields
.field private mId:Ljava/lang/String;

.field private mParentId:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x2

    const/4 v0, 0x0

    const-string v1, "google_drive"

    invoke-direct {p0, v0, v1}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->mId:Ljava/lang/String;

    const/4 v2, 0x7

    iput-object p2, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->mParentId:Ljava/lang/String;

    const/4 v2, 0x2

    iput-object p3, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->mType:Ljava/lang/String;

    const/4 v2, 0x5

    nop

    return-void

    const/4 v1, 0x4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x5

    if-ne p1, p0, :cond_0

    const/4 v3, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x5

    :goto_0
    return v1

    const/4 v0, 0x1

    const/4 v3, 0x0

    :cond_0
    instance-of v1, p1, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;

    if-nez v1, :cond_1

    const/4 v3, 0x5

    const/4 v1, 0x0

    goto :goto_0

    const/4 v3, 0x5

    :cond_1
    move-object v0, p1

    const/4 v3, 0x1

    check-cast v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    const/4 v0, 0x7
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->mId:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x3
.end method

.method public getParentId()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->mParentId:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x6
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->mType:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x1
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->mId:Ljava/lang/String;

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->mType:Ljava/lang/String;

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x6
.end method
