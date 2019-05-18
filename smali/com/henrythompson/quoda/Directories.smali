.class public Lcom/henrythompson/quoda/Directories;
.super Ljava/lang/Object;


# static fields
.field public static DIRECTORY_DATA:Ljava/io/File;

.field public static DIRECTORY_QUODA:Ljava/io/File;

.field public static DIRECTORY_SDCARD:Ljava/io/File;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public static initDirectories(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/henrythompson/quoda/Directories;->DIRECTORY_DATA:Ljava/io/File;

    const/4 v3, 0x3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/henrythompson/quoda/Directories;->DIRECTORY_SDCARD:Ljava/io/File;

    const/4 v3, 0x2

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/henrythompson/quoda/Directories;->DIRECTORY_SDCARD:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".quoda"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/henrythompson/quoda/Directories;->DIRECTORY_QUODA:Ljava/io/File;

    const/4 v3, 0x3

    nop

    return-void

    const/4 v2, 0x0
.end method
