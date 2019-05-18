.class public Lcom/henrythompson/quoda/filesystem/AuthNeededException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mFilesystem:Lcom/henrythompson/quoda/filesystem/Filesystem;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x5

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/AuthNeededException;->mFilesystem:Lcom/henrythompson/quoda/filesystem/Filesystem;

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public getFilesystem()Lcom/henrythompson/quoda/filesystem/Filesystem;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/AuthNeededException;->mFilesystem:Lcom/henrythompson/quoda/filesystem/Filesystem;

    return-object v0

    const/4 v1, 0x4
.end method

.method public runAuthorisation(Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 4

    const/4 v3, 0x5

    const/4 v3, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/AuthNeededException;->mFilesystem:Lcom/henrythompson/quoda/filesystem/Filesystem;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    new-instance v0, Lcom/henrythompson/quoda/filesystem/AuthNeededException$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/henrythompson/quoda/filesystem/AuthNeededException$1;-><init>(Lcom/henrythompson/quoda/filesystem/AuthNeededException;Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;Ljava/lang/Runnable;)V

    const/4 v3, 0x3

    new-instance v1, Lcom/henrythompson/quoda/filesystem/AuthNeededException$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/henrythompson/quoda/filesystem/AuthNeededException$2;-><init>(Lcom/henrythompson/quoda/filesystem/AuthNeededException;Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;Ljava/lang/Runnable;)V

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/AuthNeededException;->mFilesystem:Lcom/henrythompson/quoda/filesystem/Filesystem;

    invoke-virtual {v2, p1, v0, v1}, Lcom/henrythompson/quoda/filesystem/Filesystem;->authorise(Lcom/henrythompson/quoda/IAuthHandlingActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v3, 0x3

    :cond_0
    nop

    return-void

    const/4 v1, 0x6
.end method
