.class public interface abstract Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FilesystemOperationListener"
.end annotation


# virtual methods
.method public abstract onAuthNeededException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V
.end method

.method public abstract onFilesystemException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FilesystemException;)V
.end method

.method public abstract onInternetRequiredAndUnavailable(Lcom/henrythompson/quoda/document/Document;)V
.end method

.method public abstract onOpenFileFinished(Lcom/henrythompson/quoda/document/Document;)V
.end method

.method public abstract onOpenFileStart(Lcom/henrythompson/quoda/document/Document;)V
.end method

.method public abstract onSaveFileFinished(Lcom/henrythompson/quoda/document/Document;)V
.end method

.method public abstract onSaveFileStart(Lcom/henrythompson/quoda/document/Document;)V
.end method
