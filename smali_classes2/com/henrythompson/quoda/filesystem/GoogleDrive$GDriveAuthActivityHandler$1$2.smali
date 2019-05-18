.class Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1$2;->this$2:Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1$2;->this$2:Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;

    iget-object v0, v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler$1;->this$1:Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->access$700(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x5
.end method
