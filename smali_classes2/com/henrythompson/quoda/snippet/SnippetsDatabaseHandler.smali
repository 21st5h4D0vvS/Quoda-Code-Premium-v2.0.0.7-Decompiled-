.class public Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "snippets_database"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final KEY_CONTENT:Ljava/lang/String; = "content"

.field private static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final KEY_ID:Ljava/lang/String; = "uuid"

.field private static final KEY_LANGUAGE:Ljava/lang/String; = "language"

.field private static final KEY_LOCATION:Ljava/lang/String; = "location"

.field private static final KEY_LOCATION_PARENT:Ljava/lang/String; = "parent"

.field private static final KEY_LOCATION_PATH:Ljava/lang/String; = "path"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_TABTRIGGER:Ljava/lang/String; = "tabtrigger"

.field private static final TABLE_LOCATIONS:Ljava/lang/String; = "locations"

.field private static final TABLE_SNIPPETS:Ljava/lang/String; = "snippets"


# instance fields
.field private mLocationsToInsertOnFirstRun:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSnippetsToInsertOnFirstRun:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/snippet/Snippet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 5

    const/4 v4, 0x4

    const/4 v4, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "snippets_database"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 v4, 0x3

    nop

    return-void

    const/4 v1, 0x7
.end method

.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/snippet/Snippet;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v4, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "snippets_database"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->mSnippetsToInsertOnFirstRun:Ljava/util/ArrayList;

    const/4 v4, 0x0

    iput-object p2, p0, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->mLocationsToInsertOnFirstRun:Ljava/util/ArrayList;

    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x1

    nop

    return-void

    const/4 v2, 0x2
.end method

.method private decodeLanguages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x0

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x3
.end method

.method private deleteAllSnippetsInLocation(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v4, 0x5

    invoke-static {p1}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x5

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->escapeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v4, 0x3

    const-string v1, "snippets"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v4, 0x4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v4, 0x5

    nop

    return-void

    const/4 v0, 0x6
.end method

.method private encodeLanguages([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x4

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v3, 0x4

    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v3, 0x4

    const/4 v3, 0x0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    const/4 v0, 0x4
.end method

.method private escapeQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x4

    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v2, 0x0
.end method


# virtual methods
.method public addFolder(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x6

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x7

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getFolderExists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v5, 0x6

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x7

    invoke-static {v1}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v5, 0x4

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v5, 0x2

    const-string v3, "path"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x6

    const-string v3, "parent"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x5

    const-string v3, "locations"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v5, 0x5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v5, 0x5

    :goto_0
    return v3

    const/4 v0, 0x1

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    const/4 v1, 0x5
.end method

.method public addSnippet(Lcom/henrythompson/quoda/snippet/Snippet;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v4, 0x5

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x1

    const-string v2, "uuid"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/snippet/Snippet;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    const-string v2, "name"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/snippet/Snippet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x7

    const-string v2, "description"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/snippet/Snippet;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    const-string v2, "content"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/snippet/Snippet;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x5

    const-string v2, "language"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/snippet/Snippet;->getLanguages()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->encodeLanguages([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x5

    const-string v2, "tabtrigger"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/snippet/Snippet;->getTabTrigger()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x6

    const-string v2, "location"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/snippet/Snippet;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    const-string v2, "snippets"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v4, 0x7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v4, 0x0

    nop

    return-void

    const/4 v3, 0x6
.end method

.method public deleteFolder(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v4, 0x3

    invoke-static {p1}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->escapeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x6

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->deleteAllSnippetsInLocation(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v4, 0x2

    const-string v1, "locations"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v4, 0x0

    nop

    return-void

    const/4 v1, 0x7
.end method

.method public deleteSnippet(Lcom/henrythompson/quoda/snippet/Snippet;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v4, 0x5

    const-string v1, "snippets"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uuid = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/henrythompson/quoda/snippet/Snippet;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v4, 0x6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v4, 0x0

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public deleteSnippet(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v4, 0x2

    const-string v1, "snippets"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uuid=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v4, 0x3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v4, 0x5

    nop

    return-void

    const/4 v4, 0x5
.end method

.method public deleteSnippet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x6

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->escapeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v4, 0x4

    const-string v1, "snippets"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v4, 0x6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const/4 v4, 0x4

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public getFolderExists(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v4, 0x3

    invoke-static {p1}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x6

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->escapeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v4, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM locations WHERE path = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v4, 0x7

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    const/4 v1, 0x1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    const/4 v1, 0x2
.end method

.method public getSnippetForLocation(Ljava/lang/String;Ljava/lang/String;)Lcom/henrythompson/quoda/snippet/Snippet;
    .locals 8

    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v7, 0x5

    invoke-static {p2}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v7, 0x4

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->escapeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v7, 0x2

    invoke-direct {p0, p2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->escapeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v7, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT * FROM snippets WHERE location =\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " =\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\';"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v7, 0x2

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v7, 0x7

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x6

    new-instance v4, Lcom/henrythompson/quoda/snippet/Snippet;

    invoke-direct {v4, v2}, Lcom/henrythompson/quoda/snippet/Snippet;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/snippet/Snippet;->setName(Ljava/lang/String;)V

    const/4 v7, 0x6

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/snippet/Snippet;->setDescription(Ljava/lang/String;)V

    const/4 v7, 0x2

    const/4 v5, 0x3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/snippet/Snippet;->setContent(Ljava/lang/String;)V

    const/4 v7, 0x1

    const/4 v5, 0x4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->decodeLanguages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/snippet/Snippet;->setLanguages([Ljava/lang/String;)V

    const/4 v7, 0x5

    const/4 v5, 0x5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/snippet/Snippet;->setTabTrigger(Ljava/lang/String;)V

    const/4 v7, 0x5

    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/snippet/Snippet;->setLocation(Ljava/lang/String;)V

    const/4 v7, 0x2

    :cond_0
    return-object v4

    const/4 v2, 0x6
.end method

.method public getSnippetForUuid(Ljava/lang/String;)Lcom/henrythompson/quoda/snippet/Snippet;
    .locals 13

    const/4 v12, 0x3

    const/4 v12, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v12, 0x3

    const-string v1, "snippets"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "uuid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "content"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "language"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "tabtrigger"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "location"

    aput-object v4, v2, v3

    const-string v3, "uuid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v12, 0x2

    if-eqz v9, :cond_0

    const/4 v12, 0x0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v12, 0x6

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    new-instance v11, Lcom/henrythompson/quoda/snippet/Snippet;

    invoke-direct {v11, v10}, Lcom/henrythompson/quoda/snippet/Snippet;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x1

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/henrythompson/quoda/snippet/Snippet;->setName(Ljava/lang/String;)V

    const/4 v12, 0x6

    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/henrythompson/quoda/snippet/Snippet;->setDescription(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/henrythompson/quoda/snippet/Snippet;->setContent(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->decodeLanguages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/henrythompson/quoda/snippet/Snippet;->setLanguages([Ljava/lang/String;)V

    const/4 v12, 0x4

    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/henrythompson/quoda/snippet/Snippet;->setTabTrigger(Ljava/lang/String;)V

    const/4 v12, 0x1

    const/4 v1, 0x6

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/henrythompson/quoda/snippet/Snippet;->setLocation(Ljava/lang/String;)V

    const/4 v12, 0x6

    :goto_0
    return-object v11

    const/4 v1, 0x6

    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    const/4 v0, 0x5
.end method

.method public getSnippetsForLanguage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/snippet/Snippet;",
            ">;"
        }
    .end annotation

    const/4 v13, 0x7

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v13, 0x6

    const-string v1, "snippets"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "uuid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "content"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "language"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "tabtrigger"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "location"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "language LIKE \'%|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "language"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|%\' OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "language"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LIKE \'%|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|%\' OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "language"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v13, 0x1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x7

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v13, 0x6

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v13, 0x3

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x6

    new-instance v12, Lcom/henrythompson/quoda/snippet/Snippet;

    invoke-direct {v12, v10}, Lcom/henrythompson/quoda/snippet/Snippet;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x7

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/henrythompson/quoda/snippet/Snippet;->setName(Ljava/lang/String;)V

    const/4 v13, 0x4

    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/henrythompson/quoda/snippet/Snippet;->setDescription(Ljava/lang/String;)V

    const/4 v13, 0x6

    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/henrythompson/quoda/snippet/Snippet;->setContent(Ljava/lang/String;)V

    const/4 v13, 0x5

    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->decodeLanguages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/henrythompson/quoda/snippet/Snippet;->setLanguages([Ljava/lang/String;)V

    const/4 v13, 0x5

    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/henrythompson/quoda/snippet/Snippet;->setTabTrigger(Ljava/lang/String;)V

    const/4 v13, 0x3

    const/4 v1, 0x6

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/henrythompson/quoda/snippet/Snippet;->setLocation(Ljava/lang/String;)V

    const/4 v13, 0x6

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v13, 0x7

    :cond_1
    return-object v11

    const/4 v7, 0x2
.end method

.method public getSnippetsForTabstop(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/snippet/Snippet;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getSnippetsForTabstop(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    const/4 v1, 0x2
.end method

.method public getSnippetsForTabstop(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/snippet/Snippet;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct/range {p0 .. p1}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->escapeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "snippets"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "uuid"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "description"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "content"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "language"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "tabtrigger"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "location"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tabtrigger = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->decodeLanguages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    if-eqz p2, :cond_4

    const-string v2, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v14, 0x0

    const/4 v11, 0x0

    :goto_0
    array-length v2, v13

    if-ge v11, v2, :cond_1

    aget-object v2, v13, v11

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v14, 0x1

    :cond_1
    if-nez v14, :cond_4

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    return-object v15

    const/4 v13, 0x3

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    const/4 v7, 0x2

    :cond_4
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v16, Lcom/henrythompson/quoda/snippet/Snippet;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Lcom/henrythompson/quoda/snippet/Snippet;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/snippet/Snippet;->setName(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/snippet/Snippet;->setDescription(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/snippet/Snippet;->setContent(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/henrythompson/quoda/snippet/Snippet;->setLanguages([Ljava/lang/String;)V

    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/snippet/Snippet;->setTabTrigger(Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/snippet/Snippet;->setLocation(Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    const/4 v14, 0x1
.end method

.method public listSnippetsInLocation(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x3

    const/4 v4, 0x0

    const/4 v11, 0x6

    invoke-static {p1}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v11, 0x0

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->escapeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v11, 0x6

    const-string v1, "snippets"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "uuid"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "name"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "location= \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v11, 0x2

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v11, 0x4

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const/4 v11, 0x3

    :cond_0
    const-string v1, "uuid"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    const/4 v11, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x1

    invoke-virtual {v10, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v11, 0x6

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v11, 0x6

    :goto_0
    return-object v10

    const/4 v0, 0x2

    :cond_1
    move-object v10, v4

    goto :goto_0

    const/4 v2, 0x3
.end method

.method public listSubfoldersInLocation(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x2

    invoke-static {p1}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v11, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v11, 0x0

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->escapeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v11, 0x0

    const-string v1, "locations"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "path"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "parent"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parent= \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v11, 0x4

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v11, 0x5

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x4

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "path"

    const/4 v11, 0x6

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v11, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x2

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x6

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v11, 0x1

    :goto_0
    return-object v10

    const/4 v4, 0x4

    :cond_1
    move-object v10, v4

    goto :goto_0

    const/4 v11, 0x2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13

    const/4 v12, 0x6

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x2

    const-string v0, "CREATE TABLE snippets(uuid TEXT PRIMARY KEY,name TEXT,description TEXT,content TEXT,language TEXT,tabtrigger TEXT,location TEXT)"

    const/4 v12, 0x4

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v12, 0x5

    const-string v0, "CREATE TABLE locations(path TEXT PRIMARY KEY,parent TEXT)"

    const/4 v12, 0x7

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v12, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->mSnippetsToInsertOnFirstRun:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    const/4 v12, 0x0

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    const/4 v12, 0x3

    const-string v4, "INSERT INTO snippets VALUES (?,?,?,?,?,?,?);"

    const/4 v12, 0x5

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    const/4 v12, 0x3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v12, 0x4

    iget-object v6, p0, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->mSnippetsToInsertOnFirstRun:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/henrythompson/quoda/snippet/Snippet;

    const/4 v12, 0x5

    if-eqz v3, :cond_0

    const/4 v12, 0x2

    invoke-virtual {v3}, Lcom/henrythompson/quoda/snippet/Snippet;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v9, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v12, 0x1

    invoke-virtual {v3}, Lcom/henrythompson/quoda/snippet/Snippet;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v11, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v12, 0x4

    const/4 v7, 0x3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/snippet/Snippet;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v12, 0x6

    const/4 v7, 0x4

    invoke-virtual {v3}, Lcom/henrythompson/quoda/snippet/Snippet;->getContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v12, 0x6

    const/4 v7, 0x5

    invoke-virtual {v3}, Lcom/henrythompson/quoda/snippet/Snippet;->getLanguages()[Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->encodeLanguages([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v12, 0x2

    const/4 v7, 0x6

    invoke-virtual {v3}, Lcom/henrythompson/quoda/snippet/Snippet;->getTabTrigger()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v12, 0x6

    const/4 v7, 0x7

    invoke-virtual {v3}, Lcom/henrythompson/quoda/snippet/Snippet;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0

    const/4 v7, 0x6

    const/4 v12, 0x2

    :cond_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    const/4 v12, 0x4

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v12, 0x3

    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    const/4 v12, 0x3

    :cond_2
    iget-object v6, p0, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->mLocationsToInsertOnFirstRun:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    const/4 v12, 0x2

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    const/4 v12, 0x5

    const-string v4, "INSERT INTO locations VALUES (?,?);"

    const/4 v12, 0x2

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    const/4 v12, 0x3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v12, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->mLocationsToInsertOnFirstRun:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    const/4 v12, 0x2

    invoke-static {v2}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x7

    invoke-virtual {v5, v9, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v12, 0x2

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x1

    if-nez v1, :cond_3

    const/4 v12, 0x0

    const-string v1, "/"

    const/4 v12, 0x4

    :cond_3
    invoke-static {v1}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v12, 0x2

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_1

    const/4 v2, 0x5

    const/4 v12, 0x7

    :cond_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    const/4 v12, 0x6

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v12, 0x4

    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    const/4 v12, 0x5

    :cond_5
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->mSnippetsToInsertOnFirstRun:Ljava/util/ArrayList;

    const/4 v12, 0x5

    nop

    return-void

    const/4 v1, 0x3
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x6

    const-string v0, "DROP TABLE IF EXISTS snippets"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setSnippetsInLocationToLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v3, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE snippets\nSET language=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'\nWHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIKE \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\';"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v3, 0x3

    nop

    return-void

    const/4 v1, 0x6
.end method

.method public updateFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x7

    invoke-static {p1}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v8, 0x0

    invoke-static {p2}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v8, 0x6

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x5

    invoke-static {v2}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v8, 0x1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v8, 0x2

    const-string v4, "path"

    invoke-virtual {v1, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    const-string v4, "parent"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x3

    const-string v4, "locations"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "path = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v1, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v8, 0x1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v8, 0x3

    const-string v4, "location"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x2

    const-string v4, "snippets"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "location = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v3, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v8, 0x6

    nop

    return-void

    const/4 v8, 0x4
.end method

.method public updateSnippet(Lcom/henrythompson/quoda/snippet/Snippet;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v5, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v5, 0x6

    const-string v2, "uuid"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/snippet/Snippet;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x7

    const-string v2, "name"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/snippet/Snippet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    const-string v2, "description"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/snippet/Snippet;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x2

    const-string v2, "content"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/snippet/Snippet;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x3

    const-string v2, "language"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/snippet/Snippet;->getLanguages()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->encodeLanguages([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    const-string v2, "tabtrigger"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/snippet/Snippet;->getTabTrigger()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x4

    const-string v2, "location"

    invoke-virtual {p1}, Lcom/henrythompson/quoda/snippet/Snippet;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    const-string v2, "snippets"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uuid = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/henrythompson/quoda/snippet/Snippet;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v5, 0x3

    nop

    return-void

    const/4 v1, 0x1
.end method
