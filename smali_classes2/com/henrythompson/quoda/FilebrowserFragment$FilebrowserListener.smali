.class public interface abstract Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/FilebrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FilebrowserListener"
.end annotation


# virtual methods
.method public abstract onAuthNeededException(Lcom/henrythompson/quoda/filesystem/AuthNeededException;Ljava/lang/Runnable;)V
.end method

.method public abstract onFileSelected(Lcom/henrythompson/quoda/filesystem/FileObject;)V
.end method

.method public abstract onFilesystemException(Lcom/henrythompson/quoda/filesystem/FilesystemException;)V
.end method

.method public abstract onFolderListStart(Lcom/henrythompson/quoda/filesystem/FileObject;)V
.end method

.method public abstract onFolderListed(Lcom/henrythompson/quoda/filesystem/FileObject;)V
.end method
