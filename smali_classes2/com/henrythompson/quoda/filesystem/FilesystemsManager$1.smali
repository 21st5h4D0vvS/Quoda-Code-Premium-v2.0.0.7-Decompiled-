.class Lcom/henrythompson/quoda/filesystem/FilesystemsManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->sortList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/henrythompson/quoda/filesystem/Filesystem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/filesystem/FilesystemsManager;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager$1;->this$0:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public compare(Lcom/henrythompson/quoda/filesystem/Filesystem;Lcom/henrythompson/quoda/filesystem/Filesystem;)I
    .locals 4

    const/4 v3, 0x6

    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x7

    instance-of v2, p1, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;

    if-eqz v2, :cond_1

    const/4 v3, 0x7

    :cond_0
    :goto_0
    return v0

    const/4 v3, 0x0

    const/4 v3, 0x5

    :cond_1
    instance-of v2, p2, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;

    if-eqz v2, :cond_2

    move v0, v1

    const/4 v3, 0x0

    goto :goto_0

    const/4 v2, 0x5

    const/4 v3, 0x2

    :cond_2
    instance-of v2, p1, Lcom/henrythompson/quoda/filesystem/CloudService;

    if-eqz v2, :cond_3

    const/4 v3, 0x5

    instance-of v1, p1, Lcom/henrythompson/quoda/filesystem/CloudService;

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    const/4 v0, 0x6

    const/4 v3, 0x0

    :cond_3
    instance-of v0, p2, Lcom/henrythompson/quoda/filesystem/CloudService;

    if-eqz v0, :cond_4

    move v0, v1

    const/4 v3, 0x7

    goto :goto_0

    const/4 v1, 0x2

    const/4 v3, 0x7

    :cond_4
    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    const/4 v2, 0x2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x0

    check-cast p1, Lcom/henrythompson/quoda/filesystem/Filesystem;

    check-cast p2, Lcom/henrythompson/quoda/filesystem/Filesystem;

    invoke-virtual {p0, p1, p2}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager$1;->compare(Lcom/henrythompson/quoda/filesystem/Filesystem;Lcom/henrythompson/quoda/filesystem/Filesystem;)I

    move-result v0

    return v0

    const/4 v1, 0x1
.end method
