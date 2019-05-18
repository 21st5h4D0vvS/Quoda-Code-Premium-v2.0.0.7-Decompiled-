.class Lcom/henrythompson/quoda/filesystem/LocalFilesystem$LocalAuthActivityHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/filesystem/LocalFilesystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalAuthActivityHandler"
.end annotation


# instance fields
.field private mOnAuthorised:Ljava/lang/Runnable;

.field private mOnCancelled:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem$LocalAuthActivityHandler;->mOnAuthorised:Ljava/lang/Runnable;

    const/4 v0, 0x2

    iput-object p2, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem$LocalAuthActivityHandler;->mOnCancelled:Ljava/lang/Runnable;

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public onActivityResume()V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x7

    packed-switch p1, :pswitch_data_0

    const/4 v2, 0x7

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v0, 0x0

    const/4 v2, 0x7

    :pswitch_0
    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem$LocalAuthActivityHandler;->mOnAuthorised:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    const-string v0, "LocalFilesystem"

    const-string v1, "Permission granted to browse local files"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem$LocalAuthActivityHandler;->mOnAuthorised:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    const/4 v1, 0x2

    const/4 v2, 0x2

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem$LocalAuthActivityHandler;->mOnCancelled:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    const-string v0, "LocalFilesystem"

    const-string v1, "Permission DENIED to browse local files"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/LocalFilesystem$LocalAuthActivityHandler;->mOnCancelled:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    const/4 v2, 0x7

    const/4 v2, 0x4

    nop

    :pswitch_data_0
    .packed-switch 0x7634d2c
        :pswitch_0
    .end packed-switch
.end method
