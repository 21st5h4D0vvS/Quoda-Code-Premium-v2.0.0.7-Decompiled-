.class public abstract Lcom/henrythompson/quoda/filesystem/CloudService;
.super Lcom/henrythompson/quoda/filesystem/Filesystem;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/filesystem/Filesystem;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x3
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x2

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/filesystem/Filesystem;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public abstract accountLinked()Z
.end method

.method abstract deleteAccount()V
.end method

.method public requiresQuodaPremium()Z
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x6

    const/4 v0, 0x1

    return v0

    const/4 v0, 0x1
.end method
