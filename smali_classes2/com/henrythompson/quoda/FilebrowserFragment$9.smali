.class Lcom/henrythompson/quoda/FilebrowserFragment$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/FilebrowserFragment;->sortItems(Ljava/util/ArrayList;)V
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
        "Lcom/henrythompson/quoda/filesystem/FileObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/FilebrowserFragment;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/FilebrowserFragment;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$9;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public compare(Lcom/henrythompson/quoda/filesystem/FileObject;Lcom/henrythompson/quoda/filesystem/FileObject;)I
    .locals 4

    const/4 v3, 0x6

    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v3, 0x5

    instance-of v2, p1, Lcom/henrythompson/quoda/FilebrowserFragment$UpFileObject;

    if-eqz v2, :cond_1

    const/4 v3, 0x5

    :cond_0
    :goto_0
    return v0

    const/4 v2, 0x1

    const/4 v3, 0x5

    :cond_1
    instance-of v2, p2, Lcom/henrythompson/quoda/FilebrowserFragment$UpFileObject;

    if-eqz v2, :cond_2

    move v0, v1

    const/4 v3, 0x5

    goto :goto_0

    const/4 v3, 0x1

    const/4 v3, 0x6

    :cond_2
    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->isDir()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->isDir()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x5

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    const/4 v3, 0x0

    const/4 v3, 0x4

    :cond_3
    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->isDir()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    const/4 v3, 0x0

    goto :goto_0

    const/4 v3, 0x7

    const/4 v3, 0x6

    :cond_4
    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    const/4 v1, 0x4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x1

    check-cast p1, Lcom/henrythompson/quoda/filesystem/FileObject;

    check-cast p2, Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {p0, p1, p2}, Lcom/henrythompson/quoda/FilebrowserFragment$9;->compare(Lcom/henrythompson/quoda/filesystem/FileObject;Lcom/henrythompson/quoda/filesystem/FileObject;)I

    move-result v0

    return v0

    const/4 v0, 0x4
.end method
