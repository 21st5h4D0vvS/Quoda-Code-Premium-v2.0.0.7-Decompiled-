.class public Lcom/henrythompson/quoda/snippet/SnippetsManager;
.super Lcom/henrythompson/quoda/DataManager;


# instance fields
.field private mDatabase:Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/DataController;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x6

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/DataManager;-><init>(Lcom/henrythompson/quoda/DataController;)V

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x0
.end method

.method private fixSnippetsXMLBug()V
    .locals 4

    const/4 v3, 0x6

    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v0

    const-string v1, "/ActionScript/"

    const-string v2, "actionscript"

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->setSnippetsInLocationToLanguage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v0

    const-string v1, "/C & C++/"

    const-string v2, "c|c++|objective-c|objective-c++"

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->setSnippetsInLocationToLanguage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v0

    const-string v1, "/C#/"

    const-string v2, "c#"

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->setSnippetsInLocationToLanguage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v0

    const-string v1, "/CSS/"

    const-string v2, "css"

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->setSnippetsInLocationToLanguage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v0

    const-string v1, "/Haskell/"

    const-string v2, "haskell"

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->setSnippetsInLocationToLanguage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v0

    const-string v1, "/HTML/"

    const-string v2, "html"

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->setSnippetsInLocationToLanguage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v0

    const-string v1, "/Java/"

    const-string v2, "java"

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->setSnippetsInLocationToLanguage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v0

    const-string v1, "/JavaScript/"

    const-string v2, "javascript"

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->setSnippetsInLocationToLanguage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v0

    const-string v1, "/Objective-C & Objective-C++/"

    const-string v2, "objective-c|objective-c++"

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->setSnippetsInLocationToLanguage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v0

    const-string v1, "/Perl/"

    const-string v2, "perl"

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->setSnippetsInLocationToLanguage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v0

    const-string v1, "/PHP/"

    const-string v2, "php"

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->setSnippetsInLocationToLanguage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v0

    const-string v1, "/Python/"

    const-string v2, "python"

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->setSnippetsInLocationToLanguage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v0

    const-string v1, "/Ruby/"

    const-string v2, "ruby"

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->setSnippetsInLocationToLanguage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v0

    const-string v1, "/XML/"

    const-string v2, "xml"

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->setSnippetsInLocationToLanguage(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public static getInstance()Lcom/henrythompson/quoda/snippet/SnippetsManager;
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const-class v1, Lcom/henrythompson/quoda/snippet/SnippetsManager;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/DataController;->getDataManager(Ljava/lang/Class;)Lcom/henrythompson/quoda/DataManager;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/snippet/SnippetsManager;

    return-object v0

    const/4 v2, 0x7
.end method

.method private getSnippetsInFolder(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
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

    const/4 v9, 0x1

    const/4 v9, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v9, 0x2

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v9, 0x4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x2

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "snippets/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const/4 v9, 0x4

    if-eqz v2, :cond_0

    const/4 v9, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_0

    const/4 v9, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->parseSnippetInAssets(Ljava/lang/String;)Lcom/henrythompson/quoda/snippet/Snippet;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    const/4 v7, 0x5

    const/4 v9, 0x0

    :catch_0
    move-exception v1

    const/4 v9, 0x0

    const-string v6, "Snippets Manager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to extract snippets from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x4

    const/4 v4, 0x0

    const/4 v9, 0x7

    :cond_0
    return-object v4

    const/4 v3, 0x3
.end method

.method private parseSnippetInAssets(Ljava/lang/String;)Lcom/henrythompson/quoda/snippet/Snippet;
    .locals 8

    const/4 v7, 0x6

    const/4 v7, 0x2

    :try_start_0
    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "snippets/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v7, 0x0

    new-instance v4, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;

    invoke-direct {v4, v1}, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Lcom/henrythompson/quoda/snippet/RawSnippetFileParser;->runParser()Lcom/henrythompson/quoda/snippet/Snippet;

    move-result-object v3

    const/4 v7, 0x2

    if-eqz v3, :cond_0

    const/4 v7, 0x4

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x3

    invoke-virtual {v3, v2}, Lcom/henrythompson/quoda/snippet/Snippet;->setLocation(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x1

    :cond_0
    :goto_0
    return-object v3

    const/4 v3, 0x7

    const/4 v7, 0x6

    :catch_0
    move-exception v0

    const/4 v7, 0x3

    const-string v4, "tag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse snippet from asset file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x7

    const/4 v3, 0x0

    goto :goto_0

    const/4 v3, 0x7
.end method

.method private transferPreloadedSnippetsToSQL()V
    .locals 4

    const/4 v3, 0x5

    const/4 v3, 0x6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x7

    const-string v2, "ActionScript"

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getSnippetsInFolder(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x5

    const-string v2, "/ActionScript/"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    const-string v2, "C & C++"

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getSnippetsInFolder(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    const-string v2, "/C & C++/"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    const-string v2, "C#"

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getSnippetsInFolder(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x3

    const-string v2, "/C#/"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x3

    const-string v2, "CSS"

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getSnippetsInFolder(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x1

    const-string v2, "/CSS/"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    const-string v2, "Haskell"

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getSnippetsInFolder(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x2

    const-string v2, "/Haskell/"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    const-string v2, "HTML"

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getSnippetsInFolder(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x3

    const-string v2, "/HTML/"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    const-string v2, "Java"

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getSnippetsInFolder(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x4

    const-string v2, "/Java/"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x7

    const-string v2, "JavaScript"

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getSnippetsInFolder(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x2

    const-string v2, "/JavaScript/"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    const-string v2, "Objective-C & Objective-C++"

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getSnippetsInFolder(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x2

    const-string v2, "/Objective-C & Objective-C++/"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    const-string v2, "Perl"

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getSnippetsInFolder(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x0

    const-string v2, "/Perl/"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    const-string v2, "PHP"

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getSnippetsInFolder(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x5

    const-string v2, "/PHP/"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x6

    const-string v2, "Python"

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getSnippetsInFolder(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x1

    const-string v2, "/Python/"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x3

    const-string v2, "Ruby"

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getSnippetsInFolder(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x6

    const-string v2, "/Ruby/"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x5

    const-string v2, "Visual Basic"

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getSnippetsInFolder(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x6

    const-string v2, "/Visual Basic/"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x5

    const-string v2, "XML"

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getSnippetsInFolder(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x3

    const-string v2, "/XML/"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    new-instance v2, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    invoke-direct {v2, v1, v0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/henrythompson/quoda/snippet/SnippetsManager;->mDatabase:Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    const/4 v3, 0x0

    nop

    return-void

    const/4 v3, 0x6
.end method


# virtual methods
.method public getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetsManager;->mDatabase:Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    if-nez v0, :cond_0

    const/4 v1, 0x4

    new-instance v0, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    invoke-direct {v0}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetsManager;->mDatabase:Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    const/4 v1, 0x7

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetsManager;->mDatabase:Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    return-object v0

    const/4 v0, 0x7
.end method

.method public getSnippetsForLanguage(Ljava/lang/String;)Ljava/util/ArrayList;
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

    const/4 v1, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getSnippetsForLanguage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    const/4 v1, 0x1
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public onSetup()V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->transferPreloadedSnippetsToSQL()V

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public onUpgrade(II)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    const/16 v0, 0x38

    if-ge p1, v0, :cond_0

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->fixSnippetsXMLBug()V

    const/4 v1, 0x7

    :cond_0
    nop

    return-void

    const/4 v0, 0x2
.end method

.method public receiveEvent(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x4
.end method
