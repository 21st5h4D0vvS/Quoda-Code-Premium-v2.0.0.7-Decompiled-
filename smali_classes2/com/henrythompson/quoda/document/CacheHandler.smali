.class public Lcom/henrythompson/quoda/document/CacheHandler;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "cache_database"

.field private static final DATABASE_VERSION:I = 0x1

.field public static final DROPBOX:I = 0x4

.field public static final GOOGLE_DRIVE:I = 0x5

.field private static final KEY_BASE_URL:Ljava/lang/String; = "base_url"

.field private static final KEY_BOOKMARKS:Ljava/lang/String; = "bookmarks"

.field private static final KEY_DISPLAYED:Ljava/lang/String; = "displayed"

.field private static final KEY_ENCODING:Ljava/lang/String; = "encoding"

.field private static final KEY_FILENAME:Ljava/lang/String; = "filename"

.field private static final KEY_FILEPATH:Ljava/lang/String; = "filepath"

.field private static final KEY_FILESYSTEM:Ljava/lang/String; = "filesystem"

.field private static final KEY_FROZEN:Ljava/lang/String; = "frozen"

.field private static final KEY_GOOGLE_DRIVE_ID:Ljava/lang/String; = "google_drive_id"

.field private static final KEY_GOOGLE_DRIVE_PARENT_ID:Ljava/lang/String; = "google_drive_parent_id"

.field private static final KEY_HAS_BOM:Ljava/lang/String; = "bom"

.field private static final KEY_ID:Ljava/lang/String; = "_uuid"

.field private static final KEY_LANGUAGE:Ljava/lang/String; = "language"

.field private static final KEY_LAST_MODIFIED:Ljava/lang/String; = "modified"

.field private static final KEY_LINEBREAKS:Ljava/lang/String; = "linebreaks"

.field private static final KEY_SAVED:Ljava/lang/String; = "saved"

.field private static final KEY_SCROLL_X:Ljava/lang/String; = "scroll_x"

.field private static final KEY_SCROLL_Y:Ljava/lang/String; = "scroll_y"

.field private static final KEY_SEL_END:Ljava/lang/String; = "selection_end"

.field private static final KEY_SEL_START:Ljava/lang/String; = "selection_start"

.field private static final KEY_SERVER_ID:Ljava/lang/String; = "server_id"

.field public static final LOCAL:I = 0x0

.field public static final SFTP:I = 0x3

.field private static final TABLE_DOCUMENTS:Ljava/lang/String; = "table_documents"

.field private static final TAG:Ljava/lang/String; = "CacheHandler"

.field private static final mCommandsQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static mCommandsThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/document/CacheHandler;->mCommandsQueue:Ljava/util/ArrayList;

    nop

    return-void

    const/4 v0, 0x3
.end method

.method constructor <init>()V
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/document/CacheHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "cache_database"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 v4, 0x2

    nop

    return-void

    const/4 v1, 0x5
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/henrythompson/quoda/document/CacheHandler;->mCommandsQueue:Ljava/util/ArrayList;

    return-object v0

    const/4 v1, 0x2
.end method

.method static synthetic access$100()Ljava/lang/Thread;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    sget-object v0, Lcom/henrythompson/quoda/document/CacheHandler;->mCommandsThread:Ljava/lang/Thread;

    return-object v0

    const/4 v1, 0x7
.end method

.method static synthetic access$102(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x6

    sput-object p0, Lcom/henrythompson/quoda/document/CacheHandler;->mCommandsThread:Ljava/lang/Thread;

    return-object p0

    const/4 v0, 0x1
.end method

.method static synthetic access$200(Lcom/henrythompson/quoda/document/CacheHandler;Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/document/CacheHandler;->performAddDocument(Lcom/henrythompson/quoda/document/Document;)V

    nop

    return-void

    const/4 v0, 0x1
.end method

.method static synthetic access$300(Lcom/henrythompson/quoda/document/CacheHandler;Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x7

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/document/CacheHandler;->performUpdateDocument(Lcom/henrythompson/quoda/document/Document;)V

    nop

    return-void

    const/4 v0, 0x6
.end method

.method static synthetic access$400(Lcom/henrythompson/quoda/document/CacheHandler;Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x3

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/document/CacheHandler;->performDeleteDocument(Lcom/henrythompson/quoda/document/Document;)V

    nop

    return-void

    const/4 v0, 0x2
.end method

.method private createCacheFilesIfNecessary(Lcom/henrythompson/quoda/document/Document;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v8, 0x5

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getUUID()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x6

    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/henrythompson/quoda/Directories;->DIRECTORY_DATA:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".cache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x3

    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/henrythompson/quoda/Directories;->DIRECTORY_DATA:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-undo.cache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x7

    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/henrythompson/quoda/Directories;->DIRECTORY_DATA:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-redo.cache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v8, 0x5

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x4

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v8, 0x6

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v8, 0x7

    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v8, 0x2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v8, 0x4

    :cond_2
    :goto_2
    nop

    return-void

    const/4 v6, 0x0

    const/4 v8, 0x7

    :catch_0
    move-exception v0

    const/4 v8, 0x1

    const-string v5, "CacheHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create text cache file for document with UUID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    const/4 v6, 0x6

    const/4 v8, 0x1

    :catch_1
    move-exception v0

    const/4 v8, 0x1

    const-string v5, "CacheHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create undo cache file for document with UUID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    const/4 v6, 0x4

    const/4 v8, 0x6

    :catch_2
    move-exception v0

    const/4 v8, 0x6

    const-string v5, "CacheHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create redo cache file for document with UUID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    const/4 v0, 0x0
.end method

.method private decodeBookmarks(Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x5

    const/4 v5, 0x5

    const-string v3, "\\|"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x7

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    const/4 v5, 0x0

    :try_start_0
    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getIsLoaded()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getLinesCollection()Lcom/henrythompson/quoda/document/LinesCollection;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/henrythompson/quoda/document/LinesCollection;->getLine(I)Lcom/henrythompson/quoda/document/LineObject;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/document/LineObject;->setIsBookmarked(Z)V

    const/4 v5, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v3, 0x4

    const/4 v5, 0x6

    :cond_0
    invoke-virtual {p1, v0}, Lcom/henrythompson/quoda/document/Document;->setLineBookmarkedBeforeLoaded(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    const/4 v1, 0x2

    const/4 v5, 0x5

    :catch_0
    move-exception v3

    goto :goto_1

    const/4 v2, 0x1

    const/4 v5, 0x0

    :cond_1
    nop

    return-void

    const/4 v4, 0x4
.end method

.method private decodeUndoStack(Ljava/lang/String;)Lcom/henrythompson/quoda/UndoStack;
    .locals 10

    const/4 v9, 0x6

    const/4 v9, 0x7

    new-instance v5, Lcom/henrythompson/quoda/UndoStack;

    invoke-direct {v5}, Lcom/henrythompson/quoda/UndoStack;-><init>()V

    const/4 v9, 0x6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    const/4 v9, 0x7

    :cond_0
    return-object v5

    const/4 v1, 0x0

    const/4 v9, 0x4

    :cond_1
    const-string v1, "\u0005"

    const/4 v9, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v4, v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v9, 0x2

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v3, v4, v6

    const/4 v9, 0x7

    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v9, 0x3

    :cond_2
    array-length v6, v4

    add-int/lit8 v2, v6, -0x3

    :goto_0
    if-ltz v2, :cond_0

    const/4 v9, 0x5

    new-instance v0, Lcom/henrythompson/quoda/UndoStack$TextChange;

    invoke-direct {v0}, Lcom/henrythompson/quoda/UndoStack$TextChange;-><init>()V

    const/4 v9, 0x2

    aget-object v6, v4, v2

    iput-object v6, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    const/4 v9, 0x1

    add-int/lit8 v6, v2, 0x1

    aget-object v6, v4, v6

    iput-object v6, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    const/4 v9, 0x7

    add-int/lit8 v6, v2, 0x2

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    const/4 v9, 0x0

    invoke-virtual {v5, v0}, Lcom/henrythompson/quoda/UndoStack;->push(Lcom/henrythompson/quoda/UndoStack$TextChange;)V

    const/4 v9, 0x0

    add-int/lit8 v2, v2, -0x3

    goto :goto_0

    const/4 v0, 0x6
.end method

.method private deleteDocument(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x5

    const/4 v9, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v9, 0x4

    :try_start_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/CacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v9, 0x5

    const-string v5, "table_documents"

    const-string v6, "_uuid =?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v9, 0x7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x3

    :goto_0
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/henrythompson/quoda/Directories;->DIRECTORY_DATA:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".cache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v9, 0x4

    const-string v5, "CacheHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete text cache for document with UUID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    :goto_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/henrythompson/quoda/Directories;->DIRECTORY_DATA:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-undo.cache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x7

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v9, 0x4

    const-string v5, "CacheHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete undo cache for document with UUID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x2

    :goto_2
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/henrythompson/quoda/Directories;->DIRECTORY_DATA:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-redo.cache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x4

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v9, 0x2

    const-string v5, "CacheHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete redo cache for document with UUID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :goto_3
    const-string v5, "CacheHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted cache for document with UUID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x5

    :cond_0
    nop

    return-void

    const/4 v2, 0x2

    const/4 v9, 0x5

    :catch_0
    move-exception v1

    const/4 v9, 0x4

    const-string v5, "CacheHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete cache for document with UUID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from the database:\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    const/4 v7, 0x2

    const/4 v9, 0x5

    :cond_1
    const-string v5, "CacheHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successfully deleted text cache for document with UUID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    const/4 v9, 0x0

    const/4 v9, 0x1

    :cond_2
    const-string v5, "CacheHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successfully deleted undo cache for document with UUID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    const/4 v2, 0x1

    const/4 v9, 0x0

    :cond_3
    const-string v5, "CacheHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successfully deleted redo cache for document with UUID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    const/4 v5, 0x6
.end method

.method private editable(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    return-object v0

    const/4 v1, 0x0
.end method

.method private encodeBookmarks(Lcom/henrythompson/quoda/document/Document;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x4

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getLinesCollection()Lcom/henrythompson/quoda/document/LinesCollection;

    move-result-object v2

    const/4 v5, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x6

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/LinesCollection;->getLineCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    const/4 v5, 0x3

    invoke-virtual {v2, v0}, Lcom/henrythompson/quoda/document/LinesCollection;->getLine(I)Lcom/henrythompson/quoda/document/LineObject;

    move-result-object v1

    const/4 v5, 0x7

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/LineObject;->getIsBookmarked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v5, 0x0

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v4, 0x3

    const/4 v5, 0x6

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    const/4 v3, 0x6
.end method

.method private encodeUndoStack(Lcom/henrythompson/quoda/UndoStack;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x7

    const/4 v5, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x7

    const-string v2, "\u0005"

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/henrythompson/quoda/UndoStack;->count()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_0
    if-ltz v3, :cond_0

    const/4 v5, 0x5

    invoke-virtual {p1, v3}, Lcom/henrythompson/quoda/UndoStack;->getItemAt(I)Lcom/henrythompson/quoda/UndoStack$TextChange;

    move-result-object v1

    const/4 v5, 0x6

    iget-object v4, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x6

    iget-object v4, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    iget v4, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v5, 0x7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    const/4 v5, 0x1

    const/4 v5, 0x0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v5, 0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    const/4 v2, 0x7
.end method

.method private static getContext()Landroid/content/Context;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0

    const/4 v1, 0x6
.end method

.method private getRedoStack(Lcom/henrythompson/quoda/document/Document;)Lcom/henrythompson/quoda/document/Document;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/document/QuodaCacheException;
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v5, 0x6

    if-eqz p1, :cond_0

    const/4 v5, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-redo.cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x5

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/henrythompson/quoda/Directories;->DIRECTORY_DATA:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x6

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/document/CacheHandler;->readUndoStackCache(Ljava/lang/String;)Lcom/henrythompson/quoda/UndoStack;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {p1, v2}, Lcom/henrythompson/quoda/document/Document;->setRedoStack(Lcom/henrythompson/quoda/UndoStack;)V

    const/4 v5, 0x2

    :cond_0
    return-object p1

    const/4 v3, 0x1

    const/4 v5, 0x7

    :cond_1
    new-instance v3, Lcom/henrythompson/quoda/document/QuodaCacheException;

    const-string v4, "Redo cache file does not exist"

    invoke-direct {v3, v4}, Lcom/henrythompson/quoda/document/QuodaCacheException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getUndoStack(Lcom/henrythompson/quoda/document/Document;)Lcom/henrythompson/quoda/document/Document;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/document/QuodaCacheException;
        }
    .end annotation

    const/4 v5, 0x4

    const/4 v5, 0x5

    if-eqz p1, :cond_0

    const/4 v5, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-undo.cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x6

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/henrythompson/quoda/Directories;->DIRECTORY_DATA:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x4

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/document/CacheHandler;->readUndoStackCache(Ljava/lang/String;)Lcom/henrythompson/quoda/UndoStack;

    move-result-object v2

    const/4 v5, 0x6

    invoke-virtual {p1, v2}, Lcom/henrythompson/quoda/document/Document;->setUndoStack(Lcom/henrythompson/quoda/UndoStack;)V

    const/4 v5, 0x7

    :cond_0
    return-object p1

    const/4 v3, 0x1

    const/4 v5, 0x6

    :cond_1
    new-instance v3, Lcom/henrythompson/quoda/document/QuodaCacheException;

    const-string v4, "Undo cache file does not exist"

    invoke-direct {v3, v4}, Lcom/henrythompson/quoda/document/QuodaCacheException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private performAddDocument(Lcom/henrythompson/quoda/document/Document;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x4

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/document/CacheHandler;->createCacheFilesIfNecessary(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v1, 0x1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/henrythompson/quoda/document/CacheHandler;->updateDocumentCache(Lcom/henrythompson/quoda/document/Document;Z)V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x3
.end method

.method private performDeleteDocument(Lcom/henrythompson/quoda/document/Document;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getUUID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/document/CacheHandler;->deleteDocument(Ljava/lang/String;)V

    const/4 v1, 0x6

    :cond_0
    nop

    return-void

    const/4 v1, 0x0
.end method

.method private performUpdateDocument(Lcom/henrythompson/quoda/document/Document;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x2

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/document/CacheHandler;->createCacheFilesIfNecessary(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v1, 0x6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/henrythompson/quoda/document/CacheHandler;->updateDocumentCache(Lcom/henrythompson/quoda/document/Document;Z)V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v1, 0x7
.end method

.method private readTextCache(Lcom/henrythompson/quoda/document/Document;)Lcom/henrythompson/quoda/document/Document;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/document/QuodaCacheException;
        }
    .end annotation

    const/4 v13, 0x1

    const/4 v13, 0x2

    :try_start_0
    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getUUID()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".cache"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    const/4 v13, 0x4

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v13, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x1

    new-instance v7, Lcom/henrythompson/quoda/document/LinesCollection;

    invoke-direct {v7}, Lcom/henrythompson/quoda/document/LinesCollection;-><init>()V

    const/4 v13, 0x3

    const/4 v5, 0x0

    const/4 v13, 0x6

    const/4 v6, 0x0

    const/4 v13, 0x6

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    const/4 v13, 0x3

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x4

    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v13, 0x3

    invoke-virtual {v7, v5, v6}, Lcom/henrythompson/quoda/document/LinesCollection;->add(II)Lcom/henrythompson/quoda/document/LineObject;

    const/4 v13, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v6, v10

    const/4 v13, 0x3

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    const/4 v8, 0x0

    const/4 v13, 0x2

    :catch_0
    move-exception v2

    const/4 v13, 0x0

    new-instance v10, Lcom/henrythompson/quoda/document/QuodaCacheException;

    const-string v11, "The desired file was not found"

    invoke-direct {v10, v11}, Lcom/henrythompson/quoda/document/QuodaCacheException;-><init>(Ljava/lang/String;)V

    throw v10

    const/4 v13, 0x2

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_1

    const/4 v13, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v13, 0x2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/henrythompson/quoda/document/CacheHandler;->editable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v9

    const/4 v13, 0x3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v13, 0x6

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v13, 0x4

    :goto_1
    invoke-virtual {p1, v7}, Lcom/henrythompson/quoda/document/Document;->setLineStartsList(Lcom/henrythompson/quoda/document/LinesCollection;)V

    const/4 v13, 0x5

    const/4 v10, 0x1

    invoke-virtual {p1, v9, v10}, Lcom/henrythompson/quoda/document/Document;->setText(Landroid/text/Editable;I)V

    const/4 v13, 0x5

    return-object p1

    const/4 v0, 0x6

    const/4 v13, 0x5

    :catch_1
    move-exception v3

    const/4 v13, 0x3

    new-instance v10, Lcom/henrythompson/quoda/document/QuodaCacheException;

    const-string v11, "An IO error occurred as the document\'s text was being read"

    invoke-direct {v10, v11}, Lcom/henrythompson/quoda/document/QuodaCacheException;-><init>(Ljava/lang/String;)V

    throw v10

    const/4 v13, 0x1

    :catch_2
    move-exception v10

    goto :goto_1

    const/4 v1, 0x6
.end method

.method private readUndoStackCache(Ljava/lang/String;)Lcom/henrythompson/quoda/UndoStack;
    .locals 9

    const/4 v8, 0x1

    const/4 v8, 0x2

    :try_start_0
    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    const/4 v8, 0x4

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v8, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x3

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x7

    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    const/4 v6, 0x6

    const/4 v8, 0x6

    :catch_0
    move-exception v4

    const/4 v8, 0x7

    new-instance v7, Lcom/henrythompson/quoda/UndoStack;

    invoke-direct {v7}, Lcom/henrythompson/quoda/UndoStack;-><init>()V

    const/4 v8, 0x2

    :goto_1
    return-object v7

    const/4 v5, 0x7

    const/4 v8, 0x2

    :catch_1
    move-exception v3

    const/4 v8, 0x4

    new-instance v7, Lcom/henrythompson/quoda/UndoStack;

    invoke-direct {v7}, Lcom/henrythompson/quoda/UndoStack;-><init>()V

    goto :goto_1

    const/4 v0, 0x3

    const/4 v8, 0x1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v8, 0x5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v8, 0x5

    :goto_2
    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/document/CacheHandler;->decodeUndoStack(Ljava/lang/String;)Lcom/henrythompson/quoda/UndoStack;

    move-result-object v7

    goto :goto_1

    const/4 v0, 0x2

    const/4 v8, 0x6

    :catch_2
    move-exception v7

    goto :goto_2

    const/4 v1, 0x5
.end method

.method private updateDocumentCache(Lcom/henrythompson/quoda/document/Document;Z)V
    .locals 25

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/document/CacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    :cond_0
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v20

    if-nez v20, :cond_0

    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    const-string v20, "_uuid"

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getUUID()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "filename"

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "filepath"

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getFilePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "encoding"

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getEncoding()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "bom"

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->hasBOM()Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "linebreaks"

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getLinebreakCode()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v21, "language"

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v20

    if-eqz v20, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v20

    :goto_0
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "selection_start"

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getSelectionStart()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v20, "selection_end"

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getSelectionEnd()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v20, "scroll_x"

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getScrollX()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v20, "scroll_y"

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getScrollY()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v20, "bookmarks"

    invoke-direct/range {p0 .. p1}, Lcom/henrythompson/quoda/document/CacheHandler;->encodeBookmarks(Lcom/henrythompson/quoda/document/Document;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getFilesystem()Ljava/lang/String;

    move-result-object v20

    const-string v21, "google_drive"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    const/4 v7, 0x5

    :goto_1
    const-string v20, "filesystem"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v20, "saved"

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getIsSaved()Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v20, "frozen"

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getFrozen()Z

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v21, "displayed"

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->isDisplayed()Z

    move-result v20

    if-eqz v20, :cond_7

    const-string v20, "true"

    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "modified"

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getLastModified()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v20, "server_id"

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getFilesystem()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "base_url"

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getBaseURLString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, ""

    const-string v10, ""

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getFileObject()Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getFileObject()Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v8

    check-cast v8, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getParentId()Ljava/lang/String;

    move-result-object v10

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getFileObject()Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getFileObject()Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v4

    check-cast v4, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "[AppsScript "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getType()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getParentId()Ljava/lang/String;

    move-result-object v10

    :cond_2
    const-string v20, "google_drive_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "google_drive_parent_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_8

    const-string v20, "table_documents"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getUUID()Ljava/lang/String;

    move-result-object v18

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getText()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/io/OutputStreamWriter;

    invoke-static {}, Lcom/henrythompson/quoda/document/CacheHandler;->getContext()Landroid/content/Context;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".cache"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v14, v13}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/henrythompson/quoda/document/CacheHandler;->encodeUndoStack(Lcom/henrythompson/quoda/UndoStack;)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/io/OutputStreamWriter;

    invoke-static {}, Lcom/henrythompson/quoda/document/CacheHandler;->getContext()Landroid/content/Context;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-undo.cache"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getRedoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/henrythompson/quoda/document/CacheHandler;->encodeUndoStack(Lcom/henrythompson/quoda/UndoStack;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-static {}, Lcom/henrythompson/quoda/document/CacheHandler;->getContext()Landroid/content/Context;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-redo.cache"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v12, v11}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_6
    nop

    return-void

    const/4 v2, 0x5

    :cond_3
    const-string v20, "null"

    goto/16 :goto_0

    const/4 v13, 0x5

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getFilesystem()Ljava/lang/String;

    move-result-object v20

    const-string v21, "local"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    const/4 v7, 0x0

    goto/16 :goto_1

    const/4 v2, 0x0

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getFilesystem()Ljava/lang/String;

    move-result-object v20

    const-string v21, "dropbox"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    const/4 v7, 0x4

    goto/16 :goto_1

    const/4 v8, 0x4

    :cond_6
    const/4 v7, -0x1

    goto/16 :goto_1

    const/4 v9, 0x4

    :cond_7
    const-string v20, "false"

    goto/16 :goto_2

    const/4 v14, 0x0

    :cond_8
    const-string v20, "table_documents"

    const-string v21, "_uuid = ?"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getUUID()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3

    const/4 v1, 0x5

    :catch_0
    move-exception v6

    const-string v20, "CacheHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error when caching the text of the document with UUID "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    const/4 v9, 0x2

    :catch_1
    move-exception v6

    const-string v20, "CacheHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error when caching the undo stack of the document with UUID "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    const/4 v8, 0x4

    :catch_2
    move-exception v6

    const-string v20, "CacheHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error when caching the redo stack of the document with UUID "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":\n"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    const/4 v8, 0x5
.end method


# virtual methods
.method public addCommandToQueue(Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;)V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x4

    sget-object v0, Lcom/henrythompson/quoda/document/CacheHandler;->mCommandsQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    sget-object v0, Lcom/henrythompson/quoda/document/CacheHandler;->mCommandsThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/henrythompson/quoda/document/CacheHandler$1;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/document/CacheHandler$1;-><init>(Lcom/henrythompson/quoda/document/CacheHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/henrythompson/quoda/document/CacheHandler;->mCommandsThread:Ljava/lang/Thread;

    const/4 v2, 0x5

    sget-object v0, Lcom/henrythompson/quoda/document/CacheHandler;->mCommandsThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    const/4 v2, 0x0

    :cond_0
    nop

    return-void

    const/4 v1, 0x7
.end method

.method public addDocument(Lcom/henrythompson/quoda/document/Document;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;-><init>(ILcom/henrythompson/quoda/document/Document;)V

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/document/CacheHandler;->addCommandToQueue(Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;)V

    const/4 v2, 0x4

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public deleteDocument(Lcom/henrythompson/quoda/document/Document;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x3

    new-instance v0, Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;-><init>(ILcom/henrythompson/quoda/document/Document;)V

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/document/CacheHandler;->addCommandToQueue(Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;)V

    const/4 v2, 0x7

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public getUnloadedDocuments()Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/document/Document;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v16, "SELECT * FROM table_documents"

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/document/CacheHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_7

    :cond_0
    new-instance v4, Lcom/henrythompson/quoda/document/Document;

    invoke-direct {v4}, Lcom/henrythompson/quoda/document/Document;-><init>()V

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/henrythompson/quoda/document/Document;->setIsLoaded(Z)V

    const/16 v18, 0x0

    :try_start_0
    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/henrythompson/quoda/document/Document;->setUUID(Ljava/lang/String;)V

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/henrythompson/quoda/document/Document;->setEncoding(Ljava/lang/String;)V

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/henrythompson/quoda/document/Document;->setHasBOM(Z)V

    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/henrythompson/quoda/document/Document;->setLineDelimStyle(I)V

    const/16 v18, 0x6

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    const/16 v18, 0x7

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/henrythompson/quoda/document/Document;->setSelectionStart(I)V

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/henrythompson/quoda/document/Document;->setSelectionEnd(I)V

    const/16 v18, 0x9

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/henrythompson/quoda/document/Document;->setScrollX(I)V

    const/16 v18, 0xa

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/henrythompson/quoda/document/Document;->setScrollY(I)V

    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v4, v1}, Lcom/henrythompson/quoda/document/CacheHandler;->decodeBookmarks(Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;)V

    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/16 v18, 0xd

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/16 v18, 0xe

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/henrythompson/quoda/document/Document;->setFrozen(Z)V

    const/16 v18, 0xf

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/henrythompson/quoda/document/Document;->setIsDisplayed(Z)V

    const/16 v18, 0x10

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLastModified(J)V

    const/16 v18, 0x11

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x12

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/henrythompson/quoda/document/Document;->setBaseURL(Ljava/lang/String;)V

    const/16 v18, 0x13

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v18, 0x14

    move/from16 v0, v18

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v18, 0x5

    move/from16 v0, v18

    if-ne v10, v0, :cond_4

    const-string v18, "[AppsScript html]"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "[AppsScript server_js]"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    :cond_1
    const-string v18, "[AppsScript html]"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    const-string v18, "\\[AppsScript html\\]"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v7, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;

    const-string v18, "html"

    move-object/from16 v0, v18

    invoke-direct {v7, v12, v13, v0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v7, v8}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/henrythompson/quoda/document/Document;->setFileObject(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    invoke-virtual {v4, v14}, Lcom/henrythompson/quoda/document/Document;->setIsSaved(Z)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-nez v18, :cond_0

    :goto_2
    return-object v5

    const/4 v12, 0x1

    :cond_2
    :try_start_1
    const-string v18, "\\[AppsScript server_js\\]"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v7, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;

    const-string v18, "server_js"

    move-object/from16 v0, v18

    invoke-direct {v7, v12, v13, v0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    const/4 v1, 0x1

    :cond_3
    new-instance v7, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v7, v0, v12, v13}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    const/4 v14, 0x6

    :cond_4
    const-string v11, ""

    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v10, v0, :cond_5

    const-string v11, "dropbox"

    :goto_3
    new-instance v7, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v7, v0, v11}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    const/4 v0, 0x5

    :cond_5
    if-nez v10, :cond_6

    const-string v11, "local"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    const/4 v11, 0x1

    :cond_6
    move-object/from16 v11, v17

    goto :goto_3

    const/4 v4, 0x3

    :catch_0
    move-exception v6

    const-string v18, "CacheHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to load cache for document with UUID "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/Document;->getUUID()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " from the database:\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    const/4 v10, 0x1

    :cond_7
    const-string v18, "CacheHandler"

    const-string v19, "Database was empty"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    const/4 v0, 0x3
.end method

.method public loadDocument(Lcom/henrythompson/quoda/document/Document;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/document/QuodaCacheException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getIsSaved()Z

    move-result v2

    const/4 v7, 0x5

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/document/CacheHandler;->readTextCache(Lcom/henrythompson/quoda/document/Document;)Lcom/henrythompson/quoda/document/Document;

    const/4 v7, 0x4

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/document/CacheHandler;->getUndoStack(Lcom/henrythompson/quoda/document/Document;)Lcom/henrythompson/quoda/document/Document;

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/document/CacheHandler;->getRedoStack(Lcom/henrythompson/quoda/document/Document;)Lcom/henrythompson/quoda/document/Document;

    const/4 v7, 0x7

    invoke-virtual {p1, v2}, Lcom/henrythompson/quoda/document/Document;->setIsSaved(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x1

    invoke-virtual {p1, v6}, Lcom/henrythompson/quoda/document/Document;->setIsLoaded(Z)V

    const/4 v7, 0x1

    :goto_0
    nop

    return-void

    const/4 v6, 0x7

    const/4 v7, 0x2

    :catch_0
    move-exception v1

    const/4 v7, 0x1

    :try_start_1
    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v7, 0x7

    const v3, 0x7f0d00eb

    const v4, 0x7f0d0148

    invoke-static {v3, v4}, Lcom/henrythompson/quoda/DataController;->showMessage(II)V

    const/4 v7, 0x3

    const-string v3, "CacheHandler.loadDocument(Document)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading document with UUID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getUUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x6

    invoke-virtual {p1, v6}, Lcom/henrythompson/quoda/document/Document;->setIsLoaded(Z)V

    goto :goto_0

    const/4 v2, 0x0

    :catchall_0
    move-exception v3

    invoke-virtual {p1, v6}, Lcom/henrythompson/quoda/document/Document;->setIsLoaded(Z)V

    throw v3
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    const-string v0, "CREATE TABLE table_documents(_uuid TEXT PRIMARY KEY, filename TEXT, filepath TEXT, encoding TEXT, bom TEXT, linebreaks INTEGER, language TEXT, selection_start INTEGER, selection_end INTEGER, scroll_x INTEGER, scroll_y INTEGER, bookmarks TEXT, filesystem INTEGER, saved TEXT, frozen TEXT, displayed TEXT, modified REAL, server_id TEXT, base_url TEXT, google_drive_id TEXT, google_drive_parent_id TEXT)"

    const/4 v1, 0x3

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x2

    const-string v0, "DROP TABLE IF EXISTS table_documents"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/document/CacheHandler;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x5
.end method

.method public updateDocument(Lcom/henrythompson/quoda/document/Document;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;-><init>(ILcom/henrythompson/quoda/document/Document;)V

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/document/CacheHandler;->addCommandToQueue(Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;)V

    const/4 v2, 0x3

    nop

    return-void

    const/4 v1, 0x5
.end method
