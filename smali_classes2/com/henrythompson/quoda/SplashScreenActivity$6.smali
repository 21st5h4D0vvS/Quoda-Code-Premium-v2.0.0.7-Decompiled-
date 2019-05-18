.class Lcom/henrythompson/quoda/SplashScreenActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/SplashScreenActivity;->performActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/SplashScreenActivity;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$6;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public onAuthNeededException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public onFilesystemException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FilesystemException;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public onInternetRequiredAndUnavailable(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public onOpenFileFinished(Lcom/henrythompson/quoda/document/Document;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/document/DocumentsManager;->addAndDisplayDocument(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v1, 0x7

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public onOpenFileStart(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public onSaveFileFinished(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public onSaveFileStart(Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x1
.end method
