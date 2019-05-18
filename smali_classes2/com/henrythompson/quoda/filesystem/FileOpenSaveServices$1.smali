.class final Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;->showSaveDialog(Lcom/henrythompson/quoda/document/Document;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/support/v4/app/FragmentActivity;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/support/v4/app/FragmentActivity;

.field final synthetic val$document:Lcom/henrythompson/quoda/document/Document;

.field final synthetic val$listener:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$1;->val$document:Lcom/henrythompson/quoda/document/Document;

    iput-object p2, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$1;->val$listener:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    iput-object p3, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$1;->val$context:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x3

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$1;->val$document:Lcom/henrythompson/quoda/document/Document;

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$1;->val$listener:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$1;->val$context:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v1, v2}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;->saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;Landroid/app/Activity;)V

    const/4 v3, 0x1

    nop

    return-void

    const/4 v0, 0x6
.end method
