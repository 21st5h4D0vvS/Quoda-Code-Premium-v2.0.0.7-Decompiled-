.class final Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$3;
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
.field final synthetic val$onCancel:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$3;->val$onCancel:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$3;->val$onCancel:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$3;->val$onCancel:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x4

    :cond_0
    nop

    return-void

    const/4 v1, 0x3
.end method
