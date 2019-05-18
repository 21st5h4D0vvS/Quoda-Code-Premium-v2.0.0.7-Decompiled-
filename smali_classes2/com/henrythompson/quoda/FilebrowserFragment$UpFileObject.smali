.class public Lcom/henrythompson/quoda/FilebrowserFragment$UpFileObject;
.super Lcom/henrythompson/quoda/filesystem/FileObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/FilebrowserFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpFileObject"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x6

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x0
.end method
